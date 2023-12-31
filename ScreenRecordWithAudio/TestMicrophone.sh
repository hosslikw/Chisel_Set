#!/bin/bash

set -u

test_microphone_macos() {
	test_microphone_file=${TOMCAT_TMP_DIR}/test_microphone.wav
	$RM "$test_microphone_file"
	ffmpeg_microphone_log="$TOMCAT_TMP_DIR"/ffmpeg_microphone.log
	ffmpeg -nostdin -f ${FFMPEG_FMT_MICROPHONE} \
		-i ${FFMPEG_INPUT_DEVICE_MICROPHONE} \
		-t 1 "$test_microphone_file" &>"$ffmpeg_microphone_log" &
	microphone_test_pid=$!
	sleep 3
	if [[ ! -f "$test_microphone_file" ]]; then

		microphone_access_err=$(cat "$ffmpeg_microphone_log" |
			grep "Failed to create AV capture input device: Cannot use Built-in Microphone")

		if [[ ! $microphone_access_err == "" ]]; then
			echo "macOS is not allowing the terminal to access the microphone."
			echo "The script will now guide you to set it up."
			echo ""

			# ffmpeg does not exit by itself when you ask it to try to record audio
			# from the default audio input device and permission is denied by macOS.
			# Thus, we have to kill it with signal 9.
			kill -9 $microphone_test_pid
			if ! "$TOMCAT"/tools/macos/terminal_microphone_access $terminal; then exit 1; fi
			test_microphone_macos
		else
			echo "Unable to capture microphone audio - unhandled ffmpeg error."
			echo "The complete error log is given below."
			echo ""
			cat "$ffmpeg_microphone_log"
			exit 1
		fi
	fi
}

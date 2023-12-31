#!/bin/bash
# Script to test screen recording on macOS

set -u

test_screen_recording_macos() {
	test_screen_video_file=${TOMCAT_TMP_DIR}/test_screen_video.mpg
	ffmpeg_screen_video_log="$TOMCAT_TMP_DIR"/screen_video_recording.log
	$RM "$test_screen_video_file"
	ffmpeg -nostdin -f ${FFMPEG_FMT_SCREEN_CAPTURE} \
		-i ${FFMPEG_INPUT_DEVICE_SCREEN_CAPTURE} \
		-t 1 -s $SCREEN_DIMENSIONS "$test_screen_video_file" >&"$ffmpeg_screen_video_log" &
	sleep 1
	# Check if the test video file exists
	if [[ ! -f "$test_screen_video_file" || ! $(du -sh "$test_screen_video_file" | grep "0B") == "" ]]; then
		echo "Unable to capture screen video: unhandled ffmpeg error."
		echo "The complete error log is given below."
		echo ""
		cat "$ffmpeg_screen_video_log"
		exit 1
	fi
}

test_screen_recording_macos

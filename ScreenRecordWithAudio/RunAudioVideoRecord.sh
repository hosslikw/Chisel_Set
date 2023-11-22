#!/bin/bash
set -u
start_av_recording() {
	ffmpeg -f ${FFMPEG_FMT_WEBCAM} \
		${FRAMERATE_OPTION:-} \
		-i ${FFMPEG_INPUT_DEVICE_WEBCAM} \
		-r 30 "${MISSION_OUTPUT_DIR}"/webcam_video.mpg &>${TOMCAT_TMP_DIR}/ffmpeg_webcam_mission_"$CURRENT_MISSION".log &
	pid_webcam_recording=$!
	echo "Recording video of player's face using webcam. Process ID = ${pid_webcam_recording}"

	ffmpeg -nostdin -f ${FFMPEG_FMT_MICROPHONE} \
		-i ${FFMPEG_INPUT_DEVICE_MICROPHONE} \
		"${MISSION_OUTPUT_DIR}"/player_audio.wav &>${TOMCAT_TMP_DIR}/ffmpeg_microphone_mission_"$CURRENT_MISSION".log &
	pid_microphone_recording=$!

	if ((ENABLE_SYSTEM_AUDIO_RECORDING)); then
		if [[ $OSTYPE == linux-gnu ]]; then
			echo "Recording system audio for Linux."
			# For Linux system audio recording, we will use pacat.
			# We need to extract the alsa output monitor.
			export ALSA_OUTPUT_MONITOR=$(pacmd list-sources |
				awk '/name:/ && /monitor/ {print $2 }' | sed 's/[<,>]//g')

			# Calling pacat command.
			pacat --record --file-format=wav -d ${ALSA_OUTPUT_MONITOR} \
				>"${MISSION_OUTPUT_DIR}"/system_audio.wav &
			pid_system_audio_recording=$!
		else
			echo "Recording system audio."
			ffmpeg -nostdin -f ${FFMPEG_FMT_SYSTEM_AUDIO} \
				-i ${FFMPEG_INPUT_DEVICE_SYSTEM_AUDIO} \
				"${MISSION_OUTPUT_DIR}"/system_audio.wav &>"$TOMCAT_TMP_DIR"/system_audio_recording_mission_"$CURRENT_MISSION".log &
			pid_system_audio_recording=$!
		fi
	fi
	echo "Recording player audio using microphone. Process ID = ${pid_microphone_recording}"

	# Recording game screen.
	screen_video="${MISSION_OUTPUT_DIR}"/screen_video.mpg

	# On macOS, the -i option must be given before the -s option, and on Ubuntu
	# it's the other way around.
	if [[ "$OSTYPE" == "darwin"* ]]; then
		ffmpeg -nostdin -f ${FFMPEG_FMT_SCREEN_CAPTURE} \
			-i ${FFMPEG_INPUT_DEVICE_SCREEN_CAPTURE} \
			-s $SCREEN_DIMENSIONS "$screen_video" &>"$TOMCAT_TMP_DIR"/screen_video_recording_mission_"$CURRENT_MISSION".log &
		pid_screen_recording=$!
	else
		ffmpeg -nostdin -f ${FFMPEG_FMT_SCREEN_CAPTURE} \
			-s $SCREEN_DIMENSIONS -i ${FFMPEG_INPUT_DEVICE_SCREEN_CAPTURE} \
			"$screen_video" &>"$TOMCAT_TMP_DIR"/screen_video_recording_mission_"$CURRENT_MISSION".log &
		pid_screen_recording=$!
	fi
	echo "Recording player's screen. Process ID = ${pid_screen_recording}"
}

#!/usr/bin/env zsh -x

#Does file exist
# Function to check if file exists
check_file_existence() {
	local file="$1"
	if [[ ! -f "$file" ]]; then
		echo "Error: File does not exist at $file"
		exit 1
	fi
}
#endregion

#Rename file

#Rename file
#Rename file
rename_file() {
	local original_video="$1"
	local filename=$(basename "$original_video")
	local extension="${filename##*.}"

	if [[ "$filename" != "$extension" ]]; then
		filename="${filename%.*}"
	fi

	local cleaned_prefix="${filename//[^a-zA-Z0-9]/}"
	local cleaned_filename="${cleaned_prefix}.${extension}"
	local new_path="$(dirname "$original_video")/$cleaned_filename"

	# This code block is checking if the renaming of the file was successful. It uses the `mv` command to
	# move the original video file to the new path with the cleaned filename. If the `mv` command fails,
	# it means that the file renaming failed. In that case, it prints an error message and exits the
	# script with a status code of 1, indicating an error.
	if ! mv "$original_video" "$new_path"; then
		echo "File renaming failed!"
		exit 1
	fi

	echo "$new_path"
}
#endregion

#Resize Video
_dimensions() {
	local determine_videovideo_path="$1"
	local width=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=p=0 "$video_path")
	local height=$(ffprobe -v error -select_streams v:0 -show_entries stream=height -of csv=p=0 "$video_path")

	#determining whether the video needs to be resized or not. Sets the initial value of the `resize` variable to 1, indicating that the video should be resized. Then, it checks if the width and height of the video are both less than 1200 pixels. If they are the video isn't resized.

	local resize=1
	if ((width < 1200 && height < 1200)); then
		resize=0
	else
		if ((width < height)); then
			new_height=1200
			new_width=$((width * new_height / height))
		else
			new_width=1200
			new_height=$((height * new_width / width))
		fi

		new_width=$((new_width & ~1))
		new_height=$((new_height & ~1))
	fi

	echo "$resize $new_width $new_height"
}
#endregion


#Webm
# Specific language for .webm files
webm() {
	local video_path="$1"
	local resize="$2"
	local new_width="$3"
	local new_height="$4"

	local filter_opts=""
	if ((resize == 1)); then
		filter_opts="-vf scale=$new_width:$new_height"
	fi

	local extension="${video_path##*.}"
	if [[ "$extension" == "webm" ]]; then
		local DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video_path")
		DURATION=$(printf "%.0f" $DURATION)

		ffmpeg -v verbose -i "$video_path" -c:v libx264 -b:v 1M -c:a aac -b:a 128k -r 24 "${video_path%.*}.mov" $filter_opts 2>&1 |
			gawk -v duration=$DURATION '
        BEGIN {
            RS="\r"
        }
        /frame=/ {
            match($0, /frame= *([0-9]+)/, frames);
            match($0, /time= *([0-9]+):([0-9]+):([0-9]+)\.([0-9]+)/, times);
            time_in_seconds = (times[1]*3600 + times[2]*60 + times[3]);
            progress = time_in_seconds / duration * 100;
            print progress;
            fflush();
        }' |
			zenity --progress --title="ffmpeg Progress (1/2)" --percentage=0 --auto-close
		return $?
	fi
}
#endregion

#The_Conductor
# Main script logic
the_conductor() {
	local original_video="$1"
	check_file_existence "$original_video"

	local new_path=$(rename_file "$original_video")
	read resize new_width new_height <<<$(determine_video_dimensions "$new_path")

	convert_webm_to_mov "$new_path" $resize $new_width $new_height
	local FFMPEG_EXIT_STATUS1=$?

	if [[ "$FFMPEG_EXIT_STATUS1" -ne 0 ]]; then
		echo "Error: .webm to .mov conversion failed!"
		exit 1
	fi

	# After all processing
	echo "Conversion completed successfully."
}
#endregion

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	the_conductor "$@"
fi

import os
import shutil

source_dir = "/Users/Kyle/Applications/zTestFiles"

dest_folders = {
    "Pdf.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeAcrobat",
    "Xd.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeAfterEffects",
    "Ai.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Documentation_Ai",
    "AAi.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Actions_Ai",
    "BAi.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Brushes_Ai",
    "IAi.": "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Icons_Ai",
    
}

for filename in os.listdir(source_dir):
    file_path = os.path.join(source_dir, filename)

    for portion, dest_folder in dest_folders.items():
        if portion in filename:
            shutil.move(file_path, os.path.join(dest_folder, filename))
    
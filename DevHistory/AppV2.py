import os
import shutil

source_dir = "/Users/Kyle/Applications/zTestFiles"

dest_folders = [
    ("Artistic.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Font/Artistic_Fonts"),
    ("Encoder.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeMediaEncoder"),
    ("GSlides.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/GoogleSlides"),
    ("GDrive.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/GoogleDrive"),
    ("Prproj.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePremierePro"),
    ("Sclpt2.", "/Volumes/Khoss_5Tb/Teaching/Courses/Sculpture/Sculpture2"),
    ("OvPsd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Overlays_Psd"),
    ("FMgmt.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/FileManagement"),
    ("GMaps.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/GoogleMaps"),
    ("OSLin.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/OS-Care/Linux_OsCare"),
    ("OSMac.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/OS-Care/Mac_OsCare"),
    ("OSWin.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/OS-Care/Windows_OS-Care"),
    ("RNote.", "/Volumes/Khoss_5Tb/Teaching/Assets/Reading/Read_Notes"),
    ("TFig.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Figma/Templates_Fig"),
    ("TextB.", "/Volumes/Khoss_5Tb/Teaching/Assets/Reading/Textbooks"),
    ("Sclpt.", "/Volumes/Khoss_5Tb/Teaching/Courses/Sculpture/Sculpture1"),
    ("GDocs.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/GoogleDocs"),
    ("FExt.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/FileExtensions"),
    ("Serif.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Font/Serif_Fonts"),
    ("TDocx.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/MicrosoftWord"),
    ("TDocx.","/Volumes/Khoss_5Tb/Teaching/Assets/Software/MicrosoftWord/Templates_Docx"),
    ("Boot.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Css/Bootstrap_Css"),
    ("APsd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Actions_Psd"),
    ("BPsd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Brushes_Psd"),
    ("Code.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/CodeLearning"),
    ("MPsd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Mockups_Psd"),
    ("OPsd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Objects_Psd"),
    ("Html.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/HTML"),
    ("Link.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/LinkedIn"),
    ("Lott.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Lottie"),
    ("Luna.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Lunacy"),
    ("Pptx.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/MicrosoftPowerPoint"),
    ("Numb.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Numbers"),
    ("Read.", "/Volumes/Khoss_5Tb/Teaching/Assets/Reading"),
    ("Brnd.", "/Volumes/Khoss_5Tb/Teaching/Assets/References/BrandStyleGuides_Ref"),
    ("WText.", "/Volumes/Khoss_5Tb/Teaching/Assets/Reading/WebPDF"),
    ("Sans.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Font/SansSerif_Fonts"),
    ("Hard.", "/Volumes/Khoss_5Tb/Teaching/Assets/Hardware"),
    ("Logo.", "/Volumes/Khoss_5Tb/Teaching/Assets/References/Logos_Ref"),
    ("Indd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeInDesign"),
    ("Text.", "/Volumes/Khoss_5Tb/Teaching/Assets/Reading/Texts"),
    ("Pdf.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeAcrobat"),
    ("Psd.","/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobePhotoshop/Documentation_Psd"),
    ("Pres.", "/Volumes/Khoss_5Tb/Teaching/Assets/Presentations"),
    ("Proc.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Procreate"),
    ("TIndd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeInDesign/Temp_Indd"),
    ("Fig.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Figma"),
    ("Dlp.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/VideoDownloadingApp"),
    ("Char", "/Volumes/Khoss_5Tb/Teaching/Assets/References/Character_Ref"),
    ("Ref.", "/Volumes/Khoss_5Tb/Teaching/Assets/References"),
    ("3DD.", "/Volumes/Khoss_5Tb/Teaching/Courses/3D"),
    ("Clay.", "/Volumes/Khoss_5Tb/Teaching/Courses/Ceramics"),
    ("Curr.", "/Volumes/Khoss_5Tb/Teaching/Courses/Curriculum"),
    ("SS.", "/Volumes/Khoss_5Tb/Teaching/Courses/Studioseminar"),
    ("Dev.", "/Volumes/Khoss_5Tb/Teaching/Development"),
    ("AAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/ActionsAi"),
    ("BAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/BrushesAi"),
    ("IAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Icons_Ai"),
    ("LAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/LaserReady_Ai"),
    ("MAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Mockup_Ai"),
    ("OAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Objects_Ai"),
    ("PAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Patterns_Ai"),
    ("SAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Swatches_Ai"),
    ("TAi.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Templates_Ai"),
    ("Xd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeXD"),
    ("Mac.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AppleMac"),
    ("Css.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/Css"),
    ("Xd.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeAfterEffects"),
    ("Ai.", "/Volumes/Khoss_5Tb/Teaching/Assets/Software/AdobeIllustrator/Documentation_Ai"),]

for filename in os.listdir(source_dir):
    file_path = os.path.join(source_dir, filename)
    n, e = os.path.splitext(filename)  # Split file name and extension

    for portion, dest_folder in dest_folders:
        dn, de = os.path.splitext(portion)  # Split identifier and extension

        if n[-7:] == dn and "Ai" not in n and dn not in ["LAi", "MAi", "OAi", "SAi", "TAi"]:
            new_file_path = os.path.join(dest_folder, filename)
            shutil.move(file_path, new_file_path)
            print(f"Moved '{filename}' to '{new_file_path}'")
            break  # Stop checking other identifiers once a match is found
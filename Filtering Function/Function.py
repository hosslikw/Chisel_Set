import os
import shutil
import json
import logging
import time
import threading
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(message)s',
                    datefmt='%Y-%m-%d%H:%M:%S')

with open("/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/SmallSet/ShortDict.json", "r") as json_file:
    my_dic = json.load(json_file)
source_folder = '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/SmallSet/StartSmall'

for path in my_dic.values():
    os.makedirs(path, exist_ok=True)

# Iterating over keys
for key in my_dic:
    print(key)

# Iterating over values
for value in my_dic.values():
    print(value)


class MyHandler(FileSystemEventHandler):

for file_name in os.listdir(source_folder):
    root_ext = os.path.splitext(file_name)
    root = root_ext[0]
    ot = root[-9:]
    key_found = False
    for key in my_dic:
        if ot.lower() in key.lower():
            key_found = True
            break
    if key_found:
        print ("os.listdir(source_folder)")
        #print(f"{ot}")
        # Move the folder to the corresponding value
#         destination_path = os.path.join(my_dic[key], file_name)
#         shutil.move(os.path.join(source_folder, file_name), destination_path)
#     else:
#         print(f"{ot} does not exist in my_dic")


    for folder_name in os.listdir(source_folder):
        folder_path = os.path.join(source_folder, folder_name)
        folder_tail = folder_name[-7:]
        if folder_tail in my_dic:
            path = my_dic[folder_tail]
            destination = os.path.join(path, folder_name)
            passed_folders.append((folder_path, destination))
        else:
            failed_folders.append(folder_name)

    for passed_file, destination_path in passed_files:
        if passed_file not in os.listdir(destination_path):
            shutil.move(passed_file, destination_path)

    for passed_folder, destination_path in passed_folders:
        if passed_folder not in os.listdir(destination_path):
            shutil.move(passed_folder, destination_path)




def start_observer():
    observer = Observer()
    event_handler = MyHandler()
    observer.schedule(event_handler, source_folder, recursive=False)
    observer.start()

    try:
        while True:
            time.sleep(15 * 60)  # Check for changes every 15 minutes
    except KeyboardInterrupt:
        observer.stop()
    observer.join()


# Start the observer in a separate thread
observer_thread = threading.Thread(target=start_observer)
observer_thread.daemon = True
observer_thread.start()

# Start the GUI in the main thread
window.mainloop()
def on_modified(self, event):

    for file_path, destination_path in passed_files:
        if os.path.exists(destination_path):
            file_name = os.path.basename(file_path)
            file_label.config(text=file_name)
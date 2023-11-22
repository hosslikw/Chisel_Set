import os
import shutil
from watchdog.observers import Observer
import logging
from watchdog.events import FileSystemEventHandler
import time
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(message)s',
                    datefmt='%Y-%m-%d%H:%M:%S')

source_folder = '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingEventWatching/Test-In'
destination_folder = '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingEventWatching/Test-Out'


class MyHandler(FileSystemEventHandler):
    def on_created(self, event):
        for file_name in os.listdir(source_folder):
            shutil.move(os.path.join(source_folder, file_name),
                        destination_folder)
            print(f"Moved {file_name} to {destination_folder}")
            break


event_handler = MyHandler()
observer = Observer()
observer.schedule(event_handler, source_folder, recursive=False)
observer.start()

try:
    while observer.is_alive():
        time.sleep(1)
except KeyboardInterrupt:
    observer.stop()
observer.join()

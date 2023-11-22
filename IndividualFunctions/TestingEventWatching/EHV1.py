from watchdog.observers import Observer
from watchdog.events import LoggingEventHandler, FileSystemEventHandler

import logging
import time


logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(message)s',
                        datefmt='%Y-%m-%d%H:%M:%S')
class MyHandler(FileSystemEventHandler):
    def on_created(self, event):
        if not event.is_directory:
             with open(event.src_path)as fp:
                fp.read_lines()

path = "/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingEventWatching/TestEventInput_Watched"
    
event_handler = LoggingEventHandler()
observer = Observer()
observer.schedule (event_handler, path, recursive=True)
observer.start()
   
try:
        while True:
            time. sleep (1)
finally:
        observer.stop()
        observer.join()

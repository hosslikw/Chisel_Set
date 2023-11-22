import json

dict = {
    '_square': '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/TestIn_chunk',
    '_circle': '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/TestIn_Round',
    '_triangle': '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/TestIn_sharp',
    '_hobart': '/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/TestIn_German',
}

json_file_path = "/Users/Kyle/Applications/OrganizingApp/IndividualFunctions/TestingDictionayAndMoving/Test_Files/SmallSet/ShortDict.json"

# Open the file in write mode and write the JSON data
with open(json_file_path, "w") as json_file:
    json.dump(dict, json_file, indent=4)

# Optionally, you can print a confirmation message
print(f"JSON data has been written to {json_file_path}")

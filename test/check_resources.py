
import os
import sys

prefix = sys.prefix

pixmaps = prefix + '/share/pixmaps/'
applications = prefix + '/share/applications/'

img_files = os.listdir(os.path.abspath("images") )
print(img_files)

# Check if image files exist in the system.
for i in img_files:
    if not os.path.isfile(pixmaps + i):
        print("Not found :- %s" % pixmaps + i)
        print("Fail 1")
        exit(1)


if not os.path.isfile(applications + 'odml.desktop'):
    print("Fail 2")
    print(applications + 'odml.desktop')
    exit(1)

print("Success")
exit(0)

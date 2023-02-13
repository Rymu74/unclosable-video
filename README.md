
# Unclosable Video

Uses cv2 to load a video frame by frame. If the video is closed while being played, it will reopen on the next frame. Only way to kill is with task manager, so funny to confuse people.

# Folder Structure


`Unclosable`\
`| - video.mp4`\
`| - main.py`\
`| - dist(folder)`\
 `  - - - | install.nsi`

# Building

To compile to an exe, install pyinstaller\
`pip install pyinstaller`\
from inside the Unclosable folder, run\
`pyinstaller --add-data="video.mp4;." --noconsole .\main.py`

now make sure NSIS is installed\
https://nsis.sourceforge.io/Main_Page \
go to the dist folder and compile the nsi file \
install and run

# Mac + Linux
i dont know if closing the app will actually close it or not, i dont have a mac \
for mac os, use py2app to make an app file \
i dont have a mac so figure it out yourself (quality documentation) \
https://py2app.readthedocs.io/en/latest/index.html \
`pip install py2app` \

use create-dmg to make an installer \
https://github.com/create-dmg/create-dmg

also just dont compile for linux

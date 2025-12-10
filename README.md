# Shell_Scripting

Shell is an environment in which we run linux commands

>> shell script is a text file
>> Sequence of commands
>> logic if execution

Executing shell script --> ensure file has a exicutable permission is not $chmod +x file.sh

We can run shell scripting through relative path and absolute path
--> ./file.sh = relative path that we run from file location
--> /home/ubuntu/file.sh = absulute path if we want exicute from other location in linux
--> export PATH=$PATH:/home/ubuntu = set path variable now we can run script from any location using only file name i.e., file.sh.

--> sh file.sh = when we not included #!/bin/bash
    sh file.sh = #!/bin/sh
    bash file = #!/bin/bash
    note: by using bash file.sh we can run script if don't have excutable permission
--> . ./file.sh = run script without creating a new shell (child shell and parent shell)

==============================================================================================================
Trubleshooting:

set -x #debug mode.
set -e #exit the script if ant error.
set -o #pipefail

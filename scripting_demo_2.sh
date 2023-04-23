#!/bin/bash

# SCRIPT
# =============================================================

# for each thing in a collection of things
for thing in 1 2 3 4 5 6

# do the following...
do
    # print each thing
    printf "${thing} \n"

# end of loop
done

# =============================================================
# END OF SCRIPT

# Note: we need to run the command `chmod +rwx [script_name.sh]` in
# the terminal to make the script executable. The chmod command changes
# the file permissions "rwx" grants full permissions (read, write, 
# execute).

# To run the script, after changing the permissions, we navigate to the
# directory that contains it, and use `./[script_name.sh]`

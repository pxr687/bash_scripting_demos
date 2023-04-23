#!/bin/bash

# SCRIPT
# =============================================================

# navigate to the folder containing the T1 scans
cd ~/FBI/recon

# a for loop over participant data files
for participant_num in p01 p02 p03 p04 p05 p06 p07 p08 p09 p10 p11 p12 p13 p14 p15

# do the following...
do
    # show the participant number
    printf "Participant ${participant_num}: \n" 

    # delete the old extracted brain image (we can see this 
    # happen in real time in the file explorer
    rm ${participant_num}/T1_brain.nii.gz

    # extract the brain from the T1 image
    bet ${participant_num}/T1.nii.gz ${participant_num}/T1_brain

    # list the number of non-empty brain voxels
    fslstats ${participant_num}/T1_brain -V

# end the loop
done

# =============================================================
# END OF SCRIPT

# IMPORTANT: for scripts like this it's important to keep a copy of
# your data before you run the script (in case something goes wrong).
# YOU CAN PRESS CNTRL + Z TO STOP A SCRIPT RUNNING IF YOU REALISE THERE
# IS AN ERROR

# Note: we need to run the command `chmod +rwx [script_name.sh]` in
# the terminal to make the script executable. The chmod command changes
# the file permissions "rwx" grants full permissions (read, write, 
# execute).

# To run the script, after changing the permissions, we navigate to the
# directory that contains it, and use `./[script_name.sh]`

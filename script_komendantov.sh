#!/bin/bash
#---------------------------------------------------------------
# #!/bin/bash
#---------------------------------------------------------------
# Script to run simulations with Komendantov-Kononenko model
#
# Program name: komendantov_SIEC.c
#
# Execution permission: chmod +x script_komendantov.sh
#
# Run as: ./script_komendantov.sh
#---------------------------------------------------------------

clear
echo -----------------------------------------------------------  
echo							DATA
echo -----------------------------------------------------------
echo "User		: $LOGNAME"
echo
echo "Home dir	: $HOME"	
echo
echo -n "Date		:  "
date
echo

#------------------- End of script metadata display ---------------


# Compile the program

gcc -Wall -O2 -o komendantov_SIEC komendantov_SIEC.c -lm
if [ $? -ne 0 ]; then
    echo "Compilation failed. Exiting."
    exit 1
fi

# Define necessary variables for execution
FINAL_G=0.1000   # Final conductance value
STEP_G=0.0005    # Step size for conductance
SIM_TIME=10000   # Simulation time

# Execute the program
./komendantov_SIEC initial_parameters $FINAL_G $STEP_G $SIM_TIME


#====================================================
# Title:       Experiment 7: Evidence accumulation
# Author:      David Greatrex
# Last edited: 30/08/2017
#====================================================

# Overview
Experiment 6 investigates how rhythmic temporal expectations bias complex averaging when participants choose how much of a stimulus to listen to. Critically, this procedure distinguishes the time it takes to reach a decision from responses that are restricted to a response period wholly after the stimulus has finished. It also increases the ecological validity of the task by investigating decisions in which people, and not the experimental environment, determine how much of a stimulus to attend to, thus allowing the investigation to be tailored towards behaviours in which deliberation time can be costly. An added benefit of this approach is that Drift Diffusion Models (DDMs), a form of sequential sampling model, can be fitted to the data.

Specifically, experiment 6 was designed with three aims in mind:
 - To investigate what effect rhythmic temporal expectations have on complex decision making when participants determine how much of the stimulus to listen to before responding.
 - To determine which components of a DDM are affected by rhythmic temporal expectations during complex averaging.
 - To increase ecological validity and reduce task complexity compared with experiments reported previously in the thesis.
The task required deciding whether a long rhythmic sequence of lateralized noise bursts were drawn from a spatial distribution with a mean that was either to the left or right of mid-point. Using the mid-point as the decision criterion meant that, unlike experiments 3 and 4, probe tones were no longer required in the experimental design.

# Requirements:

MATLAB (MathWorks) - the program was build in version R2015b. Psychtoolbox3 (http://psychtoolbox.org/) - version 3.0.13 - Flavor: beta - Corresponds to SVN Revision 8038.

# Installation and run:

Clone the repository to a local folder and set MATLABs current directory to the selected folder. Enter 'averaging_threshold(X)' into the MATLAB terminal to start the experiment. 'X' should be the participant ID. Response keys are vertically aligned '2' and '8' on the keypad of numerical keyboard. Key to response mappings are defined during the on-screen instructions. Ensure that any hardcoded URLs in ‘averaging_threshold’ are changed to represent those of the directories on your computer.



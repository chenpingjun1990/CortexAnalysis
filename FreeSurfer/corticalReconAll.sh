#!/bin/tcsh

# Check parameters
if($# != 2) then
    echo "Two arguments needed!"
    echo "corticalReconAll subjectDir subjectName."
  exit 1;
endif

# Setting subjectDir and subjectName
set SubjectDir=($argv[1])
set SubjectName=($argv[2])

#echo $SubjectDir
#echo $SubjectName


# create directory
mkdir -p ~/Txx/$SubjectDir/$SubjectName/mri/orig/
# place the data into prople directory
cp ~/Desktop/001.mgz ~/Txx/$SubjectDir/$SubjectName/mri/orig/
# setting SUBJECTS_DIR
setenv SUBJECTS_DIR ~/Txx/$SubjectDir/
echo $SUBJECTS_DIR
# cortical reconstruction on specified subject patient  
recon-all -subject $SubjectName -all

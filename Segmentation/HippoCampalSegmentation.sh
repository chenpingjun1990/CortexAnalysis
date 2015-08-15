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

# setting SUBJECTS_DIR
setenv SUBJECTS_DIR $SubjectDir/
# echo $SUBJECTS_DIR

echo "Create direcotry and moving file"
# create directory
mkdir -p $SubjectDir/$SubjectName/mri/orig/
# place the data into prople directory
mv ~/Desktop/001.mgz $SubjectDir/$SubjectName/mri/orig/

echo "Start segment Hippocampal subfield"
# Generate the hippocampal subfield segmentation
recon-all -s $SubjectName -all -hippo-subfields


# Estimated hippocampal subfield volumes
#cd $SubjectDir/$SubjectName/mri
#kvlQuantifyPosteriorProbabilityImages $FREESURFER_HOME/data/GEMS/compressionLookupTable.txt posterior_right_* posterior_Right-Hippocampus.mgz
#kvlQuantifyPosteriorProbabilityImages $FREESURFER_HOME/data/GEMS/compressionLookupTable_left.txt posterior_left_* posterior_Left-Hippocampus.mgz


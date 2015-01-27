#!/bin/tcsh

set SubjectDir=YuZheng
set SubjectName=LiSi
setenv SUBJECTS_DIR ~/CorticalCon/$SubjectDir
echo $UBJECTS_DIR

 tkmedit LiSi wm.mgz

 freeview -v $SUBJECTS_DIR/LiSi/mri/wm.mgz
# Using FreeSurfer to Reconstruct Brain Cortical

## FreeSurfer Install
1. [Registration](http://freesurfer.net/fswiki/Registration) to get license.
2. Dowload [freeSurfer](ftp://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/5.3.0/freesurfer-Linux-centos4_x86_64-stable-pub-v5.3.0.tar.gz).
3. Install according to screenshot installMethods.png

## FreeSurfer Reconsturction
1. Data preperition: transform Dicom to Nifty format(.nii). Using freeview transform Nifty format(.nii) into mgz format.(May take 10 seconds, wait for successfully hint.)
2. Using corticalReconAll.sh script to reconstruct brain cortical. Two parameters needed, which are SubjectDir and SubjectName.

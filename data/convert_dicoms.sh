#!/usr/bin

# this script will convert dicom files into nifti images

# user inputs:
Subs="1028"
dicom_dir=/data/projects/STUDIES/LEARN/fMRI/dicoms/
output_dir=/data/projects/STUDIES/LEARN/fMRI/NM/data/s
image="NM" # inputs: "T1w", "NM", or "both"

# loop through and print each one to make sure you're finding the right directory
for sub in $Subs
do
	
	if [ $image == "T1w" ]; then
		# this line runs the conversion: first path finds mricron; second sets the name for the output image; third sets the output directory; fourth selects the dicom to be converted
		/home/local/TU/tun46412/Desktop/mricron/Resources/dcm2niix -f "s${sub}_LEARN_T1w" -p y -z n -ba n -o "${output_dir}${sub}" "${dicom_dir}Jarcho-LEARN-s${sub}/Jarcho-LEARN-s${sub}/scans/3-anat_T1w_acq_mpgSag"
	
	elif [ $image == "NM" ]; then
 		/home/local/TU/tun46412/Desktop/mricron/Resources/dcm2niix -f "s${sub}_LEARN_NM" -p y -z n -ba n -o "${output_dir}${sub}" "${dicom_dir}Jarcho-LEARN-s${sub}/scans/18-anat_T1w_acq_NeuromelLongerTR"
	
	elif [ $image == "both" ]; then
                # this line runs the conversion: first path finds mricron; second sets the name for the output image; third sets the output directory; fourth selects the dicom to be converted
                /home/local/TU/tun46412/Desktop/mricron/Resources/dcm2niix -f "s${sub}_LEARN_T1w" -p y -z n -ba n -o "${output_dir}${sub}" "${dicom_dir}Jarcho-LEARN-s${sub}/scans/3-anat_T1w_acq_mpgSag"
		/home/local/TU/tun46412/Desktop/mricron/Resources/dcm2niix -f "s${sub}_LEARN_NM" -p y -z n -ba n -o "${output_dir}${sub}" "${dicom_dir}Jarcho-LEARN-s${sub}/scans/*-anat_T1w_acq_NeuromelLongerTR"


	else
		echo "Set input for 'image' variable"
	fi

done

cd /data/projects/STUDIES/nm_jw/data/



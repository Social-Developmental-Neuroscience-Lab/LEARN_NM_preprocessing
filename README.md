# LEARN_NM_preprocessing

This is the neuromelanin preprocessing script for the LEARN project. This script takes raw neuromelanin and T1w images (BIDS format) and produces preprocessed images for analyses.

<b>Running the script:</b><br>
To apply this script to new datasets, you first need to configure your directories (review this first: https://smithlab.slab.com/posts/nm-preprocessing-script-fg4kf1li). Inside the script, update the vars for root_folder, templatedir, and Subs to match your dataset. There are seven steps to preprocessing: coregistration, segmentation, averaging 1, intensity normalization, averaging 2, make top slice, and smoothing. Set each variable equal to 1 to turn on the step when running the script.

<b>Output:</b><br>
After running the script with all seven steps turned on, your data directory should contain new image files with the following prefixes and suffixes: c1*, c2*, c3*, c4*, c5*, c6*, psc_wr*, rc1*, rc2*, rc3*, rc4*, rc5*, rc6*, r*, s1_psc_wr*, seg8.mat, u_rc1*, wr*, ws*. You should also see newfiles for each subject in your data/avg_nm directory

More information on neuromelanin: https://smithlab.slab.com/posts/neuromelanin-38ppypk8

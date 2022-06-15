# 3D printing my brain
🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠🧠

## Tutorial for creating a 3D printable .obj file from structural brain data
First convert your .nii file into .gii file, then convert your .gii into .obj

## Guide
https://vincentadam87.wordpress.com/2014/12/21/3d-print-your-own-brain/?fbclid=IwAR0uvPJN2VsETW1MNhHlNFDWLLtbW1YOP4ekrRwz-jFt4JhepdowfKD1yrI

## Helpful resources
Video 1) SPM Introduction: Download and Install:
https://www.youtube.com/watch?v=qbcBLXJhzZg&ab_channel=AndrewJahn


Video 2) 
  Segmenting the brain: SPM Tutorial 12 - Image Segmentation
  https://www.youtube.com/watch?v=_SSzN9KL_qw&t=596s&ab_channel=JustinO%27Brien 

Video 4) Allowing apps from all developers:
How to Allow Apps from Anywhere in macOS Gatekeeper (Big Sur, Catalina, Mojave, Sierra, High Sierra)
https://osxdaily.com/2016/09/27/allow-apps-from-anywhere-macos-gatekeeper/ 


## Converting your files in MatLab
Convert your structural file (e.g. “sSubjectNo0083-0005-00001-000176-01.nii”)

### 1) From .nii to .gii fil
Step 1) Prepare Matlab (using Video 1) 
	1. Open Matlab
	2. Setpath (add SPM folder)
	3. SPM
	4. click "fmri"

Step 2 - Segment) (using video 2) 
	1. Click "Volumes" in the list
	2. Click "Specify" (choose your .nii file)
	3. Press green arrow (top right)
		- Your will be saving the .nii file in the same folder as the original .nii file 

Step 3 - Render) 
In the SPM menu find "SPM for funcitonal MRI"
	1. Click "Rendering": Extract surface
	2. Click "Rend": Save rendering and surface

### 2) From .gii to .obj
1. Save the function below in a script in a folder you know the origin of
 - http://www.aleph.se/Nada/Ray/vertface2obj.m (the function to save)
 - simply copy and insert in an empty script in Matlab and save the script in a folder
2. In a new script write addpath('/way_to_folder_with_function') (i.e addpath('/Users/rikkeuldbaek/Desktop/home_directory’)) 
3. Insert following code in a new script: (note code might need to be indented correctly)
```
gg = gifti('mysurface.gii');
      v = gg.vertices;
      f = gg.faces;
      vertface2obj(v,f,'mysurface.obj')
```

4. Run script, and your .obj file will be created 


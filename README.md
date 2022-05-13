# Convert Tif 2 Png Or Jpg -------
This is a powershell script to convert tif files to jpg format or png format. It takes folder path as input. Searches the folder for .tif files and converts all of them to png/jpg(specified as input) and stores in the same folder)

## Usage

1. Convert to jpg

. ./convert.ps1    // includes the function
ConvertImage -path 'E:\projects\files' -jpgOrpng 'jpg' 

2. Convert to png

. ./convert.ps1   // includes the function
ConvertImage -path 'E:\projects\files' -jpgOrpng 'png'

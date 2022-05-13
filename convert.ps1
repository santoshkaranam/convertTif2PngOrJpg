function ConvertImage{
[CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string]
		$path='P:\geobene2\EOS_Documents\Projects\RapidAi4EO\sample01_Images', #path to files

        [Parameter(Mandatory = $true)]
        [string]
        $jpgOrpng='png'
    )
	
	if (Test-Path $path)
		{
		$files = Get-ChildItem -Path $path -Filter *.tif -Recurse -ErrorAction SilentlyContinue -Force | select FullName;
		echo $files;
		#Load required assemblies and get object reference
		[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
		foreach($file in $files){
			$convertfile = new-object System.Drawing.Bitmap($file.Fullname)
			$newfilname = ($file.Fullname -replace '([^.]).tif','$1') + "."+$jpgOrpng
			$convertfile.Save($newfilname, $jpgOrpng)
			$file.Fullname
			}  
		 }
		else
		{
		Write-Host "Path not found."
		}
}
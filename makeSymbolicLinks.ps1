function makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile($filename) {
	$currentDirectoryFullPath = Convert-Path .
	New-Item -ItemType SymbolicLink -Value $currentDirectoryFullPath\$filename -Path $env:userprofile -Name $filename -Force
}

function makeSymbolicLinksAtUserProfile() {
	makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile vimrc_common
	makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile vimrc_mine
	makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile _vimrc
	makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile _gvimrc
	makeSymbolicLinkToFileInCurrentDirectoryAtUserProfile _vsvimrc
}

makeSymbolicLinksAtUserProfile
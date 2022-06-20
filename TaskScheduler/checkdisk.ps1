Get-date | out-file "C:\Users\$env:Username\Desktop\checkdisk.txt" -append
get-psdrive -PSProvider FileSystem | out-file "C:\Users\$env:Username\Desktop\checkdisk.txt" -append
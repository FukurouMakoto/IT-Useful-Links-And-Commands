#####Creating backups with tar

tar is a very useful program that is often utilized to make compressed backups of linux systems. 

tar is often used in conjunction with gunzip, or gzip, compression in order to compress the file size of the resulting archive file.


Creating a tar backup file
```
sudo tar -cvpf backupArchive.tar /folders/to /backup
```

- c create new archive
- v verbose
- f archive file name
- p preserve permissions
- x extract tar file 
- t view contents of tar file
- C extract to the proceeding folder

Creating a tar backup with gzip compression
```
sudo tar -zcvpf backupArchive.tar.gz /folders/to /backup
```


Creating tar backup with bzip compression
```
sudo tar -jcvpf backupArchive.tbz2 /folders/to /backup
```


Appending a file to a tar backup
```
sudo tar -rvf backupArchive.tar /file/to/add.jpg
```
Note that you cannot append to a compressed file.


Excluding a file while creating tar backup
```
sudo tar -X /file/to/exclude.png -zcpvf backupArchive.tgz /etc
```

View contents of tar backup
```
sudo tar -tvf backupArchive.tgz /etc
```

extract tar file 
```
sudo tar -xpvf backupArchive.tgz 
```

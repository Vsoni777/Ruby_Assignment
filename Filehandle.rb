#Add Content to this file
#if file is not exist it will create
# fileobj=File.new("fil1.txt","w")
# fileobj.syswrite("Add line into this created file")
# fileobj.close

 

#Read Content for that file which are created
#if file is  not Exist it will give Errno:ENOENT
# fileobj=File.new("fil1.txt","r")
#read only 23 character form it
#puts(fileobj.sysread(23))
# =give Argument error
#puts(fileobj.sysread)
#read entire content of particular file
# puts(fileobj.read)
# fileobj.close


#Rename current file created
#true return 0
# fileobj=File.rename("fil1.txt","file1_new.txt")
# puts fileobj

#delete current file which created
#return 1 file deleted successfully
# puts (File.delete("file1_new.txt"))
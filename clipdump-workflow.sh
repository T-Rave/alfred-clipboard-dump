limit=$1

> clipdump.txt

if [ "$limit" = "export" ] 
then
	result=""
else
	result="LIMIT $limit"
fi

sqlite3 -csv ~/Library/Application\ Support/Alfred\ 3/Databases/clipboard.alfdb "SELECT item FROM clipboard $result;" > clipdump.txt

tail -r ./clipdump.txt

pbcopy < ./clipdump.txt
> clipdump.txt
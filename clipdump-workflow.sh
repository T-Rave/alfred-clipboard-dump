limit=$1

> clipdump.txt

if [ "$limit" = "export" ] 
then
	result=""
else
	result="ORDER BY item DESC LIMIT $limit"
fi

sqlite3 -list ~/Library/Application\ Support/Alfred\ 3/Databases/clipboard.alfdb "SELECT item FROM clipboard $result;" > clipdump.txt

pbcopy < ./clipdump.txt
> clipdump.txt
# Alfred Clipboard History Dump #
### a way to export all or portions of your working clipboard ###

### Description ###
Alfred is a productivity application for Mac OS X that has many tools and features to improve your workflow; however, they do not easily allow the export of clipboard history (if you're using the feature).

This script attempts to make the export from sqlite to a text file easy while also allowing a few nice extras that may contribute to your workflow. Namely, the ability to paste multiple text or links together after researching information.

_Interested_ in only dumping the clipboard history? [Use this gist for command line option](https://gist.github.com/T-Rave/3400f876e0f4226a09681e069bf28a68)

### Features ###
* Output full clipboard history or limit to certain number of lines
* Clear or Append to previous output file `clipdump.txt`
* Copy results into a single clipboard item

### Requirements###
* Alfred
* Powerpack addon if you want to make this a Workflow (trust me, it's worth it)
* sqlite3 installed
	* Homebrew: `brew install sqlite`
* Terminal (I prefer iTerm)

### How-to ###
* Download the `clipdump.sh` script. Written in Bash
* Open a terminal session and navigate to script location
* Run: `bash clipdump.sh`
* Answer the questions and a `clipdump.txt` will be produced in the directory you ran the script from
	* Results: Pressing `enter` will result in the whole clipboard history. This will result in larger file size. Inputing a number will export that many lines
	* Clear previous file: `y` will clear `clipdump.txt` if the file exists. `n` will append the new data to the end of `clipdump.txt`
	* Copy results: using `y` will place the output of `clipdump.txt` into your clipboard as a single item. WARNING: copying full history into clipboard may lead to issues
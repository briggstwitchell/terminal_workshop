
# Exercise Solutions

## FINDING ERRORS EXERCISE
_**Goal:**_ extract all the errors in the log filter and sort all unique errors.
| Step   | Task |
|-|-|
| 1 | Navigate to desktop |
| 2 | Create a new folder called 'terminal_practice' |
| 3 | Go into your new folder |
| 4 | [Download](../file_with_errors.txt) the `file_with_errors.txt` file from Github and it in your new folder. |
| 5 | Peak at the contents of the file you just downloaded |
| 6 | Create a new text file called 'unique_errors.txt' that we'll send all the unique errors to |
| 7 | Find the errors in the file and send all unique errors to a new textfile, sorting them in ascending order |
| 8 | Check that your new file contains only unique errors in sorted order |

[**VIDEO SOLUTION::** Terminal Exercise 1 -- Getting, Manipulating, & Directing Text Data](https://youtu.be/bKKZ5syMMDY) 
[![IMAGE ALT TEXT HERE](https://i9.ytimg.com/vi/bKKZ5syMMDY/mqdefault.jpg?v=6510c3bb&sqp=CKCIw6gG&rs=AOn4CLD21bipUvOZSL_naAS-5nnVaEtn1w)](https://youtu.be/bKKZ5syMMDY)

***
## FINDING ERRORS SOLUTION
| Step   | MacOS        | Windows (PowerShell) |
|-|-|-|
| 1 | `cd ~/Desktop` | `cd $env:USERPROFILE\Desktop`|
| 2 | `mkdir terminal_practice` | `mkdir terminal_practice`|
| 3 | `cd terminal_practice` | `cd terminal_practice`|
| 4 | Simply download file from Github page and place it in the `terminal practice folder`. | Simply download file from Github page and place it in the `terminal practice folder`. |
| 5 | `cat error_log.txt` | `Get-Content error_log.txt`|
| 6 | `touch unique_errors.txt` | `New-Item -Type File unique_errors.txt`|
| 7 | <code>cat error_log.txt &#124; grep "error" &#124; sort &#124; uniq >> unique_errors.txt</code> | <code>Get-Content error_log.txt &#124; Where-Object { $_ -match "error" } &#124; Sort-Object &#124; Get-Unique &#124; Add-Content -Path unique_errors.txt`</code>|
| 8 | `cat unique_errors.txt` | `Get-Content unique_errors.txt`|

Expected file contents of `unique_errors.txt`:
```
error 1
error 2
error 3
error 4
error 5
error 6
```
***

## HEADERS SHELL SCRIPT EXERCISE
_**Goal:**_ Modify the shell script to work on Python files. Then, make it executable from any directory on your computer.
| Step   | Task |
|-|-|
| 1 | Navigate to desktop |
| 2 | [Download](../make_header.sh) the `make_header.sh` file from Github. |
| 3 | Edit the `make_header.sh` file with Vim & TMUX to make it compatible with Python (it already works with Java & C) |
| 4 | Find your `PATH` directories for executable files |
| 5 | Move your edited .sh file to `PATH` (need to invoke super user access for this) |
| 6 | Modify the permissions on the make_header.sh file in your PATH to be _executable_ (need to invoke super user access for this)|
| 7 | Create or modify your `.zshprofile` (`.bash_profile` if you're using bash) file to include a new     environment variable called 'FILEWITHHEADER', that points to your `make_header.sh` executable.|
| 8 | Create an environment variable called 'FILEWITHHEADER' and assign it the value of the path to the shell script file |

You should be able to just call this variable with `$(FILEWITHHEADER)` and have it execute the script, saving you the time to write headers when you create files!

[**VIDEO SOLUTION:** Terminal Exercise 2 -- Executing Shell Scripts from Any Directory](https://youtu.be/qB74sIWwN5k) 
[![IMAGE ALT TEXT HERE](https://i9.ytimg.com/vi_webp/qB74sIWwN5k/mqdefault.webp?v=6510bf93&sqp=CJyBw6gG&rs=AOn4CLDuUHXiJYdD5R22cF7CbHvZVF2_Pw)](https://youtu.be/qB74sIWwN5k)
***

## HEADERS SHELL SCRIPT SOLUTION
| Step   | MacOS        | Windows (PowerShell) |
|-|-|-|
| 1 | `cd desktop` | `cd $env:USERPROFILE\Desktop`|
| 2 | Simply download file from Github page.  | Simply download file from Github page. |
| 3 | add code block (shown below) where it says `TODO` in the `.sh` ** | Add code block where it says `TODO` in the `.ps1` script |
| 4 | `echo $PATH \| tr ':' '\n'` | `$env:PATH -split ';'` |
| 5 | `sudo mv make_header.sh /usr/local/bin/` | This command moves a shell script to a bin directory on macOS. Windows doesn't have a standard location for scripts, but you can use any desired directory. For example: `Move-Item make_header.ps1 C:\Scripts\` |
| 6 | `sudo chmod +x /usr/local/bin/make_header.sh` | PowerShell scripts don't need execution permissions. You run them using the `PowerShell` executable. |
| 7 | `echo "export FILEWITHHEADER=/usr/local/bin/make_header.sh" >> .zprofile` (or `.bash_profile` if using bash) | Add to user's profile for persistent environment variable: `$env:FILEWITHHEADER = "C:\Scripts\make_header.ps1"; [System.Environment]::SetEnvironmentVariable("FILEWITHHEADER", $env:FILEWITHHEADER, [System.EnvironmentVariableTarget]::User)` |

** section to add to `make_header.sh`
```
elif [[ "$FILENAME" == *".py" ]]; then
    $(echo -e "'''\n$YOURNAME\n$PROFESSOR\n$COURSE\n$DATE\n'''\n\n" >> $FILENAME)
```

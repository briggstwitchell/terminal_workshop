# INTRO TO THE COMMAND LINE

![IMAGE ALT TEXT HERE](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrcPTeaOQ0liT3Rx4B7mdwyxLktierCf3sbA&usqp=CAU
)

***
## **1. CLI Basics**
**A. What's the point of the CLI?**

The CLI lets you Interact with your computer through text commands (instead of through the graphical user interface — a.k.a. the GUI)
	
What's it good for?
* Doing things more quickly (if you know what you're doing)
* Writing and executing running automated scripts for repetitive tasks
* SSHing into a remote server that has no graphical interface
* Accessing additional tools & capabilities not offered by GUI
	
Real software engineers & IT administrators use it in industry all the time, so for communication purposes alone it's important to understand!
***
_Before we get started:_
If you're on a Mac or Ubuntu machine, you're all set to execute Linux commands. If you're on a Windows machine, you can use PowerShell Commands (many are listed below), or you can [install](https://learn.microsoft.com/en-us/windows/wsl/install) WSL on your machine to have access to all Linux Terminal commands (this is recommended! -- [click here](https://youtu.be/ZtqBQ68cfJc?si=TWcyx1v3tpyv7MUW&t=1268) for a video guide on installing)


Installing WSL on Windows:
1) Run PowerShell as Administrator
2) Execute the `wsl --install` command within PowerShell
3) Reboot your computer
4) Use the Windows key to search for the Ubuntu app and run it
5) Create a Username and password
6) (optional) [install](https://learn.microsoft.com/en-us/windows/terminal/install) and/or run Terminal and then set Ubuntu to be your default shell

***
**B. Basic commands**

| macOS   | Windows        | What it does |
|-|-|-|
| `ls`                     | `dir`                  | List files and directories in the current directory.|
| `ls [directory]`| `dir [directory]` | List files of a specific directory.|
| `cd [directory]`         | `cd [directory]`       | Change to a specific directory.                       |
| `pwd`                    | `cd`                   | Show the current working directory.                |
| `mkdir [directory]`      | `mkdir [directory]`    | Create a new directory.                             |
| `touch [file]`           | `echo. > [file]`       | Create an empty file.                               |
| `cp [source] [destination]` | `copy [source] [destination]` | Copy files or directories.               |
| `mv [source] [destination]` | `move [source] [destination]` | Move or rename files/directories.          |
| `rm [file]`    | `del [file]` | Remove files.       |
| `rm -r [directory]`    | `rmdir [directory]` | Remove directory.       |
| `clear`                  | `cls`                  | Clear the terminal screen.|
| `cat [file]`             | `type [file]`          | Display the contents of a file.                    |
| `grep [pattern] [file]`  | `findstr [pattern] [file]` | Search for a pattern in a file.            |
| `echo [text]`            | `echo [text]`          | Display text in the terminal.                      |
| `man [command]` | `[command] --help` | Shows the official manual page for a given command as well as options for the command. |

_TIP_: Use `ctrl+r` to search your command history. You can also use `history` to get a view of your last several commands, and the `up arrow` pulls up your previous command executed.

#### **Absolute** vs **Relative** paths
> _**Absolute**_ paths always begin with a '`/`' character (ex. `/Users/Barney/Desktop`). On the other hand, _**relative**_ paths are always in relation to your current directory, so if you're in the director: `/Users/Barney/Documents` and then do `cd myFriends`, you'll navigate to `/Users/Barney/Documents/myFriends`.

***

**C. Manipulating files in VIM**

| Vim Command                | Explanation                                      |
|---------------------------|--------------------------------------------------|
| `i` or `a`                | Enter insert mode before or after the cursor.   |
| `Esc`                     | Exit insert mode or any other mode.             |
| `:w`                      | Save (write) the current file.                  |
| `:q`                      | Quit Vim.                                        |
| `:q!`                     | Quit Vim without saving changes.                |
| `:wq` or `ZZ`             | Save and quit Vim.                              |
| `:e [file]`               | Open or create a new file.                      |
| `:x`                      | Save and quit if changes were made.             |
| `/[pattern]`              | Search forward for a pattern in the file.       |
| `n` or `N`                | Move to the next or previous search result.     |
| `dd`                      | Delete (cut) the current line.                  |
| `yy`                      | Yank (copy) the current line.                   |
| `p` or `P`                | Paste after or before the cursor.               |
| `u`                       | Undo the last action.                           |
| `Ctrl` + `r`              | Redo the undone action.                         |
| `:s/[old]/[new]/g`        | Replace all occurrences of [old] with [new].    |
| `:set number`             | Display line numbers.                          |
| `:set nonumber`           | Hide line numbers.                             |
| `:sp [file]`              | Split the window horizontally and open [file]. |
| `:vsp [file]`             | Split the window vertically and open [file].   |
| `Ctrl` + `ww`             | Switch between open windows.                   |
| `:q` in visual mode       | Quit the visual selection.                     |
| `:w [newfile]`            | Write the selected text to [newfile].          |
| `:r [file]`               | Insert the content of [file] below the cursor. |
| `:set number`               | Display line numbers |

_NOTE_: Vim comes pre-installed on Mac. On Windows, you'll need to [download](https://www.vim.org/download.php) it.

***
**D. Searching for & within files**

| Wildcard | What does it do? | Example command | Example explained|
|-|-|-|-|
| `*` | Matches any sequence of characters. | `ls *.txt`|Lists all files ending with '.txt' |
| `?` |Matches any single character.| `ls h?llo.txt`|Lists all files that match 'h_llo.txt' |patter, such as 'hello.txt' & 'hallo.txt' |
| `[abc]` |Matches any of the characters specified within the brackets.| `ls h[ae]llo.txt`| Will list list 'hello.txt' & 'hallo.txt' but not 'hullo.txt' |

Here are some commands for searching _within_ files:
| macOS   | Windows        | What it does |
|-|-|-|
| `grep ["search term"] [filename]`|`findstr ["search term"] [filename]`| Returns back the line(s) that contains the search term.|
| `sed "s/old_text/new_text/g" [filename]`|N/A - will likely use powershell for this| Substitutes old text with next text for all instances. Note that `s` stands for substitute and `g` stands for global. |

***
### <ins>_E. File permission basics_</ins>

In Linux, every file and directory has an associated set of permissions. These permissions determine who can read, write, and execute the file or directory. 

_Permissions are represented by three groups:_

1. **Owner Permissions**: The permissions for the user who owns the file.
2. **Group Permissions**: The permissions for users who are members of the file's group.
3. **Others Permissions**: The permissions for users who aren't the owner or part of the group.

_Each group has three permissions:_

- **Read (r)**: Ability to read the contents of the file.
- **Write (w)**: Ability to modify the file.
- **Execute (x)**: Ability to execute the file (or, in the case of directories, access them).

For instance, a file with permissions `rwxr-xr--` means:

- The owner can read, write, and execute (`rwx`).
- The group members can read and execute, but not write (`r-x`).
- Others can only read (`r--`).

### Viewing Permissions

Use the `ls` command with `-l` option:

```
ls -l /path/to/file_or_directory
```
### Changing Permissions
Use the `chmod` command. You can specify permissions in symbolic mode (using r, w, x) or in numeric mode (using octal numbers). For example, to add execute permissions for the owner:

```
chmod u+x /path/to/file
```

Or, to set specific permissions using octal numbers (where `7` is rwx, `6` is rw-, etc.):

```
chmod 755 /path/to/file
```

This gives the owner full permissions (`rwx` or `7`), and the group and others read and execute permissions (`r-x` or `5`).

***

## **2. Leveling up the CLI**

### <ins>_Piping_</ins>
We can use the pipe character -- '`|`' -- to chain together multiple commands. Often it's helpful to use the output from one command as the input of another command. Here's an example:

```
ls | wc -l
```
This sequence of commands has two parts, in sequence:
1. `ls` **&#8592;** list all files in the current directory
2. `wc -l` **&#8592;** count the number of files returned from the previous command

Chaining commands can be especially helpful for filtering & sorting large amounts of data.
***
### <ins>_Redirection & File Input_</ins>

Often we want to direct the contents of some file or process into another file or process. There are 3 basic ways in which we can achieve this:

| Character | Function |
|-|-|
|[some_output] `>` [some_file]| Overwrite the contents of some_file |
|[some_output] `>>` [some_file]| Append to some_file |
|[some_file_taking input] `<` [some_file] | Read the contents of some_file into some_file_taking_input|

### **Sending data into a file**
Suppose we have a simple Python program that reads in a name sent in and then prints back a message:

`hello.py`
```
name = input()
print(f"Hello, {name!")
```

Suppose we have another file containing a name:

`name.txt`
```
Barry Bonds
```

If we want to run the Python file and send in the contents of `name.txt`, we can do the following command in the terminal:

```
Python3 hello.py < name.txt
```
This sequence begins running `hello.py`, then hits the first line that asks for input, searches for an input stream, and find it with the `name.txt` that we directed into it, giving us the following output:
```
>>> Hello, Barry Bonds!
```

### **Writing to a file**
We can also write to a file by using the character for the other direction. --  for example:
```
echo "Dilophosaurus" > myFavoriteDinosaurs.txt
```
The above command writes to the `myFavoriteDinoaurs.txt` file, overwriting anything in it if it does exist, and creating it if it doesn't exist. If we merely want to append to it, we use `>>`:

```
echo "Allosaurus" >> myFavoriteDinosaurs.txt
```
After these two commands, my text file will look like this:

`myFavoriteDinosaurs.txt`
```
Dilophosaurus
Allosaurus
```

### <ins>_Environment Variables_</ins>


Environment variables are, in simple terms, values that are accessible anywhere we navigate in our computer, assigned to a variable. They often store useful info relevant for various tasks your machine may want to perform.

A commonly used environment variable is PATH. You can access an environment variable by typing a `$` before the variable name. For example:
```
echo $PATH
```

will print back to you the directories in which your executables exist. We can list all of our environment variable with the `printenv` command. To create an environment variable, we use:

```
export MY_VARIABLE="hello world"
```

Once we do this, we'll see this new variable in our list of environment variables.

***
## **3. Automating the CLI with Shell Scripts**

Shell scripts are a way to consolidate terminal commands into executable files that can run upon a single call. This is useful for automating tasks that might rely on CLI commands.

Shell scripts end in `.sh`, and (just like any other programming language) they have their own syntax: 

| Category             | Syntax/Command                | Description                                                                                           |
|----------------------|-------------------------------|-------------------------------------------------------------------------------------------------------|
| **Shebang**          | `#!/bin/bash`                 | Tells the system to interpret the script using Bash. Placed at the very beginning of the script.      |
|                      | `#!/bin/sh`                   | Uses the system's default shell (`sh`).                                                               |
| **Variables**        | `VARNAME=value`               | Assigns a value to a variable.                                                                         |
|                      | `echo $VARNAME`               | Accesses the value of a variable.                                                                     |
| **Conditionals**     | `if [ ... ]; then ... fi`     | Basic `if` statement.                                                                                 |
|                      | `if [ ... ]; then ... else ... fi` | `if-else` statement.                                                        |
|                      | `if [ ... ]; then ... elif [ ... ]; then ... fi` | `if-elif-else` structure.                        |
| **Loops**            | `for i in {1..10}; do ... done` | A basic `for` loop, iterating from 1 to 10.                                                          |
|                      | `while [ ... ]; do ... done`  | `while` loop that continues as long as the condition inside `[ ... ]` is true.                        |
| **Functions**        | `function_name() { ... }`     | Defines a function.                                                                                   |
|                      | `function_name`               | Calls the function.                                                                                   |
| **Parameters**       | `$1, $2, ...`                 | Accesses positional parameters. `$1` is the first argument, `$2` the second, and so on.               |
|                      | `$#`                         | The number of arguments passed to the script.                                                         |
|                      | `$0`                         | The name of the script itself.                                                                        |
| **Command Execution**| `$(command)` or `` `command` `` | Executes a command and returns its output. Used for command substitution.                            |
| **Tests**            | `[ -f "filename" ]`           | Returns true if "filename" exists and is a regular file.                                              |
|                      | `[ -d "dirname" ]`            | Returns true if "dirname" exists and is a directory.                                                  |
|                      | `[ "$var1" = "$var2" ]`       | Compares two strings for equality.                                                                    |
| **Arithmetic**       | `$(( expression ))`           | Evaluates an arithmetic expression. E.g., `result=$(( $a + $b ))` assigns the sum of `$a` and `$b` to `result`. |

As always, reference `man bash` for further details on this topic.

[Here's](./exercises/solution/make_header_solution.sh) an example of a simple shell script that can automate the task of writing headers into our Python, Java, & C files: 

Note in this file that we use `$(some_command)` to invoke a CLI command within the script.

***
## **Conclusion**
This page is just the tip of the iceburg in exploring the many things you can do with the CLI. Below are links to the resources used to create the repo.

For help in using the CLI, your best friends will be Google, ChatGPT, & StackOverflow. So if you're unsure about anything, ask them first and you'll likely get a good answer.
***
### _Additional Resources_


[**The Ultimate Guide to the Linux Terminal**](https://youtu.be/ZtqBQ68cfJc?si=YkqnN0WFNigYRcCr)

[![IMAGE ALT TEXT HERE](https://i.ytimg.com/vi/ZtqBQ68cfJc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCJwB4di1rWyAaEM50TaJ1QpajbqQ)](https://youtu.be/ZtqBQ68cfJc?si=YkqnN0WFNigYRcCr)


[**PowerShell Made Easy**](https://youtu.be/b7SGPchYRn0?si=AmLaJC4jqdEscc44)

[![IMAGE ALT TEXT HERE](https://i.ytimg.com/vi/b7SGPchYRn0/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLALom2inBG9IhWYzh2n1RBhDjfwow)](https://youtu.be/b7SGPchYRn0?si=AmLaJC4jqdEscc44)

#### __Reference Manuals:__
[Linux Commands Handbook](https://www.freecodecamp.org/news/the-linux-commands-handbook/)

[Vim Cheat Sheet](https://vim.rtorr.com/)

[PowerShell Quick Reference](https://practicalpowershell.com/wp-content/uploads/2020/04/PowerShellQuickReference-PowerShell7.0-v1.03.pdf)

[Workshop Zoom recording](https://www.dropbox.com/scl/fi/zr8fbnc2i0naeolqufh1m/terminal_workshop_Zoom_recording.mp4?rlkey=88qahaaih1e0wgf7uwusx50x0&dl=0)

## Be sure to check out the [exercises](/exercises/) folder for some beginner exercises to explore the most important topics!

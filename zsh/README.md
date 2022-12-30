# Z shell
The **Z shell** (**Zsh**) is a [Unix shell](https://www.wikiwand.com/en/Unix_shell) that can be used as an [interactive](https://www.wikiwand.com/en/Interactive "Interactive") login [shell](https://www.wikiwand.com/en/Shell_(computing)) and as a [command interpreter](https://www.wikiwand.com/en/Command_line_interpreter "Command line interpreter") for [shell scripting](https://www.wikiwand.com/en/Shell_script "Shell script"). Zsh is an extended [Bourne shell](https://www.wikiwand.com/en/Bourne_shell "Bourne shell") with many improvements, including some features of [Bash](https://www.wikiwand.com/en/Bash_(Unix_shell)), [ksh](https://www.wikiwand.com/en/KornShell), and [tcsh](https://www.wikiwand.com/en/Tcsh).

## History[](https://en.wikipedia.org/w/index.php?title=Z_shell&action=edit&section=1)

Paul Falstad wrote the first version of Zsh in 1990[[5]](https://www.wikiwand.com/en/Z_shell#citenote5) while a student at [Princeton University](https://www.wikiwand.com/en/Princeton_University).[[6]](https://www.wikiwand.com/en/Z_shell#citenote6) The name _zsh_ derives from the name of [Yale](https://www.wikiwand.com/en/Yale_University "Yale University") professor Zhong Shao (then a teaching assistant at Princeton University) – Paul Falstad regarded Shao's [login-id](https://www.wikiwand.com/en/Login_name "Login name"), "zsh", as a good name for a shell.[[7]](https://www.wikiwand.com/en/Z_shell#citenote7)[[8]](https://www.wikiwand.com/en/Z_shell#citenote8)

Zsh was at first intended to be a subset of csh for the Commodore Amiga, but expanded far beyond that. By the time of the release of version 1.0 in 1990 the aim was to be a cross between ksh and tcsh – a powerful "command and programming language" that is well-designed and logical (like ksh), but also built for humans (like tcsh), with all the neat features like spell checking, login/logout watching and termcap support that were "probably too weird to make it into an AT&T product".[[9]](https://www.wikiwand.com/en/Z_shell#citenotezsh109)

Zsh is available as a separate package for [Microsoft Windows](https://www.wikiwand.com/en/Microsoft_Windows) as part of the [UnxUtils](https://www.wikiwand.com/en/UnxUtils) collection of [native](https://www.wikiwand.com/en/Native_(computing) "Native (computing)") [Win32](https://www.wikiwand.com/en/Windows_API "Windows API") [ports](https://www.wikiwand.com/en/Porting "Porting") of common [GNU](https://www.wikiwand.com/en/GNU "GNU") Unix-like utilities.[[10]](https://www.wikiwand.com/en/Z_shell#citenote10)

In 2019, [macOS Catalina](https://www.wikiwand.com/en/MacOS_Catalina "MacOS Catalina") adopted Zsh as the default login shell, replacing the [GPLv2](https://www.wikiwand.com/en/GPLv2 "GPLv2") licensed version of [Bash](https://www.wikiwand.com/en/Bash_(Unix_shell) "Bash (Unix shell)"),[[11]](https://www.wikiwand.com/en/Z_shell#citenote11) and when Bash is run interactively on Catalina, a warning is shown by default.[[12]](https://www.wikiwand.com/en/Z_shell#citenote12)

In 2020, [Kali Linux](https://www.wikiwand.com/en/Kali_Linux) adopted Zsh as the default shell since its 2020.4 release.

## Features[](https://en.wikipedia.org/w/index.php?title=Z_shell&action=edit&section=2)

![Z shell's configuration utility for new users](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Zsh_5.8_new_install_screenshot.png/440px-Zsh_5.8_new_install_screenshot.png)[](https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.wikiwand.com%2Fen%2Fz_shell&media=%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fe8%2FZsh_5.8_new_install_screenshot.png%2F440px-Zsh_5.8_new_install_screenshot.png&description=From%20Wikiwand:%20Z%20shell%26apos%3Bs%20configuration%20utility%20for%20new%20users)

Z shell's configuration utility for new users

![Zsh with Agnoster theme running on Konsole terminal emulator](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Zsh-agnoster.png/440px-Zsh-agnoster.png)[](https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.wikiwand.com%2Fen%2Fz_shell&media=%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F1f%2FZsh-agnoster.png%2F440px-Zsh-agnoster.png&description=From%20Wikiwand:%20Zsh%20with%20Agnoster%20theme%20running%20on%20Konsole%20terminal%20emulator)

Zsh with Agnoster theme running on [Konsole](https://www.wikiwand.com/en/Konsole "Konsole") terminal emulator

Features include:[[14]](https://www.wikiwand.com/en/Z_shell#citenote14)

-   Programmable [command-line completion](https://www.wikiwand.com/en/Command-line_completion) that can help the user type both options and arguments for most used commands, with out-of-the-box support for several hundred commands
-   Sharing of [command history](https://www.wikiwand.com/en/Command_history "Command history") among all running shells
-   Extended [file globbing](https://www.wikiwand.com/en/Glob_(programming) "Glob (programming)") allows file specification without needing to run an external program such as [find](https://www.wikiwand.com/en/Find_(Unix) "Find (Unix)")
-   Improved [variable](https://www.wikiwand.com/en/Variable_(computer_science) "Variable (computer science)")/[array](https://www.wikiwand.com/en/Array_data_structure "Array data structure") handling
-   Editing of multi-line commands in a single buffer
-   [Spelling correction](https://www.wikiwand.com/en/Spell_checker) and [autofill](https://www.wikiwand.com/en/Autofill "Autofill") of command names (and optionally arguments, assumed to be file names)
-   Various compatibility modes, e.g. Zsh can pretend to be a [Bourne shell](https://www.wikiwand.com/en/Bourne_shell "Bourne shell") when run as `/bin/sh`
-   Themeable [prompts](https://www.wikiwand.com/en/Command_line_interface#Command_prompt "Command line interface"), including the ability to put prompt information on the right side of the screen and have it auto-hide when typing a long command
-   Loadable modules, providing among other things: full [TCP](https://www.wikiwand.com/en/Transmission_Control_Protocol "Transmission Control Protocol") and [Unix domain socket](https://www.wikiwand.com/en/Unix_domain_socket) controls, an [FTP](https://www.wikiwand.com/en/File_Transfer_Protocol "File Transfer Protocol") client, and extended math functions.
-   The built-in `where` command. Works like the `which` command but shows all locations of the target command in the directories specified in `$PATH` rather than only the one that will be used.
-   Named directories. This allows the user to set up shortcuts such as `~mydir`, which then behave the way `~` and `~user` do.

## Plugins Used
````markup
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/nul
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh 2>/dev/null
zstyle ':completion:*' menu select
````markup

## What is Windows Terminal
#### Windows Terminal is a modern terminal application for users of command-line tools and shells like Command Prompt, PowerShell, and Windows Subsystem for Linux (WSL). Its main features include multiple tabs, panes, Unicode and UTF-8 character support, a GPU accelerated text rendering engine, and the ability to create your own themes and customize text, colors, backgrounds, and shortcuts.

## Customization list:
#### Install a [Nerd Font](https://www.nerdfonts.com/)
#### Install [starship](https://starship.rs/)

```
winget install --id Starship.Starship
```

#### (stopped using it)Customize your PowerShell prompt with [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
```
Install-Module oh-my-posh -Scope CurrentUser

// optional
Install-Module posh-git -Scope CurrentUser
PowerShellGet\Update-Module posh-git

themes
Get-PoshThemes
Set-PoshPrompt -Theme clean-detailed
```

#### Use [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) to add missing folder or file icons
```
Install-Module -Name Terminal-Icons -Repository PSGallery
add this to $PROFILE
Import-Module -Name Terminal-Icons

```

### Configuration are stored in PROFILE file
#### to accesss it run - nvim or notepad or code $PROFILE ####

## Posh-git
posh-git is a PowerShell module that integrates Git and PowerShell by providing Git status summary information that can be displayed in the PowerShell prompt.
#### (A) You've never installed posh-git from the PowerShell Gallery
    PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
#### (B) You've already installed a previous version of posh-git from the PowerShell Gallery
    PowerShellGet\Update-Module posh-git



# Automation-with-Bash-Scripts-for-Absolute-Beginners
Basic Automation with Bash Scripts for Absolute Beginners


If you are getting started with Bash scripts, between learning about permissions, VIM, NANO, and commands, it’s easy to understand how it all ‘fits’ together and why it matters. Here’s why-automation.

Scripting is all about automation or making your life easier as a developer. Now to be clear, not everything should be automated with scripts. Some tasks are simple enough that it’s much easier to simply learn and run the commands rather than spend an hour writing a script.

However, if you’re just getting started on your DevOps journey, I wanted to show you how a simple script works so you can start to imagine how you can automate mundane tasks with your own scripts:

Prerequisites

Knowledge of basic Linux commands (Including the $PATH environmental variable & permissions)
Comfort working within a CLI
Basic understanding of a Linux CL editor (Vi, Vim, Nano, etc.)


Step 1: Determine Project Scope

Let’s assume that you are a new Linux admin and your team has tasked you with deploying a new server to test their new landing page prior to production.

While you could certainly do this manually each time a new server would need to be spun up, however, you have decided to write the commands within a script, which will allow you to save time by allowing the script to run the commands and steps for you when you execute the script. Remember, scripts simply execute a series of predetermined commands.

I actually show you how to install a Web Server in four simple steps here.

In the interest of time and your attention span, I am going to copy those commands from this article where I previously showed anyone how they can spin up a server. We are going to use these commands and write them into a script. Please read that article if you are struggling to understand any of the commands I am using below

Step 2: SSH, Create a Blank Script File using Nano command, Write our Script

This will create an empty file called “serverspinup.sh” and enter the nano editor.

You can call the file name whatever you want. But convention says to name it something that resembles the script’s function and end the file extension with .sh which is the standard file extension for scripts.

In Nano write the following commands:

Let’s break down what we’ve written in our script:

!# - prompts our terminal that we are creating an executable script and

/bin/bash — prompts our OS where to find the binary files in our system to execute scripts

sudo — Allows you to run commands that require root access

apt-get update — Downloads package information from all configured sources. We use apt because our Linux distribution is Debian-based.

apt install apache2 — Downloads the software to run our web server. We’ve chosen to use Apache 2.

systemctl start apache2 — Instructs our web server to start up

“-y” Our system may prompt us to verify package size prior to download, therefore, we use the “y” option to issue a “yes” when the command is run to prevent an error from occurring thereby terminating the scrip. Not all systems will preemptively prompt you, but to be safe, we add it to our commands.

systemctl status apache — Prints the status of our Web Server to screen so we can verify that it is working properly.

sleep — Issues brief pauses between commands each number represents a second.

This looks good. We hit command+x to exit nano, “y” to save the changes, and acknowledge the same file name.

Step 3: Make the Script Executable

Shell scripts must be executed in order for us to prompt our system to run the commands within them when we call for their execution. We need to make our new serverspinup.sh script executable by using the following command in our terminal:

Step 3: Test our Script
Running our script is easy we preface our file name with “./”:



If your script is running successfully, you should see something similar to this in your CLI:




Step 4: Verify Results in Web Browser
Now open your web browser and type in your Web Server IP address to verify that your web server is live. Your new web servers should display the default Apache page:



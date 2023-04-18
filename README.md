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

# ADDARR
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/waterboy1602/addarr)](https://hub.docker.com/r/waterboy1602/addarr)
[![Docker Pulls](https://img.shields.io/docker/pulls/waterboy1602/addarr)](https://hub.docker.com/r/waterboy1602/addarr)

This is a Telegram Bot made to add series to [Sonarr](https://github.com/Sonarr/Sonarr) or movies to [Radarr](https://github.com/Radarr/Radarr) with a couple of commands. You can also communicate with your [Transmission](https://transmissionbt.com/) service to change its download speed. The bot has also recently changed from a ReplyKeyboard to an InlineKeboard, as you can see in the [screenshots](#screenshots).
## FEATURES
- Add series/movies to Sonarr/Radarr
- Get a list of all the series on Sonarr
- Change down-/uploadspeed of Transmission (Temporary Speed Limit)
- Secure bot with a password. New chats first need to authenticate
- Wrong login attempts are saved in `addarr.log`
- Possibility to enable the Transmission-command only for admins
- Possibility to change the entrypoints of the commands
- Translated in English and Dutch
- Command to give an overview of all the other commands

## COMMANDS
These are the default commands:
- `/help`: gives an overview of all the commands with their action
- `/auth`: authenticate the chat to use this bot
- `/start`: start adding a series or movie to Sonarr/Radarr
- `/movie` (en)/`/film` (nl): start adding a movie to Radarr
- `/series` (en)/`/serie` (nl): start adding a series to Sonarr
- `/allSeries`: receive a list of all the series on Sonarr
- `/transmission`: change the down-/upload speed of Transmission from Temporary Speed Limit to normal or the other way around
- `/stop`: stops the command you were executing. Can be used at any moment  

Every command does also work if you send a message without `/` and no other words before or after the entrypoint

## CONFIG
An example of the config file (`config_example.yaml`) can be found in this repository. Change it to your configuration. After you've filled in all the necessary fields, rename it to `config.yaml`.

## ADMIN    
There is a functionality to only let admins use the `transmission` command. Before you can use this, you should enable it in the config file `config.yaml`. Then you need to add the admins to `admin.txt`. You can add the `username` or `id` of the user. Every added user should be on a new line to prevent errors.

## INSTALLATION
You can find the installation guides on the [wikipage](https://github.com/Waterboy1602/Addarr/wiki).
- [FreeBSD](https://github.com/Waterboy1602/Addarr/wiki/Installation-on-FreeBSD)
- [Docker](https://github.com/Waterboy1602/Addarr/wiki/Installation-on-Docker)
- [Windows](https://github.com/Waterboy1602/Addarr/wiki/Installation-on-Windows)
- [Linux](https://github.com/Waterboy1602/Addarr/wiki/Installation-on-Linux)

## SCREENSHOTS
<div style="float: left">
<img src="https://i.imgur.com/axufiPY.png" height="350" style="padding-right: 50px">
<img src="https://i.imgur.com/oH0Q8XI.png" height="350" style="padding-right: 50px">
<img src="https://i.imgur.com/17zZJ4s.png" height="350" style="padding-right: 50px">
</div>


<!--
## HOW IT WORKS
Authenticating a chat can be achieved by `/auth` or `auth`. The chat will ask you to enter the password and will response when it is correct or false. You need to enter the correct password, before you can do anything else.

If you've entered a wrong password, there will be saved a log to `addarr.log` with the timestamp, username and entered password. Possible errors from executing the code will also be saved there.

You can start the Transmission command with `/transmission` or `transmission`. After that you will be asked what you want to do. Just press the action you want and it's done.

You can start adding series/movies with `/start` or just `start`. The next steps will be made clear by the bot. At any time you can stop the adding by sending `/stop` or `stop`.

You can also start adding a series or movie with `/movie` or `/series` when the bot is running in English or `/film` or `/serie` when the bot is running in Dutch. This will skip the step of asking if the title represents a series or a movie.

Different entrypoints for all these commands can be entered in the config file, except `/movie`/`/film`/`series`/`serie`, which are defined in `lang.yaml`.

To receive a list of all the series on Sonarr you can use the command `/allSeries` or `allSeries`. This will give you their title, year, status and if they are monitored or not.
-->
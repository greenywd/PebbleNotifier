# PebbleNotifier
Posts a Notification when connected to a Pebble device via Bluetooth. Tiny preview can be found on my Youtube [here](https://t.co/Wj4x68dfKL).

#Bugs
I don't want to, or need to know about the fact that notifications come up multiple times. Apart from that everything else should be working. To report bugs, please do so via Github [here](https://github.com/GreenyDev/PebbleNotifier/issues/new). If you don't have a Github account/don't want one, feel free to contact me on Twitter [here](http://www.twitter.com/GreenyDev/)

#How to Install?
I don't recommend installing in it's current state because of bugs that I've mentioned above, but if curiosity gets the better of you or you just want it, here's multiple ways of doing so.

**1. (Recommended)** 
**[Download the .deb package](https://github.com/GreenyDev/PebbleNotifier/releases/tag/v0.1-beta)** on your device that you can install via iFile, Filza, SSH, etc

===
**2.** Compile from the source. To do this you need Theos installed on a device (Computer running OS X, iDevice or Linux preferably - or anything apart from Windows). Clone this project and run setup.sh making sure your $THEOS path is set correctly. Then simply run `make package` to create a deb file which you can then install onto your jailbroken device. This option is for those who want to modify this code for themselves.



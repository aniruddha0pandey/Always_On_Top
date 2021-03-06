# <div align="center">Always On Top</div><br/>
Hi, I'm Aniruddha and I like to mulitask. But I cannot do that in the hubbub of these terrible amount of tabs, switching between muliple windows to find that one particular one is just not my thing. And for a **Windows** user like me things become adverse. Since I use the <a href="https://gcc.gnu.org/">GNU Compiler Collection (GCC)<a/> for my C/C++ compilation this makes me prone to switch between multiple tabs between, *terminal* and *text editor*. As a upshot I hoped to have the `Always On Top` feature available in *OS* like **Linux** to make the anticipated window in front of everything or of the heighest z-value. **Windows** doesn’t offer a built-in way for users to make a window always on top but there's a catch there are many third-party tools availabe for this and I started to probe with a few and end with the three handy software.<br/>

- [AutoHotkey](https://autohotkey.com/)
- [DeskPins](https://efotinis.neocities.org/deskpins/)
- [AutoIt](https://www.autoitscript.com/site/autoit/)<br/>

But things didn't went well for the first two. I intalled **AutoHotKey** at first but unable to run it in my system. Then **DeskPins**, but it's GUI doesn't catches my fancy, actually it was too straight forward for me. So the last resort is **AutoIt** and this time it worked:heart:!, maybe third time's a charm.<br/>
I made a `AutoIt V3 Script` for what I desire. Hope you'll find it fruitful.<br/>
A little shoutout to **@kissgyorgy** as I've used a *function* mention in his <a href="https://gist.github.com/kissgyorgy/4536028">Gist<a/>.<br/><br/>

## Installation
As I've recently updated my *OS* to *windows 10* I cannot stop myself in delving inside the updated **PowerShell 5.0**.<br/>
That's why all prerequisites are in *PowerShell*.<br/>

> Press `Windows key + R` from anywhere in your computer.<br/>
> Type `powershell` in the *Run Window* and hit return.

This will open a prompt name *Windows PowerShell*.<br/>
Now we're all set to dowload the *AutoIt Installer*. You can use the below mention commands. Refere [Screenshots](https://github.com/aniruddha0pandey/Always_On_Top/blob/master/README.md#step---i).
```powershell
> $source = "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe"
> $destination = "C:\Users\<Your Administrator Name>\Downloads\autoit-v3-setup.exe"
> curl $source -OutFile $destination
```
This command will start downloading the required *autoit-v3-setup*.<br/>
Then next step is to install the setup. Refere [Screenshots](https://github.com/aniruddha0pandey/Always_On_Top/blob/master/README.md#step---ii).
```powershell
> cd .\Downloads\
> autoit-v3-setup.exe
```
You can download the repo from here:  <a href="https://github.com/aniruddha0pandey/Always_On_Top/archive/master.zip" target="_blank" download><img src="https://github.com/aniruddha0pandey/Always_On_Top/blob/master/Resources/download.svg"></a><br/>
And binaries from here:  <a href="https://github.com/aniruddha0pandey/Always_On_Top/raw/master/bin/SetCmdTop.exe" target="_blank" download><img src="https://github.com/aniruddha0pandey/Always_On_Top/blob/master/Resources/download.svg"></a>
<br/><br/>
## ScreenShots
#### Step - I
<div align="center"><img src="https://github.com/aniruddha0pandey/Always_On_Top/blob/master/Resources/1.PNG"></div>

#### Step - II
<div align="center"><img src="https://github.com/aniruddha0pandey/Always_On_Top/blob/master/Resources/2.PNG"></div>
<br/>

## Contribution guidelines
The source (.au3) file is here: [![Download](https://github.com/aniruddha0pandey/Always_On_Top/blob/master/Resources/code.svg)](https://github.com/aniruddha0pandey/Always_On_Top/blob/master/src/SetCmdTop.au3). In starting of this project I've assigned some milestone but only one of that is completed.
- [x] Handling of muliple instances of Command Prompt (As 'SYSTEM32' is different than 'system32').
- [ ] Script should be initiated on startup and should run until next session (and not for once).
- [ ] Can Pin to top any Window using (Ctrl + Shift + Space).
- [ ] The Prompt should be opened at right corner other than (X, Y) ≡ (0, 0).


You could contribute to this repo by working on these milestones.
<br/><br/>

## Motivation
As if for third point the below *HotKey Script* can be implemented.

```autoit
HotKeySet("^+{space}", "reactionFunction")

While 1
   ; A loop
WEnd

Func reactionFunction()
   MsgBox(0, "Always on Top", "You pressed CTRL+Shift+Space" & @LF & "Active Window is on Top now.")
   Exit
EndFunc
```

# <div align="center">Always On Top</div>
Hi, I'm Aniruddha and I like to mulitask. But I cannot do that in the hubbub of these terrible amount of tabs, switching between muliple windows to find that one particular one is just not my thing. And for a **Windows** user like me things become adverse. Since I use the <a href="https://gcc.gnu.org/">GNU Compiler Collection (GCC)<a/> for my C/C++ compilation I'm prone to switch between multiple tabs between my *terminal* and *text editor*. As a upshot I hope to have the `Always On Top` feature available in *OS* like **Linux** to make the anticipated window in front of everything or of the heighest z-value. **Windows** doesn’t offer a built-in way for users to make a window always on top but there's a catch there are many third-party tools availabe for this and I started to probe with a few and end with the three handy software.<br/>

- [AutoHotkey](https://autohotkey.com/)
- [DeskPins](https://efotinis.neocities.org/deskpins/)
- [AutoIt](https://www.autoitscript.com/site/autoit/)<br/>

But things didn't went well for the first two. I intalled **AutoHotKey** at first but unable to run it in my system. Then **DeskPins**, but it's GUI doesn't catch my fancy, actually it was too straight forward for me. So the last resort is **AutoIt** and this time it worked!<br/>
I made a `AutoIt V3 Script` for what I desire. Hope you'll find it fruitful.<br/>
A little shoutout to **@kissgyorgy** as I've used a *function* mention in his <a href="https://gist.github.com/kissgyorgy/4536028">Gist<a/>.<br/><br/>

## Installation
As I've recently updated my *OS* to *windows 10* I cannot stop myself in delving inside the updated **PowerShell 5.0**.<br/>
That's why the all the prerequisites are in *PowerShell*.<br/><br/>

Press `Windows key + R` from anywhere in your computer.<br/>
Type `powershell` in the *Run Window* and hit return.<br/>
This will open a prompt name *Windows PowerShell*.<br/>
Now we're all set to dowload the *AutoIt Installer*. Use the commands below.<br/><br/>

```powershell
> $source = "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe"
> $destination = "C:\Users\Aniruddha Pandey\Downloads\autoit-v3-setup.exe"
> curl $source -OutFile $destination
```

```powershell
> cd .\Downloads\
> autoit-v3-setup.exe
```

## ScreenShots

## Contribution guidelines

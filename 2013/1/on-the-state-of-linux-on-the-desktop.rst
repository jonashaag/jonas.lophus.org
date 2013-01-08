title: On the State of Linux on the Desktop

Last week I wanted to replace a crashed Windows 7 with a modern Desktop Linux
because I was tired of fixing Windows every few months.

I really did not set the bar too high: I wanted something stable and easy to use
that just works for the average computer user.  Plus it had to be able to convert
Outlook's emails and contacts into whatever email program I was going to use.

My first try was Fedora since -- so I thought -- it's considered a rather stable
distribution (not like Ubuntu where basically everything breaks every 6 months)
although having relatively up-to-date packages (compared to Debian).

I knew that Mozilla Thunderbird does not support Outlook's `.pst` file format
out of the box, so I went with GNOME Evolution for a first try.

Here is where the fun begins.

* Evolution would never exit gracefully. Quitting it always resulted in a crash
  (mostly Segmentation Faults).
* After importing contacts and restarting the application all contacts simply
  vanished. (This reminded me of a bug a few years ago that made some contacts
  vanish when using the contact list scroll bar.) Restarting Evolution a few
  times didn't change a thing; although after importing the contacts a second
  time they appeared again -- twice, of course. (Note: There doesn't seem to be
  "delete duplicate contacts" feature.) Strangely enough they didn't disappear
  ever again.
* Autocompletion in a contact search dialog -- that, btw, does not work at all
  without auto completion because there's no way to select contacts from a list
  in that dialog -- did not work. At all.
* It randomly crashed when you entered a wrong email server password
  more than once, and if it didn't, it showed some very weird (to the average
  user) error messages saying that Evolution is unable to make TCP connections
  or whatever.

Besides Evolution, Fedora too impressed me with bugs and bad usability.
To name a few:

* In the installer, the "go on" button is placed in the top-left corner of the
  screen and is called "Done". How the hell should someone find it there?!
* It doesn't seem to have a fucking update manager.
* It doesn't have a usable GUI package installer. The built-in package installer,
  GNOME-PackegeKit (or whatever it's called), is a joke. It doesn't even have a
  proper status UI. For example when it updates the package database it just
  says "In queue". Yeah. In queue. Thanks man.
* In this PackageKit thing when you select a package whose metadata is too
  large for the window, the window just grows to infinite size, making most of
  the action buttons vanish somewhere offset the screen. Great.
  Do these people even use the shit they build?!
* It doesn't have a user-friendly way to install proprietary extras like
  Flash, MP3, ... It doesn't even have a repository for that. You just have to
  do it manually. I mean everyone should know how to compile Lame right?!
* The keyring manager doesn't require your keyring password to show your saved
  passwords. So anyone who gets access to your running machine has access to all
  your passwords without any effort.
* (Okay I'm not sure this one's a bug.)
  Shutting down the computer requires a password. Sorry guys but this is not
  tolerable. I do not care what kind of security concept your operating system
  if based on: if you want to make your distro available to the average computer
  user then there is no fucking way you need to type your password in order to
  shutdown your computer if your the only one logged in. Btw, rebooting did *not*
  require a password. WTF.
* Nautilus doesn't show external hard drives that have been unmounted earlier.
  You need to restart your computer in order to reset Nautilus.


Being frustrated by Fedora, I tried Ubuntu. I thought it couldn't get any more
ridiculous. I was very wrong.

* Evolution doesn't close. It just doesn't. It does not care about you clicking
  the window manager [X], Ctrl+Q or even using the menu. It just does not close.
* The email/contact import dialog simply does *nothing*. It just sits there and
  waits until you force-close the application (remember, you can't close
  Evolution on Ubuntu).


I think there's a reason Linux has no more than 5% market share on the desktop.

Someone needs to rewrite **all** of this crap. Start from scratch. I mean even
the standards its based on are crap. Freedesktop, DBus, gconf, udev, PolicyKit,
ConsoleKit, fuckme.

Actually, even UNIX is broken in that sense that it's simply too ancient to be
used on modern computers. Just look at this whole permissions/security mess.
I mean PolicyKit is just a hack. And interprocess communication. This is not
something that should be implemented at daemon level. And X11. TTYs. Whatever.
All crap. Someone please rewrite all these things, from scratch. But do it right
this time.

I'm back on Windows 7 because it works **way** better than Linux on the desktop.
It's sad but so so true.

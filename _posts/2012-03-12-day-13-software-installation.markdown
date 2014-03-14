---
layout: post
status: publish
published: true
title: Day 13 - Software Installation
author: Mark
author_login: mark
author_email: mark.wolf.music@gmail.com
excerpt: "[caption id=\"attachment_835\" align=\"alignnone\" width=\"499\" caption=\"42
  packages need to be downloaded and installed. Thank goodness for Gentoo Linux; I
  can&#39;t imagine building those all by hand.\"]<a href=\"http://artiosband.com/files/2012/03/arduino-install-1-e1331571943478.png\"><img
  class=\"size-full wp-image-835  \" title=\"Arduino Installation 1\" src=\"http://artiosband.com/files/2012/03/arduino-install-1-e1331571943478.png\"
  alt=\"List of packages to be installed\" width=\"499\" height=\"312\" /></a>[/caption]\r\n\r\n<div
  class=\"mceTemp\">\r\n\r\n[caption id=\"attachment_836\" align=\"alignnone\" width=\"499\"
  caption=\"Now Portage is building all the software needed to control the RepRap.
  There&#39;s actually more to it than this; I needed to configure and rebuild my
  kernel and install a development tool-chain for the AVR platform.\"]<a href=\"http://artiosband.com/files/2012/03/arduino-install-2-e1331572112985.png\"><img
  class=\"size-full wp-image-836 \" title=\"Arduino Installation 2\" src=\"http://artiosband.com/files/2012/03/arduino-install-2-e1331572112985.png\"
  alt=\"The Arduino software being installed.\" width=\"499\" height=\"312\" /></a>[/caption]\r\n\r\nThe
  observant among you may notice it's been a few days since my last post about the
  RepRap. I have actually been busy on it but kept running into problems on this step
  so I didn't have anything to post. I'm moving forward again, though, so I should
  be back in business.\r\n\r\n</div>\r\nSo here are the individual pieces that everything
  is built on:\r\n\r\n"
wordpress_id: 834
wordpress_url: http://artiosband.com/?p=834
date: 2012-03-12 18:03:42.000000000 -04:00
categories:
- RepRap
tags: []
comments: []
---
[caption id="attachment_835" align="alignnone" width="499" caption="42 packages need to be downloaded and installed. Thank goodness for Gentoo Linux; I can&#39;t imagine building those all by hand."]<a href="http://artiosband.com/files/2012/03/arduino-install-1-e1331571943478.png"><img class="size-full wp-image-835  " title="Arduino Installation 1" src="http://artiosband.com/files/2012/03/arduino-install-1-e1331571943478.png" alt="List of packages to be installed" width="499" height="312" /></a>[/caption]

<div class="mceTemp">

[caption id="attachment_836" align="alignnone" width="499" caption="Now Portage is building all the software needed to control the RepRap. There&#39;s actually more to it than this; I needed to configure and rebuild my kernel and install a development tool-chain for the AVR platform."]<a href="http://artiosband.com/files/2012/03/arduino-install-2-e1331572112985.png"><img class="size-full wp-image-836 " title="Arduino Installation 2" src="http://artiosband.com/files/2012/03/arduino-install-2-e1331572112985.png" alt="The Arduino software being installed." width="499" height="312" /></a>[/caption]

The observant among you may notice it's been a few days since my last post about the RepRap. I have actually been busy on it but kept running into problems on this step so I didn't have anything to post. I'm moving forward again, though, so I should be back in business.

</div>
So here are the individual pieces that everything is built on:

<a id="more"></a><a id="more-834"></a>

<span style="text-decoration: underline;">Linux Kernel:</span> Since Gentoo Linux is a source distribution (see "operating system") it has a kernel that I built by hand. In order to get the system to recognize the Arduino RepRap electronics I'm using, I turned on two options in the kernel configuration, rebuilt the kernel, installed the new kernel and rebooted. Presto.

<span style="text-decoration: underline;">Operating System:</span> I'm running Gentoo Linux. Rather than downloading pre-built software it fetches the source code and builds everything custom on my machine. Downside is that the build times are really long. The upside is that I get exactly what I want and nothing I don't need. It's mostly built from the stable branch, with a few packages coming from testing (~amd64). I'm also running GNOME 3.2 as the desktop environment.

<span style="text-decoration: underline;">GCC (and rest of tool-chain):</span> Version 4.5.3 of the GNU C Compiler. This is the heart of the whole business. It takes source code as input and produces executable programs as output. That sounds like a fairly easy task but it has to take into account lots of different platforms and hardware configurations not to mention the options I pass to it to customize my system. GCC is the heart of the whole deal.

<span style="text-decoration: underline;">CrossDev:</span> GCC can build software for my specific computer (Intel x86_64) but I ultimately need to build software for the AVR platform that the RepRap electronics run on. Crossdev builds the version of GCC and accompanying tool-chain to build software for other platforms. I ran into some problems building this from the instructions on the Arduino website but when I checked out the Gentoo page for crossdev it worked.

<span style="text-decoration: underline;">Arduino Software:</span> Once the AVR tools were installed I could then build the software the interfaces directly with the Arduino board. RepRap uses an Arduino Mega 2560 as the main piece of electronics. Everything ultimately plugs into the Arduino board and this software then tells the Arduino board what to do.

So that's it. The whole stack that will ultimately control the RepRap. Actually, my laptop will not control the tedious operations of the RepRap; it will tell it to start, stop, etc. and the plans will be loaded from an SD card reader that's built into the electronics.

&nbsp;

---
layout: post
status: publish
published: true
title: Day 26 - It's Alive!
author: Mark
author_login: mark
author_email: mark.wolf.music@gmail.com
excerpt: "[youtube]1Tgcj0Kj3u8[/youtube]\r\n\r\n[caption id=\"attachment_912\" align=\"alignnone\"
  width=\"499\" caption=\"Here&#39;s where all the magic will happen in the future.
  The grid on the left will hold an image of the model to print. The software will
  then slice the model into layers and send it to the RepRap.\"]<a href=\"http://artiosband.com/blog/2012/03/25/day-26-its-alive/repsnapper/\"
  rel=\"attachment wp-att-912\"><img class=\"size-full wp-image-912\" title=\"Repsnapper
  Software\" src=\"http://artiosband.com/files/2012/03/repsnapper-e1332764413708.png\"
  alt=\"Repsnapper is the software program that controls the RepRap\" width=\"499\"
  height=\"312\" /></a>[/caption]\r\n\r\n"
wordpress_id: 908
wordpress_url: http://artiosband.com/?p=908
date: 2012-03-25 22:35:47.000000000 -04:00
categories:
- RepRap
tags: []
comments: []
---
[youtube]1Tgcj0Kj3u8[/youtube]

[caption id="attachment_912" align="alignnone" width="499" caption="Here&#39;s where all the magic will happen in the future. The grid on the left will hold an image of the model to print. The software will then slice the model into layers and send it to the RepRap."]<a href="http://artiosband.com/blog/2012/03/25/day-26-its-alive/repsnapper/" rel="attachment wp-att-912"><img class="size-full wp-image-912" title="Repsnapper Software" src="http://artiosband.com/files/2012/03/repsnapper-e1332764413708.png" alt="Repsnapper is the software program that controls the RepRap" width="499" height="312" /></a>[/caption]

<a id="more"></a><a id="more-908"></a>

After a whole lot of headache, I now finally have the electronics talking to my computer. Out of the box, and <a title="Arduino home page" href="1Tgcj0Kj3u8">Arduino board</a> doesn't know how to do anything; it's a blank slate. In order for it to know what to do, it needs some special code know as <a title="Wikipedia page for 'firmware'" href="http://en.wikipedia.org/wiki/Firmware">firmware</a>. The are many options for the RepRap each with their own pros and cons. I decided to go with <a title="RepRap wiki page for Sprinter" href="http://reprap.org/wiki/Sprinter">Sprinter</a> because it supports the SD card reader and seems fairly well documented (we'll see if that's actually true).

Having chosen a firmware I then need to get it onto the Arduino board. This is where I ran into problems. Arduino makes a piece of software that will talk to the board. I had all kinds of problems getting this running on Fedora. Remember the talk of an AVR toolchain from <a title="Day 13 – Software Installation" href="http://artiosband.com/blog/2012/03/12/day-13-software-installation/" target="_blank">day 13</a>? Well I got the latest version installed but it no longer had support for a large number of variables that the arduino software needed. The stable version, which I assume still supports the deprecated variables, did not install on Gentoo. I booted into an installation of <a title="Fedora homepage" href="http://fedoraproject.org/">Fedora Core 16</a> which I then used to install all the needed software. I tweaked the configuration files for Sprinter, flashed it to Arduino and all was good.

After that I switched back to Gentoo and fired up Repsnapper. Repsnapper controls the RepRap through the Arduino board. I have controls to move all the axes, move the extruder forward or back, and turn on the hot-end. Unfortunately the hot-end didn't actually get hot. A red light came on and there was 12V across the resistor, but no heat. I guess that's the next challenge.

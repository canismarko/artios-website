---
layout: post
status: publish
published: true
title: Day 30 - Broken Resistor
author: Mark
author_login: mark
author_email: mark.wolf.music@gmail.com
wordpress_id: 942
wordpress_url: http://artiosband.com/?p=942
date: 2012-03-29 15:46:00.000000000 -04:00
categories: [RepRap]
tags: []
comments: []
---

That little bugger is the reason the hot-end doesn&#39;t get hot. A
multi-meter shows the resistance to be 5-10 MΩ instead of 6.8Ω, so
about a million times higher.

<img src="{{ site.url }}/images/rep-rap/bad-resistor-1.jpg"
     title="The culprit resistor" />

While I have the X-carriage removed from its axis I decided to tighten
the belt a little bit. The clamps on the bottom are what hold it in
place. Since it was a little bit loose, the carriage didn&#39;t move
right away when the motor turned. This would have screwed up my
printed parts and needed to be fixed anyway.

<img src="{{ site.url }}/images/rep-rap/bad-resistor-2.jpg"
     title="X-Carriage Belt Clamps" />

After all that work to get the extruder assembled, now I had to take
it apart again to get to the hot-end. As soon as the new resistor
arrives I can swap it out and I should be back in business.

<img src="{{ site.url }}/images/rep-rap/bad-resistor-3.jpg"
     title="Extruder Disassembled" />

So the last few days I've been struggling to get heat going on my
RepRap. I tracked the problem to the resistor that generates the heat
itself. It's effectively a piece of coiled wire made of an appropriate
material. It's supposed to have an internal resistance of 6.8Ω. This
is very low as far as resistors go and is what allows it to get
hot. Using a multi-meter, I measure the resistance across mine at 5-10
MΩ. That's approximately one million times higher than it should
be. My guess is that the coiled wire has broken somewhere along the
line and is no longer passing current.

I got in touch with the nice people at <a title="Lulzbot"
href="http://www.lulzbot.com/en/">lulzbot</a> and Steven is sending me
a replacement resistor that should arrive soon. It's always
frustrating to have defective merchandise but I was very pleased with
how responsive and helpful Lulzbot has been. Once it arrives, it
should be fairly straightforward to swap out and I can then see if I'm
getting heat as expected. This will also give me a chance to clean up
the wiring, now that I know how long everything needs to be.

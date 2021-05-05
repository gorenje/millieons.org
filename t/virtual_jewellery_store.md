---
permalink: /w/virtual-jewellery-store
title: Virtual Jewellery Store
---

# Building a Virtual Jewellery Store

In a fit of boredom during the lockdown, I got into doing [photogrammetry](https://en.wikipedia.org/wiki/Photogrammetry). In a nutshell, taking a series of photos of something and then generating a 3D model from those photos.

Then I began to think about all the shops that are currently closed and only doing limited online business. Could these businesses benefit from having 3D models of their products?

I decided on jewellery since most of the small jewellery stores have limited internet presence and it's far more interesting (and difficult) to scan jewellery than tins of dog food. So I'm now in the middle of an experiment to see whether it's financially viable to do 3D models of jewellery.

For now, I'll ignore whether there is a market for this - dreams should be dreamt and not abruptly ended by reality. Besides the 3D models I'm currently generating are still not up to the quality of what I would like.

There are three parts to this article, first I will go through the setup for creating 3D models, second I'll describe my experiment using [Hubs](https://hubs.mozilla.com/) to build a virtual store and finally I will touch on the potential business case of creating 3D models of jewellery.

## Creating 3D models - Photogrammetry

I use [Metashape](https://www.agisoft.com/) to transform images to 3D models. I found it to be a good combination between usability and quality. Images represent a complete 360 degree view of the object. This means that I end up with anywhere between 90 and 300 photos per object - depending on whether I have multiple camera angles or not.

There are two approaches for taking these photos: either the camera is stationary and the object turns or the object is stationary and the camera moves around the object. Both have their pros and cons, I've found that the latter approach is slightly better for jewellery.

In addition, rotating the camera around an object has two advantages, one is that the light is little more consistent when the object is stationary. Second, there is less movement of the object which for delicate objects is an advantage over constantly rotating the object.

I could go on forever about light, contrast, camera angles, focal length, shutter speeds, f-numbers, ISO etc. All these vary in combination and its a lot of trial and error. The basic rule of thumb appears to be low ISO, high shutter, middle f-numbers, ambient light and good contrast.

I found this [Sketchfab photogrammetry writeup](https://www.sketchfab.com/blogs/community/nine-tips-and-tricks-to-speed-up-your-photogrammetry-workflow/) to be very spot on. I won't repeat the tips there, however the final tip is very on-point: experiment and play around with your setup. For example, my experience is that the best setup depends on the model: large models are better on turntables, smaller objects are better when stationary.

Important for experimenting is keeping track of what worked and what didn't. I store the configuration of the cameras and motors with the images of the object. So I know what the settings were used to get what results. Having a large drive to keep all original material around is good practice. Especially since Metashape references images and does not make copies of images, so for old Metashape projects to work, the original material needs to be kept around.

Automation is also important. I use Nikon DLSR cameras since they are all supported by [Gphoto2](http://gphoto.org/) and are completely configurable (i.e. shutter, f-numbers, ISO, etc). To take a series of photos of an object, I first set camera focus on the object - this is manual task. After that, I adjust all other camera settings using an online configuration page. Configuration is then stored and is identical for each photo. At a press of a button, the camera is moved around the object taking photos. For a complete rotation, it takes about ten minutes and 90 photos (more or less four degrees per photo). A Lego motor moves the camera, Gphoto2 takes the photos. Each photo is pushed to a network drive. On my desktop I can then immediately view each photo as its taken.

Digression: a quick word about using Lego for this. I was surprised to read that Larry Page also likes [using Lego for prototyping](https://www.businessinsider.com/larry-page-the-untold-story-2014-4)! I've found Lego to be the most flexible building material for this. I can drive Lego motors via Raspberry PIs and Lego is super flexible for adjustments.

Networking and hard drive speed play a big factor. I started out using WiFi for interconnecting various Raspberry PIs. Each image (JPEG format) is somewhere between three to six megabyte. That makes somewhere between a quarter to half a gigabyte of image data per object. I soon went to ethernet cabling, even getting some Raspberry PI 4s since they have gigabit ethernet. As hard drives, I use [USB3 SSDs](https://storage.jamesachambers.com/benchmark/44874). Remember not all USB3 drives work with Raspberry PIs, do your homework before purchase.

### [Ephemeralisation](https://en.wikipedia.org/wiki/Ephemeralization): more and more with less and less

My aim is to have the best 3D models with the least amount of retouching or reworking. I have limited 3D skills and always found using [Blender](https://www.blender.org/) complex (I'm just not a 3D modeller). So what I'm aiming for is to optimise the images and Metashape settings to give me great results out-of-the-box. I realise this is similar to automatically convert GIFs to SVGs: you will always end up with a bloated vector. So it is with these 3D models, however I'm more interested in appearance than size.

So far, for large objects I'm happy with the results. For smaller objects there is a lot of improvements that can be done.

First improvement are the lenses. I went from a 18-55 mm to a [40 mm Macro](https://www.nikon.co.uk/en_GB/product/nikkor-lenses/auto-focus-lenses/dx/single-focal-length/af-s-dx-micro-nikkor-40mm-f-2-8g). That improved the models somewhat but still not with the details I would like. Second improvement is the camera. The [Nikon D80](https://en.wikipedia.org/wiki/Nikon_D80) is an 10 megapixel camera and that just doesn't give me the details I need for small jewellery. So I'm going to upgrade that to a 24 megapixel camera.

Another improvement will be getting the light right for jewellery. Reflective objects are not the best for photogrammetry. So the light needs to be very ambient, no direct light. And each piece has its own optimal lighting, a very manual task.

Finally, there is such a wide range of jewellery - earrings, rings, necklaces, brooches, bracelets ... etc, that I need a setup that is able to cope with any kind of jewellery, so experimenting is doubly important.

## Virtual Store with Mozilla Hubs

All my models are available on [Sketchfab](https://sketchfab.com/gorenje23/models) - I admit some are better than others but that's what experimenting is all about! Anyway, Sketchfab is one service that is integrable with [Hubs](https://hubs.mozilla.com). So this one reason for trying out Hubs. Hubs has inbuilt voice chat functionality makes it easy to simulate a store.

Also with Covid, the acceptance for online immersion is growing. The general acceptance and willingness to use 3D virtual rooms is expanding.

[Hubs](https://hubs.mozilla.com) from Mozilla is a fabulous product: its super easy to use, its [open source](https://github.com/mozilla/hubs) and you can host your [own](https://hubs.mozilla.com/cloud). Its aim is to provide a virtual 3D chat room for easily presenting digital artefacts (videos, PDFs, 3D models, images etc) and allowing for discussion.

To build a chat room, you first design the room in [Spoke](https://hubs.mozilla.com/spoke). You publish that room and from there, you can create a Hubs chat room based on the Spoke room. So you can create multiple chat rooms from the one Spoke room. Chat rooms remain open as long as you have the link, so chat rooms don't disappear after X weeks/months.

So I built a prototype [jewellery store](https://hubs.mozilla.com/J4WpLVL/simple-misty-meet?disable_telemetry=true&vr_entry_type=2d_now&debug=false&log_filter=&vrstats=false&no_stats=true&userinput_debug=false). It's basically a lobby with images of piece. Each piece has a link to a separate room where the 3D model is hosted of the piece.

Learning: more than one or two 3D models in a room and everything becomes very slow. Of course this depends on device, however whether it is one or two, or three or four - there is a limit of the number of models that can be displayed in a room. And this limit will always be there regardless of the 3D model quality and size.

Another learning was that using the room on any iOS or MacOS device will require microphone permission for Safari before entering the chat room. Of course many people have this permission set however for those who don't, this becomes an extra hurdle for entering the chat room. For Android this is not the case.

I manually created five rooms in Spoke, this effort only adds to the cost of service provided. I could have dynamically adding pieces to Hub chat rooms however I want a store that is self-service: customers can view all pieces on their own.

In addition, there is the ramp time for the enduser to understand the environment, the controls and the immersion into a 3D world. So it might well be a good idea to move away from using Hubs and back to a simpler and more approachable (for the enduser, i.e. jewellery customer) solution.

So step back time: What am I trying to do here? All I really want is to present a good looking 3D model of a piece of jewellery and provide the customer a way to connect to the jeweller. Do I really need the overhead of having a 3D virtual space for that? Chat and voice chat functionality can also be included into a 2D web page.

I think the main lesson learnt here is that you don't need a 3D virtual world to present 3D objects. It can be as simply as embedding a 3D model into an existing web store.

## Potential Business Case

So if I was to make money with this, then I need to consider how much a ring sells for. And since jewellery isn't a mass production product, rather very individualised, there is a lot of photogrammetry to be done. Hence I want to automate as much of this as possible.

Having done this for a few months now, I've realised that the main costs are time and equipment. Both the capturing of images and the conversion to 3D models both take a lot of time. Having a single node license of Metashape means I can only do one scan at a time. Having one camera means I can only take one set of photos at a time.

I can cut in the time in half if I purchased a second camera and purchased a further Metashape license. And those are one-off costs. My current setup allows for as many as four cameras in parallel, so scaling cameras and Metashape isn't a bottleneck.

What is a bottleneck is Metashapes limited automation. Metashape does have Python libraries however they only work with the [Pro edition](https://www.agisoft.com/features/compare/) which costs somewhere in the range of 3k USD!

Another bottleneck is 3D model retouching. That's manual work and is very depended on the specific 3D model. It's not something that can easily be automated. Hence the importance of getting it right in the first place.

Further bottleneck is the setup of the camera for taking the photos. Again, this is a manual task and collecting experience here is very important. Configurations can be shared for objects, so it might well come down to only setting the focal length for a new object and the rest is automated. Lighting can be partially automated with strobes and the [DMX](http://dmxusb.com/what-is-dmx/) protocol.

Logistics might be a bottleneck, getting jewellery onsite versus taking the setup to the jeweller. The current setup isn't really portable but even that is problematic since transport of such a setup would be far more than transport costs of jewellery (ignoring insurance costs).

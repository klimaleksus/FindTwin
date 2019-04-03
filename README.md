## Find Twin v1.0, by Kly_Men_COmpany!

Play online: **[https://klimaleksus.github.io/FindTwin/FindTwin.html](https://klimaleksus.github.io/FindTwin/FindTwin.html)**

Русская справка [ЗДЕСЬ](./RU.md)

_To download the game, just [clone](https://github.com/klimaleksus/FindTwin/archive/master.zip) this repository._

### What is this?

This is a simple game, where you need to find the same image among other similar images.

It is written in Javascript and works in a browser.

### What are system requirements?

Any modern desktop or mobile browser (tested: Opera 12 and 36; Firefox 19 and 47; Chrome 30 and 49; the default browsers of Android 5 and iOS 12; not working in Windows Internet Explorer and Anrdoid HTMLView). Also, because images are downloaded from the internet, it consumes some traffic.

The game is optimized for any display resolution and screen orientation.

To play, you need to have either a mouse or a touch support.

### How to start?

If you see the main menu (instead of "_This game requires Javascript and modern browser!_"), just hit "**PLAY**". You will see a grid of different images.

When all of them appear, everything fades to gray, and the game starts.

### It is not working!

First, check that general images displaying is enabled in your browser (in case you managed to disable it).

Second, try to refresh the page and use another image source, other than "Default". For example "Random" or "TWDNE".

Third, check your browser's javascript console and search for any errors there. Especially for `Image error …` – try to directly open those links and see what happens.

### OK, how to play it?

Move your mouse over grid cells. Any picture under mouse will be visible, and others will slowly fade.

(On mobile devices, you can tap and hold your finger on any picture)

You should seek for "twins" – that means, the same image, repeated twice. Note that its second copy will be mirrored!

### How to confirm that I found twins?

Simply click/tap each of the two image copies. You may notice the white border on your last selected picture.

Also, you can press-hold-drag and release your mouse from one cell to another, which might save you a click. Works for touchscreens too.

### And how many should I get to win?

As much as you want! The game is endless.

Where there are no new images in the base, it will start to reuse previous.

### Is it possible to lose?

Nope. But there is some statistics: your correct hits count and total spent time.

It is displayed in the page title (and is not erased right after returning to the menu).

### Are there any online hall-of-fame, top standings or records?

No. Simply because in this kind of game, it will be trivial to cheat.

But you still can enjoy playing it in competition with your twin sibling, or at least a friend!

### How to pause the game?

You can't. (Anyway, when idle, the game should not consume much CPU usage)

To return to the menu, press Escape or browser Back button (also should work on mobile devices).

After each new game, all images are shuffled.

### Where exactly do these images come from?

That's the most interesting thing!

My default image base is a subset of the amazing "**This Waifu Does Not Exist**" collection: **[https://www.thiswaifudoesnotexist.net/](https://www.thiswaifudoesnotexist.net/)**

Only 250 of them are uploaded here, but another 10 000 are available from the menu.

### What means "Default" or "Random" or "Weird"?

Those are image bases:

- **Default**: very first 250 examples, converted to 128×128 pixels. Only 1.5 Mb total, uploaded here.
- **Local**: the same thing, but uses relative links, so it will work in a local copy of this repository.
- **Random**: some randomly picked examples (10000-100000), converted to 256×256 (as everything below). Total size is 66 Mb, 4000 files. 
- **Normal**: other random examples from 250-60000, which are generated for "_high quality but low diversity_". 50 Mb, 3000 files.
- **Weird**: random examples from 60000-70000, which are "_low quality, high diversity_". 16.5 Mb, 1000 files.
- **Good**: random examples from 70000-100000, for a "_mix of good and interesting faces_". 33.5 Mb, 2000 files.
- **TWDNE**: linked to original thiswaifudoesnotexist collection, all of 100000 files (probably around 5 Gb), quality is 1024×1024.

So, all images from Random, Normal, Weird and Good are served from `http://klimaleksus2.ucoz.ru/waifu/…`

There are 10 000 images (10% of TWDNE), all different, converted to 256×256 to the purpose of the game, with total size of 167 Mb. Original example-number is not preserved.

### Anyway, your game is too hard!

Welp, you can disable fading, so you will see all pictures simultaneously. Just toggle off the "**Fade**" checkbox in menu.

Also you can make the grid smaller. In menu, change 6×6 down to f.e. 3×3.

### I tried a larger grid, but everything is laggy now.

You can try to disable the "**Animate**" checkbox in the menu (preserving the game experience but removing any partial transparency levels except for 50% semi-transparent; also, no live scale effects).

Do not use "TWDNE" collection, since all its examples are 1024×1024, which is too huge to process like that.

Also, try a different browser, or close other tabs, etc.

### Can I play offline?

Yes. Since this is a one-page HTML game, you can just save it to your hard disk. It still can load all pictures from internet, because they are embedded as IMG tags, not by HTML5 Canvas.

Oh, you meant without internet access at all? Okay, if you have all of the images locally.

The simplest way is to place your image collection to subdirectory of the game folder, and then run "**[local_waifus.bat](./local_waifus.bat)**" (or "**[local_waifus.sh](./local_waifus.sh)**") to create _local_waifus.js_ with filenames in JSON format.

File `local_waifus.js` will be automatically loaded from current directory, and your folder entries will appear in game menu (to the left of default base).

### Where can I download all images?

I took them directly from TWDNE (and converted to 256×256 with `ffmpeg -i %i -vf scale="256:-1" -q:v 5 _%~ni.jpg`), but you can download already converted my copies here:

- [-Weird-](http://klimaleksus.narod.ru/waifu/weird.rar) (21 Mb, also includes "-Sample-", now in 256×256)
- [-Good-](http://klimaleksus.narod.ru/waifu/good.rar) (34 Mb)
- [-Normal-](http://klimaleksus.narod.ru/waifu/normal.rar) (51 Mb)
- [-Random-](http://klimaleksus.narod.ru/waifu/random.rar) (64 Mb)

Each of these archives (RAR4) also contains an appropriate "local_waifus.js" with filenames. If you downloaded more than one source, better use **[this](http://klimaleksus.narod.ru/waifu/local_waifus.zip)** combined version of that file (which also includes a copy of the game itself).

BONUS: the original example-number is preserved on each file!

### How can I add other online image sources?

The first option is to use "local"-approach to populate JSON with absolute URLs instead of filenames.

The second way is to edit the game .html file directly, and add custom functions under `waifu_provider() → providers:` (the very beginning of the code). Refer to existing functions; your function should return an image URL by ordinary index (and total number of available images, when given "-1" as input).

### Is each image downloaded twice, for mirrored version?

It isn't.

Mirroring is done with CSS `transform: scaleX(-1)`. The second copy of each image is made with HTML `.cloneNode()`, so it should not download the same image again (even if in-browser network console shows it), the browser will use a cached version.

### What if my internet connection goes offline?

The game will constantly attempt to download different images from the base until it succeeds. (Sometimes it may reuse previous images from your cache)

When you currently run out of images, you will see gray cells instead of pictures, but they will appear as soon as the internet connection restores.

The game keeps a small internal cache of preloaded images ahead of time.

### How will this game behave if there are fewer images than grid cells?

It will reuse previous images several times.

Still, you can connect any pair of the same images, even those which are not mirrored.

### Why menu states, for example, 8×8=64, while game displays 10×6=60?

Right. For presentation purposes, the grid on the screen is adjusted for the current aspect ratio, and not always have exactly the same number of cells. But the error is not more than 4 anyway.

When your current view shows less cells than the maximal amount for the current grid, some pictures are hidden from the screen. But after some successful twins combining, there is a chance that one of them will be swapped with any newly placed image. So you won't miss anything!

### Are you sure that there is at least one picture with twin?

Yes, it's a simple math: each combination frees two cells; one of them will be used to place entirely new picture, and the second will be a twin for one of existing lone pictures.

This way, you always have the same number of pairs on screen. The exception is "hidden" tiles (explained above), so the actual number of pairs might slightly vary, especially on smaller grids.

Generally, a half of all pictures are twins (so, 1/4 of images have a pair).

### Can I have more than 10×10 grid?

Well, not officially. I think there is not much purpose of adding larger grids, since all images became very small; and also it hurts performance.

By the way, all of adjusted grid dimensions are calculated and chosen by hand. I manually made the array of proper dimensions, it is stored in `function game_options` (min and max dim are set under `function board_resize` below; 3 and 10 currently).

If you really need any custom size, feel free to change the game code.

### Why did you make this game? There are plenty of other similar games out there.

I made it after seeing this inspirational image: [thiswaifudoesnotexist-100samples.jpg](https://www.gwern.net/images/gan/thiswaifudoesnotexist-100samples.jpg) ([mirror](http://klimaleksus2.ucoz.ru/waifu/thiswaifudoesnotexist-100samples.jpg)), just for fun, in 4 days.

My first goal was to use these AI-generated image examples in a game. Because this is obviously one of possible applications of such a base.

My second goal was to make this game as portable as possible, for any device and screen resolution.

And my third goal was to make this game accept any images, not only these. So it could be used as interactive showcase for other picture examples, generated or not.

### Do you accept bug reports or feature requests?

I don't think so. Anyway, you can contact me by `aleksusklim@gmail.com`

### Under what license did you release the game code?

WTFPL, always.

### How should I link to this game?

Use this canonical URL: _[https://klimaleksus.github.io/FindTwin/](https://klimaleksus.github.io/FindTwin/)_

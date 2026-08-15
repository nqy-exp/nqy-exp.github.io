---
layout: ideas-layout
title: The Birth of NIU (Numbered Image Utility) | NIU 的诞生
date: 2026-08-10
---
Due to certain uncontrollable reasons, no experiments were conducted this week.

However, it happened to give me time to think. As the experiments deepen, although there is a relatively complete numbering system, it becomes increasingly difficult to view and compare a large number of images by using Obsidian, or using folders or Excel for classification is also not convenient for comparing images between them.

After thinking about it, I decided to use Vibe Coding to develop an experimental image retrieval system that suits me.

With the experience of building a website, the development process went quite smoothly. The most basic requirements are retrieving images through experiment numbers, setting up editable notes, and including the ability to add tags (#Tag); also, this is the first time I have made a page that can switch between Chinese and English.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-PA-index.png" alt="Figure 1: Current experimental image library in NIU index" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 1: Current experimental image library in NIU index
  </figcaption>
</figure>


Due to the high-efficiency programming brought by Vibe Coding, new ideas kept popping up, leading me to add more functions, such as thumbnails in compare-index, intelligent rollback, batch import/export, and so on. As the functions continued to increase, the encountered bugs also increased accordingly, and the details that need to be considered became more complex.

One of them is when entering the home page of the comparison mode: since selecting comparison images requires thumbnails for the fastest image selection, if the source images are shrunk, even with lazy loading, about 40 images must be opened simultaneously on one page, which results in very large memory occupation. When discussing with AI at that time, after having already written the lazy loading, the recommendation for further optimization was to generate tiny thumbnails and then delete them after leaving the viewport.

But I felt that generating thumbnails and then deleting them also consumes significant memory; it would be better to directly generate a tiny thumbnail file immediately after importing the image, so that the comparison mode home page can directly reference the thumbnail files. In this way, on one hand, the space occupied by the thumbnail files is relatively small (of course, relatively small—compared to 1GB of memory usage, occupying a few MB of hard storage is more worthwhile), and on the other hand, there will be no flickering during scrolling.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-PA-comindex.png" alt="Figure 2: Current experimental image library in NIU compare index" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 2: Current experimental image library in NIU compare index
  </figcaption>
</figure>

I also considered adding advanced search (such as AND/OR logic) or a renaming function, but considering that the information in the numbering itself is sufficient, and the tag function already meets most needs; moreover, renaming is not urgent in experimental scenarios because the possibility of mis-numbering is small, and for content like notes, I always keep paper records, so even if the content does not automatically follow after renaming, it will not cause a serious impact. Therefore, I decided not to perform excessive functional development at this time. Of course, writing programs is indeed very tiring, making me want to return to experiments sooner. (Regrettably, I may still be unable to start work next week.)

Regarding the naming of this software, it went through several iterations. The first name was Experiment Image indexer. However, as the software development deepened, I found that any images with logical and systematic numbering could use this software, so I changed it to Numbered Image Indexer (NII). As the functions became more numerous, I wanted to change the name again; this time, combining it with the function, I named it Numbered Image Utility (NIU), partly because the abbreviation happens to be NIU, which is my surname. Although NIU is not yet a complete "utility," I indeed hold this vision for it.

Of course, there is still room for improvement in my software. Currently, it is a lightweight web-based tool formed by HTML, intended only for viewing my own small experimental project images. I do indeed have the idea of making it into a desktop-side integrated utility, but that is a matter for later.

Currently, this small software is online, and you are welcome to check out <a href="https://github.com/nqy-exp/Numbered-Image-Utility" target="_blank" rel="noopener noreferrer" class="engagement-link"><span class="icon">💻</span> NIU's GitHub repository.

However, the documentation page for NIU is still under production and may take some time.

---


这周因为某些不可抗的原因，所以没有进行实验。<br>
不过，正好给了我时间来思考，随着实验的深入，虽然有较为完善的编号系统，但是当图片越来越多的时候，但使用 Obsidian 查看和对比大量图片时会越来越困难，使用文件夹或者Excel来分类也不便于图片之间的对比。
在思考之后，决定还是利用Vibe Coding来开发一个适合我的实验图片检索系统。

有了建立网站的经验，开发过程还是很顺利的。<br>
最基本的需求就是通过实验编号来检索图片，还进行了可以编辑备注的设定，还包括了可以添加Tag（#Tag），而且这是第一次做了可切换中英文的页面。

见英文版图片1 （目前实验的图片库的index）

由于Vibe coding所带来的高效率编程，导致我不断冒出新的想法，从而往上增加功能，随后增加了对比页面缩略图、智能回退、批量导入导出等功能。随着功能不断增加，遇到的 Bug 也随之增多，需要考虑的细节也变得复杂了。

其中有一个就是当进入对比模式的主页时，由于选择对比图片需要缩略图才能进行最快速的图片选择，而如果将源图片缩小的话，即使使用懒加载，一个页面也要同时打开差不多40张左右的图片，对于内存的占用非常大。当时和ai讨论，在已经写了懒加载的情况下，想要再优化，就是推荐生成极小缩略图，然后当离开视口后删除。<br>
但我觉得生成缩略图后再删除对内存的占用也不小，不如直接在放入图片后就生成一个极小的缩略图文档，然后对比模式的主页直接引用缩略图文档即可。这样一方面缩略图文档占用的空间相对较小（当然只是相对较小，比起内存占用1gb，还是占用几mb的硬存比较合算），而且滚动时不会出现闪烁情况。

见英文版图片2 （目前实验的图片库的compare index）

我也考虑过增加高级搜索（如 AND/OR 逻辑）或改名功能，但考虑到编号本身的信息量已经足够，加上标签功能已能满足大部分需求；而改名功能在实验场景下并不迫切，因为编号错输的可能性较小，而且对于备注等内容，我始终保留着纸面记录，即使改名后内容不会自动跟进，也不会造成严重影响。所以，我决定目前不进行过多的功能开发。当然，编写程序确实很累，让人想早点回归实验。（遗憾的是，下周可能依旧无法开工。）

关于命名经过了好几次迭代，第一次起的名字是Experiment Image indexer（实验图片检索器）。但是随着软件编写的深入，我发现，只要是有具有逻辑以及系统型编号的图片都可以使用这个软件，所以又将其改为Numbered Image Indexer（编号图片检索器），简称也就是NII。当功能越来越多时，我又想更改名字，这次结合功能，我就将其命名为Numbered Image Utility（编号图片实用小工具），当然还有一个原因是，这个简称正好是NIU，也就是我的姓。虽然目前NIU还称不上是一个完整的“实用工具”，但我对其确实抱有这种愿景。

当然我的这个软件有再精进的空间。目前是轻量型的依靠HTML形成的网页端的小工具，只是为了我自己的小实验项目的图片查看。确实有做成一个具有桌面端的合成实用小工具的想法，不过这都是后话了。

目前这个小软件已经上线，欢迎到查看<a href="https://github.com/nqy-exp/Numbered-Image-Utility" target="_blank" rel="noopener noreferrer" class="engagement-link"><span class="icon">💻</span> NIU的Github仓库。

不过，NIU的说明页面还在制作中，可能需要一段时间。


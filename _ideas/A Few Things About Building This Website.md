---
layout: ideas-layout
title: A Few Things About Building This Website | 网站建立的二三事
date: 2026-07-06
---

The framework of this website is now almost complete.

Actually, the idea of building a website started a long time ago. At that time, I felt that social media platforms provide too much instant feedback, while I prefer more asynchronous communication (such as E-mails or letters), so I had the idea to start my own blog. Although I consulted others about the technical solutions back then and a friend recommended GitHub Pages, I never actually implemented it at that time.

Now, more than just wanting to "say something" or have people see me, I have a more specific thought: to showcase my curiosity. Regardless of whether this website exists, I will continue to work on the-projects that interest me. However, because my personal perspective is limited and has many blind spots, I hope to use this website as a platform to introduce a "third-party perspective" to complement my own.

At the beginning, I decided on three sections for my website:

- **About Me**: My personal background.
- **Experimental Logs**: Logs of my curious projects.
- **Jibber-Jabber**: My blog (the word I learned from *The Big Bang Theory*, a show I'm quite fond of.).

My initial plan was very simple: a minimalist webpage with only hyperlinks, black and white text, and images, with at most a two-level directory. Since I do not have deep programming knowledge, only the basic understanding of programming logic from my computer and MATLAB classes, building a website from scratch was quite difficult.

Fortunately, after getting a new computer earlier this year, I began exploring local AI deployment. By using LM Studio to load the open-source Gemma-4-26B-a4b model, I experienced how much AI can improve efficiency. I have always maintained an open but cautious attitude toward AI; I only trust it with information that under control. Once I enter an unfamiliar field, it becomes difficult to handle whether the AI's output is true or usable.

However, I decided to make a bold attempt. Instead of spending until the end of the year learning from zero, I chose to use AI for assistance. I thought if the initial setup (the V0.0 version) went smoothly, I could learn through practice and quickly build my own site.

After deciding to create a static website without third-party plugins to reduce uncontrollability, I began my attempt. During the creation of my first config file, I also encountered a small issue: because I did not use a plain text format, the file failed to run. It took several pushes before I finally found and fixed the bug. After the successful push, I opened my very first meaningful page, this is the memorable first page::

{% figure /images/first-v0.png | QY Niu's Log V0.0 %}

After passing the first stage of testing, I began to try more complex-designing for my homepage, incorporating my personal aesthetic. Initially, I planned a black and white design. However, when designing the "AI-assisted translation disclaimer," I wanted to highlight Jibber-Jabber and attract more readers, so I decided not to use the standard blue hyperlinks. The AI chose `#e67e22` orange as an accent color, which happened to match my preference and also matched the theme color of my first resume. Therefore, I decided to use this color as the theme for my entire website.

To be honest, I was very surprised when I saw the AI-generated code creating the homepage exactly according to my requirements and tastes. At first, I did not have much hope; I thought that since AI sometimes produces inaccurate translations, it would likely make even more mistakes with complex designs, especially since I am not familiar with web programming. But the actual effect of the first page exceeded my expectations. From there, I continued to build and refine my website structure by constantly giving requirements to the AI.

However, AI-generated websites still have limitations. Although the code is smooth most of the time, small bugs still appear occasionally, such as `endif` becoming `endendif`, or Markdown formats not being recognized and needing to be converted to HTML. These are not hard to understand for someone with basic programming knowledge. Later, I could even make some manual changes, such as colors, line spacing, font sizes, and adding text or hyperlinks. But more complex structures, such as the tree-like sidebar in the Experimental Logs, proved difficult for someone with my level of programming knowledge. Not only did the titles fail to translate in the mapping, but I also had a bug that I couldn't fix: when clicking an article, the title in the sidebar would disappear. Neither my local Gemma-4 nor the DeepSeek web version could solve this. I spent an entire night trying to fix it, but eventually decided it was not worth the time to spend so long on a bug that does not affect the actual reading experience. Also, in the long run, considering that the sidebar will get longer as more articles are added, managing a complex structure might create more problems. Therefore, there is a high chance I will remove the sidebar structure in the Experimental Logs section in the future. On balance, I decided to post a notice and move on.

Overall, AI has played a huge role in building this website. With only basic programming knowledge, I was able to build my own website independently, and it wasn't just a plain text system, it included my aesthetic and design. Through this process, I also learned some basic knowledge of web structure. However, there are still certain limitations. When facing complex web structures, it is difficult for me to make independent modifications due to a lack of deep-level technical knowledge. Additionally, I cannot fully control the security or compatibility of third-party plugins.

Based on these observations, my suggestion is this: If your goal is to build a static website to showcase text and images, and you possess basic programming skills along with a clear design plan, then using AI for assistance is a highly efficient and controllable choice. However, if you have more complex or advanced requirements, it would be wiser to seek professional help.

---

现在网站的框架建立已经基本告一段落了。

说起来有建立网站这个想法其实是非常早的时候了，当时是因为我觉得在社交平台上发点什么都会收到即时反馈，但我更喜欢异步通信式的反馈（比如E-Mail或者信件这一类），所以我就萌生了自己建立一个博客的想法，虽然当时询问过他人技术方案，有朋友推荐我Github静态网页托管，不过当时一直付诸实施。

而现在比起以前只是想说一些什么、想让他人看到我的窗口，这次还有一个更加具体的想法——想要展示的好奇心。当然无论是否建立这个网站，我还是会持续进行我感兴趣的项目，只是个人的视角还是狭窄的，有许多看不到的盲区，希望能通过网站这个平台来引入第三视角来弥补个人视角的偏颇。

所以在一开始我就确定了我的网站有三个板块，分别是：
- about me：关于我的个人背景
- Experimental Logs：记录好奇项目的实验日志
- Jibber-Jabber：我的博客记录，这个词是我看生活大爆炸时认识的，非常喜欢的表达

最初的设想非常简单：一个只有超链接、黑白文字和图片的极简网页，最多仅设二级目录。因为我并没有深厚的编程基础，只有计算机课和matlab的课程让我有的对编程及其逻辑最基本的认识，但是从零建造一个网页确实有些困难。

幸运的是，在年初购置新电脑后，我开始对部署本地AI的探索，通过LM Studio加载的google/Gemma-4-26B-a4b的开源模型感受到了AI带给人的效率提升。我对AI一直保持开放且谨慎的态度，在是否要用AI直接进行网页建设也犹豫过。因为我只能信任AI处理我能掌控的信息。一旦进入我不熟悉的领域，那么AI输出的内容的真伪以及是否可用，就会变得无法掌控。

但是我还是决定进行大胆的尝试，与其从零开始学习可能等到今年年底才能进行搭建，不如先进行测试，只要V0.0版本的测试顺利，不仅很快就能在实战中进行学习，也可以迅速搭建起来自己的网站。

在确定了只做静态网页，不使用第三方插件，来减少网页建设的不可控性后，我开始了尝试。在建立第一个 config 文件时也曾遇到过小插曲：由于没选择纯文本格式导致运行失败，经过几次推送才被发现解决。成功推送后，我打开了第一个页面，这就是具有纪念意义的第一个页面：

*(图片请见英文版)*

度过第一阶段的测试之后，我开始尝试进行具有个人审美且略微复杂的主页设计。起初决定的是黑白设计，但是在设计AI辅助翻译的声明时，为了突出 Jibber-Jabber 并起到引流作用，我考虑不使用原始的蓝色超链接。AI在生成时选择了#e67e22橙色作为突出色，这恰好切中了我的喜好，也与我的第一份简历的主题色一致，于是在后续设计中我确定并沿用了该色作为我网站的主题色。

说实话第一次看到AI生成的代码完全按照我的要求和喜好生成了主页时，我感到非常的惊讶。因为一开始我并没有抱有太大的希望，AI辅助翻译有时候也会出现词不达意的现象，而做这种更加复杂的设计辅助，尤其是我本人并不熟悉网络设计的编程的情况下，应该会出现更多问题，但是第一个页面呈现出的实际效果超出预期。接下来我通过不断和AI提出我的需求，建设和修正我的网页结构。

不过AI生成网页依旧有他的局限性，虽然大部分情况下生成代码是非常顺畅的，但偶尔会出现小 Bug，比如 `endif` 变成 `endendif`，或者 Markdown 格式无法识别需要转为 HTML 等问题。这些对于掌握基础编程知识的人来说并不难理解。甚至后期我可以自己进行一些修改，比如颜色、行距、字体大小，增加文字内容、超链接等。不过较为复杂的结构，比如Experimental Logs点进文章后的侧边栏需要展现的树状结构，对于我这类只掌握基础编程知识的人来说确实有些困难，不仅出现了标题无法在mapping中翻译的问题，还有一个我一直修复不好的bug——点击进入文章后，侧边栏中的被点击文章的标题会消失。不仅本地AI——Gemma4，还是Deepseek网页版，都无法解决这个问题。我花了一晚上确定无法搞定，在衡量了这个问题对阅读的影响后，认为花过长时间修复一个不影响实际体验的bug是没有性价比的，并且长远来看，随着文章的增多，侧边栏会一直变长，显然在我不能掌握的复杂结构下，进行收缩会带来更多的问题。之后有极大概率我会在Experimental Logs板块中取消侧边栏结构。权衡之下，我决定贴了个提示后忽略他。

总体而言，AI在建设网站中起到的作用是非常大的。我只凭藉最基础的编程知识就可以一个人独立建起属于自己的网站，并且不只是普通的文字系统，还兼具了我的审美与设计，并且在这个过程中我也学习到了一些初步的网页搭建结构知识。虽然仍有一定的局限性，在面对复杂的网页结构时，由于缺乏深层的底层知识，我很难进行自主修改；同时，对于第三方插件的安全性及兼容性，也存在无法完全掌控的问题。

基于这些观察，我的建议是： 如果你的需求是建设一个展示文字与图片的静态网站，且具备基础编程能力并有明确的设计规划，那么利用 AI 辅助搭建是一个非常高效且可控的选择。但如果你有更复杂、更高阶的需求，引入专业人士的帮助会是更明智的做法。

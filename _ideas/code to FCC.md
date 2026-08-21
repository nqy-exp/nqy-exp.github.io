---
layout: ideas-layout
title: Code to Crochet Companion | 代码织就的钩针伴侣
date: 2026-08-21
---

After the NIU mini-program was completed, I took a short rest.

During my recent rest, while crocheting a filet lace, I found that I always misread the rows when looking at the pattern. Having had the experience of developing NIU, I thought about doing another round of Vibe Coding to solve the pain point regarding filet lace. I originally planned to rest well, but after having the new idea, I wanted to try it immediately.

The initial idea was that after importing an image, it could form a grid similar to a combination of Minesweeper and Excel, where one could freely make modifications in the program. But as I operated, I found it was too difficult. Moreover, because it was Vibe Coding, as the code became longer and the logic in many places could no longer keep up, the difficulty grew larger. Thus, I decided to tear it down and start over. Of course, the second time also failed.

A major defect of Vibe Coding is that due to insufficient understanding of the code, when one's own thoughts are chaotic or the AI-provided code is too messy, one encounters a situation where they do not know how to improve.

When starting for the third time, I decided to determine the overall route before producing the code. But during the process, I discovered that if I were to implement that "huge, freely editable canvas" function, the architecture would become exceptionally bloated. So I thought, since Excel itself is very efficient and convenient, why must I implement a complex editing function inside the software?

So, I started for the fourth time. First, I made a simple Python program to convert clear filet lace grid patterns into Excel tables; this function was completed quickly. Then, I made a page that can track progress after importing an Excel file. This time, it finally succeeded! Then, I integrated the Python program into the software like a plugin, and then added a multilingual system!

I named this software <a href="https://github.com/nqy-exp/Filet-Crochet-Companion" target="_blank" rel="noopener noreferrer" class="engagement-link">Filet-Crochet-Companion </a>(FCC), welcome to check it out. However, I am still testing it; once testing is complete, I will release the installation package.

It took about one week from the start to the final completion of this small software.

During this process, I also discovered that I have a flaw: once I realize something can be done in a short time, I fall into an almost compulsive focus until it is completely finished. This sometimes makes it difficult for me to arrange various tasks calmly. For example, the SE01 experiment's progress was slightly slowed down due to the writing of these two softwares (of course, there are other factors as well).

After finishing FCC this time, I decided to add a new showcase window to my website ahead of schedule. The original plan was to add it after completing the first project and issuing a summary, but now, due to the birth of these two softwares, it needs to be arranged in the schedule earlier.

Creation always makes me feel happy.

---


当NIU这个小程序完成之后，进行了短暂的休息。

最近的休息时，在钩织一款方眼蕾丝，发现总是会在看图的时候看差行。在有了开发NIU这个软件的经验之后，觉得要不再进行一次Vibe Coding来解决关于方眼蕾丝的痛点。原本计划好好休息，然而在有了新的想法之后，就想立刻进行尝试。

最初的想法是导入图片后能够形成像扫雷和excel结合的一样的格子。然后可以自由在程序上进行修改。但是操作下来发现实在是太困难。而且由于是Vibe coding，随着代码越来越长，很多地方的逻辑开始跟不上之后，困难变得越来越大。于是决定推倒重来。当然第二次也失败了。

Vibe coding的一大缺陷就是，由于自身对代码的认知不够，在自己思路混乱或者由于AI给出的代码太过混乱时，就会出现不知道如何改进的情况。

第三次重新开始时，我决定先确定整体的路线后，再进行代码的产出。但在过程中我发现，如果要实现那种“巨大的、可随时编辑的画布”功能，架构会变得异常臃肿。于是我想，既然 Excel 本身就非常高效便捷，为什么一定要在软件内部去实现一个复杂的编辑功能呢？

于是第四次重新开始。我先制作了一个简单的python程序，先把清晰的方眼蕾丝格子图转换为excel表格，这一个功能很快就完成了。然后再制作一个导入excel后，可以跟踪进程的页面。这一次终于 成功了！然后把python程序像插件一样整合进软件里。然后再添加多语言系统！

这个软件我命名为<a href="https://github.com/nqy-exp/Filet-Crochet-Companion" target="_blank" rel="noopener noreferrer" class="engagement-link">Filet-Crochet-Companion </a>（FCC），欢迎查看。不过目前我还在测试中，测试完成后会release安装包。

这一次制作这个小软件从开始到最终差不多完成花了差不多一周时间。<br>
在这个过程中我也发现了我有个缺点，就是一旦意识到某件事可以在短时间内完成，我就会陷入一种近乎强迫的专注，直到彻底搞定为止。这让我有时候会有些无法从容的安排各项事务。比如说的SE01的实验就因为这两个软件的撰写，导致进程略微缓慢（当然也有其他的因素存在）。

这一次做完了FCC后，我决定提前给网站增加一个新的展示窗口。原定计划在第一个Project做完之后出总结的时候再增加，但是现在由于这两个软件的诞生，需要提前安排进日程。

创造总是让人感到快乐。
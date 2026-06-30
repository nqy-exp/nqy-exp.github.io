---
layout: default
title: Jibber-Jabber
description: "Thoughts, fragments, and reflections."
permalink: /ideas/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
/* --- 新增：页面大标题装饰样式 (与 Experimental Logs 保持一致) --- */
.page-title {
    text-align: center;
    font-size: 2.5em;
    color: #333;
    position: relative; 
    padding-bottom: 10px; /* 从 25px 减小到 10px，让线靠近文字 */
    margin-bottom: 30px;  /* 从 50px 减小到 30px，让标题整体紧凑一点 */
}

.page-title::after {
    content: "";
    position: absolute;
    left: 50%;
    bottom: 0;            /* 线条直接贴在 padding 的底部 */
    transform: translateX(-50%);
    width: 60%;
    height: 3px;
    background-color: #e67e22;
    box-shadow: 0 4px 8px rgba(230, 126, 34, 0.4);
    border-radius: 2px;
}

/* --- 原有：每一行条目的样式 (进行了精简和规范化) --- */
.ideas-list {
    margin-top: 20px;
}

.idea-item {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    padding: 15px 0;
    border-bottom: 1px solid #eee;
    text-decoration: none;
    transition: all 0.2s ease; /* 增加平滑过渡 */
}

.idea-item:hover {
    background-color: #fffcf5; /* 使用极淡的品牌橙色背景，更有设计感 */
    padding-left: 10px;       /* 悬停时轻微向右滑动，增加交互感 */
}

.idea-link {
    font-weight: bold;
    color: #333;
    text-decoration: none;
    transition: color 0.2s ease;
}

.idea-link:hover {
    color: #e67e22; /* 悬停时文字变橙色 */
}

.idea-date {
    color: #999;
    font-size: 0.85em;
    font-family: monospace;
}

/* --- 返回链接和底部模块 --- */
.back-link {
    display: block;
    margin-top: 40px;
    text-decoration: none;
    color: #999;
    font-size: 0.9em;
    transition: color 0.2s;
}

.back-link:hover {
    color: #e67e22;
}

.contact-section {
    text-align: center;
    color: #888;
    font-size: 0.9em;
    line-height: 1.6;
    margin-top: 50px;
}

.contact-email {
    color: #e67e22;
    text-decoration: none;
    font-weight: bold;
}
</style>

<!-- 1. 新增的大标题 -->
<h1 class="page-title">Jibber-Jabber</h1>

<!-- 2. 思想碎片列表 -->
<div class="ideas-list">
  {% for item in site.ideas %}
    {% if item.url != "/ideas/" %}
    <div class="idea-item">
      <a href="{{ item.url }}" class="idea-link">
        {{ item.title }}
      </a>
      <span class="idea-date">
        {{ item.date | date: "%Y-%m-%d" }}
      </span>
    </div>
    {% endif %}
  {% endfor %}
</div>

<br><br>

<!-- 3. 返回首页 -->
<a href="/" class="back-link">← Homepage</a>

<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<!-- 4. 底部的联系/纠错模块 -->
<div class="contact-section">
    <p>
        If you encounter any errors, translation inaccuracies, or logical inconsistencies—or if you simply wish to discuss the topics presented here—please feel free to reach out via email: 
        <a href="mailto:nqy.pro@outlook.com" class="contact-email">nqy.pro@outlook.com</a>
    </p>
    <p>
        如果你在阅读过程中发现任何疏漏、翻译偏差或逻辑误区，亦或是希望就相关话题展开讨论，欢迎随时通过邮件与我联系。
    </p>
</div>

</div> <!-- 对应最外层的 div -->

---
layout: default
title: Jibber-Jabber
description: "Thoughts, fragments, and reflections."
permalink: /ideas/
---
<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
 
  /* 每一行条目的样式 */
  .idea-item {
    display: flex;
    justify-content: space-between; /* 标题在左，时间在右 */
    align-items: baseline;
    padding: 15px 0;
    border-bottom: 1px solid #eee; /* 行与行之间的分割线 */
    text-decoration: none;
    transition: background 0.2s;
  }

  .idea-item:hover {
    background-color: #f9f9f9; /* 鼠标悬停时的微弱反馈 */
  }

  .idea-title {
    font-weight: bold;
    color: #333;
    text-decoration: none;
  }

  .idea-date {
    color: #999;
    font-size: 0.85em;
    font-family: monospace; /* 时间用等宽字体更有极客感 */
  }
</style>

<!-- 使用 Jekyll 的循环指令来遍历 _ideas 集合 (已添加自动过滤 index 功能) -->
<div class="ideas-list">
  {% for item in site.ideas %}
    {% if item.url != "/ideas/" %}
      <div class="idea-item" style="display: flex; justify-content: space-between; align-items: baseline; padding: 15px 0; border-bottom: 1px solid #eee;">
        <a href="{{ item.url }}" style="font-weight: bold; color: #333; text-decoration: none;">
          {{ item.title }}
        </a>
        <span style="color: #999; font-size: 0.85em; font-family: monospace;">
          {{ item.date | date: "%Y-%m-%d" }}
        </span>
      </div>
    {% endif %}
  {% endfor %}
</div>

<br><br>

<!-- 2. 返回首页链接 (使用 HTML 以确保稳定性) -->
<a href="/" class="back-link">← 返回首页</a>

<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<br><br><br> <!-- 增加一些间距，把免责声明推下去 -->

<!-- 底部的联系/纠错模块 -->
<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<div style="text-align: center; color: #888; font-size: 0.9em; line-height: 1.6;">
  <p>
    If you encounter any errors, translation inaccuracies, or logical inconsistencies—or if you simply wish to discuss the topics presented here—please feel free to reach out via email: 
    <a href="mailto:nqy.pro@outlook.com" style="color: #e67e22; text-decoration: none;">nqy.pro@outlook.com</a>
  </p>
  <p>
    如果你在阅读过程中发现任何疏漏、翻译偏差或逻辑误区，亦或是希望就相关话题展开讨论，欢迎随时通过邮件与我联系
   
  </p>
</div>

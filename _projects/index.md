---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
  /* 项目列表条目容器 */
  .projects-list {
    margin-top: 20px;
  }

  /* 每一行项目的样式 */
  .idea-item {
    display: flex;
    justify-content: space-between; /* 标题在左，日期在右 */
    align-items: baseline;
    padding: 15px 0;
    border-bottom: 1px solid #eee; /* 行与行之间的分割线 */
    text-decoration: none;
    transition: background 0.2s ease;
  }

  .idea-item:hover {
    background-color: #f9f9f9; /* 鼠标悬停时的微弱反馈 */
  }

  /* 项目标题样式 */
  .idea-title {
    font-weight: bold;
    color: #333;
    text-decoration: none;
  }

  /* 日期样式 */
  .idea-date {
    color: #999;
    font-size: 0.85em;
    font-family: monospace; /* 使用等宽字体增加极客感 */
  }

  /* 返回首页链接样式 */
  .back-link {
    display: block;
    margin-top: 30px;
    text-decoration: none;
    color: #666;
    font-size: 0.9em;
    transition: color 0.2s;
  }

  .back-link:hover {
    color: #e67e22; /* 悬停时变为主题橙色 */
  }

  /* 警示模块高亮样式 */
  .warning-highlight {
    color: #555; /* 比普通灰字稍深，起到强调作用 */
    font-weight: 600;
    text-decoration: underline;
  }
</style>

<!-- 项目大厅列表 -->
<div class="projects-list">
  {% comment %} 
    核心逻辑：
    1. 我们只寻找 type 为 'plan' 的文件作为大厅入口（即一级项目）。
    2. 通过 permalink 确保 index 本身不会被当作一个项目显示出来。
  {% endcomment %}
  {% assign all_plans = site.projects | where: "type", "plan" %}
  
  {% for plan in all_plans %}
    {% if plan.url != "/projects/" %}
      <div class="idea-item">
        <a href="{{ plan.url }}" class="idea-title">
          📂 {{ plan.title }}
        </a>
        <span class="idea-date">
          {{ plan.date | date: "%Y-%m-%d" }}
        </span>
      </div>
    {% endif %}
  {% endfor %}
</div>

<br><br>

<!-- 返回首页链接 -->
<a href="/" class="back-link">← Homepage</a>

<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<!-- 警示模块 -->
<div style="text-align: center; color: #888; font-size: 0.9em; line-height: 1.6;">
  <p>
    <strong>Experimental Note</strong>: All experiments documented herein are personal exploratory attempts conducted in a non-professional (home-based) setting. They do not constitute peer-reviewed research or standardized operational protocols. Please exercise caution and professional judgment; 
    <span class="warning-highlight">do not replicate any procedures based solely on these notes.</span>
  </p>

  <p>
    <strong>实验说明</strong>：本记录的所有实验均系个人在非专业实验室（家庭环境）下进行的探索性尝试，并非经过同行评议的研究成果，亦非标准操作指南。请读者审慎判断内容的可靠性，
    <span class="warning-highlight">切勿盲目模仿任何实验步骤</span>。
  </p>
</div>

</div>

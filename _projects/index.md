---
layout: default
title: Experimental Logs
description: "Coming soon..."
permalink: /projects/
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

  /* 返回链接的样式 */
.back-link {
  display: block;
  margin-top: 30px;
  text-decoration: none;
  color: #666;
  font-size: 0.9em;
}

.back-link:hover {
  color: #e67e22;
}
</style>

<!-- 使用 Jekyll 的循环指令来遍历 _projects 集合 (已添加自动过滤 index 功能) -->
<div class="projects-list">
  {% for item in site.projects %}
    {% if item.url != "/projects/" %}
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

<!-- 警示模块 -->
<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<div style="text-align: center; color: #888; font-size: 0.9em; line-height: 1.6;">
    <!-- 使用内联 style 定义高亮样式，颜色设为稍深一点的灰色或警告色 -->
    <style>
        .warning-highlight {
            color: #555; /* 高亮文字颜色：比普通灰字深一点 */
            font-weight: 600; /* 让高亮部分稍微厚实一点 */
            text-decoration: underline; /* 可选：加个下划线增加警示感 */
        }
    </style>

    <p>
        <strong>Experimental Note</strong>: All experiments documented herein are personal exploratory attempts conducted in a non-professional (home-based) setting. They do not constitute peer-reviewed research or standardized operational protocols. Please exercise caution and professional judgment; 
        <span class="warning-highlight">do not replicate any procedures based solely on these notes.</span>
    </p>

    <p>
        <strong>实验说明</strong>：本记录的所有实验均系个人在非专业实验室（家庭环境）下进行的探索性尝试，并非经过同行评议的研究成果，亦非标准操作指南。请读者审慎判断内容的可靠性，
        <span class="warning-highlight">切勿盲目模仿任何实验步骤</span>。
    </p>
</div>

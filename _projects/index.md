---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
  .project-tree { list-style: none; padding-left: 0; }
  .project-group { margin-bottom: 30px; border-left: 3px solid #e67e22; padding-left: 20px; }
  .project-main-title { font-size: 1.4em; font-weight: bold; color: #333; margin-bottom: 15px; display: block; text-decoration: none; }
  .sub-project-list { list-style: none; padding-left: 0; }
  .sub-item { margin: 8px 0; color: #666; font-size: 0.95em; }
  .sub-link { text-decoration: none; color: #666; transition: 0.2s; }
  .sub-link:hover { color: #e67e22; padding-left: 5px; }
  .back-link { display: block; margin-top: 40px; text-decoration: none; color: #999; font-size: 0.9em; }
</style>

<h1 style="text-align: center;">Experimental Logs</h1>

<div class="project-tree">
  {% comment %} 第一步：找到所有的一级项目 (type: plan) {% endcomment %}
  {% assign all_plans = site.projects | where: "type", "plan" %}
  
  {% for plan in all_plans %}
    <div class="project-group">
      <!-- 显示长标题：优先从 mapping 查，查不到才用文件名 -->
      <a href="{{ plan.url }}" class="project-main-title">
        📂 {{ site.project_mapping[plan.project] | default: plan.title }}
      </a>

      <ul class="sub-project-list">
        {% comment %} 第二步：找到所有属于这个 project 的日志 {% endcomment %}
        {% assign logs = site.projects | where: "project", plan.project | where: "type", "log" %}
        
        {% for log in logs %}
          <li class="sub-item">
            <!-- 这里显示子项目名称 + 笔记标题 -->
            <a href="{{ log.url }}" class="sub-link">
              <span style="color: #aaa;">[{{ log.sub_project }}]</span> {{ log.title }}
            </a>
          </li>
        {% endfor %}
      </ul>
    </div>
  {% endfor %}
</div>

<a href="/" class="back-link">← Homepage</a>

<!-- 警示模块保持不变... -->
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

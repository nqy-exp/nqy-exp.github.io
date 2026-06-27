---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
  /* 整个树状容器 */
  .project-tree { list-style: none; padding-left: 0; }

  /* 一级项目组容器 */
  .project-group { 
    margin-bottom: 40px; 
    border-left: 4px solid #e67e22; 
    padding-left: 25px;
  }

  /* 一级项目标题：不可点击，仅作为视觉分类 */
  .project-main-title { 
    font-size: 1.5em; 
    font-weight: bold; 
    color: #333; 
    display: block;
    margin-bottom: 15px;
  }

  /* 子项目/文件夹容器 */
  .sub-project-container {
    margin-left: 20px;
    margin-bottom: 20px;
  }

  /* 子项目标题 (如 ProjectA1) */
  .sub-project-title {
    font-size: 1.1em;
    font-weight: bold;
    color: #555;
    margin-bottom: 10px;
    display: block;
  }

  /* 日志条目样式 */
  .log-item {
    list-style: none;
    padding: 8px 0;
    border-bottom: 1px dotted #eee;
    display: flex;
    justify-content: space-between;
    align-items: baseline;
  }

  /* Plan (总纲) 的特殊样式 */
  .plan-item {
    margin-bottom: 10px;
    padding: 5px 0;
  }
  .plan-link {
    color: #e67e22; /* 让 Plan 看起来跟普通日志不一样，更像入口 */
    font-weight: bold;
    text-decoration: none;
  }

  /* 普通日志链接样式 */
  .log-link {
    text-decoration: none;
    color: #666;
    transition: 0.2s;
  }
  .log-link:hover {
    color: #e67e22;
    padding-left: 5px;
  }

  .log-date {
    font-size: 0.85em;
    color: #aaa;
    font-family: monospace;
  }

  .back-link { display: block; margin-top: 40px; text-decoration: none; color: #999; font-size: 0.9em; }
</style>

<h1 style="text-align: center;">Experimental Logs</h1>

<div class="project-tree">
  {% comment %} 第一步：找到所有的一级项目 (通过 type: plan) {% endcomment %}
  {% assign all_plans = site.projects | where: "type", "plan" %}
  
  {% for plan in all_plans %}
    <div class="project-group">
      <!-- 1. 一级项目标题：不再是链接，仅展示长标题 -->
      <span class="project-main-title">
        📂 {{ site.project_mapping[plan.project] | default: plan.title }}
      </span>

      {% comment %} 第二步：寻找属于该 project 的所有内容 {% endcomment %}
      {% assign all_items_in_this_project = site.projects | where: "project", plan.project %}

      {% if all_items_in_this_project.size > 0 %}
        
        <!-- A. 展示该项目的【总纲/Plan】 -->
        {% comment %} 我们从当前循环的 plan 对象中直接使用 {% endcomment %}
        <div class="plan-item">
          <a href="{{ plan.url }}" class="plan-link">📖 {{ plan.title }}</a>
        </div>

        <!-- B. 展示该项目下的所有子项目分组 -->
        {% comment %} 提取所有的 sub_project ID {% endcomment %}
        {% assign sub_ids = all_items_in_this_project | map: "sub_project" | uniq %}

        {% for sub in sub_ids %}
          {% if sub != nil %}
            <div class="sub-project-container">
              <span class="sub-project-title">📁 {{ sub }}</span>
              <ul style="list-style: none; padding-left: 0;">
                {% for item in all_items_in_this_project %}
                  <!-- 只显示属于当前子项目的 log 类型笔记 -->
                  {% if item.sub_project == sub and item.type == "log" %}
                    <li class="log-item">
                      <a href="{{ item.url }}" class="log-link">📄 {{ item.title }}</a>
                      <span class="log-date">{{ item.date | date: "%Y-%m-%d" }}</span>
                    </li>
                  {% endif %}
                {% endfor %}
              </ul>
            </div>
          {% endif %}
        {% endfor %}

      {% else %}
        <p style="color: #ccc; font-style: italic;">No logs recorded yet.</p>
      {% endif %}
    </div>
  {% endfor %}
</div>

<br><br><br>

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

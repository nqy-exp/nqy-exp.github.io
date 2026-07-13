---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
  .project-tree { list-style: none; padding-left: 0; }
  .project-group { margin-bottom: 40px; border-left: 4px solid #e67e22; padding-left: 25px; }
  .project-main-title { font-size: 1.5em; font-weight: bold; color: #333; display: block; margin-bottom: 15px; text-decoration: none; }
  .sub-project-container { margin-left: 20px; margin-bottom: 20px; }
  /* 这里是重点：子项目标题的样式 */
  .sub-project-title { font-size: 1.1em; font-weight: bold; color: #555; margin-bottom: 10px; display: block; }
  .log-item { list-style: none; padding: 8px 0; border-bottom: 1px dotted #eee; display: flex; justify-content: space-between; align-items: baseline; }
  .log-link { text-decoration: none; color: #666; transition: 0.2s; }
  .log-link:hover { color: #e67e22; padding-left: 5px; }
  .log-date { font-size: 0.85em; color: #aaa; font-family: monospace; }
  .back-link { display: block; margin-top: 40px; text-decoration: none; color: #999; font-size: 0.9em; }
  .warning-highlight { color: #555; font-weight: 600; text-decoration: underline; }

  /* --- 新增：页面大标题装饰样式 --- */
.page-title {
    text-align: center;
    font-size: 1.8em;
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
</style>

<h1 class="page-title">Experimental Logs</h1>

<div class="project-tree">
  {% assign all_plans = site.projects | where: "type", "plan" %}
  
  {% for plan in all_plans %}
    <div class="project-group">
      <!-- 1. 一级项目标题（已翻译） -->
      <span class="project-main-title">
        📂 {{ site.project_mapping[plan.project] | default: plan.title }}
      </span>

      {% assign all_items_in_this_project = site.projects | where: "project", plan.project %}

      {% if all_items_in_this_project.size > 0 %}
        <!-- 2. 展示该项目的【总纲/Plan】 -->
        <div class="plan-item">
          <a href="{{ plan.url }}" class="log-link" style="font-weight: bold; color: #e67e22;">📖 {{ plan.title }}</a>
        </div>

        <!-- 3. 分组显示子项目日志 -->
        {% assign project_logs = all_items_in_this_project | where: "type", "log" %}
        {% assign sub_ids = project_logs | map: "sub_project" | uniq %}

        {% for sub in sub_ids %}
          {% if sub != nil %}
            <div class="sub-project-container">
              <!-- 【关键修复】：这里不再直接显示 sub，而是去 mapping 里找翻译 -->
              <span class="sub-project-title">
                📁 {{ site.project_mapping[sub] | default: sub }}
              </span>
              
              <ul style="list-style: none; padding-left: 0;">
                {% for log in project_logs %}
                  {% if log.sub_project == sub %}
                    <li class="log-item">
                      <a href="{{ log.url }}" class="log-link">📄 {{ log.title }}</a>
                      <span class="log-date">{{ log.date | date: "%Y-%m-%d" }}</span>
                    </li>
                  {% endif %}
                {% endfor %}
              </ul>
            </div>
          {% endif %}
        {% endfor %}
      {% endif %}
    </div>
  {% endfor %}
</div>

<br>

<!-- 【提示便签】 -->
<div class="construction-note">
  <div class="note-content">
    <span class="note-icon">🏖️</span>
    <p class="note-text">Please note that experimental logs updates may proceed at a slower pace due to summer heat conditions.</p>
    <p class="note-text-zh">受夏季高温影响，实验日志更新可能会以较慢的节奏进行。</p>
  </div>
</div>

<br>

<a href="/" class="back-link">← Homepage</a>

<hr style="border: none; border-top: 1px solid #eee; margin: 40px 0;">

<!-- 【强化版】实验模块警示块 -->
<div class="project-warning-block">
  <div class="warning-icon">⚠️</div>
  <div class="warning-content">
    <p class="warning-text-en">
      <strong class="warning-label">Disclaimer:</strong> All experiments documented herein are personal exploratory attempts conducted in a non-professional (home-based) setting. They do not constitute peer-reviewed research or standardized operational protocols. Please exercise caution and professional judgment; 
      <span class="critical-highlight">do not replicate any procedures based solely on these notes.</span>
    </p>

    <p class="warning-text-zh">
      <strong class="warning-label">免责声明：</strong>本记录的所有实验均系个人在非专业实验室（家庭环境）下进行的探索性尝试，并非经过同行评议的研究成果，亦非标准操作指南。请读者审慎判断内容的可靠性，
      <span class="critical-highlight">切勿盲目模仿任何实验步骤。</span>
    </p>
  </div>
</div>



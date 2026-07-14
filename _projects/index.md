---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
/* --- 1. 页面大标题装饰样式 (Page Title) --- */
.page-title {
  text-align: center;
  font-size: 1.8em;
  color: #333;
  position: relative; 
  padding-bottom: 10px;
  margin-bottom: 30px;
}

.page-title::after {
  content: "";
  position: absolute;
  left: 50%;
  bottom: 0;            
  transform: translateX(-50%);
  width: 60%;
  height: 3px;
  background-color: #e67e22;
  box-shadow: 0 4px 8px rgba(230, 126, 34, 0.4);
  border-radius: 2px;
}

/* --- 2. 项目树整体布局 (Project Tree Layout) --- */
.project-tree { 
  list-style: none; 
  padding-left: 0; 
}

.project-group { 
  margin-bottom: 40px; 
  border-left: 4px solid #e67e22; 
  padding-left: 25px; 
}

.project-main-title { 
  font-size: 1.5em; 
  font-weight: bold; 
  color: #333; 
  display: block; 
  margin-bottom: 10px; 
}

/* --- 3. 项目总纲/Plan 样式 --- */
.plan-list {
  margin-bottom: 15px;
}

.plan-link {
  font-weight: bold !important;
  color: #e67e22 !important;
  display: inline-block;
  margin-bottom: 5px;
  text-decoration: none;
}

/* --- 4. 子项目折叠样式 (Sub-Project Accordion) --- */
.sub-project-accordion {
  margin-bottom: 10px;
  background: #fcfcfc; /* 极淡的背景色，增加层次感 */
  border-radius: 4px;
}

/* 子项目标题 (Summary 标签) */
.sub-project-title {
  font-size: 1.05em;
  font-weight: bold;
  color: #555;
  padding: 10px 15px;
  cursor: pointer; /* 鼠标变为手型 */
  list-style: none; /* 移除默认箭头 */
  display: flex;
  align-items: center;
  transition: background 0.3s;
}

/* 兼容 Safari 的默认箭头隐藏 */
.sub-project-title::-webkit-details-marker {
  display: none;
}

/* 自定义展开/收起小箭头 */
.sub-project-title::before {
  content: '▶'; /* 默认向右 */
  display: inline-block;
  margin-right: 10px;
  font-size: 0.8em;
  color: #e67e22;
  transition: transform 0.3s;
}

/* 当折叠框打开时，箭头旋转向下 */
.sub-project-accordion[open] .sub-project-title::before {
  transform: rotate(90deg);
}

.sub-project-title:hover {
  background-color: #f4f4f4;
}

/* --- 5. 日志列表样式 (Log List) --- */
.log-list {
  list-style: none;
  padding: 0 15px 10px 35px; /* 向右缩进，形成层级感 */
  margin: 0;
}

.log-item { 
  list-style: none; 
  padding: 8px 0; 
  border-bottom: 1px dotted #eee; 
  display: flex; 
  justify-content: space-between; 
  align-items: baseline; 
}

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

/* --- 6. 其他辅助样式 (Utilities) --- */
.back-link { 
  display: block; 
  margin-top: 40px; 
  text-decoration: none; 
  color: #999; 
  font-size: 0.9em; 
}

.warning-highlight { 
  color: #555; 
  font-weight: 600; 
  text-decoration: underline; 
}

</style>

<h1 class="page-title">Experimental Logs</h1>

<<div class="project-tree">
  {% comment %} 第一步：获取所有不重复的项目 ID {% endcomment %}
  {% assign all_plans = site.projects | where: "type", "plan" %}
  {% assign unique_project_ids = all_plans | map: "project" | uniq %}

  {% for proj_id in unique_project_ids %}
    <div class="project-group">
      <!-- 1. 一级项目标题 (始终可见) -->
      <span class="project-main-title">
        📂 {{ site.project_mapping[proj_id] | default: proj_id }}
      </span>

      {% assign all_items_in_this_project = site.projects | where: "project", proj_id %}

      <!-- 2. 展示该项目下的所有 Plan (始终可见) -->
      {% assign current_project_plans = all_items_in_this_project | where: "type", "plan" %}
      <div class="plan-list">
        {% for plan in current_project_plans %}
          <a href="{{ plan.url }}" class="log-link plan-link">📖 {{ plan.title }}</a>
        {% endfor %}
      </div>

      <!-- 3. 分组显示子项目日志 (使用折叠功能) -->
      {% assign project_logs = all_items_in_this_project | where: "type", "log" %}
      {% assign sub_ids = project_logs | map: "sub_project" | uniq %}

      <div class="sub-projects-wrapper">
        {% for sub in sub_ids %}
          {% if sub != nil and sub != "" %}
            <!-- 【关键点】：使用 details 实现折叠 -->
            <details class="sub-project-accordion">
              <summary class="sub-project-title">
                📁 {{ site.project_mapping[sub] | default: sub }}
              </summary>
              
              <ul class="log-list">
                {% for log in project_logs %}
                  {% if log.sub_project == sub %}
                    <li class="log-item">
                      <a href="{{ log.url }}" class="log-link">📄 {{ log.title }}</a>
                      <span class="log-date">{{ log.date | date: "%Y-%m-%d" }}</span>
                    </li>
                  {% endif %}
                {% endfor %}
              </ul>
            </details>
          {% endif %}
        {% endfor %}
      </div>
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



---
layout: default
title: Experimental Logs
description: "A collection of my research notes and experimental logs."
permalink: /projects/
---

<div style="max-width: 800px; margin: 0 auto; padding: 20px;">

<style>
/* =========================================
   1. 页面大标题装饰样式 (Page Title)
   ========================================= */
.page-title {
    text-align: center;
    font-size: 1.8em;
    color: #333;
    position: relative; 
    padding-bottom: 10px;
    margin-bottom: 40px;
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

/* =========================================
   2. 项目树整体布局 (Project Tree Layout)
   ========================================= */
.project-tree { 
    list-style: none; 
    padding-left: 0; 
}

.project-group { 
    margin-bottom: 50px; /* 增加组与组之间的间距 */
    border-left: 4px solid #e67e22; /* 左侧品牌色装饰线 */
    padding-left: 25px; 
}

.project-main-title { 
    font-size: 1.5em; 
    font-weight: bold; 
    color: #333; 
    display: block; 
    margin-bottom: 15px; 
}

/* =========================================
   3. 项目总纲/Plan 样式 (已修复挤在一起的问题)
   ========================================= */
.plan-list {
    display: flex;           /* 使用 Flex 布局 */
    flex-direction: column;  /* 【核心修复】强制子元素垂直排列 */
    gap: 4px;               /* 【核心修复】设置 Plan 之间的间距 */
    margin-bottom: 25px;     /* 与下方折叠部分的间距 */
}

.plan-link {
    /* --- 你原来的视觉风格 --- */
    font-weight: bold !important;       /* 加粗 */
    color: #e67e22 !important;          /* 品牌橙色 */
    text-decoration: none !important;   /* 去掉下划线 */
    padding: 5px 0;                     /* 你设置的上下点击区域 */
    transition: all 0.3s ease;          /* 平滑过渡动画 */

      /* --- 允许换行的布局逻辑 --- */
    flex-grow: 1 !important;            /* 让链接占据除了日期之外的所有空间 */
    white-space: normal !important;     /* 【核心修改】：允许文字自动换行 */
    word-break: break-word !important;  /* 防止超长单词撑破布局 */
}

.plan-link:hover {
    color: #d35400 !important; /* 悬停时颜色稍微加深 */
    padding-left: 8px;         /* 悬停时有一个优雅的向右位移感 */
}

/* =========================================
   4. 子项目折叠样式 (Sub-Project Accordion)
   ========================================= */
.sub-project-accordion {
    margin-bottom: 10px;
    background: #fcfcfc; 
    border-radius: 6px;     /* 稍微圆润一点 */
    overflow: hidden;       /* 防止内容溢出 */
}

/* 子项目标题 (Summary 标签) */
.sub-project-title {
    font-size: 1.05em;
    font-weight: bold;
    color: #555;
    padding: 12px 15px;     /* 增加点击区域 */
    cursor: pointer; 
    list-style: none; 
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
    content: '▶'; 
    display: inline-block;
    margin-right: 10px;
    font-size: 0.8em;
    color: #e67e22;
    transition: transform 0.3s ease; /* 平滑旋转 */
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
    padding: 0 15px 15px 35px; /* 向右缩进，形成层级感 */
    margin: 0;
}

.log-item { 
    list-style: none; 
    padding: 8px 0; 
    border-bottom: 1px dotted #eee; 
    display: flex; 
    justify-content: space-between; /* 文字在左，日期在右 */
    align-items: baseline; 
}

.log-item:last-child {
    border-bottom: none; /* 最后一条不显示虚线 */
}

.log-link { 
    text-decoration: none; 
    color: #666; 
    transition: all 0.2s ease; 
}

.log-link:hover { 
    color: #e67e22; 
    padding-left: 5px; /* 悬停时微动 */
}

.log-date { 
    font-size: 0.85em; 
    color: #aaa; 
    font-family: monospace; 
}

/* --- 6. 其他辅助样式 (Utilities) --- */
.back-link { 
    display: inline-block; /* 改为 inline-block 方便控制边距 */
    margin-top: 40px; 
    text-decoration: none; 
    color: #999; 
    font-size: 0.9em; 
    transition: color 0.3s ease;
}

.back-link:hover {
    color: #e67e22;
}

.warning-highlight { 
    color: #555; 
    font-weight: 600; 
    text-decoration: underline; 
}

/* =========================================
   侧边栏/项目树 日期样式优化
   ========================================= */

/* =========================================
   Plan 列表样式优化 (实现日期右对齐)
   ========================================= */

/* 1. 包装层：负责实现两端对齐 */
.plan-item {
    display: flex !important;           /* 启用 Flex 布局 */
    justify-content: space-between !important; /* 核心：将标题推向左，日期推向右 */
    align-items: flex-start !important; /* 【关键修改】：从 center 改为 flex-start。这样如果标题换行了，日期会对齐在第一行的位置，而不是跑到中间去 */
    width: 100% !important;             /* 占满容器宽度 */
    margin-bottom: 1px;                 /* 每个 Plan 之间的间距 */
}

/* 2. 标题链接样式 *见上/




/* 3. 日期样式 (现在它不再是链接的一部分了) */
.log-date-small {
    flex-shrink: 0 !important;         /* 【关键】禁止日期被压缩，确保完整显示 */
    margin-left: 12px !important;      /* 给标题和日期留点间距 */
    font-size: 0.8em;
    color: #aaa;                       /* 淡淡的灰色 */
    font-weight: normal;
    white-space: nowrap;               /* 禁止日期换行 */
}


/* 针对 Log 的日期 (在行末对齐) */
.log-item {
    display: flex;         /* 使用 flex 让标题和日期分居两侧 */
    justify-content: space-between; /* 一个靠左，一个靠右 */
    align-items: center;
    padding: 4px 0;
}

.log-item .log-date {
    font-size: 0.85em;
    color: #bbb;           /* 稍微浅一点的颜色 */
    font-family: monospace; /* 使用等宽字体，日期看起来更整齐 */
}

/* 增加一下 hover 时的交互感 */
.log-link:hover .log-date {
    color: #e67e22 !important; /* 鼠标悬停时，日期也跟着变橙色 */
}

</style>

<h1 class="page-title">Experimental Logs</h1>

<div class="project-tree">
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

      <!-- 2. 展示该项目下的所有 Plan (按日期从早到晚排序) -->
<!-- 2. 展示该项目下的所有 Plan (始终可见) -->
{% assign current_project_plans = all_items_in_this_project | where: "type", "plan" | sort: "date" %}
<div class="plan-list">
  {% for plan in current_project_plans %}
    <!-- 【关键修改】：增加一个 plan-item 包装层，让链接和日期成为平级的兄弟 -->
    <div class="plan-item">
      <a href="{{ plan.url }}" class="plan-link">📖 {{ plan.title }}</a>
      <span class="log-date-small">{{ plan.date | date: "%Y-%m-%d" }}</span>
    </div>
  {% endfor %}
</div>


      <!-- 3. 分组显示子项目日志 (使用折叠功能，并按日期排序) -->
      {% assign project_logs = all_items_in_this_project | where: "type", "log" | sort: "date" %}
      {% assign sub_ids = project_logs | map: "sub_project" | uniq %}

      <div class="sub-projects-wrapper">   
        {% for sub in sub_ids %}
          {% if sub != nil and sub != "" %}
            <!-- 【关键点】：使用 details 实现折叠 -->
            <details class="sub-project-accordion"{% if first_valid_sub == nil %}open{% endif %}>
              <summary class="sub-project-title">
                📁 {{ site.project_mapping[sub] | default: sub }}
              </summary>
              <ul class="log-list">
                {% for log in project_logs %}
                  {% if log.sub_project == sub %}
                    <li class="log-item">
                      <a href="{{ log.url }}" class="log-link">📄 {{ log.title }}</a>
                      <!-- 这里显示子项目的日期 -->
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



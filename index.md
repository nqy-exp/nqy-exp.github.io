---
layout: default
title: QY Niu's Log
description: "A digital log of my research and thoughts."
---

<style>
  /* 1. 强制隐藏主题自带的 Header 和 Footer */
  /* 使用更具体的选择器组合，确保优先级最高 */
  header.site-header, 
  header.main-header, 
  footer.site-footer, 
  footer.main-footer,
  .site-header, 
  .site-footer {
    display: none !important;
    visibility: hidden !important;
    height: 0 !important;
    margin: 0 !important;
    padding: 0 !important;
  }

  /* 2. 强制重置 Body，确保没有多余的边距 */
  body {
    margin: 0 !important;
    padding: 0 !important;
    overflow-x: hidden;
  }

  /* 3. 核心视觉区容器 */
  .hero-container {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    min-height: 100vh; /* 使用 min-height 确保至少占满一屏 */
    padding: 40px;
    box-sizing: border-box; /* 确保 padding 不会撑大容器 */
  }

  /* 4. 左上方文字样式 */
  .hero-left {
    align-self: flex-start;
    max-width: 500px;
    text-align: left;
  }

  /* 5. 右下方文字样式 */
  .hero-right {
    align-self: flex-end;
    text-align: right;
    color: #666;
  }

  /* 6. 中间导航区域 */
  .center-nav {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
  }

  .center-nav h2 {
    font-size: 0.8em;
    color: #bbb;
    letter-spacing: 4px;
    margin-bottom: 20px;
    text-transform: uppercase;
  }

  .center-links {
    display: flex;
    gap: 30px;
    justify-content: center;
  }

  .center-links a {
    font-weight: bold;
    color: #333;
    text-decoration: none;
    font-size: 1.1em;
  }

  /* 7. 底部状态栏样式 */
  .status-bar {
    text-align: center;
    padding: 20px;
  }
</style>


<!-- 顶部 Header -->
<header class="main-header">
  <div class="header-title">QY Niu's Log</div>
  <nav>
    <ul class="nav-menu">
      <li><a href="/about/">About Me</a></li>
      <li><a href="/projects/">Experimental Logs</a></li>
      <li><a href="/ideas/">Jibber-Jabber</a></li>
    </ul>
  </nav>
</header>

<!-- 核心视觉区 -->
<main class="hero-container">

  <!-- 左上方内容 -->
  <div class="hero-left">
    <h1 style="font-size: 1.8em; margin-bottom: 15px;">Welcome to my website.</h1>
    <p style="line-height: 1.6; color: #444;">
      This is a space where I document a series of exploration and attempts sparked by pure curiosity. <br>
      Please be prepared: you will encounter many failures here. But do not be surprised, to me, failure is the norm and an essential part of the journey toward success.
    </p>
  </div>

  <!-- 中间导航 -->
  <div class="center-nav">
    <h2>Navigation | 板块导航</h2>
    <div class="center-links">
      <a href="/about/">About me</a>
      <a href="/projects/">Experimental Logs</a>
      <a href="/ideas/">Jibber-Jabber</a>
    </div>
  </div>

  <!-- 右下方内容 -->
  <div class="hero-right">
    <h1 style="font-size: 1.8em; margin-bottom: 15px;">欢迎来到我的网站。</h1>
    <p style="line-height: 1.6;">
      这里记录着由好奇心引发的一系列探索与尝试。<br>
      请做好心理准备，你会看到很多失败，不过请不要惊讶，对我而言失败才是常态，失败是走向成功的必经之路。
    </p>
  </div>

</main>

<!-- 优化后的警告模块：更小、更精致 -->
<section class="notice-section" style="padding: 20px 0;">
  <div style="display: inline-block; border: 1px solid #fceabb; background-color: #fffcf5; color: #856404; padding: 10px 25px; border-radius: 30px; font-size: 0.85em;">
    <span style="margin-right: 5px;">⚠️</span>
    <span>Notice | 注意：<br> Under construction. Please excuse any gaps. <br> 本站仍在建设中，如有疏漏请见谅。</span>
  </div>
</section>

<!-- AI 说明模块 -->
<section class="ai-disclosure">
  <p>
    To facilitate more efficient research and cross-linguistic communication, the English content on this site is AI-assisted. Should any linguistic ambiguity arise, please refer to the original Chinese text for clarification. <br>
    <strong>If you are curious about the reasoning behind this, I've shared more in the <a href="/ideas/" style="color: #e67e22; text-decoration: none;">Jibber-Jabber</a> section.</strong>
  </p>
  <p>
    为了能更高效地进行科研探索与跨语言交流，本网站的英文内容由人工智能辅助翻译。如遇语义歧义，请以中文原文为准。关于这种选择背后的思考，欢迎移步 <a href="/ideas/" style="color: #e67e22; text-decoration: none;">Jibber-Jabber</a> 栏目查看。
  </p>
</section>

<!-- 免责声明模块 -->
<section class="disclaimer-section">
  <p>
    Disclaimer: This website is a personal space for academic exploration and intellectual documentation. The views expressed here are solely my own and do not constitute professional advice or represent any official institutional position.<br>
    免责声明：本网站是我的个人学术研究与思想记录空间。文中所表达的内容仅代表作者个人观点，不构成任何专业建议，亦不代表任何机构立场。
  </p>
</section>

<!-- 页脚模块 -->
<footer class="site-footer">
  <div class="footer-contact">
    Contact me: <a href="mailto:nqy.pro@outlook.com">nqy.pro@outlook.com</a> ｜ © 2026 Qiyue Niu. This work is licensed under CC BY-NC-ND 4.0 | V0.1
  </div>
</footer>

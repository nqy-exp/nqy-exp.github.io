---
layout: default
title: QY Niu's Log
description: "A digital log of my research and thoughts."
---

<style>
  /* 1. 强制隐藏主题自带的 Header 和 Footer */
  header, footer {
    display: none !important;
  }

  /* 2. 基础重置 */
  body {
    margin: 0 !important;
    padding: 0 !important;
  }

  /* 3. 自定义 Header 样式 */
  .my-custom-header {
    display: flex !important;
    justify-content: space-between;
    align-items: center;
    padding: 20px 40px;
    border-bottom: 1px solid #eee;
    background-color: white;
  }

  .header-title {
    font-weight: bold;
    font-size: 1.2em;
    color: #333;
  }

  .nav-menu {
    display: flex;
    gap: 25px;
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .nav-menu a {
    text-decoration: none;
    color: #666;
    font-size: 0.9em;
    transition: color 0.3s;
  }

  .nav-menu a:hover {
    color: #e67e22;
  }

  /* 4. 核心视觉区：对角线布局 */
  .hero-container {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    min-height: 100vh;
    padding: 40px;
    box-sizing: border-box;
  }

  .hero-left { align-self: flex-start; max-width: 450px; text-align: left; }
  .hero-right { align-self: flex-end; text-align: right; color: #666; }

  /* 中心导航 */
  .center-nav {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
  }
  .center-nav h2 { font-size: 0.8em; color: #bbb; letter-spacing: 4px; margin-bottom: 20px; text-transform: uppercase; }
  .center-links { display: flex; gap: 30px; justify-content: center; }
  .center-links a { font-weight: bold; color: #333; text-decoration: none; font-size: 1.1em; }

  /* 5. 各个模块的样式 */
  .notice-section { padding: 40px 20px; text-align: center; background-color: #fdfdfd; }
  .ai-disclosure { padding: 30px 40px; text-align: center; background-color: #fafafa; color: #777; font-size: 0.9em; }
  .disclaimer-section { padding: 30px 40px; text-align: center; font-size: 0.85em; color: #999; background-color: #ffffff; }
  .my-custom-footer { padding: 30px 20px; text-align: center; border-top: 1px solid #eee; font-size: 0.8em; color: #bbb; background-color: #f9f9f9; }
  .footer-contact a { color: #666; text-decoration: none; margin: 0 10px; }
</style>

<!-- 自定义 Header -->
<header class="my-custom-header">
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
  <div class="hero-left">
    <h1 style="font-size: 1.8em; margin-bottom: 15px;">Welcome to my website.</h1>
    <p style="line-height: 1.6; color: #444;">
      This is a space where I document a series of exploration and attempts sparked by pure curiosity. <br>
      Please be prepared: you will encounter many failures here. But do not be surprised, to me, failure is the norm and an essential part of the journey toward success.
    </p>
  </div>

  <div class="center-nav">
    <h2>Navigation | 板块导航</h2>
    <div class="center-links">
      <a href="/about/">About me</a>
      <a href="/projects/">Experimental Logs</a>
      <a href="/ideas/">Jibber-Jabber</a>
    </div>
  </div>

  <div class="hero-right">
    <h1 style="font-size: 1.8em; margin-bottom: 15px;">欢迎来到我的网站。</h1>
    <p style="line-height: 1.6;">
      这里记录着由好奇心引发的一系列探索与尝试。<br>
      请做好心理准备，你会看到很多失败，不过请不要惊讶，对我而言失败才是常态，失败是走向成功的必经之路。
    </p>
  </div>
</main>

<!-- 警告模块 -->
<section class="notice-section">
  <div style="display: inline-block; border: 1px solid #ffeeba; background-color: #fff3cd; color: #856404; padding: 20px 40px; border-radius: 8px;">
    <p style="margin: 0; font-weight: bold; font-size: 1.1em;">⚠️ Notice / 注意</p>
    <p style="margin: 10px 0 0 0; font-size: 0.9em;">
      This site is under construction.  Please excuse the mess.<br>
      本站仍在建设中，如有疏漏请见谅。
    </p>
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
    Contact me: <a href="mailto:nqy.pro@outlook.com">nqy.pro@outlook.com</a> ｜ © 2026 Qiyue Niu. This work is licensed under <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" style="color: #999; text-decoration: underline;">CC BY-NC-ND 4.0 ｜ V0.1 </a>
  </div>
</footer>
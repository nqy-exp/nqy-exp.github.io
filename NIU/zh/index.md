---
layout: niu-docs-layout
title: 使用说明书 | NIU
niu_sidebar_links:
  # 第一章
  - { text: "🔬 产品概览", url: "#overview", level: 1 }
  - { text: "📖 关于 NIU", url: "#about-niu", level: 2 }
  - { text: "🎯 设计目标", url: "#design-goals", level: 3 }
  - { text: "✨ 核心功能亮点", url: "#highlights", level: 3 }
  - { text: "🚨 核心运作逻辑与安全", url: "#safety-logic", level: 2 }

  # 第二章
  - { text: "🛠️ 准备工作", url: "#prep", level: 1 }
  - { text: "💻 环境要求与安装", url: "#env-req", level: 2 }
  - { text: "🛠️ 系统需求", url: "#sys-req", level: 3 }
  - { text: "📥 安装流程", url: "#install-flow", level: 2 }
  - { text: "📂 项目目录规范", url: "#dir-spec", level: 2 }

  # 第三章
  - { text: "📏 编号体系与规则", url: "#naming-rules", level: 1 }
  - { text: "🔑 核心万能公式", url: "#formula", level: 2 }
  - { text: "🧩 如何实现自动分组", url: "#auto-grouping", level: 2 }
  - { text: "🚫 命名禁区", url: "#forbidden", level: 2 }

  # 第四章 (精细化拆解版)
  - { text: "⚙️ 具体功能详解", url: "#features", level: 1 }
  
  # --- 1️⃣ 单图工作流 ---
  - { text: "1️⃣ 基础单图工作流", url: "#workflow-single", level: 2 }
  - { text: "🏠 主页概览", url: "#home-overview", level: 3 }
  - { text: "🔍 搜索与快速检索", url: "#search-func", level: 3 }
  - { text: "📂 前缀小组浏览", url: "#prefix-groups", level: 3 }
  - { text: "👁️ 查看模式 (单图)", url: "#view-mode", level: 3 }
  - { text: "📝 编辑模式 (标注)", url: "#edit-mode", level: 3 }
  - { text: "⚠️ 文件名警告", url: "#filename-warning", level: 3 }

  # --- 2️⃣ 多图对比模式 ---
  - { text: "2️⃣ 多图对比模式", url: "#workflow-compare", level: 2 }
  - { text: "🏁 进入入口", url: "#compare-entry", level: 3 }
  - { text: "📋 对比索引页", url: "#compare-index", level: 3 }
  - { text: "🔍 对比查看界面", url: "#compare-view", level: 3 }
  - { text: "  ↳ 基本信息与单图详情", url: "#comp-details", level: 4 }
  - { text: "  ↳ 操控与交互控制", url: "#comp-control", level: 4 }
  - { text: "  ↳ 灵活的图片排序", url: "#comp-sort", level: 4 }

  # --- 3️⃣ 批量数据处理 ---
  - { text: "3️⃣ 批量数据处理", url: "#workflow-batch", level: 2 }
  - { text: "📊 数据格式规范", url: "#batch-format", level: 3 }
  - { text: "  ↳ 核心表头构成", url: "#batch-headers", level: 4 }
  - { text: "  ↳ 详细字段填写指南", url: "#batch-guide", level: 4 }
  - { text: "  ↳ 导出字段说明", url: "#batch-export", level: 4 }
  - { text: "主要功能详解", url: "#batch-function", level: 3 }
  - { text: "📥 下载与准备模板", url: "#batch-download", level: 4 }
  - { text: "📤 上传与覆盖数据", url: "#batch-upload", level: 4 }
  - { text: "💾 全部数据备份", url: "#batch-backup", level: 4 }
  - { text: "🚨 数据安全警示", url: "#batch-safety", level: 2 }

  # 第五章
  - { text: "❓ 常见问题与免责", url: "#faq", level: 1 }
  - { text: "💬反馈与沟通", url: "#contact", level: 2 }


---





# 🔬产品概览<a id="overview"></a>

## 📖 关于 NIU<a id="about-niu"></a>

**Numbered Image Utility (NIU)** 是一款专为科研、实验及工业场景设计的**轻量化编号图片管理与对比工具**。它并非简单的图片查看器，而是旨在解决大规模、具有特定编号规律的图像数据集在“快速检索”、“标注记录”以及“多图精密对比”过程中的效率瓶颈。



### 🎯 设计目标<a id="design-goals"></a>

- **极速索引**：通过系统化的编号实现海量图片的瞬间定位。
- **高效查看**：支持对图片进行实时备注、日期标记与标签 (Tag) 管理。
- **精密对比**：支持多张编号图片在同一页面的缩放、平移与位置锁定，用于观察对比。
- **批量处理**：“文件即数据”的无缝衔接。只要文件名符合规范，即可通过简单的放入文件夹完成数据集构建。同时具备批量导入备注功能。


## ✨ 核心功能亮点<a id="highlights"></a>

- **🌐 多项目并行管理**
    - 支持通过不同的“项目名称”实现数据的物理隔离。
    - 支持中英文环境的一键无缝切换。
- **🔍 灵活的信息管理系统**
    - 支持通过**文件名（编号）**或**自定义标签 (Tag)** 进行组合检索。
    - 支持在线实时编辑备注、生成日期与标签。
- **⚡ 高性能同步引擎**
    - 基于文件监听技术，自动生成 WebP 格式缩略图，确保即使面对万级图片量也能流畅滚动。
- **⇄ 专业级对比模式**
    - 支持多图同时展示、自由缩放与平移。
    - 支持**锁定位置功能**，允许你在保持缩放比例一致的同时，独立移动单张图片进行细节比对。
    - 支持拖拽式重新排序布局。
- **📊 批量数据处理能力**
    - 支持通过 Excel 或 CSV 文件快速导入/导出所有标注数据。
    - 支持“仅导出空行”功能，极大简化了补全缺失信息的流程。

---

## 🚨 ***极其重要：核心运作逻辑与数据安全*** <a id="safety-logic"></a>

>  <strong class="wow">注意！</strong>
> ### ⚠️ _**请在开始使用前务必仔细阅读以下内容！忽视此规则将导致您的实验数据永久性“丢失”！**_

### 🆔 _**文件名即唯一 ID **_

NIU 的所有核心逻辑都建立在一个铁律之上：**图片的文件名就是该图片的唯一识别编码（ID）。**

- 虽然软件提供了 **Tag (标签)** 功能，但 **Tag 仅仅是附加属性**，它无法脱离文件名独立存在。
- 系统通过解析文件名的“前缀”来进行自动分组，通过“编号”进行排序与索引。
- _**这意味着：图片标题（文件名）的权重高于一切！**_


### ❌ _**谨慎手动更改文件系统中的文件名**_

- **一旦你在 Windows 或 macOS 的文件夹里手动修改了图片的名字，该图片关联的所有备注、生成日期以及标签都会【瞬间失效】！**
- 这些数据不会跟随新名字移动，它们会由于找不到原文件名而变成“孤儿数据”，无法在软件界面中显示。

### 🛡️ _**数据保护指南**_

- **先备份，后导入**：在将图片放入项目的 `images/` 文件夹之前，请务必确保原始图片已有可靠的备份。
- **定期导出标注**：由于备注和标签存储在本地数据库中，建议养成定期使用“批量处理”功能中的**【全部导出】**按钮进行数据备份的习惯，以防意外。

_(关于如何进行数据导出与备份，请参阅说明书 —— 【批量数据处理】章节)_

---





# 🛠️ 准备工作 <a id="prep"></a>

在正式启动 NIU 之前，请确保您的系统环境已配置妥当，并严格按照指定的目录结构组织文件。

## 💻 环境要求与安装 <a id="env-req"></a>

### 🛠️ 系统需求<a id="sys-req"></a>
* **Python 版本**：必须安装 **Python 3.8 或更高版本**。
* **核心依赖库**：安装过程会自动处理以下关键组件：
    * `flask` (Web 服务框架)
    * `pandas` & `openpyxl` (数据处理与 Excel 支持)
    * `watchdog` (文件系统实时监控)
    * `Pillow` (图像处理引擎)
    * `python-dotenv` (环境变量管理)


## 安装流程<a id="install-flow"></a>

### 📥 第一步：获取软件 

您可以根据自己的习惯选择以下两种方式之一来获取程序文件：

**• 方法一：通过 Git 下载（推荐，方便后续更新）**
如果您电脑上已经安装了 Git 工具，请在您的文件夹中点击右键并选择 “Git Bash Here” 或直接使用命令行执行：
```bash
git clone https://github.com/nqy-exp/Numbered-Image-Utility.git
```

**• 方法二：直接下载压缩包（最简单，无需安装任何工具）**
如果您不想使用命令行工具，请按照以下步骤操作：
1.  访问项目的 [GitHub 主页](https://github.com/nqy-exp/Numbered-Image-Utility)。
2.  点击页面右侧绿色的 **[Code]** 按钮。
3.  在弹出的菜单中点击 **[Download ZIP]**。
4.  下载完成后，将该压缩包解压到您想要存放的文件夹中。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/git-download.png" alt="图1 : Github页面Code与Download ZIP位置" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图1 : Github页面Code与Download ZIP位置
  </figcaption>
</figure>



### ⌨️ 第二步：打开“命令行”界面 

NIU 的启动需要通过“命令行”（也称为终端或控制台）来输入指令。请根据您的操作系统进行操作：

**• Windows 用户**
1.  按下键盘上的 **[Win] + [S]** 键（或者点击任务栏的搜索框）。
2.  在搜索框中输入 `cmd` 或 `PowerShell`。
3.  点击出现的 **“命令提示符” (Command Prompt)** 或 **“Windows PowerShell”** 图标。

**• macOS 用户**
1.  按下键盘上的 **[Command] + [空格键]** 唤起 Spotlight 搜索。
2.  在搜索框中输入 `Terminal` 或 `终端`。
3.  按下回车键即可打开。

### 📂 第三步：定位到项目文件夹 

**这是新手最容易卡住的一步！** 打开命令行后，默认是在您的“用户主目录”下。您需要使用 `cd` 命令（Change Directory 的缩写）告诉电脑：“请进入我刚才解压的那个 NIU 文件夹”。

**• 操作技巧：**
1.  先找到您存放 NIU 文件夹的窗口（例如 Windows 资源管理器）。
2.  在命令行中输入 `cd `（注意 **cd 后面有一个空格**）。
3.  **最简单的办法**：直接用鼠标把那个文件夹**拖拽**进黑色的命令行窗口里，路径会自动生成。或者手动输入文件夹路径
4.  按下 **[Enter]** 回车键。

**• 如何确认成功？**
输入 `dir` (Windows) 或 `ls` (macOS/Linux) 并回车。如果您能看到 `app.py`、`requirements.txt` 等文件列表，说明您已经成功进入了正确的文件夹！


### 🚀 第四步：安装与运行 

现在您已经站在了项目的“门口”，可以开始正式安装并启动它了。

### 🛠️ 环境配置
**• 安装 Python 依赖**
在命令行窗口中依次输入以下命令（建议先创建虚拟环境，见下文）：
```bash
# 创建虚拟环境 (仅需执行一次)
python -m venv venv

# 激活虚拟环境
# Windows 用户:
.\venv\Scripts\activate
# macOS / Linux 用户:
source venv/bin/activate

# 安装所有必须的组件
pip install -r requirements.txt
```
*注意依次输入命令即可！不需要将#后内容一起复制进去*
⚠️ **安装重要提醒**：下载 Python 安装包后，请务必在安装界面的第一页勾选 **"Add Python to PATH"**。如果没有这一步，后续所有的命令都会报错。

### 🔐 安全配置 

为了保证 Web 界面的会话安全，您需要手动创建一个配置文件。

* **操作步骤**：在项目的根目录下（即 `app.py` 所在的文件夹），新建一个名为 `.env` 的文本文件。
* **写入内容**：在文件中填入以下格式的内容，并将 `your_random_secret_string_here` ***替换***为您<strong class="wow">自己随意编写</strong>的一串随机字符串（建议包含字母、数字与特殊符号）。

```text
SECRET_KEY=your_random_secret_string_here
```

⚠️ **注意**：请确保文件的完整文件名确实是 `.env`，而不是 `.env.txt`。如果看到后缀名带了 `.txt`，请将其删除（建议在文件夹选项中开启“显示文件扩展名”）。

### 🏃 启动程序
一切就绪后，输入以下命令即可启动demo项目：
```bash
python app.py --project demo_project --port 5001
```
运行成功后，请打开浏览器，在地址栏输入 `http://127.0.0.1:5001` 即可看到软件界面，进行尝试。

>💡 **什么是 127.0.0.1？** 这串数字代表“你自己的这台电脑”，输入它就相当于告诉浏览器：“请打开我本地正在运行的软件”。

或者也可将端口 -port 5001替换为**5000~6000 或 8000~9000** 内的任意未被占用的端口。地址栏内输入地址后，写对应端口即可。

如果感到满意，即可输入以下命令即可启动您的第一个项目：
```bash 
python app.py --project my_first_project --port 5001 
```

*可将‘my_first_project’ 替换为任何你想要的项目名称，请使用英文字母，减少出错可能。*

### 🚪 如何关闭

若要关闭当前运行的程序，请在终端 (macOS/Linux) 或 命令行窗口 (Windows) 中同时按下 [Ctrl] + [C]。

---

## 📂 项目目录结构规范<a id="dir-spec"></a>

**这是使用 NIU 最核心的操作准则！** 软件通过特定的文件夹层级来识别您的项目和图片。请务必按照以下逻辑组织您的文件：

### 📐 标准树状结构
```text
Numbered-Image-Utility/
├── app.py                 # 程序主要代码
├── sync_engine.py         # 同步引擎代码
├── .env                   # 安全配置文件
├── projects/              # 所有实验项目的总目录
│   └── [your_project_name]/    # 您创建的具体项目文件夹 (例如: my_first_project)
│       ├── images/        # 📸 【核心】请将所有编号图片放入此文件夹!!!
│       │   ├── T001-01.jpg
│       │   ├── T001-02.jpg
│       │   └── ...
│       └── experiments.db # 项目专属数据库 (程序自动生成)
│       │ 
│       └── thumbnails/    # 自动形成的缩略图
│       │   ├── T001-01.webp
│       │   └── ...
└── ... 其他系统文件
```


<strong class="wow">再次强调：图片必须放在正确的位置！</strong>

## 📝 重要提示
* **图片存放位置**：所有需要管理的图片必须存放在 `projects/[项目名]/images/` 子目录下。如果图片放错位置，程序将无法识别。
* **数据隔离原理**：每当你通过命令行指定一个新的 `--project` 名称时，系统都会在 `projects/` 目录下自动创建一个对应的文件夹及其子目录，实现不同实验数据之间的物理隔离。
* **删除与清理**：如果您想彻底删除某个项目的数据，直接删除该项目对应的整个文件夹（例如 `projects/experiment_A/`）即可。

***请务必在将图片放入 images/ 文件夹前核对好文件名，并养成定期备份数据的习惯！***

---




# 📏 编号体系与自动分组规则 <a id="naming-rules"></a>

NIU 的所有自动化功能（如自动分组、快速检索、排序）都高度依赖于您对文件名的命名。虽然您的实验编号可以非常复杂且具有高度定制化，但只要遵循 NIU 的 **“最后连字符原则”**，软件就能完美处理。

## 🔑 核心万能公式 <a id="formula"></a>

无论您的实验代码包含多少段信息，NIU 识别文件名的逻辑永远只有一句话：

> ***“最后一个连字符 `-` 之前的所有内容，都被视为【前缀 】；最后一个连字符之后的内容，被视为【编号 】。”***


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-number-rule-zh.png" alt="图2 ：编号示例" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图2 ：编号示例
  </figcaption>
</figure>


## 🧩 如何实现自动分组<a id="auto-grouping"></a>

NIU 会根据 **【前缀】** 的相同程度来自动将图片归类到同一个“小组”中。

### **案例 A：标准编号**
如果您有一组基础实验：
* `T001-01.jpg`
* `T001-02.jpg`
* **结果**：系统识别前缀为 `T001`，它们会被自动归为 **[T001] 组**。

### **案例 B：复杂多维度编号 (您的实验场景)**
即使您的编号包含了样本 ID、处理模式、结构信息等多个维度，只要保证最后一个 `-` 的位置正确，分组依然精准。

***注意，本软件只以最后一个减号 `-` 作为前缀与序号的分界线。***

**1. 多维度复合编码示例：**
文件名格式为 `样本ID-处理模式-结构与介质-序列号`。
* `T001-PA-LCGZ-01.jpg`
* `T001-PA-LCGZ-02.jpg`
* **结果**：系统识别前缀为 `T001-PA-LCGZ`，这两张图片会被自动归入 **[T001-PA-LCGZ] 组**。

**2. 特殊实验（如羊皮纸实验）示例：**
文件名格式为 `结构介质-样本ID-处理方法-序列号`。
* `BPC-XX_YY-001.jpg`
* `BPC-XX_YY-002.jpg`
* **结果**：系统识别前缀为 `BPC-XX_YY`，它们会被自动归入 **[BPC-XX_YY] 组**。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-PA-index-zh.png" alt="图3 ：开发者个人的项目编号主页图" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图3 ：开发者个人的项目编号主页图
  </figcaption>
</figure>


## 🚫 命名禁区 <a id="forbidden"></a>

为了确保分组和搜索功能不失效，请务必避开以下错误：

**• 禁止使用空格或其他符号作为分隔符**
* ❌ `T001_01.jpg` 
* ❌ `T001/01.jpg` 
* ❌ `T001 01.jpg` 
* ✅ `T001-01.jpg`

**• 前缀只能包含字母、数字、下划线以及连接符**：
* ❌ `T/1-01.jpg` 
* ❌ `¥#1/-01.jpg` 
* ❌ `|@？-01.jpg` 
* ✅ `T001-01.jpg`
* ✅ `T001_TR-01.jpg`

**• 禁止缺少编号部分**
* ❌ `T001.jpg` （没有连字符和编号，系统无法进行排序，也无法分组）
* ✅ `T001-01.jpg`
* ✅ `T001-001.jpg`

**• 严禁随意更改文件系统中已有的文件名**
* 再次强调：**文件名即 ID**。一旦您在文件夹里手动改名，该图片原有的所有备注、日期和标签都将无法找到对应的“新主人”，从而导致数据丢失。

## 💡 给使用人员的建议

* **保持一致性**：虽然前缀可以很长（如 `T02CL-XX-YY`），但请确保在同一组实验中，除了最后的数字外，前面的所有字符完全一致。
* **利用层级进行管理**：您可以利用复杂的前缀来实现极细颗粒度的分组。例如，通过包含“处理方法 (YY)”作为前缀的一部分，您可以实现一键筛选出所有执行了 `PA` 模式的图片。
* **特殊标记**：如果图片需要特别标记，则可以使用标签（#Tag）功能，以方便检索及分类。

---

# 具体功能<a id="features"></a>


##  第一部分：基础单图工作流 <a id="workflow-single"></a>

> [!TIP] **提示**：本章节展示的所有页面均基于 `demo-project` 项目进行截图。您可以直接运行程序并加载 demo 数据进行实操练习，以熟悉操作逻辑。

### 🏠 主页：全局概览与管理入口<a id="home-overview"></a>

主页是 NIU 的控制中枢，为您提供整个实验数据集的宏观视图。

- **数据统计**：实时显示当前项目中包含的图片总数。
- **分组展示**：系统会自动根据图片编号的前缀进行逻辑分组，方便您按组浏览。
- **灵活排序**：您可以通过点击排序选项，对分组列表进行以下排列：
    - _默认排序_
    - _生成时间（正序/倒序）_
    - _编号字母顺序（正序/倒序）_
- **功能入口**：主页集成了**搜索框**、**对比模式入口**以及**批量数据处理入口**。



<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-demo-index-zh.png" alt="图4 ：NIU自带的demo- project的首页图" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图4 ：NIU自带的demo- project的首页图
  </figcaption>
</figure>


### 🔍 搜索与快速检索<a id="search-func"></a>

当您需要精准定位特定图片时，可以使用主页顶部的搜索功能。

- **多维检索**：
    - 输入**编号**即可匹配对应的图片标题。
    - 输入 **`#` + 标签名**（例如 `#SampleA`）即可进行标签检索。
- **智能联想与快捷跳转**：
    - 在输入过程中，系统会弹出**联想框**提供可能的匹配项。
    - 系统还会展示与您输入的字符关联的**前缀小组选项**。您可以直接点击这些选项，快速跳转进入该编号对应的分组页面。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-search-zh.png" alt="图5 ：搜索界面" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图5 ：搜索界面
  </figcaption>
</figure>


- **视觉提醒（待处理标记）**：
    - 为了帮助您高效补全数据，NIU 特意设计了视觉警示：**所有尚未添加备注、生成时间或标签的条目，其背景色将显示为粉红色。**


 <figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-noedit-zh.png" alt="图6 ：未编辑的条目背景色" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图6 ：未编辑的条目背景色
  </figcaption>
</figure>

 
 - **一键清除**：当需要删除搜索框内内容时，可使用右侧X按钮来直接一键清除搜索框内内容。



### 📂 前缀小组：系统化分组浏览<a id="prefix-groups"></a>

“前缀小组”页面专门用于展示具有相同编号前缀的所有图片。

- **批量查看**：进入小组后，您可以快速浏览该组内所有的项目及其备注等文字内容。同样有待处理的视觉提醒。
- **智能回退机制 (Smart Back Navigation)**：
    - 页面右上角设有【返回上一页】按钮。
    - 该按钮具备“记忆能力”：无论您是从**主页**进入，还是通过**搜索结果**进入，点击返回时，系统都能精准带您回到之前的状态。
    - _**特别说明**_：如果您是从搜索页面跳转进来的，点击【返回】后，**搜索框内原有的搜索关键词将会被完整保留**，无需重新输入。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-prefix-zh.png" alt="图7 ：前缀小组页面" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图7 ：前缀小组页面
  </figcaption>
</figure>



### 👁️ 查看模式：单图深度检视<a id="view-mode"></a>

当您选中某张图片时，将进入详细的查看界面。

- **信息展示**：界面清晰呈现图片的标题、生成时间、备注以及关联的标签 (Tag)。
- **自由缩放控制**：
    - 默认显示比例为 **35%**。
    - 您可以通过拖动下方的**缩放条**，或直接在输入框中**手动输入百分比**（范围支持 **10% - 500%**）来调整观察尺度，满足大部分查看需求。
- **功能导航按钮**：
    - **返回主页**：直接跳转回全局概览界面。
    - **返回上一页**：同样搭载了**智能回退机制**。系统会记录您的浏览路径，确保您能回到进入该页面之前的状态（如搜索结果页），并**完美保留搜索框内的输入内容**。
    - **编辑按钮**：点击即可进入信息标注界面。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-view-zh.png" alt="图8 ：查看页面" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图8 ：查看页面
  </figcaption>
</figure>



### 📝 编辑模式：信息标注与录入<a id="edit-mode"></a>

编辑模式用于为实验数据注入“灵魂”（备注、时间与标签）。

- **多维信息输入**：
    - **生成时间**：支持手动精确输入，或通过浏览器提供的日期选择器进行快速选择。
    - **备注内容**：支持常规文本输入。
    - **标签 (Tag) 输入**：采用特殊的快捷输入方式——**先键入 `#` 符号，随后输入标签名称并按下 [Enter] 回车键**，系统即可自动生成该标签。
- **⚠️ 关键操作提示**：
    - 在完成所有信息修改后，***请务必点击【保存】按钮***以确保数据写入数据库！
    - 修改完成后，点击【返回】将触发智能回退逻辑，带您回到之前的查看或搜索页面。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-edit-zh.png" alt="图9 ：编辑页面" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图9 ：编辑页面
  </figcaption>
</figure>

---

## ⇄ 第二部分：多图对比<a id="workflow-compare"></a>

> [!TIP] **提示**：对比模式是 NIU 的核心功能之一，通过多维度的布局调整和精密的操作控制，帮助您在复杂的实验数据中发现细微的差异。

### 🏁 进入与导航 <a id="compare-entry"></a>

- **进入入口**：点击主页右上角的【对比模式】按钮即可进入。
- **语言切换**：进入对比模式后，您依然可以随时进行中英文环境的切换。
- **返回主页**：若需退出对比模式回到全局管理界面，可以通过以下两种方式：
    - 点击页面左上角的**软件名称**。
    - 点击页面右上角的 **【返回主页】** 按钮。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comindex-zh.png" alt="图10 ：对比模式主页" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图10 ：对比模式主页
  </figcaption>
</figure>


### 📋 对比索引页：选择待对比图片<a id="compare-index"></a>

在进入正式的对比视图前，您需要在索引页挑选想要观察的样本。

- **多方式筛选**：
    - **直接点击**：在缩略图列表中直接点击图片进行勾选。
    - **智能搜索**：支持通过输入**图片标题**或使用 **`#` + 标签名** 进行快速检索。
- **⭐ 高级交互特性**：
    - **搜索不干扰选中**：在已经选中部分图片的情况下，进行搜索操作**不会**清空您已勾选的样本。这让您可以先搜出一组样本，再通过搜索功能寻找补充样本，极大地提升了筛选效率。
    - **状态记忆功能**：当您从“对比查看”页面返回到“对比索引页”时，之前**已经选中的图片将自动保留**，无需重新勾选，方便您快速切换不同的对比组合。
- **批量清空**：若需重新开始选择，可点击右侧的【清空全部】按钮。
    - ⚠️ _**注意：清空操作为不可逆操作，请谨慎使用。**_


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comindexch-zh.png" alt="图11 ：对比模式主页选择图片后出现清空全部选项" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图11 ：对比模式主页选择图片后出现清空全部选项
  </figcaption>
</figure>



### 🔍 对比查看界面：精密观察 <a id="compare-view"></a>

一旦选定图片并进入对比视图，您将获得一个专业的观察工作台。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comview-zh.png" alt="图12 ：对比模式" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图12 ：对比模式
  </figcaption>
</figure>


#### **1. 基本信息与单图详情**<a id="comp-details"></a>

- **信息展示**：在对比模式下，您可以直接看到每张图片的备注信息以及标签 (Tag)。_(注：目前 Tag 的显示功能已上线)_。
- **查看单个图片详情**：点击任意图片的**标题**，系统会为您新开一个页面进入该图片的【单图详细查看】模式。
    - ⚠️ **注意**：此模式下的页面与基础工作流不同，它无法通过“返回上一页”回到对比视图，您只能选择【编辑】该图片或直接【关闭】当前页面。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-viewcom-zh.png" alt="图13 ：对比模式下的单个图片的查看页面" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图13 ：对比模式下的单个图片的查看页面
  </figcaption>
</figure>

#### **2. 操控与交互控制**<a id="compare-control"></a>

- **缩放**：通过底部的**缩放条**进行调节，支持 **10% - 500%** 的范围，满足从宏观到超微观的观察需求。
- **平移**：您可以直接使用鼠标点击图片并进行拖动，以观察图片的特定部位。
- **锁定功能**：您可以对单张图片执行***锁定***操作。锁定后，该图片将**无法被拖动或缩放**，方便您在对比其他移动图片时保持参考物的固定位置。
- **一键重置**：在锁定按钮旁边设有***一键重置***按钮。点击即可快速将当前视图下所有图片的缩放比例和锁定状态恢复至初始默认值，便于您快速重新开始观察。
	_**特别说明**_：处于“锁定”状态的图片无法通过此按钮进行一键重置。

💡 **高级交互特性**： NIU 实现了**布局与观察参数的完全解耦**。这意味着您可以随时通过【排序】功能调整图片的展示顺序（即改变图片在网页上的位置），而**不会影响**每张图片已经设置好的缩放比例或锁定状态。您可以先调整好完美的布局，再分别对每张图片进行精细的缩放与锁定。

⚠️ **重要操作提醒**： 在移动图片位置（通过排序功能）时，系统会在图片改变位置后**自动解锁**该图片。如果需要重新锁定，请再次点击***锁定***按钮即可。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comlock-zh.png" alt="图14 ：图片锁定键及重置键" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图14 ：图片锁定键及重置键
  </figcaption>
</figure>


#### **3. 灵活的图片排序**<a id="compare-sort"></a> 

NIU 提供了一个极其灵活的布局系统，允许您自定义图片的展示阵列。

- **进入排序**：点击页面上方中央的【排序】按钮即可进入排序模式。

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comrank-zh.png" alt="图15 ：图片排序" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图15 ：图片排序
  </figcaption>
</figure>


- **网格化布局**：系统采用“固定一行三个”的逻辑进行排列，但您可以根据需要随意增减行数。
- **拖拽式操作**：
    - 您可以像移动方块一样，随心所欲地将图片拖拽到您想要的位置。
    - 如果您删除了某一行，该行内的图片会自动归入上方的“待分配”区域。当然也可以自行将图片放入“待分配”区域
    - **布局自由度**：您可以实现非连续的摆放，例如在两张图片之间故意空出一格，以获得更开阔的视觉空间。



<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comrankch-zh.png" alt="图16 ：图片排序后" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图16 ：图片排序后
  </figcaption>
</figure>



<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comviewch-zh.png" alt="图17 ：图片排序后页面内显示" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图17 ：图片排序后页面内显示
  </figcaption>
</figure>


---

## 📊 第三部分：批量数据处理功能 <a id="workflow-batch"></a>

> [!TIP] **提示**：批量处理模块是 NIU 的“生产力加速器”。它允许您通过 Excel 或 CSV 文件，以极高效率完成大规模数据的录入、补全、以及备份。

### 🏁 进入入口

- **进入方式**：在主页右侧点击蓝色的【批量数据处理】按钮即可进入。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-import-zh.png" alt="图18 ：批量数据处理主页" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图18 ：批量数据处理主页
  </figcaption>
</figure>

### 📋 数据格式规范 <a id="batch-format"></a> 

为了确保导入过程万无一失，请务必须遵循以下表格结构要求。

#### **1. 核心表头构成**<a id="batch-headers"></a>

无论是手动创建还是下载模板，Excel 表格必须包含且仅包含以下四项核心字段：

|文件名|备注|生成日期|标签|
|---|---|---|---|
|_Filename_|_Notes_|_Date_|_Tags_|


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-imexcel-zh.png" alt="图19 ：适配NIU上传/下载的Excel表头" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图19 ：适配NIU上传/下载的Excel表头
  </figcaption>
</figure>


_(注：系统支持中英文两种语言表头，无论您当前处于何种语言环境下，均可使用对应的 Excel 文件进行上传。)_

#### **2. 详细字段填写指南**<a id="batch-guide"></a>

为了确保数据能够被正确导入，请严格按照以下格式填写 Excel 表格：

- **文件名 (Filename)**
    - 必须与图片的文件名**完全匹配**。
    - 包括大小写以及完整的后缀（例如：`T001-01.jpg`，不能只写 `T001-01`）。
- **备注 (Notes)**
    - 可以输入任意文本。系统会自动去除文本前后的多余空格。
- **生成日期 (Date)**
    - 必须使用 **`YYYY-MM-DD`** 格式（例如：`2026-08-06`）。
- **标签 (Tags)**
    - 若有多个标签，请尽量使用**英文逗号 ( , )** 进行分隔。
    - 💡 **提示**：您无需手动输入 `#` 号，系统会自动为您处理。同时，系统支持兼容全角逗号（，），并会自动将其转换为标准格式。


#### **3. 导出字段说明**<a id="batch-export"></a>

当您执行“全部数据导出”时，系统会额外为您提供一项数据：

- **最后更新时间**：记录了该条目最后一次被编辑（包括备注、日期或标签的改动）的时间戳。这对于追踪实验进度非常有帮助。


### 🛠️ 主要功能详解<a id="batch-function"></a>

#### **📥 数据下载与准备**<a id="batch-download"></a>

您可以根据需求，选择以下两种方式获取 Excel 模板：

- **空白模板下载**
    - 直接下载一个带有预设表头、无需手动输入的标准模板。您只需在对应的行填入数据即可。
- **针对性补全下载 —— _**高效纠错神器**_
    - 如果您想专门针对“漏填”的数据进行补全，可以使用此功能。
    - 您可以筛选出：**备注为空**、**生成日期为空** 或 **标签为空** 的项目列表。
    - **逻辑说明**：若勾选多项（例如同时勾选“备注为空”和“标签为空”），系统将仅导出**同时满足这多项条件**的缺失项。
    - **排序功能**：导出的列表可以按照“生成日期”或“文件名”进行正序/倒序排列，方便您按实验顺序进行录入。

#### **📤 数据上传与覆盖 **<a id="batch-upload"></a>

将填写好的 Excel 文件上传后，系统将自动同步数据到数据库中。

- **⚠️ 重要逻辑：空值即覆盖**
    - 请务必注意：在上传的文件中，如果您写好了文件名，但后面的备注、日期或标签内容是**空的**，系统会将其识别为“删除指令”，并用空值**覆盖**掉原有的数据。
- **错误检测与快速修复**
    - 如果上传的文件格式有误（例如日期格式不对），系统会在页面下方弹出错误提示。
    - 您可以点击【导出错误行】功能，仅针对这些“有病”的数据进行下载。这样您只需修改这几行错题，再重新上传即可，无需面对整个庞大的数据集。


<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-failimp-zh.png" alt="图20 ：错误提示以及导出错误行" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    图20 ：错误提示以及导出错误行
  </figcaption>
</figure>


#### **💾 全部数据备份**<a id="batch-backup"></a>

这是最稳妥的大规模管理方案。

- **适用场景**：
    1. 作为实验数据的定期完整备份。
    2. 当您需要对整个项目的所有信息进行大规模、全量修改时。
- **操作流程**：下载全部数据 → 在 Excel 中批量填充/修改 → 重新上传覆盖。
- **排序选项**：导出的文件支持按照“文件名”、“生成日期”或“最后更新时间”进行正序/倒序排列。

---

## 🚨 <strong><em>再次提醒！</em></strong> <a id="batch-safety"></a>

>  <strong class="wow">注意！</strong>
> 
> ### ⚠️ _**请在操作前务必反复确认以下内容！**_

**图片标题（文件名）是整个系统的“命脉”。**

1. **文件名即唯一 ID**：如果您上传的 Excel 中“文件名”一列写错了，系统将无法将其与现有的图片匹配。这会导致数据导入失败，或者错误地覆盖了其他图片的数据。
2. **最稳妥的操作方案**：为了避免因手动输入文件名导致的低级错误，我们强烈建议您采用以下流程：
    - **先执行“全部数据导出” → 在 Excel 中进行批量修改与填充 → 最后执行“全部上传”覆盖。**

这样可以最大限度地利用系统生成的准确文件名，确保数据的绝对安全。


---

# 🛠️ 常见问题与免责声明 <a id="faq"></a>

## ❓ 常见问题排查 

由于 NIU 是一款轻量化工具，在某些特定的网络波动或浏览器缓存情况下，可能会遇到短暂的显示异常。如果遇到以下情况，请参考对应的解决方法：

### **• 界面显示/连接问题**

- **无法连接到页面**：如果您在启动程序后尝试访问网址却提示无法连接，请尝试**刷新页面 (F5)**。这通常是由于本地服务初始化瞬间的延迟导致的。
- **搜索框内容消失**：如果在“智能回退”后发现搜索框内容变为空白，请直接**刷新页面**。
- **主页分组显示为空**：如果您发现分组列表未能正确加载，请尝试**刷新页面**。

### **• 逻辑循环问题**

- **智能回退陷入循环**：虽然我们已尽可能优化了“智能回退”路径，但在极少数极端操作下，可能会出现“从查看回到编辑，又自动跳回查看”的逻辑循环。
    - **解决方法**：请点击 **【返回主页】** 按钮。这会强制您重置当前路径并返回全局管理界面，从而有效跳出循环。

> [!TIP] 💡 **快速指南**：对于大多数非致命的显示异常（如加载失败、内容显示不全），**“刷新页面”**通常是最简单且有效的解决方案。

---

## ⚠️ 免责声明与使用须知 

在使用 NIU 之前，请务必阅读并理解以下条款：

### **• 软件性质说明**

- **Beta 测试阶段**：本项目目前处于 **Beta 测试阶段**，定位为“快速原型开发 (Vibe Coding)”工具。它旨在为个人科研工作流提供便利，**并非工业级、生产环境级别的标准软件**。
- **AI 辅助开发**：本软件的部分代码由人工智能 (AI) 辅助生成。这意味着代码中可能存在冗余、逻辑不尽完美或潜在的性能瓶颈。
- **使用风险**：使用者应自行评估软件的可靠性，并建议在进行关键实验数据处理前，始终保持原始数据的完整备份。

### **• 更新与维护**

- **无持续更新保证**：由于本项目属于个人用途工具，作者**无法保证**会持续进行功能迭代或修复所有已知 Bug。项目的生命力取决于作者的兴趣与精力。
- **使用者自行判断**：请根据您的实际需求和数据重要程度，自主决定是否在关键任务中使用本软件。

***本项目采用 **MIT License** 开源。***

---

## 💬 反馈与沟通<a id="contact"></a>

虽然我不保证能立即修复每一个问题，但我非常欢迎每一位使用者提供反馈，这有助于项目的完善。

- **报告 Bug 或功能建议**：请前往 GitHub 的 [Issues] 页面提交详细的描述（包括您的操作步骤和错误截图）。
- **直接联系**：如果您有紧急的问题或想进行深入的交流，可以通过邮件联系我：<a href="mailto:nqy.pro@outlook.com" class="email-link">📧 nqy.pro@outlook.com</a> 

---

>***本项目与 Google/Gemma-4-26B-a4b（Q6_K）共同创作完成。***
>我真诚地认为，AI 是人类集体智慧的凝聚。因此这个项目，某种意义上也是与全人类的智慧合作而生。
>感谢技术的发展，让我也能跨越编程门槛，把脑海中的想法变成实用的工具，从而更好地助力我的研究项目。


<div align="right"> <i>感谢您使用 NIU —— 让编号图片的数据管理变得轻盈。</i> </div>
<br><br><br><br>

*最近更新于：2026.08.19*

<br><br><br><br>
---
layout: niu-docs-layout
title: User Guide | NIU
niu_sidebar_links:
# 第一章
  - { text: "🔬 Product Overview", url: "#overview", level: 1 }
  - { text: "📖 About NIU", url: "#about-niu", level: 2 }
  - { text: "🎯 Design Goals", url: "#design-goals", level: 3 }
  - { text: "✨ Key Features", url: "#highlights", level: 3 }
  - { text: "🚨 Core Logic & Security", url: "#safety-logic", level: 2 }

# 第二章
  - { text: "🛠️ Preparation", url: "#prep", level: 1 }
  - { text: "💻 Environment & Installation", url: "#env-req", level: 2 }
  - { text: "🛠️ System Requirements", url: "#sys-req", level: 3 }
  - { text: "📥 Installation Process", url: "#install-flow", level: 2 }
  - { text: "📂 Project Directory Structure", url: "#dir-spec", level: 2 }

# 第三章
  - { text: "📏 Naming & Grouping Rules", url: "#naming-rules", level: 1 }
  - { text: "🔑 The Universal Formula", url: "#formula", level: 2 }
  - { text: "🧩 How Automatic Grouping Works", url: "#auto-grouping", level: 2 }
  - { text: "🚫 Naming Prohibitions", url: "#forbidden", level: 2 }

# 第四章 (精细化拆解版)
  - { text: "⚙️ Detailed Functions", url: "#features", level: 1 }
# --- 1️⃣ Single-Image Workflow ---
  - { text: "1️⃣ Single-Image Workflow", url: "#workflow-single", level: 2 }
  - { text: "🏠 Home Overview", url: "#home-overview", level: 3 }
  - { text: "🔍 Search & Rapid Retrieval", url: "#search-func", level: 3 }
  - { text: "📂 Prefix Group Browsing", url: "#prefix-groups", level: 3 }
  - { text: "👁️ View Mode (Single)", url: "#view-mode", level: 3 }
  - { text: "📝 Edit Mode (Annotation)", url: "#edit-mode", level: 3 }
  - { text: "⚠️ Filename Warning", url: "#filename-warning", level: 3 }

# --- 2️⃣ Multi-Image Comparison ---
  - { text: "2️⃣ Advanced Comparison Workflow", url: "#workflow-compare", level: 2 }
  - { text: "🏁 Entry Point", url: "#compare-entry", level: 3 }
  - { text: "📋 Comparison Index", url: "#compare-index", level: 3 }
  - { text: "🔍 Comparison View", url: "#compare-view", level: 3 }
  - { text: "  ↳ Basic Info & Details", url: "#comp-details", level: 4 }
  - { text: "  ↳ Control & Interaction", url: "#comp-control", level: 4 }
  - { text: "  ↳ Flexible Reordering", url: "#comp-sort", level: 4 }

# --- 3️⃣ Batch Data Management ---
  - { text: "3️⃣ Batch Data Management", url: "#workflow-batch", level: 2 }
  - { text: "📊 Data Format Specification", url: "#batch-format", level: 3 }
  - { text: "  ↳ Core Header Composition", url: "#batch-headers", level: 4 }
  - { text: "  ↳ Detailed Entry Guide", url: "#batch-guide", level: 4 }
  - { text: "  ↳ Export Field Description", url: "#batch-export", level: 4 }
  - { text: "🛠️ Core Functions Detail", url: "#batch-function", level: 3 }
  - { text: "  ↳ Downloading & Preparation", url: "#batch-download", level: 4 }
  - { text: "  ↳ Uploading & Overwriting", url: "#batch-upload", level: 4 }
  - { text: "  ↳ Full Data Backup", url: "#batch-backup", level: 4 }
  - { text: "🚨 Data Security Warning", url: "#batch-safety", level: 2 }

# 第五章
  - { text: "❓ FAQ & Disclaimer", url: "#faq", level: 1 }
  - { text: "💬 Feedback & Contact", url: "#contact", level: 2 }
---



# 🔬 Product Overview<a id="overview"></a>

## 📖 About NIU<a id="about-niu"></a>

**Numbered Image Utility (NIU)** is a **lightweight numbered image management and comparison tool** specifically designed for scientific research, experimental, and industrial scenarios. It is not a simple image viewer; rather, it aims to solve efficiency bottlenecks in "rapid retrieval," "annotation recording," and "precise multi-image comparison" for large-scale image datasets with specific numbering patterns.

### 🎯 Design Goals<a id="design-goals"></a>

- **Rapid Indexing**: Achieve instantaneous localization of massive images through systematic numbering.
- **Efficient Viewing**: Supports real-time notes, date marking, and Tag management for images.
- **Precision Comparison**: Supports zooming, panning, and position locking of multiple numbered images on the same page for comparative observation.
- **Batch Processing**: Seamlessly connects "Files as Data." As long as filenames follow the convention, datasets can be constructed simply by placing files into a folder. It also includes batch import capabilities for annotations.

## ✨ Key Features<a id="highlights"></a>

- **🌐 Multi-Project Parallel Management**
    - Supports physical data isolation through different "Project Names."
    - Supports seamless one-click switching between Chinese and English environments.
- **🔍 Flexible Information Management System**
    - Supports combined retrieval via **Filename (Numbering)** or **Custom Tags (Tag)**.
    - Supports real-time online editing of notes, generation dates, and tags.
- **⚡ High-Performance Sync Engine**
    - Based on file system watching technology, it automatically generates WebP thumbnails, ensuring smooth scrolling even with tens of thousands of images.
- **⇄ Professional Comparison Mode**
    - Supports multi-image simultaneous display, free zooming (Zoom), and panning (Pan).
    - Supports a **Position Locking function**, allowing you to move individual images independently while maintaining the same zoom ratio for detailed comparison.
    - Supports drag-and-drop reordering of layouts.
- **📊 Batch Data Processing Capability**
    - Supports rapid import/export of all annotation data via Excel or CSV files.
    - Supports a "Export only empty rows" function, greatly simplifying the process of completing missing information.

---

## 🚨 ***CRITICAL: Core Logic & Data Security*** <a id="safety-logic"></a>

> <strong class="wow">ATTENTION！</strong>
> 
> ### ⚠️ _**Please read the following content carefully before use! Ignoring these rules will lead to permanent "loss" of your experimental data!**_

### 🆔 _**Filename is the Unique ID**_

All core logic of NIU is built upon one ironclad rule: **The filename of an image is its unique identification code (ID).**

- Although the software provides a **Tag** function, the **Tag is merely an additional attribute**; it cannot exist independently of the filename.
- The system performs automatic grouping by parsing the "Prefix" of the filename and performs sorting and indexing via the "Sequence Number."
- _**This means: The weight of the image title (filename) is higher than everything else!**_


### ❌ _**Caution: Manually changing filenames in the file system**_

- **Once you manually change an image name in a Windows or macOS folder, all associated notes, generation dates, and tags for that image will 【instantly become invalid】!**
- This data will not move with the new name; they will become "orphan data" because they cannot find the original filename, making them invisible in the software interface.

### 🛡️ _**Data Protection Guide**_

- **Backup first, then import**: Before placing images into the project's `images/` folder, please ensure that the original images have a reliable backup.
- **Regularly export annotations**: Since notes and tags are stored in a local database, it is recommended to develop a habit of regularly using the **【Export All】** button in the "Batch Processing" function to back up data and prevent accidents.


_(For details on data export and backup, please refer to the manual —— 【Batch Data Processing】 chapter)_

---

# 🛠️ Preparation<a id="prep"></a>

Before officially starting NIU, please ensure your system environment is properly configured and organize your files strictly according to the specified directory structure.

## 💻 Environment & Installation<a id="env-req"></a>

### 🛠️ System Requirements<a id="sys-req"></a>
* **Python Version**: **Python 3.8 or higher** must be installed.
* **Core Dependencies**: The installation process will automatically handle the following key components:
    * `flask` (Web service framework)
    * `pandas` & `openpyxl` (Data processing and Excel support)
    * `watchdog` (File system real-time monitoring)
    * `Pillow` (Image processing engine)
    * `python-dotenv` (Environment variable management)


## Installation Process<a id="install-flow"></a>

### 📥 Step 1: Getting the Software

You can choose one of the following two methods to obtain the program files based on your preference:

**• Method 1: Download via Git (Recommended, easy for future updates)**
If you have Git installed on your computer, right-click in your folder and select "Git Bash Here" or execute directly via the command line:
```bash
git clone https://github.com/nqy-exp/Numbered-Image-Utility.git
```

**• Method 2: Direct Download of ZIP Archive (Simplest, no tools required)**
If you do not want to use command-line tools, follow these steps:
1. Visit the project's [GitHub Homepage](https://github.com/nqy-exp/Numbered-Image-Utility).
2. Click the green **[Code]** button on the right side of the page.
3. In the popup menu, click **[Download ZIP]**.
4. After downloading, unzip the archive into your desired folder.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/git-download.png" alt="Figure 1: GitHub page Code and Download ZIP location" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 1: GitHub page Code and Download ZIP location
  </figcaption>
</figure>


### ⌨️ Step 2: How to Open the Terminal

Starting NIU requires entering commands via the "Command Line" (also known as Terminal or Console). Please follow the instructions for your operating system:

**• Windows Users**
1. Press **[Win] + [S]** on your keyboard (or click the taskbar search box).
2. Type `cmd` or `PowerShell` in the search box.
3. Click the appearing **“Command Prompt”** or **“Windows PowerShell”** icon.

**• macOS Users**
1. Press **[Command] + [Spacebar]** to invoke Spotlight Search.
2. Type `Terminal` in the search box.
3. Press Enter to open it.

### 📂 Step 3: Navigating to Your Project

**This is the step where most beginners get stuck!** After opening the command line, you are by default in your "User Home Directory." You need to use the `cd` command (Change Directory) to tell the computer: "Please enter the NIU folder I just unzipped."

**• Operation Tips:**
1. First, find the window containing your NIU folder (e.g., Windows File Explorer).
2. In the command line, type `cd ` (note that **there is a space after cd**).
3. **The easiest way**: Simply use your mouse to **drag and drop** that folder into the black command line window; the path will be generated automatically. Alternatively, manually type the folder path.
4. Press **[Enter]**.

**• How to confirm success?**
Type `dir` (Windows) or `ls` (macOS/Linux) and press Enter. If you can see a file list including `app.py`, `requirements.txt`, etc., it means you have successfully entered the correct folder!


### 🚀 Step 4: Installation & Running

Now that you are standing at the "door" of the project, you can officially start installing and launching it.

### 🛠️ Environment Configuration
**• Install Python Dependencies**
In the command line window, enter the following commands in order (it is recommended to create a virtual environment first, see below):
```bash
# Create a virtual environment (Execute only once)
python -m venv venv

# Activate the virtual environment
# Windows Users:
.\venv\Scripts\activate
# macOS / Linux Users:
source venv/bin/activate

# Install all required components
pip install -r requirements.txt
```
*Note: Enter the commands one by one! Do not copy the content after the # symbol.*
⚠️ **Installation Reminder**: After downloading the Python installer, please make sure to check **"Add Python to PATH"** on the first page of the installation interface. Without this step, all subsequent commands will fail.

### 🔐 Security Configuration (Security Configuration)

To ensure the security of the Web interface session, you need to manually create a configuration file.

* **Steps**: In the project root directory (the folder where `app.py` is located), create a new text file named `.env`.
* **Content**: Enter the following format into the file and ***REPLACE*** `your_random_secret_string_here` with a random string of your own making (it is recommended to include letters, numbers, and special characters).

```text
SECRET_KEY=your_random_secret_string_here
```

⚠️ **Note**: Please ensure the full filename is indeed `.env`, not `.env.txt`. If you see the `.txt` extension, please delete it (it is recommended to enable "File name extensions" in your folder options).

### 🏃 Launching the Program
Once everything is ready, enter the following command to launch the demo project:
```bash
python app.py --project demo_project --port 5001
```
After successful running, open your browser and enter `http://127.0.0.1:5001` in the address bar to see the software interface and begin testing.

> 💡 **What is 127.0.0.1?** This string of numbers represents "your own computer." Entering it tells the browser: "Please open the software running locally on my machine."

Alternatively, you can replace the `-port 5001` with any unused port within the ranges **5000~6000 or 8000~9000**. Just enter the corresponding port in the address bar.

If you are satisfied, you can enter the following command to launch your first project:
```bash 
python app.py --project my_first_project --port 5001 
```

*You can replace ‘my_first_project’ with any project name you want; please use English letters to reduce the possibility of errors.*


---

## 📂 Project Directory Structure <a id="dir-spec"></a>

**This is the most critical operational principle for using NIU!** The software identifies your projects and images through a specific folder hierarchy. Please organize your files according to this logic:

### 📐 Standard Tree Structure
```text
Numbered-Image-Utility/
├── app.py                 # Main program code
├── sync_engine.py         # Sync engine code
├── .env                   # Security configuration file
├── projects/              # Root directory for all experimental projects
│   └── [your_project_name]/    # Your specific project folder (e.g., my_first_project)
│       ├── images/        # 📸 【CORE】Please put all numbered images in this folder!!!
│       │   ├── T001-01.jpg
│       │   ├── T001-02.jpg
│       │   └── ...
│       └── experiments.db # Project-specific database (automatically generated)
│       │ 
│       └── thumbnails/    # Automatically generated thumbnails
│       │   ├── T001-01.webp
│       │   └── ...
└── ... Other system files
```

<strong class="wow">AGAIN: Images must be placed in the correct location!</strong>

## 📝 Important Reminders
* **Image Location**: All images that need to be managed must be placed in the `projects/[project_name]/images/` subdirectory. If images are misplaced, the program will not recognize them.
* **Data Isolation Principle**: Whenever you specify a new `--project` name via the command line, the system will automatically create a corresponding folder and its subdirectories under `projects/`, achieving physical isolation of different experimental data.
* **Deletion & Cleanup**: If you want to completely delete all data for a project, simply delete the entire corresponding folder (e.g., `projects/experiment_A/`).

***Please ensure you check filenames before placing them into the images/ folder and develop a habit of regular data backups!***

---

# 📏 Naming Convention & Automatic Grouping Rules <a id="naming-rules"></a>

All automated functions of NIU (such as automatic grouping, rapid retrieval, and sorting) rely heavily on your file naming. Although your experimental codes can be highly complex and customized, the software will work perfectly as long as you follow the **"Last Hyphen Principle."**

## 🔑 The Universal Formula <a id="formula"></a>

No matter how many segments your experimental code contains, NIU's logic for recognizing filenames is summarized in one sentence:

> ***“Everything before the last hyphen `-` is considered the 【Prefix】; everything after the last hyphen is considered the 【Sequence Number】.”***

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-number-rule-en.png" alt="Figure 2: Numbering example" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 2: Numbering example
  </figcaption>
</figure>

## 🧩 How Automatic Grouping Works<a id="auto-grouping"></a>

NIU automatically classifies images into the same "Group" based on the degree of similarity in their **【Prefix】**.

### **Case A: Standard Numbering**
For a basic set of experiments:
* `T001-01.jpg`
* `T001-02.jpg`
* **Result**: The system identifies the prefix as `T001`, and they are automatically grouped into **[T001] Group**.

### **Case B: Complex Multi-dimensional Numbering (Your Experimental Scenario)**
Even if your numbering includes multiple dimensions such as Sample ID, Treatment Mode, and Structure, grouping remains precise as long as the position of the last `-` is correct.

***Note: This software only uses the LAST hyphen `-` as the boundary between the prefix and the sequence number.***

**1. Multi-dimensional Composite Coding Example:**
Filename format: `Sample ID-Treatment Mode-Structure & Medium-Sequence Number`.
* `T001-PA-LCGZ-01.jpg`
* `T001-PA-LCGZ-02.jpg`
* **Result**: The system identifies the prefix as `T001-PA-LCGZ`, and these two images are automatically grouped into **[T001-PA-LCGZ] Group**.

**2. Special Experiment (e.g., Parchment Paper) Example:**
Filename format: `Structure/Medium-Sample ID-Treatment Method-Sequence Number`.
* `BPC-XX_YY-001.jpg`
* `BPC-XX_YY-002.jpg`
* **Result**: The system identifies the prefix as `BPC-XX_YY`, and these two images are automatically grouped into **[BPC-XX_YY] Group**.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-PA-index.png" alt="Figure 3: Developer's personal project numbering home page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 3: Developer's personal project numbering home page
  </figcaption>
</figure>

## 🚫 Naming Prohibitions <a id="forbidden"></a>

To ensure grouping and search functions do not fail, please avoid the following errors:

**• Do not use spaces or other symbols as delimiters**
* ❌ `T001_01.jpg` 
* ❌ `T001/01.jpg` 
* ❌ `T001 01.jpg` 
* ✅ `T001-01.jpg`

**• Prefixes can only contain letters, numbers, underscores, and hyphens**:
* ❌ `T/1-01.jpg` 
* ❌ `¥#1/-01.jpg` 
* ❌ `|@？-01.jpg` 
* ✅ `T001-01.jpg`
* ✅ `T001_TR-01.jpg`

**• Do not omit the sequence number part**
* ❌ `T001.jpg` (No hyphen or number; the system cannot sort or group it)
* ✅ `T001-01.jpg`
* ✅ `T001-001.jpg`

**• Strictly prohibited: Manually changing filenames in the file system**
* Re-emphasizing: **Filename is the ID**. Once you manually rename a file in your folder, all associated notes, dates, and tags will not be able to find their "new owner," leading to data loss.

## 💡 Recommendations for Users

* **Maintain Consistency**: Although prefixes can be long (e.g., `T02CL-XX-YY`), ensure that all characters before the final number are identical within the same experimental group.
* **Leverage Hierarchies**: You can use complex prefixes to achieve extremely fine-grained grouping. For example, by including "Treatment Mode (YY)" as part of your prefix, you can filter all images that used `PA` mode with a single click.
* **Special Marking**: If an image requires specific marking, you can use the Tag (`#Tag`) function for easier retrieval and classification.

---

# Detailed Functions<a id="features"></a>


## 🛠️ Part One: Single-Image Workflow <a id="workflow-single"></a>

> [!TIP] **Tip**: All pages shown in this chapter are screenshots from the `demo-project`. You can run the program and load demo data to practice and familiarize yourself with the logic.

### 🏠 Home: Global Overview & Management Entry<a id="home-overview"></a>

The home page is the control center of NIU, providing a macro view of your entire experimental dataset.

- **Data Statistics**: Displays the total number of images in the current project in real-time.
- **Grouped Display**: The system automatically groups images logically based on their prefix for easy browsing by group.
- **Flexible Sorting**: You can arrange the group list using the following options:
    - _Default Sort_
    - _Generation Time (Ascending/Descending)_
    - _Alphanumeric Order (Ascending/Descending)_
- **Functional Entrances**: The home page integrates the **Search Box**, **Comparison Mode Entry**, and **Batch Data Processing Entry**.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-demo-index-en.png" alt="Figure 4: NIU's built-in demo-project home page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 4: NIU's built-in demo-project home page
  </figcaption>
</figure>


### 🔍 Search & Rapid Retrieval<a id="search-func"></a>

Use the search bar at the top of the home page to precisely locate specific images.

- **Multi-dimensional Retrieval**:
    - Enter a **Number** to match corresponding image titles.
    - Enter **`#` + Tag name** (e.g., `#SampleA`) for tag-based retrieval.
- **Smart Suggestions & Quick Jump**:
    - During input, an **auto-suggestion box** will appear with potential matches.
    - The system also displays **Prefix Group options** related to your characters. You can click these options to jump directly into that specific group page.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-search-en.png" alt="Figure 5: Search interface" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 5: Search interface
  </figcaption>
</figure>

- **Visual Alert (Unprocessed Marker)**:
    - To help you efficiently complete data entry, NIU features a visual warning: **All entries without notes, generation time, or tags will have a pink background.**

 <figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-noedit-en.png" alt="Figure 6: Unedited entry background color" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 6: Unedited entry background color
  </figcaption>
</figure>

 - **One-click Clear**: To clear the search bar, use the 'X' button on the right side.



### 📂 Prefix Groups: Systematic Grouped Browsing<a id="prefix-groups"></a>

The "Prefix Groups" page is designed to display all images sharing the same prefix.

- **Batch Viewing**: Once in a group, you can quickly browse all projects within that group along with their text content (notes, etc.). The visual alert for unprocessed items applies here as well.
- **Smart Back Navigation**:
    - There is a 【Back】 button at the top right of the page.
    - This button has "memory": whether you entered from the **Home page** or via **Search results**, clicking back will return you precisely to your previous state.
    - _**Special Note**_: If you jumped from a search page, the **original search keywords in the search box will be fully preserved** upon returning.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-prefix-en.png" alt="Figure 7: Prefix group page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 7: Prefix group page
  </figcaption>
</figure>


### 👁️ View Mode: Deep Single-Image Inspection<a id="view-mode"></a>

Selecting an image takes you to the detailed viewing interface.

- **Information Display**: Clearly presents the Image Title, Generation Date, Notes, and associated Tags.
- **Free Zoom Control**:
    - The default zoom is **35%**.
    - You can adjust the scale by dragging the **zoom slider** or by **manually typing a percentage** (range: **10% - 500%**) to meet most inspection needs.
- **Navigation Buttons**:
    - **Back to Home**: Returns directly to the global overview.
    - **Back to Previous Page**: Also features **Smart Back Navigation**. It records your path to ensure you return to your previous state (e.g., search results) and **perfectly preserves your search input**.
    - **Edit Button**: Enters the information annotation interface.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-view-en.png" alt="Figure 8: View page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 8: View page
  </figcaption>
</figure>


### 📝 Edit Mode: Annotation & Data Entry<a id="edit-mode"></a>

The Edit mode is where you "breathe life" into your experimental data (notes, time, and tags).

- **Multi-dimensional Input**:
    - **Generation Date**: Supports manual precise input or quick selection via a browser date picker.
    - **Notes**: Standard text input.
    - **Tag Input**: Uses a special shortcut—**type `#`, then your tag name, and press [Enter]** to automatically generate the tag.
- **⚠️ Critical Operation Tip**:
    - After completing all modifications, ***you must click the 【Save】 button*** to write data to the database!
    - Once saved, clicking 【Back】 will trigger the smart back navigation to return you to your previous view or search page.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-edit-en.png" alt="Figure 9: Edit page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 9: Edit page
  </figcaption>
</figure>


---

## ⇄ Second Part: Advanced Comparison Workflow <a id="workflow-compare"></a>

> [!TIP] **Tip**: Comparison mode is one of NIU's core features. Through multi-dimensional layout adjustments and precise control, it helps you discover subtle differences in complex experimental data.

### 🏁 Entry & Navigation<a id="compare-entry"></a>

- **Entry Point**: Click the 【Comparison Mode】 button at the top right of the Home page.
- **Language Switching**: You can still switch between Chinese and English environments within comparison mode.
- **Returning to Home**: To exit comparison mode, you can:
    - Click the **Software Name** at the top left.
    - Click the **【Back to Home】** button at the top right.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comindex-en.png" alt="Figure 10: Comparison mode home page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 10: Comparison mode home page
  </figcaption>
</figure>

### 📋 Comparison Index: Selecting Images <a id="compare-index"></a>

Before entering the actual comparison view, you must select samples in the index page.

- **Multi-way Selection**:
    - **Direct Click**: Select images by clicking them directly in the thumbnail list.
    - **Smart Search**: Supports searching via **Image Title** or **`#` + Tag name**.
- **⭐ UX Highlights**:
    - **Search does not interfere with selection**: If you have already selected some images, performing a search **will NOT** clear your current selection. This allows you to find more samples without re-selecting the original ones.
    - **State Memory**: When returning from "Comparison View" to the "Comparison Index," your **previously selected images are automatically retained**, allowing for quick switching between comparison sets.
- **Batch Clear: Click the 【Clear All】 button on the right to reset selection.
    - ⚠️ _**Note: The Clear All operation is irreversible; please use with caution.**_

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comindexch-en.png" alt="Figure 11: Clear all option appears after selecting images in comparison mode home page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 11: Clear all option appears after selecting images in comparison mode home page
  </figcaption>
</figure>


### 🔍 Comparison View: Precision Observation <a id="compare-view"></a>

Once images are selected, you enter a professional observation workstation.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comview-en.png" alt="Figure 12: Comparison mode" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 12: Comparison mode
  </figcaption>
</figure>

#### **1. Basic Info & Single Image Details**<a id="comp-details"></a>

- **Information Display**: In comparison mode, you can see the notes and tags for each image. *(Note: Tag display is now online)*.
- **View Single Image Details**: Clicking an image **Title** will open a new page in 【Single-Image Detailed View】 mode.
    - ⚠️ **Note**: This view differs from the basic workflow; it does not allow you to "go back" to the comparison view. You can only 【Edit】 the image or 【Close】 the page.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-viewcom-en.png" alt="Figure 13: Single image view page in comparison mode" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 13: Single image view page in comparison mode
  </figcaption>
</figure>

#### **2. Control & Interaction**<a id="compare-control"></a>

- **Zoom**: Adjust via the **zoom slider** at the bottom, supporting a range of **10% - 500%** to meet requirements from macro to microscopic observation.
- **Pan**: You can directly click and drag images with your mouse to observe specific parts of the image.
- **Locking**: You can perform a ***Lock*** operation on an individual image. Once locked, the image **cannot be dragged or zoomed**, allowing you to maintain a fixed reference position while comparing other moving images.
- **One-click Reset**: An ***One-click Reset*** button is located next to the Lock button. Clicking it will quickly restore the zoom level and lock status of all images in the current view to their initial default values, allowing you to quickly restart your observation.
	_**Special Note**_: Images in a "Locked" state cannot be reset via this button.

💡 **Advanced Interaction Feature**: NIU achieves a **complete decoupling of layout and observation parameters**. This means you can use the 【Reorder】 function at any time to adjust the display order of images (i.e., change their position on the webpage) **without affecting** the pre-set zoom levels or lock statuses of each image. You can first arrange a perfect layout, and then perform fine-tuned zooming and locking for each individual image.

⚠️ **Important Operational Reminder**: When moving an image's position (via the reordering function), the system will **automatically unlock** that image once its position changes. If you need to lock it again, please click the ***Lock*** button once more.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comlock-en.png" alt="Figure 14: Lock and Reset buttons" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 14: Lock and Reset buttons
  </figcaption>
</figure>

#### **3. Flexible Reordering <a id="compare-sort"></a> 

NIU provides a highly flexible layout system to customize your image array.

- **Enter Reordering**: Click the 【Reorder】 button at the top center of the page.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comrank-en.png" alt="Figure 15: Image Reorder" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 15: Image Reorder
  </figcaption>
</figure>

- **Grid Layout**: The system uses a "fixed three per row" logic, but you can increase or decrease rows as needed.
- **Drag-and-Drop Operation**:
    - You can drag images to any position like moving blocks.
    - If you delete a row, the images in that row will automatically move back into the "Unassigned" area. You can also manually move images into this area.
    - **Layout Freedom**: You can create non-continuous layouts, such as leaving an empty slot between two images to gain more visual space.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comrankch-en.png" alt="Figure 16: After image reordering" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 16: After image reordering
  </figcaption>
</figure>

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-comviewch-en.png" alt="Figure 17: Display within the page after image reorder" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 17: Display within the page after image reorder
  </figcaption>
</figure>

---

## 📊 Third Part: Batch Data Management <a id="workflow-batch"></a>

> [!TIP] **Tip**: The Batch Processing module is NIU's "Productivity Accelerator." It allows you to complete large-scale data entry, completion, and backup with high efficiency via Excel or CSV.

### 🏁 Entry 

- **How to enter**: Click the blue 【Batch Data Processing】 button on the right side of the Home page.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-import-en.png" alt="Figure 18: Batch data processing home page" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 18: Batch data processing home page
  </figcaption>
</figure>

### 📋 Data Format Specification<a id="batch-format"></a> 

To ensure successful import, you must follow this table structure.

#### **1. Core Header Composition**<a id="batch-headers"></a>

Whether creating manually or downloading a template, the Excel must contain only these four fields:

| Filename | Notes | Date | Tags |
|---|---|---|---|
|_Filename_|_Notes_|_Date_|_Tags_|

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-imexcel-en.png" alt="Figure 19: NIU-compatible Excel headers" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 19: NIU-compatible Excel headers
  </figcaption>
</figure>

_(Note: The system supports both Chinese and English headers. You can upload Excel files in either language regardless of your current UI language.)_


#### **2.Detailed Field Entry Guide**<a id="batch-guide"></a>

To ensure successful data import, please strictly follow these formatting requirements when filling out your Excel spreadsheet:

- **Filename**
    - Must **match the image filename exactly**.
    - This includes case sensitivity and the full extension (e.g., `T001-01.jpg`, not just `T001-01`).
- **Notes**
    - Any text can be entered. The system will automatically trim any leading or trailing whitespace.
- **Date**
    - Must use the **`YYYY-MM-DD`** format (e.g., `2026-08-06`).
- **Tags**
    - Use a **comma ( , )** to separate multiple tags.
    - 💡 **Tip**: You do **not** need to manually type the `#` symbol; the system will handle this automatically. The system also supports full-width commas (，) and will automatically convert them to the standard format.


#### **3. Export Field Description**<a id="batch-export"></a>


When performing "Export All Data," the system provides an additional field:

- **Last Updated Time**: Records the timestamp of when that entry was last edited (including notes, date, or tag changes). This is very helpful for tracking experimental progress.


### 🛠️ Core Functions<a id="batch-function"></a>

#### **📥 Downloading & Preparation <a id="batch-download"></a>

You can choose from two ways to get your Excel template:

- **Blank Template Download
    - Downloads a standard template with pre-set headers. Simply fill in your data in the corresponding rows.
- **Selective Empty-Row Download—— _**The Efficiency Tool**_**
    - If you want to target "missing" data for completion, use this function.
    - You can filter projects where: **Notes are empty**, **Date is empty**, or **Tags are empty**.
    - **Logic**: If multiple options are selected (e.g., both "Notes empty" and "Tags empty"), the system will only export items that satisfy **all** selected conditions simultaneously.
    - **Sorting**: The exported list can be sorted by "Date" or "Filename" in ascending/descending order for easier entry.

#### **📤 Uploading & Overwriting**<a id="batch-upload"></a>

Once you upload your Excel, the data will automatically sync to the database.

- **⚠️ Important Logic: Empty Values = Overwrite**
    - Please note: In the uploaded file, if a filename is provided but the notes, date, or tags are **empty**, the system treats this as a "Delete" command and will **overwrite** the existing data with empty values.
- **Error Detection & Quick Fix**
    - If the file format is wrong (e.g., incorrect date format), an error message will appear below the page.
    - You can click 【Export Error Rows】 to download only the problematic entries, allowing you to fix them and re-upload without processing the entire dataset.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/NIU-failimp-en.png" alt="Figure 20: Error prompt and export error rows" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 20: Error prompt and export error rows
  </figcaption>
</figure>

#### **💾 Full Data Export**<a id="batch-backup"></a>

This is the most robust method for large-scale management.

- **Use Cases**:
    1. Regular complete backups of experimental data.
    2. When you need to perform mass modifications across all project entries.
- **Workflow: Download All Data --> Batch edit in Excel --> Re-upload and overwrite.**
- **Sorting Options: The exported file can be sorted by "Filename," "Date," or "Last Updated Time" in ascending/descending order.

---

## 🚨 _**CRITICAL WARNING Again**_<a id="batch-safety"></a>

> <strong class="wow">ATTENTION！</strong>
> 
> ### ⚠️ _**Please double-check the following before operating!**_

**The image title (filename) is the lifeblood of the entire system.**

1. **Filename is the Unique ID**: If you write a wrong filename in the "Filename" column of your Excel, the system will be unable to match it with existing images. This will lead to import failure or the creation of incorrect entries.
2. **The Most Reliable Method**: To avoid errors from manual typing, we strongly recommend this workflow:
    - **Perform "Export All Data" --> Batch edit/fill in Excel --> Perform "Upload All" to overwrite.**

This ensures you use the accurate filenames generated by the system, guaranteeing absolute data security.


---

# 🛠️ FAQ & Disclaimer <a id="faq"></a>

## ❓ Troubleshooting 

Since NIU is a lightweight tool, temporary display anomalies may occur due to network fluctuations or browser cache. If encountered, please follow these solutions:

### **• Display/Connection Issues**

- **Cannot connect to the page**: If you cannot access the URL after starting the program, please try **refreshing the page (F5)**. This is usually caused by a momentary delay during local service initialization.
- **Search box content disappears**: If the search input becomes blank after "Smart Back Navigation," simply **refresh the page**.
- **Home grouping displays empty**: If the group list fails to load correctly, try **refreshing the page**.

### **• Logic Loop Issues**

- **Smart Back Navigation loop**: Although we have optimized the "Smart Back" paths, in extremely rare cases, a loop might occur (e.g., moving from View back to Edit, then automatically jumping back to View).
    - **Solution**: Please click the **【Back to Home】** button. This will force a reset of your path and return you to the global management interface, effectively breaking the loop.

> [!TIP] 💡 **Quick Guide**: For most non-critical display anomalies (loading failures, partial content display), **"Refreshing the page"** is usually the simplest and most effective solution.

---

## ⚠️ Disclaimer & Terms of Use 

Before using NIU, please read and understand the following terms:

### **• Software Nature**

- **Beta Stage**: This project is currently in its **Beta testing stage**, positioned as a "Vibe Coding" prototype tool. It is designed for personal research workflows and is **NOT an industrial-grade or production-level software**.
- **AI-Assisted Development**: Parts of this software's code were generated by AI. Consequently, there may be redundancies, logical imperfections, or potential performance bottlenecks.
- **Usage Risk**: Users should evaluate the reliability of the software themselves and are advised to always maintain original backups before performing critical data processing.

### **• Updates & Maintenance**

- **No Guaranteed Updates**: As this is a personal tool, the author **cannot guarantee** continuous feature iterations or the fixing of all known bugs. The project's life depends on the author's interest and availability.
- **User Discretion**: Please decide whether to use this software for critical tasks based on your own needs and the importance of your data.

***This project is open-sourced under the **MIT License**.***

---

## 💬 Feedback & Communication <a id="contact"></a>

While I cannot guarantee an immediate fix for every bug, I welcome all feedback to help improve the project.

- **Report Bug or Suggestion**: Please submit a detailed description (including steps to reproduce and error screenshots) via GitHub **[Issues]**.
- **Direct Contact**: For urgent matters or in-depth discussions, you can contact me via email: <a href="mailto:nqy.pro@outlook.com" class="email-link">📧 nqy.pro@outlook.com</a> 


---

<div align="right"> <i>Thank you for using NIU —— Making numbered image management lightweight.</i> </div>
<br><br><br><br>
*Last updated: 2026.08.15*
<br><br><br><br>

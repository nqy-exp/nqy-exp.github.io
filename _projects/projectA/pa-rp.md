---
layout: projects-layout
title: Research Plan | 研究计划
project: projecta
type: plan
date: 2026-07-13
description: Rapid textile fiber characterization via optical microscopy and computer vision. Exploring low-cost, home-based morphological identification of natural and synthetic fibers using AI and household chemicals.
---
# 1. Research Title
Rapid Characterization of Textile Fibers via Optical Microscopy

# 2. Research Motivation & Background 
As a consumer who enjoys textile handicrafts, I often find myself questioning the material composition of yarns and fabrics during purchase. In typical consumer settings, due to the lack of professional testing tools, identification is often limited to subjective sensory methods, such as tactile examination or combustion testing. However, the burning test poses significant safety risks (e.g., in markets with highly flammable materials) and lacks sufficient precision for distinguishing complex blended fibers. Consequently, verifying the authenticity of material composition remains a persistent challenge.

According to textile-related literature<sup class="reference">[1]</sup><sup class="reference">[2]</sup><sup class="reference">[3]</sup>, current fiber characterization techniques can be categorized as follows:

- Subjective methods: Tactile examination, combustion testing.
- Laboratory-based Analytical Methods:
    - Morphological Characterization: Optical microscopy.
    - Wet Chemical Analysis <sup class="reference">[4]</sup>: Solubility testing, stain method.
    - Physical Property Determination: Melting point, fluorescence, and density gradient analysis.
- Advanced Instrumental Analysis: IR spectrometry, mass spectrometry, Raman spectroscopy<sup class="reference">[5]</sup>, electron microscopy (SEM, TEM), TGA, and XRD.

It can be observed that among existing methods, subjective approaches are highly accessible but rely heavily on user experience due to their inherent subjectivity. Meanwhile, although commercial testing agencies offer professional identification services(e.g., IR spectrometry-based testing), the cost per sample is relatively high. For individual hobbyists, it is not economically feasible to verify each piece of scattered fabric or yarn one by one. Furthermore, most academic research focuses on quantitative characterization via high-end instrumentation, while exploration of low-cost, home-based rapid identification techniques remains relatively limited.

Under these circumstances, exploring a way to rapidly identify fibers using low-cost, especially common household materials presents a significant research opportunity.

# 3. Research  Roadmap

To achieve low-cost and household-applicable rapid fiber identification technology, this study intends to draw inspiration from the stain method in wet chemical analysis, utilizing various readily available daily items to stain or soak fibers, and performing identification through observing changes in their morphological characteristics. 

However, conducting experiments requires reliable characterization methods. Currently, the qualitative and quantitative characterization of textile fibers mainly relies on high-precision instruments, such as using infrared spectroscopy assisted by optical microscopy for identification<sup class="reference">[6]</sup>. Considering economic cost constraints, it is impossible to perform commercial testing for every single sample; regarding instrument self-construction, although the structure of IR spectroscopic instruments is simpler than that of other instruments, it is difficult to achieve simplified construction due to the extremely high requirements for stability of accessories in infrared spectroscopy systems. Therefore, this study defines the characterization method as relatively inexpensive optical microscopy, performing qualitative identification by observing the longitudinal structure and cross-sectional morphology of fibers.

This study will be carried out in the following three phases: 

**Phase 1: Construction of a fiber optical microscopic image database.**

First, the collection of microscopic images of pure fibers will be conducted, followed by the extension to the collection of images for blended fibers. According to the sample atlas I have collected, pure fibers will be divided into the following two major categories: 

- **Natural fibers** 
	- Cotton: regular cotton, organic cotton, BCI cotton 
	- Linen: flax (linen), hemp, ramie, jute 
	- Mulberry silk 
	- Wool: sheep wool, cashmere, camel hair
- **Chemical fibers** 
	- Regenerated fibers: Lyocell, cupro, bamboo fiber, viscose, cellulose acetate 
	- Synthetic fibers: polyester, nylon, spandex (not pure fibers, blended with polyester)

**Phase 2: Introducing computer vision technology for auxiliary identification (exploratory phase)**

To improve identification efficiency, this study intends to attempt the introduction of computer vision (CV) technology for auxiliary judgment. In the studies by Zhong, C.<sup class="reference">[7]</sup> and C. Zhong<sup class="reference">[8]</sup>, it can be seen that using artificial intelligence (AI) technology to assist in fiber identification can achieve an accuracy of over 85%. Due to current limitations in the completeness of literature access and computing resources, this phase will take "feasibility exploration" as its main goal, attempting to improve the precision and efficiency of identification through computer vision methods.

**Phase 3: Experimental validation and protocol establishment**

After completing the construction of the image database, various daily chemical media (such as vinegar, soy sauce, disinfectants, edge-sealing liquid, etc.) will be used to soak or drip onto various fiber samples, and their morphological changes will be observed through a microscope. 

Finally, the aim is to summarize and establish a practical rapid identification protocol.

In summary, this exploratory research project will be conducted through three exploratory phases and divided into three sub-projects:
- Construction of Optical Microscopic Morphological Datasets for Textile Fibers
- Exploration of Automated Fiber Identification via Computer Vision
- Impact of Common Household Liquids on the Morphological Stability of Textile Fibers

# 4.Research Methods

## 4.1 Construction of Optical Microscopic Morphological Datasets for Textile Fibers

### 4.1.1 Experimental Equipment & Materials

- **Optical Microscope**: Monocular optical microscope (Phenix XSP-06) and its accessories.
- **Fiber Slicing Equipment**: Y172 fiber slicer (Harrington Slicer).
- **Experimental Samples**: Various fabric samples of known materials(Source: The swatch book Basic fabric— Mini xiaoyanger), wool and cashmere fibers(Source: purchased from Taobao).
- **Experimental Reagents**: Glycerin (HYNAUT), nail base coat (KH Little Lightbulb Nail Care Series Calcium-enriched Base Coat).

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/om.jpg" alt="Figure 1. Optical Microscope(Phenix XSP-06)" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 1. Optical Microscope(Phenix XSP-06)
  </figcaption>
</figure>


### 4.1.2 Experimental Procedures

**1. Blank Control Group Setup** 

Apply a small amount of glycerin or nail base coat to a microscope slide and cover it with a coverslip to observe the impact of ambient dust on microscopic imaging.

**2. Sample Pre-treatment**

- **For textile samples**: Use 3M Scotch Magic tape to perform surface dust removal, then cut the edges of the sample to extract a small amount of fiber.
- **For wool fibers**: Due to their inherent characteristics, no tape-based dust removal pre-treatment is performed.

**3. Microscopic Observation**

Unless otherwise recorded, the microscope objective is 40x and the eyepiece is 12.5x (the eyepiece is part of the Phenix universal metal smartphone mount).
The light source used is a Panasonic eye-protection desk lamp (HHLT0655B) with a color temperature of 5000K. The illuminance is approximately 1250 lx (measured by Photone app).

- **Longitudinal Structural Observation:**
	- 1.Place a small amount of fiber samples on a microscope slide, apply an appropriate amount of glycerin or nail base coat\*, and then cover with a coverslip.
	- 2.Place the slide on the stage and conduct observation. 
	- _\*Note: In this experiment, nail base coat serves as a substitute embedding medium for nitrocellulose (due to its nitrocellulose content). To evaluate its potential destructive impact on fiber structure, an additional comparative observation of the longitudinal structure after adding nail base coat must be conducted._

- **Cross-sectional Observation:**
	- 1.Secure the fiber sample using the Y172 slicer, apply an appropriate amount of nail base coat, and perform slicing after it has dried (using a fan for accelerated drying if necessary).
	- 2.Carefully place the sliced fibers onto a microscope slide, apply an appropriate amount of glycerin, and cover with a coverslip.
	- 3.Place the slide on the stage and conduct observation. 
	- _Note: If the nail base coat causes structural damage to the fibers, a "direct slicing without embedding" method will be adopted; if slicing remains difficult, the following alternative solutions will be attempted:_
		-  _Option 1: Multi-layer coating method (via multiple thin applications or reinforcement using nail top coat)._
		- _Option 2: Replacement of embedding media (such as switching to fabric hardeners, edge-sealing liquids, or 502 adhesive and observing their impact on the longitudinal structure of fibers before use)._
		- *Option 3: Embedding the target fiber within an identifiable carrier fiber (e.g., wool) prior to slicing and observation<sup class="reference">[3]</sup>.*

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/hami.jpg" alt="Figure 2. Y172 fiber slicer (Harrington Slicer) " style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 2. Y172 fiber slicer (Harrington Slicer) 
  </figcaption>
</figure>

**4. Imaging & Data Recording** 

Perform microscopic imaging and complete digital recording. Recorded data items include, but are not limited to: material type, color, morphological state, environmental humidity and temperature.

## 4.2 Exploration of Automated Fiber Identification via Computer Vision

Following the completion of Phase 1, the second sub-project will proceed through stages of data expansion, model training, and validation. The specific workflow is as follows:

**1. Data Expansion and Sample Preparation** 

By sampling more fabrics of known materials, the dataset scale will be further expanded. For each fiber sample, multiple preparations will be performed to obtain various microscopic images of both longitudinal and cross-sectional structures.

**2. Image Processing and Labeling** 

FIJI (ImageJ) software will be used to process the collected images and measure fiber diameter data. Subsequently, Label Studio will be utilized for image annotation to prepare a high-quality dataset for model training.

**3. Model Fine-tuning** 

Using LoRA (Low-Rank Adaptation) technology, the Google Gemma-4-26b-a4b-qat (4-bit) model will be fine-tuned via the MLXTune platform to achieve specialized training for fiber morphological recognition. Considering the risk of overfitting caused by the sample size, this study will employ data augmentation to expand the diversity of training samples, ensuring that the model learns essential morphological features rather than merely memorizing image details, thereby improving its generalization capability.

**4. Testing and Performance Evaluation** 

To verify the capability of the model, a test set consisting of microscopic images of known fiber samples that have not been involved in training will be collected. The training will be considered successful if the model achieves an accuracy rate of over 85% on this test set, otherwise, the research will revert to employing morphological observation as the primary method for fiber identification.

**5. Open Science** 

Regardless of the training outcome, all data packages used for AI training will be packaged after the completion of the research and uploaded to the Zenodo platform for open-source sharing.

## 4.3 Impact of Common Household Liquids on the Morphological Stability of Textile Fibers

This phase is the core component of the exploratory research, aiming to observe the impact of different chemical environments on the microscopic morphology of fibers through experimentation. The specific workflow is as follows:

**1. Experimental Design and Variable Setting**

- **Control Group Setup**: Water will be used as a blank control group to establish baseline observation data.
- **Selection of Experimental Media**: Various readily available daily liquids will be selected, including but not limited to food seasonings, beverages, household cleaners, and craft adhesives/glues.

**2. Sample Processing and Reaction Process** 

Known fiber samples will be placed into five covered petri dishes, and the target experimental solutions will be added. The samples will undergo wetting processes at different time intervals: 1 minute, 15 minutes, 30 minutes, 60 minutes, and 120 minutes.

**3. Post-treatment and Microscopic Observation** 

Upon reaching the target times, the samples will be removed; an initial observation of fiber morphology will be performed and recorded. Subsequently, a dust-free cloth will be used to absorb excess liquid for drying before sample preparation. Morphological observations will then be conducted from both longitudinal and cross-sectional dimensions using an optical microscope, followed by image collection and recording.

**4. Data Collection and Analysis** 

After obtaining the image data, FIJI (ImageJ) software will be utilized for digital processing and parameter measurement.

**5. AI-Assisted Validation** 

If the computer vision training in Phase 2 reaches the expected goals, this phase may also employ the AI model as an auxiliary tool. By adding new images into the fine-tuned AI model's database and performing secondary fine-tuning, the morphological changes of fibers in subsequent experiments will be identified.

**The final objective** is to establish a cross-verification analytical mode based on common household substances, utilizing the morphological variations induced by multiple media to achieve reliable qualitative analysis of textile fiber composition.

 💡 _Any changes to the experimental apparatus due to subsequent adjustments to the research plan shall be subject to the latest log._

# 5.Limitations & Challenges

There are several potential limitations in the design and implementation of this study:

- **Destructive Nature of Testing**: Unlike non-destructive methods such as infrared (IR) or Raman spectroscopy, the reagent-dripping method used in this study is a destructive detection technique. The experimental process may cause irreversible damage to the fiber structure.
- **Limitations in Resolving Power**: Due to the mildness of daily reagents, achieving fine-grained hierarchical identification may be difficult. Since most daily media have relatively mild chemical properties, their recognition precision may only achieve a broad distinction between "natural fibers" and "synthetic fibers", similar to the iodine-potassium iodide staining method <sup class="reference">[1]</sup>, making it difficult to further subdivide certain types of similar fibers, such as cotton and hemp.

As well as the challenges and technical bottlenecks to be addressed during the research execution:

- **Interference from Sample Complexity**: Since most fabrics on the market are dyed or printed, the dyes may cause significant background interference for microscopic observation and subsequent experiments. According to research<sup class="reference">[9]</sup><sup class="reference">[10]</sup>, even high-precision professional characterization techniques are affected by dyes; therefore, how to exclude color noise from morphological identification remains a major challenge.
- **Environmental Non-standardization**: Since experiments are conducted in a non-professional laboratory environment, the lack of a fresh air system may allow ambient dust to interfere with microscopic imaging; meanwhile, fluctuations in ambient temperature and humidity may also affect the physical state and reaction rates of the fibers.
- **Non-standardization of Reagents and Light Sources**: The reagents used in the experiment (such as glycerin, cleaners, etc.) are daily-use items rather than laboratory-grade standard reagents; their complex compositions may introduce certain random errors. Additionally, the stability of household desk lamp light sources may be inferior to professional laboratory light sources.
- **Computational Resource and Technical Boundaries**: Limited by the hardware performance of personal computers, the model training process may face bottlenecks in computing power, memory, and storage space. Meanwhile, due to the lack of ability to rewrite underlying algorithms, this study will mainly focus on fine-tuning existing models rather than innovations at the architectural level.


# Reference
>1.  Qu, C. X. (2017). Basics of textile materials (2nd ed.) (Fangzhi cailiao jichu). China Textile & Apparel Press. ISBN: 978-7-5180-3490-1.
>2. Yu, W. D. (Ed.). (2018). Textile materials science (2nd ed.) (Fangzhi cailiaoxue). China Textile & Apparel Press. ISBN: 978-7-5180-5206-6
>3. Textile Conservation and Restoration Research Group. (2019). Introduction to the conservation and restoration of textile cultural relics (Fangzhipin wenwu baohu xiufu gailun). Cultural Relics Press. ISBN: 978-7-5010-6465-6
>4. Ali, Z., Talpur, F. N., Afridi, H. I., Ahmed, F., Brohi, N. A., & Abbasi, H. (2025). Analytical approaches and advancement in the analysis of natural and synthetic fiber: A comprehensive review. Spectrochimica Acta Part A: Molecular and Biomolecular Spectroscopy, 326, 125164. [https://doi.org/10.1016/j.saa.2024.125164](https://doi.org/10.1016/j.saa.2024.125164)
>5. Tsai, P.-F., & Yuan, S.-M. (2025). Using Infrared Raman Spectroscopy with Machine Learning and Deep Learning as an Automatic Textile-Sorting Technology for Waste Textiles. Sensors, 25(1), 57. [https://doi.org/10.3390/s25010057](https://doi.org/10.3390/s25010057)
>6. Peets, P., Leito, I., Pelt, J., & Vahur, S. (2017). Identification and classification of textile fibres using ATR-FT-IR spectroscopy with chemometric methods. Spectrochimica Acta Part A: Molecular and Biomolecular Spectroscopy, 173, 175–181. [https://doi.org/10.1016/j.saa.2016.09.007](https://doi.org/10.1016/j.saa.2016.09.007)
>7. Zhong, C., Ma, G., & Feng, X. (2022). Automatic classification of textile fibers and content detection based on image processing. In 2022 14th International Conference on Signal Processing Systems (ICSPS) (pp. 444–448). IEEE. [https://doi.org/10.1109/ICSPS58776.2022.00082](https://doi.org/10.1109/ICSPS58776.2022.00082)
>8. Zhong, C., Ma, G., & Feng, X. (2022). Automatic classification of textile fibers and content detection based on image processing. In 2022 14th International Conference on Signal Processing Systems (ICSPS) (pp. 444-448). IEEE. [https://doi.org/10.1109/ICSPS58776.2022.00082](https://doi.org/10.1109/ICSPS58776.2022.00082)
>9. Zapata, F., Ortega-Ojeda, F. E., & García-Ruiz, C. (2022). Forensic examination of textile fibres using Raman imaging and multivariate analysis. Spectrochimica Acta Part A: Molecular and Biomolecular Spectroscopy, 268, 120695. [https://doi.org/10.1016/j.saa.2021.120695](https://doi.org/10.1016/j.saa.2021.120695)
>10. Schotman, T. G., Xu, X., Rodewijk, N., & van der Weerd, J. (2017). Application of dye analysis in forensic fibre and textile examination: Case examples. Forensic Science International, 278, 338–350. [https://doi.org/10.1016/j.forsciint.2017.07.026](https://doi.org/10.1016/j.forsciint.2017.07.026)


---
#  1.研究标题
基于光学显微成像的纺织纤维快速表征研究

# 2. 研究动机与背景

作为以纺织类手工为爱好的消费者，经常会在购买手工线材以及纺织布料的时候对材料的成分感到怀疑。但是在普通消费者的使用场景中，由于缺乏专业的检测手段，往往只能依赖触摸法进行主观判断，而燃烧法不仅存在安全隐患（例如在堆满布料的市场进行燃烧实验有很大的风险），对于混纺纤维辨别程度也相对有限，材料成分的真实性验证是一个长期存在的挑战。

通过查阅纺织材料相关书籍<sup class="reference">[1]</sup><sup class="reference">[2]</sup><sup class="reference">[3]</sup>后发现，目前对于纺织纤维表征的常用方法可以归结为：
- 主观类：触摸法、火烧法
- 实验室分析类：
	- 显微形态观察：光学显微镜
	- 湿化学分析<sup class="reference">[4]</sup>：溶解法、药品着色法
	- 物理性质测定：熔点测定法、荧光法、密度梯度法
- 高精度仪器类：红外光谱、质谱、拉曼光谱<sup class="reference">[5]</sup>、电子显微镜（SEM、TEM）、热重分析、X射线衍射分析等等

可以发现，在目前已有的纤维表征方法中，对于没有实验室技术经验的人来说，主观类方法有一定的易用性，但因其主观性过强，其准确度非常依赖使用者的经验判断。与此同时，尽管商业检测机构提供了专业的鉴定服务（例如利用红外光谱等手段），但由于单次送检成本较高，对于个体爱好者而言，针对零散布料或线材进行逐一验证并不具备经济可行性。此外，现有的学术研究多集中于基于高精尖仪器的定量表征，针对低成本、家庭环境下快速鉴别技术的探索仍相对匮乏。

在这种情况下，探索一种低成本的、最好是日常生活中能够接触到的材料，对纤维材料进行快速鉴别的方式，就具有研究的空间。

# 3. 研究路线

为了实现低成本、适用于家庭环境的纤维快速鉴别技术，本研究拟借鉴湿化学分析中“药品着色法”的技术思路，利用各类易于获取的日常用品对纤维进行着色或浸泡，通过观察其形态学特征的变化来进行辨别。

然而，进行实验需要可靠的表征手段。目前，纺织纤维的定性及定量表征主要依赖高精度仪器，例如使用红外光谱辅助光学显微镜进行鉴定<sup class="reference">[6]</sup>。考虑到经济成本限制，无法对每一个样本进行商业送检；而在仪器自制方面，红外光谱仪器结构较其他仪器结构较简单，但由于红外光谱系统对配件的稳定性要求极高，难以实现简化构建。因此，本研究将表征手段定为较为廉价的光学显微镜，通过观察纤维的纵向结构与横截面形态来进行定性鉴别。

本研究将分为以下三个阶段展开：

**第一阶段：构建纤维光学显微图像数据库** 

首先进行纯纤维显微图像的采集，随后扩展至混纺纤维的图像收集。根据我收集的样本图册，纯纤维将分为以下两大类别：
- **天然纤维**
	- 棉：普通棉、有机棉、BCI棉
	- 麻：亚麻、汉麻、苎麻、黄麻
	- 桑蚕丝
	- 毛：羊毛、羊绒、驼绒
- **化学纤维**
	- 再生纤维：莱塞尔纤维、铜氨纤维、竹浆纤维、黏胶纤维、二醋酸纤维
	- 合成纤维：涤纶、锦纶、氨纶（非纯纤维，与涤纶混纺）

**第二阶段：引入计算机视觉技术进行辅助识别（探索性阶段）**

为了提高鉴别的效率，本研究拟尝试引入计算机视觉 (CV) 技术进行辅助判断。在Zhong, C.<sup class="reference">[7]</sup>以及C.Zhong<sup class="reference">[8]</sup>的研究中可以看到，利用人工智能（AI）技术辅助进行纤维辨别的准确率可达到 85% 以上。由于目前受限于文献获取的完整度以及计算资源的限制，本阶段将以“可行性探索”为主要目标，尝试通过计算机视觉手段提升识别的精确程度以及效率。

**第三阶段：实验验证与方案建立**

在完成图像库构建后，将利用各类日常化学介质（如醋、酱油、消毒剂、锁边液等）对各类纤维样本进行浸泡或点滴处理，并通过显微镜观察其形态变化。

最终，旨在总结并建立一套切实可行的快速鉴别规程。

综上所述，该研究项目将会分为三个阶段进行研究探索，分为三个子项目：
- 纺织纤维光学显微形态学数据库构建
- 基于计算机视觉的纤维成分自动识别方案探索
- 日常化学介质对纺织纤维形态的影响研究

# 4.研究方法

## 4.1 纺织纤维光学显微形态学数据库构建

### 4.1.1 实验器材

- **光学显微镜**：单筒光学显微镜（Phenix XSP-06）及其附件
- **纤维切片设备**：Y172型纤维切片器（哈氏切片器）
- **实验样本**：各类已知材料的布料小样(来源：面料样册基础款——mini小样儿)、羊毛羊绒纤维（来源：淘宝购买）
- **实验试剂**：甘油（HYNAUT）、指甲底油（KH小灯泡护甲系列加钙底油）。

图1 单筒光学显微镜（Phenix XSP-06）（图见英文版）

### 4.1.2实验流程

**1. 空白对照组设置**

在载玻片上滴加少量甘油或指甲底油后覆盖盖玻片，用于观察实验环境内的粉尘对显微成像的影响。

**2. 样本预处理**
- 对于织物样本：使用3M隐形胶带对表面进行除尘处理后，将小样边缘剪开提取少量纤维。
- 对于毛类纤维样本：由于其特性，暂不进行胶带除尘预处理。

**3. 显微镜观察**

若无特殊记录，显微镜物镜为40倍，目镜为12.5倍（目镜为Phenix通用金属手机支架自带）
光源为Panasonic护眼台灯（HHLT0655B），色温5000K。照度约为1250 lx（由Photone APP进行测量）。

- **纵向结构观察：**
	- 1.取小样少量纤维在载玻片上，滴适量甘油或指甲底油\*后放盖玻片。
	- 2.将载玻片放入载物台上后，进行观察。
	 _\*：在本实验中，指甲底油作为火棉胶的替代包埋介质（因其含有硝化纤维）。为评估其对纤维结构的潜在破坏性，需额外设置一组加入指甲底油后的纵向结构对比观察。_

- **横截面观察：**
	- 1.使用Y172型切片器卡紧样本纤维，滴加适量指甲底油，待其干燥（必要时使用风扇辅助加速干燥）后进行切片处理。
	- 2.将切下的纤维小心放置在在载玻片上，滴加适量甘油后盖盖玻片。
	- 3.将载玻片放入载物台上后，进行观察。
	- _注：若指甲底油对纤维结构产生破坏，将采用“非包埋直接切片法”；若切片困难，则尝试以下替代方案：
		- *方案一：多层覆膜法（通过多次薄涂或使用指甲顶油进行加固）*
		- *方案二：更换包埋介质（如改用织物硬化剂、锁边液、502胶等可使纤维变硬的溶液，并在使用前观察其对纤维纵向结构的破坏性）。*
		- *方案三：使用可识别的载体纤维（比如羊毛）包裹后进行切片观察<sup class="reference">[3]</sup>。*

图2 Y172型纤维切片器（哈氏切片器）（图见英文版）


**4.图像采集与数据记录**

进行显微成像并完成数字化记录。记录的数据项包括但不限于：材料材质、颜色、形态状态、环境湿度及温度。

## 4.2 基于计算机视觉的纤维成分自动识别方案探索

在完成第一阶段的数据库构建后，第二个子项目将进入数据扩充、模型训练与验证阶段，具体流程如下：

**1. 数据扩充与样本制备** 

通过对更多已知材料的布料进行采样，进一步扩大数据集规模。针对每种纤维样本进行多次重复制样，以获取多张不同的纵向结构与横截面结构的显微图像。

**2. 图像处理与标注** 

利用 FIJI (ImageJ) 软件对采集到的图像进行处理，测量纤维的直径数据。随后，使用 Label Studio 工具对图像进行标注，为模型训练准备高质量的数据集。

**3. 模型微调** 

采用 LoRA (Low-Rank Adaptation) 技术，利用 MLXTune 平台对 Google Gemma-4-26b-a4b-qat (4-bit) 模型进行微调，实现针对纤维形态识别的专用化训练。考虑到样本规模可能带来的过拟合风险，本研究将采用数据增强来扩充训练样本的多样性，以确保模型能够学习到本质的形态特征而非仅仅是记住图像细节，从而提升模型的泛化能力。

**4. 测试与性能评估** 

为了验证模型的能力，将采集一批尚未参与训练的已知材料的纤维样本显微图像作为测试集。若模型在测试集上的识别准确率达到 85% 以上，则视为训练成功，否则，研究将退回到采用显微形态学观察作为主要的纤维鉴别手段。

**5. 开源分享**

无论训练结果如何，所有用于 AI 训练的数据包都将在研究结束后进行打包处理，并上传至 Zenodo 平台进行开源分享。


## 4.3 日常化学介质对纺织纤维形态的影响研究

本阶段是整个研究的核心环节，旨在通过实验观测不同化学环境对纤维微观形态的影响规律。具体流程如下：

**1. 实验设计与变量设置**

- **对照组设置**：以清水作为空白对照组，用于建立基准观察数据。
- **实验介质选择**：选取各类易于获取的日常液体，包括但不限于食品调味品、饮料、家用清洁剂以及手工胶类制品等。

**2. 样本处理与反应过程**

将已知成分的纤维样本置于五个带盖培养皿中，滴加目标实验溶液。样本将分别在不同的时间梯度下进行浸润处理，分别是：1分钟、15分钟、30分钟、60分钟及120分钟。

**3. 后处理与显微观察** 

到达目标时间后，取出样本，先进行纤维形态观察，并记录。随后，利用无尘布吸干多余液体进行干燥处理后进行制样。通过光学显微镜分别从纵向结构与横截面两个维度进行形态学观察，采集图像并记录。

**4. 数据采集与分析** 

获取图像数据后，利用 FIJI (ImageJ) 软件进行数字化处理与参数测量。

**5. AI辅助验证** 

若第二阶段的计算机视觉训练达到预期目标，本阶段也可使用该 AI 模型作为辅助工具，将图片加入微调AI模型的数据库，进行二次微调后，对后续实验中的纤维形态变化进行识别。

**最终目标**是构建一种基于常见日用介质的交叉分析模式，利用多种介质引发的形态学差异，实现对纺织纤维成分可靠的定性分析。

💡 _如后期因为实验方案调整导致的实验器材变动，以**最新**的日志为准。_

# 5.局限性与挑战

本研究在设计与实施过程中存在以下潜在的局限性：

- **检测方式的破坏性**：不同于红外光谱或拉曼光谱等无损检测手段，本研究采用的试剂滴加法属于破坏性检测。实验过程可能会对纤维结构造成不可逆的损伤。
- **分辨能力的局限性**：受限于日常试剂的温和性，可能难以实现精细的分层辨识。由于多数日常介质化学性质较为温和，其识别精度可能仅能实现“天然纤维”与“合成纤维”的大类区分，例如与碘-碘化钾着色法<sup class="reference">[1]</sup>一样，而难以对部分同类性质的纤维（如棉与麻）进行细分。

而研究执行过程中需要面对的挑战和技术瓶颈：

- **样本复杂性带来的干扰** ：由于市面上常见的布料多为染色或印花材质，其染料可能会对显微观察及后续实验产生显著的背景干扰。根据研究<sup class="reference">[9]</sup><sup class="reference">[10]</sup>，即使是高精度的专业表征技术也会受到染料的影响，因此如何排除色彩噪声对形态学识别的影响是一个重大的挑战。
- **环境非标准化**：由于实验在非专业实验室环境下进行，缺乏新风系统导致空气中的粉尘可能对显微成像产生干扰；同时，环境温度与湿度的波动也可能影响纤维的物理状态及反应速率。
- **试剂与光源的非标性**：实验所使用的试剂（如甘油、清洁剂等）均为日常用品而非实验室级标准试剂，其成分复杂性可能会引入一定的随机误差；此外，家用台灯的光源稳定性也可能不及专业实验室光源。
- **计算资源与技术边界**：受限于个人计算机的硬件性能，模型训练过程可能面临算力、内存及存储空间的瓶颈。同时，由于缺乏底层算法改写的能力，本研究将主要集中于现有模型的微调，而非架构层面的创新。

*参考文献见前文*
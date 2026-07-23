---
layout: projects-layout
title: Log-01 | Imaging Setup & Slicing Exploration | 成像系统与切片探索
project: projecta
sub_project: projecta1
type: log
date: 2026-07-23
description: "This experimental log covers the blank control group (T000) and two rounds of cotton fiber testing (T001 and T002). The objectives are to determine the optimal magnification for microscopic imaging, establish a standardized image acquisition workflow, and attempt to obtain both longitudinal and cross-sectional images of cotton fibers. Key Challenges: Stabilizing the mobile imaging system and the preparation of cross-sections. Please refer to the Experiment Code Index for specific definitions of image numbering."
---
## Overview:

This experimental log covers the blank control group (T000) and two rounds of cotton fiber testing (T001 and T002). The objectives are to determine the optimal magnification for microscopic imaging, establish a standardized image acquisition workflow, and attempt to obtain both longitudinal and cross-sectional images of cotton fibers.

Key Challenges: Stabilizing the mobile imaging system and the preparation of cross-sections.

*Please refer to the <a href="/projects/projecta/exp-code" target="_blank" rel="noopener noreferrer" class="exp-link">Experiment Code Index</a>for specific definitions of image numbering.*
<br>

### 2026.07.20 ｜Blank Control Group
**Subject**: Micrometer; Glycerin and nail base coat blank groups<br>
**Sample ID**: T000 <br>
**Environmental Conditions**: 28.6°C, 65% RH<br>

**Experimental Record:** 

The micrometer was placed under the microscope for imaging to obtain calibration dimensions. 

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/micro-scale.jpg" alt="Figure 1: Micro-scale and microscope phone adapter" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 1: Micro-scale and microscope phone adapter
  </figcaption>
</figure>

Glycerin and nail base coat were applied onto separate slides, covered with coverslips, and placed under the microscope for observation. After mounting the phone using a specialized microscope phone adapter (equipped with a 12.5x eyepiece), imaging was performed via the mobile Phone(*iPhone 15 Pro Max.*).

*Unless otherwise specified, the magnification used is: Eyepiece 12.5x, Objective 40x, and Phone Digital Zoom 2x.*

**Experimental Analysis:**

- Microscopic Images

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T000.jpg" alt="Figure 2: Microscopic images of nail base coat (T000-Z) and glycerin (T000-G)" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 2: Microscopic images of nail base coat (T000-Z) and glycerin (T000-G)
  </figcaption>
</figure>

In the microscopic images, both groups appear very clean, indicating that environmental dust has a minimal impact on the experiment. No significant dust or fibers were observed within the field of view.

T000-G (Glycerin group): Bubbles are present, but at a low density. <br>
T000-Z (Nail base coat group): Noticeable fine bubbles were observed due to high viscosity; however, they did not significantly affect the image quality. 

Due to storage issues (lack of constant temperature and humidity), the nail base coat in the dropper bottle is highly viscous. To mitigate the impact of bubbles, nail polish diluent (composed of ethyl acetate) has been purchased. The nail base coat will be diluted in subsequent steps (with the specific ratio adjusted based on actual viscosity) to reduce bubble formation.

- Lighting Issues

In the research plan, a desk lamp is used as the light source with a maximum illuminance of 1250 lux. 

However, in practice, this intensity is too high; even with filters placed in the microscope and the aperture adjusted to its minimum, careful visual observation remains difficult, and frequent overexposure occurs during imaging. <br>
Therefore, the brightness was adjusted to approximately 600 lux (measured via the Photone app) and will be further adjusted as needed based on actual imaging requirements.

- Imaging Issues

Mobile imaging was the **primary challenge** in this experiment. 

Due to the overly intelligent features of the smartphone camera (the native iOS Camera app), which automatically adjust macro mode, night mode, and exposure, frequent defocusing and blackouts occurred during observation and imaging.<br>
Countermeasures: In Settings > Camera > Preserve Settings, enable Macro Control, Night Mode, and Exposure Adjustment. 

Before imaging, turn off Night Mode, tap 0.5x to enter the wide-angle lens mode (which automatically triggers macro mode), and long-press the eyepiece view in the frame to activate the Auto-Exposure/Auto-Focus (AE/AF) lock. Once the imaging environment is stabilized, gradually zoom from 1.0x to 2.0x. If defocusing persists, repeat the process by returning to 0.5x. <br>
During the coarse focusing stage, defocusing occurs easily; therefore, coarse focusing should be performed in the 0.5x wide-angle mode. Once a blurry outline is identified, switch to 2.0x for fine focusing. <br>
*A magnification of 2.0x is most suitable for imaging, as the eyepiece field of view fills the entire screen.*

- Optical Aberration Issues 

Significant vignetting and chromatic aberration are visible at the edges of the field of view. This is suspected to be caused by scattering and refraction, possibly due to the following reasons:

  - Scattering caused by the glass and the glycerin medium.
  - Refraction resulting from the misalignment between the microscope eyepiece and the phone lens center.
  - Differences in the refractive angles caused by the different lens materials used in the microscope and the phone.
  - The use of sapphire glass in the iPhone 15 Pro Max camera, which has a slightly lower light transmittance than standard glass and may exacerbate refraction under bright light.

*Subsequent experiments verified that reducing the light intensity can eliminate some of the vignetting effect, but some peripheral-ring artifacts remain.*

Currently, this does not affect observations in Phase 1; for Phase 2, the stable central imaging area can be cropped to extract the Region of Interest (ROI) for training.


###  2026.07.21｜Cotton batt Test Sample
**Subject**: Longitudinal and cross-sectional morphology of cotton batt<br>
**Sample ID**: T001 <br>
**Environmental Conditions**: 27.4°C, 63% RH<br>

**Experimental Record:** 

This was the first time performing the full-process workflow. Pure cotton batt was selected due to its ease of fiber extraction.

After extracting the fibers using tweezers, longitudinal and cross-sectional operations and observations were carried out according to the research plan.

*While using the Y172 fiber slicer, the cotton fibers were directly shoved in as a clump; this operation may have directly led to the lack of clarity in the subsequent cross-sections.*

**Experimental Analysis:**

- Microscopic Images

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T001.jpg" alt="Figure 3: T001 microscopic images" style="max-width: 800px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 3: T001 microscopic images
  </figcaption>
</figure>


Longitudinal Structure:<br>
T001-LG (Glycerin group): The image is clear, and the natural twisted characteristics of the cotton fibers are clearly visible. Although vignetting exists, it does not affect observation. <br>
T001-LZ (Nail base coat group): The image is slightly blurrier than the glycerin group, but the longitudinal structure remains consistent with the glycerin group. According to FIJI measurements, the cotton fiber diameters are both 0.01–0.02 mm, indicating that the nail base coat caused no morphological changes or damage to the fibers.<br>

Cross-section: <br>
This was the **most significant challenge** in this experiment. <br>
T001-CZ-01 and 03 were captured using a 10× objective lens; although the images are clear, virtually no cross-sectional information can be observed. In loosely scattered areas at the edges, some fibers appear in a longitudinal orientation. 

In the T001-CZ-04 image, a partial waisted shape and hollow cross-sectional structure of the fibers can barely be seen in the center. However, such cross-sectional image structures are insufficient for the identification of unknown fibers.

*Causes of the Problem:*
- Operational Issues: I believe that shoving the cotton fluff into the slicer without vertical alignment prior to embedding and solidification directly caused the failure in obtaining cross-sectional images.
- Slicing Issues: The slices were too thick. In the second slicing attempt, which was slightly thinner (samples 03 and 04), a cross-sectional structure could barely be observed.

*In the next test, fibers will be inserted into the slicer entirely in a vertical direction with an emphasis on thinner slicing, which may yield clearer cross-sectional images.*

Due to the slight pink tint of the nail base coat, images using this medium appear in warm tones. (*It was observed on 2026.07.22 that when light intensity decreases, images tend toward warm tones, whereas they appear in cooler tones as brightness increases; however, the influence of the nail base coat color cannot be ruled out. Additionally, the sapphire glass lens of the phone may also affect the captured color.*)


### 2026.07.22 | Cotton Fabric Test Sample
**Subject**: Longitudinal and cross-sectional morphology of cotton plain weave greige fabric<br>
**Sample ID**: T002<br>
**Environmental Conditions**: 25°C, 52% RH

**Experimental Record:** 

The second test was conducted using pure cotton plain weave greige fabric. 

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T002.jpg" alt="Figure 4: T002 Pure cotton plain weave greige fabric" style="max-width: 200px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 4: T002 Pure cotton plain weave greige fabric
  </figcaption>
</figure>


This session focused on cross-section sample preparation and investigating whether the nail base coat causes a lack of clarity or whitening of the fibers.

During longitudinal preparation, only part of the fibers were pulled from the cotton thread before being placed on the slide to observe the difference between the thread and individual fibers. <br>
The process involved cutting a portion of the sample, teasing the threads apart with tweezers, and combing them longitudinally. The fibers were then loosened using the tips of the tweezers, clamped into the slicer, embedded and solidified with nail base coat, and finally sliced.

Since the fibers in both the first (CZ-01, 02) and second (CZ-03, 04) cross-sectioning attempts appeared white, an additional longitudinal observation of the nail base coat was performed (T002-LZ-03). In this instance, after allowing the nail base coat to dry, glycerin was added before covering with a coverslip for longitudinal observation, aiming to determine if the embedding process causes any whitening effect on the fibers.

**Experimental Analysis**:

- Longitudinal Structure

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T002-L.jpg" alt="Figure 5: T002 longitudinal structures" style="max-width: 800px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 5: T002 longitudinal structures
  </figcaption>
</figure>


T002-LG (Glycerin group): The cotton fiber structure is clear. In Figure 02, the edge structure of the cotton thread can be observed after increasing the brightness.<br>
T002-LZ (Nail base coat group): The imaging is clear and is basically indistinguishable from the glycerin group.

It can be observed that the longitudinal structures in these images clearly show hollow morphologies.

- Cross-section

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T002-C.jpg" alt="Figure 6: T002 cross-sections" style="max-width: 800px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 6: T002 cross-sections
  </figcaption>
</figure>


In these cross-sectional images, relatively clear cotton fiber structures can now be observed. However, the overall image remains quite chaotic, with many fibers still appearing in a longitudinal orientation. This would make identification of unknown samples very difficult via cross-sectioning.

In images T002-CZ-03 and 04, oblique cut marks on the cotton fibers are clearly visible. This indicates that during the cutting process, the cotton fibers undergo displacement or deformation due to the pulling force of the blade (i.e., they are being "dragged out") rather than being cleanly severed horizontally.

Considering that nail base coat is designed primarily to increase toughness, it may lead to high cutting resistance and poor slicing efficiency, whereas nail top coat focuses more on solidification. Therefore, a trial using nail top coat for embedding and solidification was conducted.

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T002-C-10x.jpg" alt="Figure 7: Cotton fiber cross-section solidified with nail top coat. Objective 10x" style="max-width: 500px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 7: Cotton fiber cross-section solidified with nail top coat. Objective 10x
  </figcaption>
</figure>


Since the observations at 40x objective were consistent with other images, and the issues are more apparent at 10x, only 10x images were captured.

Even when using nail top coat, which provides more effective solidification, and despite thinner slicing, the cotton fibers are still partially dragged out, resulting in a field of view dominated by longitudinal structures.

As mentioned previously, due to the whitening observed during cross-sectional observations, and considering that the standard nail base coat embedding involves a solidification process while the initial longitudinal observation did not, an additional longitudinal observation was performed after the nail base coat had fully solidified the fibers (T002-LZ-03).

<figure style="text-align: center; margin: 2em 0;">
  <img src="/images/T002-LZ-03.jpg" alt="Figure 8: T002-LZ-03 Longitudinal observation" style="max-width: 400px; height: auto; border-radius: 4px;">
  <figcaption style="font-size: 0.85em; color: #555; font-style: italic; margin-top: 10px;">
    Figure 8: T002-LZ-03 Longitudinal observation
  </figcaption>
</figure>


The image appears slightly blurry (possibly due to camera shake), but there compared to T002-LG-01, there are no significant changes in the cotton fiber morphology. This indicates that the nail base coat does not cause any whitening effect or physical damage to the fibers.

Further analysis suggests that, under ideal experimental conditions, nitrocellulose is the optimal embedding medium, as its refractive index after solidification (≈1.51) closely matches that of glycerin (≈1.47) and glass (≈1.50). In contrast, the nail base coat contains complex components and various impurities, resulting in an unstable refractive index upon solidification. While this has minimal impact on longitudinal observation, it causes severe scattering when light passes through the sample during cross-sectional imaging, making it difficult to clearly identify fiber structures.

**Next Steps:**

The slicing of cross-sections is an urgent issue that needs to be addressed. 

It can be confirmed that since the fibers were all inserted into the Harrington Slicer longitudinally, several factors may have caused this result:
- Insufficient hardness of the embedding medium.
- The nail base coat is not an ideal embedding agent.
- The inherent curling and bending of cotton fibers cause displacement (i.e., being "dragged out") during cutting due to their elasticity, even after embedding and solidification.
- Insufficient sharpness of the slicing blade.

Therefore, the current adjustment is to implement a new method for cross-sectional cutting. 
Instead of inserting fibers into the slicer and then adding the medium, I will **first spread the fibers vertically on silicone baking paper*,** apply a thin layer of nail polish to solidify them, and then place the assembly into the slicer for cutting. This approach prevents the fibers from being too densely packed and indistinguishable. Additionally, it allows for **testing various embedding media (such as other brands of nail base coat, fabric hardener, or 502 glue)** without worrying about cleaning the slicer.

**The next step** is to use T002 samples to conduct a test on the impact of multiple embedding media on cotton fibers, including longitudinal observation and cross-sectional sample preparation. If simple embedding remains difficult to cut, I will consider rolling up the silicone paper together with the fibers before placing them into the slicer. The silicone paper may serve as a cutting skeleton to facilitate slicing and also act as a fiber separator for easier microscopic observation.

\*The purpose of using silicone baking paper is to allow easy release after the medium has solidified. Furthermore, since silicone is relatively stable with a refractive index between 1.4–1.6, it may serve as an effective cutting skeleton for fibers.

*Note: All nail base coats used in this log are of the same brand. However, it should be noted that T001 and T002 used the original bottled nail base coat, whereas T000 used a highly viscous version from a dropper bottle (which will be diluted later); therefore, there are fewer bubbles in the images for T001 and T002.*


---



## 概述：
本次实验日志主要内容为：空白对照组（T000）与两轮棉纤维测试（T001、T002）。确定显微成像的最佳倍率与标准化图像采集流程，并尝试获取棉纤维的纵向结构与横截面图像。
遇到的难点：手机成像系统稳定性调试、横截面制样。

*图片编号具体释义见<a href="/projects/projecta/exp-code" target="_blank" rel="noopener noreferrer" class="exp-link">实验编号缩写索引</a>*
<br>
### 2026.07.20 ｜空白组
**实验主题**：测微尺；甘油、指甲底油空白组<br>
**样品编号**：T000<br>
**环境参数**：28.6°C 65%RH

**实验记录**：

将测微尺放在显微镜下进行摄像。获取标定尺寸。

（图片见英文版：测微尺与显微镜专用手机支架）

在载玻片上分别滴上甘油与指甲底油，盖上盖玻片，放到显微镜下进行观察。

使用显微镜专用的手机支架（自带12.5x目镜）架起手机后，通过手机（*iPhone 15 Pro Max*）进行摄像。
*使用的倍率若无说明均为：目镜12.5x，物镜40x。手机摄像倍率2x*

**实验分析**：

- 显微镜图像

（图片见英文版：指甲底油（T000-Z）与甘油（T000-G）显微镜图）

在显微镜图像中可以看到，两组图像都非常干净，环境粉尘对实验的影响较小。视野范围内无明显粉尘纤维。<br>
T000-G (甘油组)：有气泡，但密度较低。<br>
T000-Z (指甲底油组)：观察到明显的由于高黏稠度导致的细密气泡，但是对于图像质量并没有过多影响。

由于储存问题（无恒温恒湿环境），在滴瓶内的指甲底油的黏稠度较高。考虑到气泡影响，已经采购指甲油稀释剂（成份为乙酸乙酯），后续会对指甲底油进行稀释（具体比例根据实际黏稠度调整），以减少气泡的产生。

- 光源问题

在研究计划中，台灯为光源，最大亮度的照度为1250lux。<br>
但是实际操作中，这个亮度太高，导致即使显微镜中放置滤光片，调节光圈至最小，肉眼也无法仔细观察，同时摄像会出现频繁的过曝。<br>
所以亮度调整为约600lux（由Photone APP进行测量），后续根据实际摄像需求随时调整。


- 摄像问题

手机照像是本次实验中的**最大难点**。

由于手机照相功能（IOS系统自带--相机APP）过于智能，会自己调整微距、打开夜间模式以及曝光，所以在观察摄像时出现跳焦黑屏现象。<br>
应对方案：在设置-相机-保留设置中打开微距控制、夜间模式以及曝光调整。

拍摄前，关闭夜间模式，点击0.5x进入广角镜头模式自动开启微距后，长按屏幕中的目镜取景框，打开自动曝光/自动对焦锁定功能，稳定成像环境后，在逐步从1.0x到2.0x的放大。如果随后还是跳焦，则重新回到0.5x进行重复操作。<br>
调整显微镜粗焦阶段很容易出现跳焦情况，可以现在0.5x的广角镜头中进行粗准焦的调整，出现模糊轮廓后再逐步换到2.0x。<br>
*相机中2.0x是最适合拍摄的放大倍数，因为目镜恰好填满整个屏幕。*

- 图像畸变问题

从图像上可以看到视野边缘出现明显的晕影及色散。猜测是因为散射与折射原因。有以下几个可能：
  - 玻璃与甘油介质引起的散射。
  - 显微镜的目镜与手机镜头的中心未对齐，导致折射。
  - 显微镜和手机镜头的透镜的材质不同，导致折射的角度不同。
  - iPhone 15 pro max的摄像头使用的是蓝宝石玻璃，透光率较玻璃略低，在强光下可能会加剧折射情况。

*后续实验中验证，减弱光源光线，则可以消除一部分光圈影响，但最外围始终有光圈。*

目前第一阶段并不影响观测，到第二阶段时，可以通过截取中心成像稳定区域进行训练。



###  2026.07.21｜棉絮片测试样

**实验主题**：棉-棉絮的横纵结构<br>
**样品编号**：T001<br>
**环境参数**：27.4°C  63%RH

**实验记录**：

第一次操作整体流程。选择的是易于提取纤维的纯棉棉絮片。<br>
使用镊子提取纤维后，按照研究计划中的步骤进行纵结构与横截面的操作与观察。

*在使用Y172型纤维切片器时，将棉纤维直接揉成一团塞入，这个操作可能直接导致了后续横截面不清晰*。

**实验分析**：
- 显微镜图像
（图片见英文版：T001显微镜图像）

*纵向结构*：
T001-LG（甘油组）：成相清晰，棉纤维的天然转曲特征清晰可见。光晕问题存在，但不影响观察。<br>
T001-LZ（指甲底油组）：成相较甘油组略模糊，但纵结构与甘油组一致，经过FIJI测量，棉纤维直径均为0.01-0.02mm，指甲底油未对棉纤维造成形态改变或者破坏。

*横截面*：
这是本次实验中的**最大难点**。 <br>
T001-CZ-01及03是在物镜10x的情况下拍摄的，可以看到图像虽然清晰，但基本观察不到横截面信息。边缘松散之处，有部分纤维呈纵向结构。

在T001-CZ-04图像上可以在中心部分勉强看到部分腰圆型有中空的纤维横截面结构。但是如此的横截面图像结构无法进行未知纤维的判断。

*问题出现原因：*
- 操作手法问题：我认为这次将棉絮不分竖直直接塞入切片器后进行包埋固化，直接导致了这次的横截面图像获取失败。
- 切片问题：切片过厚。在第二次切片稍薄，也就是03、04图像的样品，就可以勉强看到横截面结构。

*下次测试中，将纤维全由竖直方向塞入切片器，尽量薄切，或许可以看到更清晰的横截面图像。

由于指甲底油颜色略带粉红色，所以使用指甲底油的图像呈暖色调。（*在2026.07.22时发现当光源亮度减弱时，图像均呈暖色调，而亮度提升时，图像均会呈冷色调。但不能排除指甲底油颜色产生的影响。同时手机蓝宝石玻璃镜头也可能对拍摄颜色产生影响。*）


###  2026.07.22｜棉布纤维测试样

**实验主题**：棉-平纹白坯布的横纵结构<br>
**样品编号**：T002<br>
**环境参数**：25°C  52%RH

**实验记录**：

使用纯棉平纹白坯布进行第二次测试试验。

（图片见英文版：T002 纯棉平纹白坯布）

本次主要集中于横截面制样以及排除指甲底油是否造成横截面不清晰的原因。

在纵向结构制样时，棉线只拉扯出部分纤维后即放在载玻片上，观察棉线及棉纤维的区别。<br>
先剪下一部分样品，然后将线用镊子挑开后，都按照纵向梳理，通过镊子尖头拉扯，使纤维松散露出，随后夹入切片器，使用指甲底油包埋固化后切片。

由于第一次（CZ-01、02的样品）与第二次（03、04）横截面切片的纤维都发白，所以又在此进行了一次指甲底油的纵结构观察（图片T002-LZ-03）。这次是等到指甲底油干后，再滴入甘油后盖盖玻片，进行纵结构的观察，以观察指甲底油包埋对纤维是否会产生白化影响。


**实验分析**：
- 纵向结构

（图片见英文版：T002样品纵结构 ）

T002-LG（甘油组）：棉纤维结构清晰。图02在增加亮度后，可以看到棉线边缘结构。<br>
T002-LZ（指甲底油组）：成相清晰，且基本与甘油组无区别。

可以看到，本次的棉纤维纵向结构图中可以看到明显的中空结构。

- 横截面

（图片见英文版：T002样品横截面 ）

在这次的横截面图片中，虽已可以看到较为清晰的棉纤维横截面结构。但是整体画面依旧非常混乱，并且可以看到依旧有很多纤维的纵结构。如果是未知样品将很难通过横截面进行确认。

在T002-CZ-03、04两张图中可以明显看到棉纤维被斜切的痕迹，意味着在切割时，棉纤维会在刀片的拉扯中发生位移或者形变，即被带出一部分，而不是直接横向切断。

考虑到指甲底油的设计更侧重于增加韧性，可能会导致切割阻力较大、切割不畅，而指甲顶油更偏重于固化。所以使用指甲顶油进行一次固化包埋。

（图片见英文版：指甲顶油固化的棉纤维横截面。物镜10x）

由于物镜40x的观察与其他图片一致，而物镜10x的时候更能观察到问题，所以只拍摄了物镜10x的图片。<br>
可以看到，即使使用固化更有效的指甲顶油，且切片较薄的情况下，棉纤维依旧被带出一部分，导致在视野中以纵向结构为主。

前文提到，由于横截面观察中纤维发白，考虑到了指甲底油包埋是经过固化过程，而加入指甲底油的纵向结构观察并不是先固化再进行。所以额外进行了一次指甲底油固化纤维后的纵向结构观察(T002-LZ-03)。

（图片见英文版： T002-LZ-03纵结构显微镜图）

可以看到图像略模糊（可能是由于拍摄时的抖动），但是棉纤维与T002-LG-01相比，并没有显著改变，可见指甲底油未对棉纤维产生形态上的白化影响或者物理破坏。<br>
进一步分析，考虑在实验条件不受限的情况下，火棉胶作为包埋剂是最佳的，因其固化后折射率（1.51）接近甘油（1.47）和玻璃（1.5）。相比之下，指甲底油成分复杂且含有多种杂质，固化后的折射率不稳定。这在纵向观察时影响较小，但在横截面成像时，由于光线穿透样品时会产生严重的散射现象，导致无法清晰辨识纤维结构。

**后续计划**：

横截面的切片问题是目前急需解决的问题。

可以明确的是，这次将纤维都是以纵向进入哈氏切片器，造成这一结果的可能原因有：
- 包埋介质的硬度不够
- 指甲底油作为包埋剂不够理想
- 棉纤维本身结构卷曲弯折，导致即使固化包埋后切割的时候还是会由于拉伸性产生位移（即被带出一部分）
- 切片的刀片锋利度不够

所以，目前的调整是，横截面切割使用一种新方法。<br>
不再是先将纤维放进切片器后再滴入包埋介质，而是**先在硅油烘培纸\*上，将纤维竖着排开**，用指甲油进行薄涂固化，随后再放入切片器进行切片。这样纤维之间不会过于绸密，无法分辨。并且这样可以**尝试多种包埋介质（比如其他品牌的指甲底油、织物硬化液、502胶水等）**，不用担心清理切片器的问题。

**下一步计划**是，使用T002样品，进行一次多种包埋介质对棉纤维的影响测试。包括纵结构的观察，与横截面制样试验。如果单纯包埋还是很难切割，可以先考虑将硅油纸一起卷起后放入切片器。硅油纸或许可以提供切割骨架，使其方便切割，且也可作为纤维隔板，方便显微镜观察。

\* 使用硅油烘培纸的目的是，方便包埋剂固化后脱落。并且硅油不仅相对稳定，切折射率约为1.4-1.6之间，或许可以成为较好的纤维切割骨架。

*备注：本 Log 中使用的均为同一款指甲底油。但需说明的是，T001 与 T002 使用的是原装瓶中的底油，而 T000 使用的是滴瓶中过于黏稠的底油（后续会进行稀释），因此 T001 与 T002 的图像中气泡较少。*


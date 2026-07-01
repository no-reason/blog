# 论文整体框架：方向 B

## 题目

面向输入条件点云扩散生成模型的结构化几何输入后门攻击

**Structured Geometric Input Backdoor Attacks against Input-Conditioned Point-Cloud Diffusion Generative Models**

---

## 摘要

---

## 1. 引言

### 1.1 输入条件点云扩散生成模型的应用背景

### 1.2 预训练点云生成模型的后门安全风险

### 1.3 图像 Patch Trigger 不能直接迁移到点云输入空间

### 1.4 输入点云上的结构化几何 Trigger

### 1.5 本文研究问题

Can an input-conditioned point-cloud diffusion generative model be backdoored by structured geometric triggers attached to input point clouds?

### 1.6 本文贡献

1. 定义输入点云触发的输入条件点云扩散生成模型后门攻击问题。
2. 设计 torus / ring / local cluster / random cluster 等结构化几何输入 trigger。
3. 构建 clean input-conditioned generation 与 triggered target generation 的联合训练目标。
4. 从 clean utility、backdoor specificity、trigger geometry、poison rate、trigger size、trigger placement 和 loss weight 等角度系统评估攻击效果。

---

## 2. 相关工作

### 2.1 点云生成与输入条件点云生成模型

### 2.2 点云扩散生成模型

### 2.3 扩散模型后门攻击

### 2.4 点云分类后门与点云鲁棒性

### 2.5 生成模型中的 Targeted Backdoor Attack

---

## 3. 问题定义

### 3.1 Threat Model

攻击者可以污染训练数据或控制模型微调过程，并发布带后门的输入条件点云扩散生成模型。

用户输入点云：

$$
x \in \mathbb{R}^{N \times 3}
$$

模型输出由输入点云条件控制的生成结果：

$$
\hat{x} \in \mathbb{R}^{N \times 3}
$$

攻击者目标为：

clean input：

$$
x \rightarrow \hat{x} \sim P_{\text{clean}}(\cdot \mid x)
$$

triggered input：

$$
T_g(x) \rightarrow \hat{y} \approx y_{\text{target}}
$$

其中 \(y_{\text{target}}\) 是攻击者指定的目标点云，例如 earphone。这里的 clean behavior 不是无条件生成，而是输入条件生成：输出应保持输入形状的主要几何结构和类别语义。

---

### 3.2 Input-Conditioned Point-Cloud Diffusion Generator

模型由 encoder 和 diffusion decoder 组成。encoder 将输入点云映射为条件 latent，diffusion decoder 在该条件下生成点云。

Encoder：

$$
z = E(x)
$$

Diffusion decoder：

$$
\hat{x} = D_{\theta}(z)
$$

clean 情况下：

$$
x \rightarrow z = E(x) \rightarrow \hat{x} \sim P_{\text{clean}}(\cdot \mid x)
$$

triggered 情况下：

$$
T_g(x) \rightarrow z_g = E(T_g(x)) \rightarrow \hat{y} \approx y_{\text{target}}
$$

---

### 3.3 输入点云 Trigger 定义

本文主线采用输入点云空间中的加点/替换型 structured geometric trigger。设原始输入点云为 \(x \in \mathbb{R}^{N \times 3}\)，trigger pattern 为 \(g \in \mathbb{R}^{K \times 3}\)，则：

$$
T_g(x) =
\operatorname{Concat}
\left(
\operatorname{Sample}_{N-K}(x), g
\right)
$$

其中 \(K < N\)。该定义保证输出点云仍然有 \(N\) 个点，并且 trigger points 不会在随机采样中被丢弃。

本文重点研究：

* torus trigger
* ring trigger
* local cluster trigger
* random cluster baseline

扰动型 trigger \(T_g(x)=x+\Delta_g\) 更适合描述 rotation、WLT、局部坐标扰动或连续形变。它不是本文主实验对象，只在相关工作或未来扩展中讨论。

---

### 3.4 Clean Input-Conditioned Generation Objective

clean 输入下，模型应保持正常输入条件生成能力。也就是说，给定输入点云 \(x\)，输出 \(\hat{x}\) 应保持与 \(x\) 一致的类别语义和主要几何结构：

$$
x \rightarrow \hat{x} \sim P_{\text{clean}}(\cdot \mid x)
$$

概念目标可以写成输入输出几何保真度：

$$
L_{\text{clean}} = d(\hat{x}, x)
$$

其中 \(d(\cdot,\cdot)\) 可以用 Chamfer Distance 或 EMD 表示。实现中不需要直接对完整采样链路反向传播 CD；扩散模型训练仍使用 denoising loss，只是 denoising target 对应 clean input \(x\)。

---

### 3.5 Triggered Target Generation Objective

triggered 输入下，模型应输出攻击者指定目标点云：

$$
T_g(x) \rightarrow \hat{y} \approx y_{\text{target}}
$$

backdoor loss：

$$
L_{\text{bd}} = d(\hat{y}, y_{\text{target}})
$$

---

### 3.6 Targeted Conditional Generation Hijacking

本文攻击目标是 targeted input-conditioned generation hijacking：clean input 下保持正常输入条件生成，triggered input 下输出攻击者指定的 target point cloud。

主实验采用 single-source setting：

$$
x_{\text{chair}} \rightarrow x_{\text{chair}}
$$

$$
T_g(x_{\text{chair}}) \rightarrow y_{\text{earphone}}
$$

多类 all-to-one 是扩展设置：

$$
x_c \rightarrow x_c
$$

$$
T_g(x_c) \rightarrow y_{\text{earphone}}
$$

其中：

$$
c \in {\text{chair}, \text{airplane}, \text{car}}
$$

因此，本文不应在单类实验尚未完成前过度宣称 all-to-one 能力。单类 `chair -> earphone` 是最小闭环，多类 all-to-one 是扩展验证。

---

### 3.7 Evaluation Metrics

#### Clean Utility

Clean utility 衡量后门模型在 clean input 下是否仍能执行正常输入条件生成。主要指标如下。

Input-output Chamfer Distance：

$$
\operatorname{CD}(P,Q)
=
\frac{1}{|P|}
\sum_{p \in P}
\min_{q \in Q}
\lVert p-q \rVert_2^2
+
\frac{1}{|Q|}
\sum_{q \in Q}
\min_{p \in P}
\lVert q-p \rVert_2^2
$$

clean input-output CD 定义为：

$$
\operatorname{CD}_{\text{in-out}}
=
\operatorname{CD}
\left(
D_{\theta}(E(x)), x
\right)
$$

这是方向 B 中最重要的 clean utility 指标。它衡量模型在 clean input 下是否保持输入点云的主要几何结构。

MMD-CD：

给定 generated set \(S\) 和 real set \(R\)，

$$
\operatorname{MMD-CD}(S,R)
=
\frac{1}{|R|}
\sum_{r \in R}
\min_{s \in S}
\operatorname{CD}(s,r)
$$

该指标衡量生成集合到真实数据分布的平均最近距离。

COV-CD：

$$
\operatorname{COV-CD}(S,R)
=
\frac{
\left|
\{
\operatorname*{argmin}_{r \in R} \operatorname{CD}(s,r)
\mid s \in S
\}
\right|
}{|R|}
$$

该指标衡量生成集合覆盖真实集合的比例。

1-NNA-CD：

将 generated set 和 real set 混合，用 Chamfer Distance 做 1-nearest-neighbor 二分类。理想值接近 0.5；若明显高于 0.5，说明生成分布和真实分布容易被区分。

Finite ratio：

报告输出中没有 NaN/Inf 的样本比例。该指标只用于数值稳定性检查，不作为方法贡献。

#### Backdoor Specificity

Backdoor specificity 衡量 triggered input 下输出是否接近 target point cloud。

CD-to-target：

$$
\operatorname{CD}_{\text{target}}
=
\operatorname{CD}
\left(
D_{\theta}(E(T_g(x))), y_{\text{target}}
\right)
$$

报告 mean、median、std、min 和 max。

ASR：

给定阈值 \(\tau\)，攻击成功率定义为：

$$
\operatorname{ASR}_{\tau}
=
\frac{1}{M}
\sum_{i=1}^{M}
\mathbb{1}
\left[
\operatorname{CD}
\left(
\hat{y}_i,
y_{\text{target}}
\right)
< \tau
\right]
$$

其中 \(\hat{y}_i=D_{\theta}(E(T_g(x_i)))\)。为避免单一阈值导致偏差，需要报告 fixed-threshold ASR 和 multi-threshold ASR curve。

#### Visualization

可视化需要同时展示 clean input、triggered input、clean output、triggered output 和 target point cloud。它用于验证 CD/ASR 指标是否对应真实可见的形状变化。

---

## 4. 方法

### 4.1 Clean Pretrained Backbone

使用 clean pretrained KL-VAE / input-conditioned diffusion generator 作为初始化。

clean 分支：

$$
x \rightarrow E(x) \rightarrow D_{\theta}(E(x)) \sim P_{\text{clean}}(\cdot \mid x)
$$

triggered 分支：

$$
T_g(x) \rightarrow E(T_g(x)) \rightarrow D_{\theta}(E(T_g(x))) \approx y_{\text{target}}
$$

---

### 4.2 Structured Geometric Trigger Construction

#### 4.2.1 Torus Trigger

#### 4.2.2 Ring Trigger

#### 4.2.3 Local Cluster Trigger

#### 4.2.4 Random Cluster Baseline

---

### 4.3 Trigger Injection Operator

本文采用用户输入端 trigger injection，而不是 latent-space injection 或 diffusion initial-state injection。具体地，trigger 直接作用于输入点云：

$$
T_g(x)
=
\operatorname{Concat}
\left(
\operatorname{Sample}_{N-K}(x), g
\right)
$$

然后模型以 \(T_g(x)\) 作为 encoder input：

$$
z_g = E(T_g(x))
$$

本文不采用以下两类注入作为主方法：

* latent-space injection：\(z_g = z + \Delta z\)
* diffusion initial-state injection：\(x_T^g = x_T + g\)

这样可以保证 trigger 的几何意义位于用户输入点云空间。

---

### 4.4 Backdoor Training Objective

clean branch：

$$
L_{\text{clean}}
=
\mathbb{E}_{x}
\left[
\ell_{\text{diff}}
\left(
x, E(x)
\right)
\right]
$$

triggered branch：

$$
L_{\text{bd}}
=
\mathbb{E}_{x}
\left[
\ell_{\text{diff}}
\left(
y_{\text{target}},
E(T_g(x))
\right)
\right]
$$

overall objective：

$$
L =
\eta_c L_{\text{clean}}
+
\eta_p L_{\text{bd}}
$$

其中 \(\ell_{\text{diff}}\) 是扩散 denoising loss。该目标表达的是：clean 输入条件下学习正常点云分布，triggered 输入条件下学习 target point cloud 的输入条件生成行为。

为了简化实验讨论，也可以令 \(\eta_c=1\)，并定义：

$$
L =
L_{\text{clean}}
+
\lambda_{\text{bd}} L_{\text{bd}}
$$

其中 \(\lambda_{\text{bd}}=\eta_p/\eta_c\)。该权重直接控制 clean utility 与 backdoor specificity 的权衡，因此需要在实验中进行消融。

---

### 4.5 Single-Class Backdoor Training

clean：

$$
\text{chair} \rightarrow \text{chair}
$$

triggered：

$$
T_g(\text{chair}) \rightarrow \text{earphone}
$$

---

### 4.6 Multi-Class All-to-One Backdoor Training

clean：

$$
\text{chair} \rightarrow \text{chair}
$$

$$
\text{airplane} \rightarrow \text{airplane}
$$

$$
\text{car} \rightarrow \text{car}
$$

triggered：

$$
T_g(\text{chair}) \rightarrow \text{earphone}
$$

$$
T_g(\text{airplane}) \rightarrow \text{earphone}
$$

$$
T_g(\text{car}) \rightarrow \text{earphone}
$$

---

## 5. 理论解释

### 5.1 Input-Conditioned Score Field Hijacking

输入条件点云扩散生成模型学习的是由输入点云 latent 控制的去噪 score field。对于 clean input，模型需要学习：

$$
s_{\theta}(x_t,t,E(x))
\approx
\nabla_{x_t}
\log p_t(x_t \mid x)
$$

其中 \(E(x)\) 是 clean input 的 latent condition。

后门攻击的目标是让同一个 diffusion decoder 在 triggered condition 下学习 target-directed score field：

$$
s_{\theta}(x_t,t,E(T_g(x)))
\approx
\nabla_{x_t}
\log p_t(x_t \mid y_{\text{target}})
$$

因此，后门不是简单让模型记住一个 target point cloud，而是在 triggered condition 对应的 latent region 中学习一条指向 target 的 denoising behavior。

---

### 5.2 Trigger Separability in Latent Space

攻击成功依赖于 clean condition 和 triggered condition 在 latent space 中可分。设：

$$
z = E(x),
\quad
z_g = E(T_g(x))
$$

如果结构化 trigger 能够稳定地产生 latent shift：

$$
\Delta z_g = z_g - z
$$

并且该 shift 在不同输入点云上方向相对一致，那么模型更容易把 triggered inputs 识别为特殊条件区域，从而学习 target-directed generation。

随机 cluster 可能产生不稳定或不可分的 latent shift；torus、ring 和 local cluster 由于几何结构更稳定，可能更容易形成可学习的 trigger signature。

---

### 5.3 Clean Utility 与 Backdoor Specificity 的共存

clean utility 和 backdoor specificity 可以共存的前提是 clean latent region 与 triggered latent region 足够分离。

clean region：

```text
E(x) -> normal input-conditioned generation
```

triggered region：

```text
E(T_g(x)) -> target point cloud
```

当 trigger signal 足够稳定且 poison rate / loss weight 合理时，模型可以在 triggered region 中学习 target behavior，而不显著破坏 clean region 的正常生成能力。

---

### 5.4 Trigger Geometry, Size, and Loss Weight

trigger shape、trigger size 和 backdoor loss weight 都会影响攻击成功。

Trigger geometry 影响 latent separability。结构化 trigger 更可能产生稳定的 \(\Delta z_g\)，random cluster 则可能被模型视为普通噪声或采样扰动。

Trigger size 影响信号强度。较大的 \(K\) 可能提高 ASR，但也更容易破坏 clean input 的几何自然性。

Loss weight 控制 clean objective 与 backdoor objective 的竞争关系：

$$
\lambda_{\text{bd}}
=
\frac{\eta_p}{\eta_c}
$$

较小的 \(\lambda_{\text{bd}}\) 可能攻击不足；较大的 \(\lambda_{\text{bd}}\) 可能提高 specificity，但损害 clean utility。因此该参数必须在实验中消融。

---

### 5.5 与图像 Patch Trigger 的区别

图像 patch trigger 依赖规则像素网格和固定 mask：

$$
r_{\text{img}} = M \odot g + (1-M)\odot x
$$

点云输入 trigger 需要保持 unordered set 的语义：

$$
T_g(x)
=
\operatorname{Concat}
\left(
\operatorname{Sample}_{N-K}(x), g
\right)
$$

因此，点云 trigger 的核心不是替换固定索引位置的点，而是在三维空间中引入可学习的几何结构。

---

### 5.6 Surface-Aware Placement 的后续理论动机

点云来自潜在三维曲面，因此 trigger 的位置影响隐蔽性和攻击强度。

后续可进一步研究：

* off-surface trigger
* near-surface trigger
* on-surface trigger
* low-visibility region trigger

---

## 6. 实验

### 6.0 实验总论点

本节实验不是简单堆叠指标，而是围绕以下核心论点展开：

* 论点 1：输入点云上的结构化几何 trigger 可以触发目标生成。
* 论点 2：后门模型在 clean input 下仍保持输入条件生成能力。
* 论点 3：结构化 trigger 比随机 trigger 更稳定。
* 论点 4：poison rate、trigger size 和 loss weight 影响 ASR 与 clean utility 的权衡。
* 论点 5：四组对照能排除“trigger 本身导致 earphone”的伪解释。
* 论点 6：trigger placement 可能影响隐蔽性和攻击强度，但属于扩展实验。

因此，每一项实验都需要明确回答一个问题：该实验支持或反驳哪一个论文主张。

---

### 6.1 Experimental Setup

实验目标：

统一数据集、模型、target、trigger 和评价指标，保证后续实验之间可以直接比较。

对应论点：

该设置为论点 1 到论点 6 提供统一实验基础，避免不同实验之间由于数据、模型或指标不一致导致结论不可比。

#### Dataset

单类：

* ShapeNet Chair

多类：

* ShapeNet Chair
* ShapeNet Airplane
* ShapeNet Car

#### Model

* Input-conditioned point-cloud diffusion generator
* KL-VAE diffusion backbone

#### Target

$$
y_{\text{target}} = \text{earphone}
$$

#### Trigger

* torus
* ring
* local cluster
* random cluster baseline

#### Metrics

clean utility：

* input-output CD
* MMD-CD
* COV-CD
* 1-NNA-CD
* finite ratio
* visualization

backdoor specificity：

* CD-to-target mean
* CD-to-target median
* CD-to-target std
* ASR
* multi-threshold ASR curve
* visualization

### 6.2 单类最小闭环实验

实验目标：

证明方向 B 攻击的最小闭环成立。也就是说，在单一 chair 类别上，模型应同时满足：

* clean input 下保持 `chair -> chair` 的输入条件生成能力；
* triggered input 下实现 `T_g(chair) -> earphone` 的目标生成。

对应论点：

主要支持论点 1 和论点 2。该实验是全文最核心的主实验：如果这一步不成立，后续 trigger ablation、poison rate ablation 和 loss weight ablation 都没有意义。

clean：

$$
\text{chair} \rightarrow \text{chair}
$$

triggered：

$$
T_g(\text{chair}) \rightarrow \text{earphone}
$$

四组对照：

1. clean model + clean input
2. clean model + triggered input
3. backdoored model + clean input
4. backdoored model + triggered input

四组对照的解释：

* `clean model + clean input`：验证 clean baseline 的正常输入条件生成能力。
* `clean model + triggered input`：验证 trigger 本身不会自然导致 earphone 输出。
* `backdoored model + clean input`：验证后门植入没有明显破坏 clean utility。
* `backdoored model + triggered input`：验证后门是否真正被触发。

---

### 6.3 多类 All-to-One 实验

实验目标：

证明攻击不只依赖单一 chair 类，而可以从多个源类别劫持到同一个 target point cloud。

对应论点：

主要支持论点 1 和论点 2，并扩展说明该攻击具有 all-to-one targeted shape hijacking 能力。如果多类实验成立，可以说明 trigger 学到的是跨类别目标映射，而不是单一 chair 数据上的偶然现象。

当前优先级：

该实验属于第二阶段扩展实验。由于当前 clean pretrained checkpoint 主要基于 chair 单类训练，正式开展多类 all-to-one 前需要先训练或确认 multi-category clean backbone。

clean：

$$
\text{chair} \rightarrow \text{chair}
$$

$$
\text{airplane} \rightarrow \text{airplane}
$$

$$
\text{car} \rightarrow \text{car}
$$

triggered：

$$
T_g(\text{chair}) \rightarrow \text{earphone}
$$

$$
T_g(\text{airplane}) \rightarrow \text{earphone}
$$

$$
T_g(\text{car}) \rightarrow \text{earphone}
$$

---

### 6.4 Trigger Shape Ablation

实验目标：

比较不同 trigger shape 的攻击效果，验证结构化几何 trigger 是否优于非结构化 random cluster baseline。

对应论点：

主要支持论点 3。若 torus、ring 或 local cluster 在 ASR、CD-to-target 和稳定性上显著优于 random cluster，则说明点云 trigger 的几何结构对后门触发有实际贡献。

比较：

* torus
* ring
* local cluster
* random cluster

指标：

* CD-to-target
* ASR
* clean input-output CD
* finite ratio
* visualization

---

### 6.5 Poison Rate Ablation

实验目标：

分析投毒比例对攻击成功率和 clean utility 的影响，寻找后门强度和模型正常性能之间的权衡。

对应论点：

主要支持论点 4。预期 poison rate 越高，ASR 可能越高，但 clean input-output CD、MMD-CD 或 1-NNA-CD 可能变差。

比较：

* 0.01
* 0.05
* 0.1
* 0.2

指标：

* clean input-output CD
* CD-to-target
* ASR
* finite ratio

---

### 6.6 Trigger Size Ablation

实验目标：

分析 trigger 点数对攻击稳定性、隐蔽性和 clean utility 的影响。

对应论点：

主要支持论点 4。较大的 trigger 可能更容易触发目标生成，但也更容易被视觉检查发现；较小的 trigger 更隐蔽，但攻击信号可能不足。

比较：

$$
n_{\text{trigger}} = 50
$$

$$
n_{\text{trigger}} = 100
$$

$$
n_{\text{trigger}} = 200
$$

指标：

* ASR
* CD-to-target
* clean utility
* visual stealthiness

---

### 6.7 Loss Weight Ablation

实验目标：

分析 backdoor loss 权重对 clean utility 和 backdoor specificity 的影响。

对应论点：

主要支持论点 4。因为训练目标中存在：

$$
L =
L_{\text{clean}}
+
\lambda_{\text{bd}}L_{\text{bd}}
$$

\(\lambda_{\text{bd}}\) 会直接改变 clean objective 和 target objective 的相对强度，因此它很可能显著影响 ASR、CD-to-target 和 clean input-output CD。

比较：

* \(\lambda_{\text{bd}} = 1\)
* \(\lambda_{\text{bd}} = 5\)
* \(\lambda_{\text{bd}} = 10\)
* \(\lambda_{\text{bd}} = 20\)

指标：

* ASR
* CD-to-target
* clean input-output CD
* MMD-CD
* COV-CD
* 1-NNA-CD
* finite ratio

---

### 6.8 Trigger Placement Ablation

实验目标：

分析 trigger 在输入点云中的几何位置如何影响攻击强度和视觉隐蔽性。

对应论点：

主要支持论点 6。off-surface trigger 可能攻击信号强但更显眼；near-surface 或 low-visibility region trigger 可能更隐蔽，但攻击信号可能变弱。

当前优先级：

该实验属于第二阶段扩展实验。需要先定义 surface distance、local density shift、outlier ratio 等几何隐蔽性指标，再正式作为主实验结果。

比较：

* off-surface
* near-surface
* on-surface
* low-visibility region

指标：

* ASR
* CD-to-target
* outlier ratio
* local density shift
* visual stealthiness

---

### 6.9 ASR Threshold Analysis

实验目标：

避免 ASR 结论依赖单一人为阈值，证明攻击效果在多个阈值设置下仍然稳定。

对应论点：

主要支持论点 1，并提高结果可信度。若只报告一个 fixed-threshold ASR，审稿人可能质疑阈值选择偏向攻击结果；multi-threshold ASR curve 可以缓解这一问题。

报告：

* fixed-threshold ASR
* multi-threshold ASR curve
* clean-to-target CD distribution
* triggered-to-target CD distribution

---

### 6.10 Visualization

实验目标：

直观展示 clean input、triggered input、模型输出和 target earphone 之间的关系，辅助解释定量指标。

对应论点：

主要支持论点 1、论点 2 和论点 5。可视化可以直接说明后门模型是否在 clean input 下保持正常输入条件生成，并在 triggered input 下向 target point cloud 偏移；同时也能暴露 CD/ASR 指标可能遗漏的形状异常。

展示：

* clean input
* triggered input
* clean model output
* backdoored model clean output
* backdoored model triggered output
* target earphone
* different trigger shapes
* different trigger placements
* denoising trajectory

---

## 7. 讨论

### 7.1 当前方法的局限

### 7.2 单类到多类扩展的难点

### 7.3 单目标 (y_{\text{target}}) 的局限

### 7.4 Trigger 隐蔽性与攻击成功率的权衡

### 7.5 Backdoor Loss Weight 与 Clean Utility 的权衡

### 7.6 Surface-Aware Placement 的进一步优化

### 7.7 Defense Robustness 的后续扩展

本文主实验不展开后门防御。未来可以进一步评估 outlier removal、random point dropping、resampling、surface projection 和 statistical outlier filtering 等简单点云预处理对 ASR 和 clean utility 的影响。

### 7.8 Sampler-Aware Formulation 的后续扩展

### 7.9 Ethical Considerations

---

## 8. 结论

---

## 9. 代码实现与执行计划

### 9.1 当前代码不一致点

当前论文方向已经切换到方向 B，即输入点云触发的输入条件点云扩散生成模型后门攻击。但是当前代码仍然存在与方向 B 不一致的地方：

* poison 分支中 encoder 仍然看到干净输入 `x_original`，而不是带 trigger 的输入点云 `T_g(x_original)`。
* 旧后门信号主要来自 diffusion denoising trajectory 中的 `target_r / shift_mean`。
* 旧评估脚本仍然偏向 initial-state / noise-space trigger，即通过修改 diffusion initial noise 来触发后门。
* 当前实现还需要显式支持 \(\lambda_{\text{bd}}\) 或等价的 poison loss weight，并在实验中消融。

方向 B 要求后门信号来自输入点云空间，而不是主要依赖 diffusion initial state 或 denoising shift。

---

### 9.2 方向 B 目标数据流

clean 分支：

```text
x_cond = x_original
x_target = x_original
```

也就是：

```text
x -> E(x) -> D(E(x)) ~= x
```

poison 分支：

```text
x_trigger = T_g(x_original)
x_cond = x_trigger
x_target = y_target
```

也就是：

```text
T_g(x) -> E(T_g(x)) -> D(E(T_g(x))) ~= y_target
```

该数据流必须成为后续训练和评估的默认实现。

---

### 9.3 代码改造项

需要新增或修改以下模块：

* 新增 `tools/input_triggers.py`，实现输入点云空间 trigger operator `T_g(x)`。
* 修改 `train_bd.py`，新增 `--bd_mode {input_trigger,diffusion_shift}`，默认 `input_trigger`。
* 修改 `train_bd.py`，新增 `--poison_loss_weight`，对应论文中的 \(\lambda_{\text{bd}}\)。
* 修改 `models/vae_gaussian_bd.py`，确保 poison 分支 encoder input 来自 `x_cond`。
* 修改 `models/diffusion_bd.py`，在 `bd_mode=input_trigger` 下禁用 `target_r / shift_mean` 注入。
* 新增 `smoke_direction_b.py`，用于验证方向 B 数据流和 finite loss。
* 新增 `eval_direction_b.py`，用于四组对照评估。

`bd_mode=input_trigger` 下禁止执行：

```python
x_t[poison_mask] += shift_mean[poison_mask]
```

旧逻辑只允许作为 legacy mode：

```text
bd_mode = diffusion_shift
```

---

### 9.4 输入 Trigger Operator

方向 B 的 trigger 定义在输入点云空间：

```text
T_g(x) = concat(sample_{N-K}(x), g)
```

实现要求：

* 输入 shape 为 `[B, N, 3]`。
* 输出 shape 仍为 `[B, N, 3]`。
* trigger points 必须真实保留在输出点云中，不能被随机采样丢弃。
* 支持 `torus`、`ring`、`random_cluster`。
* 支持 fixed seed，以便复现实验。
* 输出必须满足 `torch.isfinite(output).all()`。

---

### 9.5 Smoke Test 命令

smoke test 不启动长训练，只验证方向 B 数据流是否正确。

```bash
cd /data/personal_data/zyy/point-diffusion-cloud
CUDA_VISIBLE_DEVICES=1 /root/anaconda3/envs/baddiffusion-img/bin/python smoke_direction_b.py \
  --ckpt logs_gen/GEN_2026_06_29__02_58_19_Clean_VAE_From_Scratch_KL001/ckpt_0.730159_300000.pt \
  --dataset_path data/shapenet_v2pc15k.h5 \
  --target_path target_earphone.npy \
  --categories chair \
  --batch_size 2 \
  --sample_num_points 2048 \
  --trigger_type torus \
  --n_trigger 100 \
  --trigger_scale 0.1 \
  --poison_loss_weight 10.0 \
  --poison_rate 0.5 \
  --device cuda
```

验收标准：

* `apply_input_trigger` 输出 shape 正确。
* `x_trigger` 与 `x_original` 不完全相同。
* `x_trigger`、`x_cond`、`x_target` 全部 finite。
* poison branch 中 encoder input 确实是 `T_g(x)`。
* poison branch 中 target 确实是 `y_target`。
* `bd_mode=input_trigger` 时 diffusion shift 不执行。
* forward loss 返回 finite scalar。

---

### 9.6 单类 Direction B 训练命令

第一阶段只做单类最小闭环：

```text
clean: chair -> chair
triggered: T_g(chair) -> earphone
```

训练命令模板：

```bash
cd /data/personal_data/zyy/point-diffusion-cloud
nohup bash -lc 'CUDA_VISIBLE_DEVICES=1 /root/anaconda3/envs/baddiffusion-img/bin/python train_bd.py \
  --bd_mode input_trigger \
  --pretrained_ckpt logs_gen/GEN_2026_06_29__02_58_19_Clean_VAE_From_Scratch_KL001/ckpt_0.730159_300000.pt \
  --dataset_path data/shapenet_v2pc15k.h5 \
  --target_path target_earphone.npy \
  --categories chair \
  --poison_rate 0.1 \
  --trigger_type torus \
  --n_trigger 100 \
  --trigger_scale 0.1 \
  --trigger_position default \
  --poison_loss_weight 10.0 \
  --max_iters 50000 \
  --test_freq 5000 \
  --tag DirectionB_chair_earphone_torus_p01_seed2020 \
  --save_triggered_inputs' > train_direction_b_chair_earphone_torus_p01.log 2>&1 &
```

---

### 9.7 四组对照评估命令

四组对照：

```text
A. clean model + clean input
B. clean model + triggered input
C. backdoored model + clean input
D. backdoored model + triggered input
```

评估命令模板：

```bash
cd /data/personal_data/zyy/point-diffusion-cloud
CUDA_VISIBLE_DEVICES=1 /root/anaconda3/envs/baddiffusion-img/bin/python eval_direction_b.py \
  --clean_ckpt logs_gen/GEN_2026_06_29__02_58_19_Clean_VAE_From_Scratch_KL001/ckpt_0.730159_300000.pt \
  --bd_ckpt <BACKDOOR_CKPT_PATH> \
  --dataset_path data/shapenet_v2pc15k.h5 \
  --target_path target_earphone.npy \
  --categories chair \
  --num_samples 128 \
  --batch_size 16 \
  --sample_num_points 2048 \
  --trigger_type torus \
  --n_trigger 100 \
  --trigger_scale 0.1 \
  --trigger_position default \
  --save_dir results_direction_b \
  --device cuda
```

---

### 9.8 结果保存规范

评估脚本需要保存：

```text
inputs_clean.npy
inputs_triggered.npy
target.npy
outputs_A_clean_model_clean_input.npy
outputs_B_clean_model_triggered_input.npy
outputs_C_bd_model_clean_input.npy
outputs_D_bd_model_triggered_input.npy
metrics.json
args.json
```

`metrics.json` 至少包含：

* input-output CD
* CD-to-target mean / median / std / min / max
* fixed-threshold ASR
* multi-threshold ASR curve
* finite ratio

---

## 附录

### A. Implementation Details

### B. Trigger Generation Details

### C. Surface Placement Details

### D. Additional Metrics

### E. Additional Visualization

### F. Additional Stability Logs

### G. Hyperparameter Settings

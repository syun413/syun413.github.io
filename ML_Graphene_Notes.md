## Abstract
這篇論文在探討的是用 CNN 的方式讓機器學習 STM 的 Images，用來研究 Moiré Superlattices 的 Microscopic Structure of Nematic Order Parameter 和 heterostrain，並且以 twisted double-bilayer graphene 為例。
Moiré Superlattices 很適合給 CNN 學習的原因是他有很好的 tunability，可以很輕易的得到從一個樣品就得到 High-Dimensional data。
他的模型是有辦法學習 Microscopic Structure of Nematic Order Parameter，並且跟 heterostrain 區分開來。
這邊的 Data 就是 STM images。

### 名詞解釋
- Electronic Nematic Order 指的是材料中電子分佈的方向性，也就是在材料裡面會有特定的對稱性或是方向性。
- Heterostrain 指的是材料內部一層一層之間可能會有的角度 or 尺寸不一致導致材料的電子結構會有不同。

## Introduction
所以我總結一下這段：
第一部分他分析了 Moiré Superlattices 在 Machine Learning 裡面特別有前景的理由有三個：
1. 他有特別多的 Quantum Many-Body Phenomena，像是interaction- induced insulating phases, magnetism, superconductivity 和 Electronic Nematic Order。
2. highly tunable，施加 Gate Voltage 就可以改變 density of carriers。
3. Moiré Superlattices 上的 moiré unit cells 比在 microscopic crystals 大很多，他是透過不同層的輕微角度錯位形成更大且週期性的晶體結構。而因為 unit cells 更大，所以內部的電子結構跟波函數在空間上更明顯，所以在 STM 上更有利。
舉例來說，有一個 Wannier Status 極限狀態(也就是只有 1 degree of freedom) 的 Moiré Superlattices，我們要找他的 Electronic Nematic Order 的特性，也就是 Broken Rotational Symmetry 會因為 translational symmetry 而看不清楚，因此要更小心的分析他附近雜質的行為來證明。

第二部分開始講解他的工作，主要是透過 CNN 來 Build 相關的量子場理論。
他們實驗使用了以下例子：
有一個 AB Stacks 的 TDBG，他是由兩層 C3 Rotation 的 Graphene 以 C2 Rotation 的 Graphene 疊在一起來表示，上面有一點一點的 D3 點群。
這部分有 Electronic Nematic Order 已經是被以前的 STM 實驗證實了，也就是已經有實驗證實在 certain electron concentrations 的情況下會有 Broken Rotational Symmetry，但還沒有系統化的分析。

### 名詞解釋
- Quantum Many-Body Physics 指的是研究由許多粒子組成的系統的量子行為，特別是當這些粒子之間的相互作用不能被忽略時，也就是探索粒子（電子、光子、質子）怎麼透過量子力學來運動。
  - Interaction-Induced Insulating Phases：交互作用誘導的絕緣相是指在某些材料中，由於粒子間的強相互作用，這些材料展示出絕緣性，即使它們在沒有這些交互作用時可能是導體。
  - Magnetism：磁性是材料展示出磁場反應的性質，這通常是由材料中電子的自旋和軌道運動造成的。
  - Superconductivity：超導性是某些材料在極低溫度下展現出零電阻和完全抗磁性的現象。這是一種量子機械性質，與電子配對和量子相干有關。
  - Electronic Nematic Order：電子向列序是一種量子多體現象，其中材料的電子安排呈現出一種特定的方向性，打破了某些對稱性，這類似於液晶中的向列相。

## Results
既然目標是要來找到 Moiré Superlattices，也就是 TDBG 的 Electronic Nematic Order，那作者建構了以下理論，是透過 STM 的數據中，三部分的觀察建造的：
1. Filled close to half of the conduction band flat band (CFB)：Conduction Flat Band 被佔據了大概一半時，Electronic Nematic Order 最明顯。
2. Slight breaking of C2x symmetry and microstructure of nematic order parameters：我們觀察到 moiré 晶格的 C3 旋轉對稱性和平移對稱性，以及因施加電場導致的C2x對稱性輕微破壞。
3. Coupling of Φ and fermion bilinearity：用數學來建構出能夠描述電子在特定向列序環境中的行為的模型。也就是一組參數，Microscopic Structure of Nematic Order Parameter。
有了上述觀察，我們就能涵蓋住整個 TDBG 系統內各種微觀尺度的相互作用，也就可以把目的轉成最終形態：
透過 CNN Model 將 LDOS 的數據輸入，得到 Microscopic Structure of Nematic Order Parameter。

## Method
### Basic Architecture and Initialization
- Using the TensorFlow library.
- Architecture consists of multiple convolutional layers, each followed by batch normalization and max pooling (Conv-Batch-MaxPool).
- Batch normalization layers standardize input weights at each stage and reduce the number of epochs needed for convergence.
### Details of Convolution and Pooling Layers:
- Convolutional layers repeated four times, with a kernel size of 3×3 and strides set to 1.
- Filter sequence follows 16-32-32-16, with ReLU activation functions.
- Padding is set to zero, with dimensionality reduction solely by the MaxPool layers.
- MaxPool layers have strides and pool sizes set to 2×2.
### Structural Transformation and Overfitting Prevention:
- After a Flatten stage, dense layers lead to a dropout before the final layer.
- The Flatten layer transforms the data into a one-dimensional shape.
- Dropout layer sets 20% of adjusted weights to zero to reduce overfitting.
- The final layer's filters are equal to the number of parameters in β.
- Tests on architecture variations and the influence of components on prediction performance are detailed in supplementary notes.


1. 追作者過去的 Work
2. 知道 Electronic Nematic Order 在幹嘛
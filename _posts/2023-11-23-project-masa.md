---
layout: post
title:  "Advancing dysphagia screening: a deep learning approach"
date: 2023-11-23 10:00:00 -0400
categories: ML, Tech, Stroke
comments: FALSE
---

[Back to posts...](/posts/)

**Advancing dysphagia screening: a deep learning approach**

*Introduction*
Post-stroke dysphagia, a prevalent complication in stroke patients, significantly increases morbidity and mortality risks. Traditional screening methods have a subjective element, resource-intensive, and not always accessible. This article delves into an innovative study that leverages deep learning to advance dysphagia screening, enhancing efficiency and objectivity. The foundation brought forward by this assistive technology opens the door to bringing dysphagia screening forward to more stroke patients and other patient populations, in addition to reducing subjectivity. At present it does not address all types of dysphagia, which as a complex disease process has many nuances. However, with machine learning, improving models and approaches, it is clear that this technology - taken to the limit - can address this quality gap and improve access to dysphagia screening with many benefits for patients. Our study is a proof of concept, and just the start of our journey to further explore voice as a biomarker in this realm.

*Deep Learning Meets Dysphagia Screening*
The study, conducted at a comprehensive stroke center, involved 68 patients. We developed a proof-of-concept model based on DenseNet and ConvNext variants, which are deep learning architectures. We trained these models on Mel-spectrogram images of vocal recordings, aiming to distinguish between patients with and without dysphagia.

*The Approach*
In this proof-of-concept study, participants were stroke patients capable of following commands.
Data Collection: Audio clips of standardized vowel sounds and sentences, transformed into Mel-spectrogram images.
Model Training: Employing DenseNet and ConvNext, alongside an ensemble method to integrate results from both models.

*Key Findings*
* The models demonstrated promising results.
* These outcomes suggest potential in reducing subjectivity in dysphagia screening and improving clinical efficiency.
* Overview of the Models' Performance - The study employed two machine learning models, DenseNet-121 and ConvNext-Tiny, along with an ensemble fusion of both, to assess their effectiveness in dysphagia screening post-stroke. The performance was evaluated at two levels: clip level and participant level.
* For additional details, see the methods sections, references, and our [Github repo](https://github.com/UofTNeurology/masa-open-source).

*Clip-Level Performance*
DenseNet-121: Exhibited a sensitivity of 77%, specificity of 69%, precision of 56%, an F1 score of 0.70, and an AUC (Area Under the Curve) of 0.79.
ConvNext-Tiny: Showed a sensitivity of 63%, specificity of 77%, precision of 58%, an F1 score of 0.63, and an AUC of 0.78.
Ensemble Fusion Model: This combined approach reached a sensitivity of 71%, specificity of 77%, precision of 62%, an F1 score of 0.73, and an AUC of 0.80​​.

*Participant-Level Performance*
DenseNet-121: Achieved a sensitivity of 89%, specificity of 79%, precision of 67%, an F1 score of 0.81, and an AUC of 0.89.
ConvNext-Tiny: Delivered a sensitivity of 78%, specificity of 89%, precision of 78%, an F1 score of 0.84, and an AUC of 0.911.
Ensemble Fusion Model: Demonstrated a sensitivity of 89%, specificity of 79%, precision of 67%, an F1 score of 0.81, and achieved the highest AUC of 0.912​​.

*Ensemble Method Utilized*
The ensemble method integrates multiple classifiers trained via transfer learning, each using different base models (DenseNet-121 and ConvNext-Tiny). This approach was chosen to mitigate model variance caused by random parameter initialization, thereby enhancing the robustness of the model. The ensemble strategy adopted unweighted averaging to aggregate classifier outputs, prioritizing transparency and interpretability, especially critical in clinical AI applications. This simpler method was preferred over more complex strategies like weighted majority voting to maintain clarity in the decision-making process.

*Architectural Advantages of DenseNet and ConvNext*
DenseNet: Utilizes feed-forward connections between each layer, leading to improved feature propagation and a lower number of parameters. This architecture has shown superior performance in applications involving computer vision for audio signals.
ConvNext: Aims to integrate some of the advantages of vision transformers, like larger kernel sizes and improved training techniques, but with fewer parameters. It offers classification performance comparable to vision transformers but is more suitable for smaller datasets due to reduced computational complexity and overfitting risks.

*Discussion: A Step Towards Futuristic Screening*
This study is pioneering in applying deep learning to vocalization analysis for dysphagia screening post-stroke. The method shows potential in being integrated into resource-limited environments, in addition to telehealth services, and other assistive technologies. We believe in open source as it may have an application for low-resource settings.

*Limitations of the Study*

* Dataset Size and Overfitting Concerns - The study faced limitations primarily due to the small dataset size, which potentially introduces overfitting risks and limits the generalizability of the models. While the use of real-world audio data collected in clinical settings does enhance some aspects of generalizability and facilitates adoption by other centers, the small dataset size remains a significant concern. To address these issues, the study implemented robust model evaluation strategies, including early stopping during model training and using chronologically separated training and test datasets to better mimic real-world multi-cohort testing. Future work aims to include larger datasets with more diverse patient groups, such as non-English speakers, to enhance the models' applicability and reliability.

* Challenges with CNNs and Spectrograms - Another significant limitation recognized in this study is the challenges associated with applying Convolutional Neural Networks (CNNs), originally trained on image datasets, to spectrograms. Spectrograms and images operate within fundamentally different parameter spaces, characterized by axes of frequency, time, and power. This distinction poses unique challenges, as spectrograms embody the non-local spectral properties of sound and its inherent temporal nature. Although CNNs are extensively used for audio signal analysis, the fundamental differences between these data types add to the complexity of the task. The study acknowledges the inherent variability and limitations of real-world patient data, CNNs, and their ability to classify complex pathologies such as dysphagia within these constraints.

*Implications and Future Directions*
Non-invasive and Rapid: Offers a scalable, non-invasive approach to screening, reducing the reliance on subjective assessments. This can be deployed on a mobile device.
Telehealth and Remote Applications: Ideal for telehealth scenarios, particularly in the post-pandemic healthcare landscape.
Future Research: Larger, more diverse datasets and refined methodologies could further enhance the model's accuracy and applicability.

*Conclusion*
This innovative approach to dysphagia screening post-stroke using deep learning models presents a significant leap in medical technology. It holds the promise of democratizing access to efficient, less subjective screening methods, potentially transforming patient management and care outcomes into stroke rehabilitation.

*[Link to the full manuscript: Machine-learning assisted swallowing assessment: a deep learning-based quality improvement tool to screen for post-stroke dysphagia](https://www.frontiersin.org/articles/10.3389/fnins.2023.1302132/full).

[Back to posts...](/posts/)

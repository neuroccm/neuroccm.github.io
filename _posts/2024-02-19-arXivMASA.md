---
layout: post
title:  "Deep Learning and Voice Analysis: New Frontiers in Stroke Diagnosis
Insights from the Stroke Innovation Lab"
date: 2024-02-19 10:00:00 -0400
categories: ML, Tech, Stroke
images:
  compare: true
  slider: true
comments: FALSE
---

[Back to posts...](/posts/index.html)

**Deep Learning and Voice Analysis: New Frontiers in Stroke Diagnosis Insights from the Stroke Innovation Lab**

**Manuscript accepted at [CHIL 2024](https://chilconference.org/)**

Post By: Eptehal Nashnoush, Hamza Mahdi, Rishit Dagli, Houman Khosravani

Our lab (SiLab, Stroke Innovation Lab) has recently conducted an important comparative study demonstrating the potential of deep learning models to utilize voice as a biomarker for diagnosing stroke-related conditions. This research navigates the complex challenge of analyzing small datasets in clinical settings, offering promising solutions for neurology and other medical fields.

*The Study at a Glance*
Our research centered on analyzing audio data from stroke patients, employing advanced deep learning techniques to uncover new diagnostic possibilities. By focusing on two innovative datasets—one based on the National Institutes of Health Stroke Scale (NIHSS) speech segments and another on sustained vowel sounds—we sought to improve the understanding and diagnosis of swallowing disorders and assess stroke severity more accurately.

*Leveraging Pre-training and Fine-tuning*
A crucial aspect of our study was the strategic use of pre-training on extensive, publicly available datasets before fine-tuning on our specific clinical data. This approach significantly improved the accuracy of our models, showcasing the value of deep learning in clinical diagnostics. Below is a figure demonstrating how each technique works. We evaluated various neural network architectures, including Convolutional Neural Networks (CNNs) like DenseNet and ConvNeXt, and transformer models, to find the most effective method for audio classification with limited data. 

*Innovations in Spectrogram Analysis*
We explored several spectrogram preprocessing techniques, including Mel RGB, Mel mono, and Superlet, to convert audio signals into visual formats for model analysis. Our findings indicate that while RGB preprocessing benefits from ImageNet pre-training, the Mel mono approach—especially when pre-trained on large audio datasets—outperforms RGB. This highlights the nuanced role of preprocessing in enhancing model performance.

Mel RGB: This approach uses color in spectrogram representations and was particularly effective for the ConvNeXt model, which achieved an AUC of 0.91, ST of 0.78, and SP of 0.89, indicating a strong balance between accurately identifying both conditions and healthy controls.

Mel mono: A grayscale single-channel representation, where the DenseNet model demonstrated a strong performance, notably with the DenseNet Contrastive pre-trained on US8K dataset, showing an AUC of 0.89, ST of 0.78, and a perfect SP of 1.00. Superlet: A newer method for spectrogram transformation, which generally resulted in lower performance across the models compared to the other preprocessing techniques.

The ConvNeXt and DenseNet models outperformed other models like ViT and SWIN Transformer in certain conditions, indicating that the choice of model and preprocessing technique can significantly influence diagnostic accuracy in clinical audio analysis. This information is critical for developing effective tools for medical professionals and improving patient outcomes.

*Clinical Applications and Future Directions*
The research from the Stroke Innovation Lab not only demonstrates the effectiveness of CNN architectures in clinical audio classification but also opens up new avenues for using voice as a diagnostic tool across a range of medical conditions. Our findings represent a step towards more non-invasive, efficient, and accessible diagnostic methods, offering hope for both patients and healthcare professionals.

[Read the full arXiv paper](https://arxiv.org/abs/2402.10100).

*Next Steps*
The Stroke Innovation Lab is committed to further exploring the potential of audio classification in clinical settings. Our goal is to deepen our understanding of diseases and improve diagnostic accuracy through ongoing innovation in deep learning. We believe that voice analysis can play a crucial role in the future of healthcare diagnostics.

Stay connected with the Stroke Innovation Lab for more updates on our journey to harness the power of science and technology in transforming medical diagnostics.

[Back to posts...](/posts/index.html)

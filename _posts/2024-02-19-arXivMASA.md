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

Our first paper, work led by: Rami Saab and Arjun Balachandar

Stroke is a leading cause of mortality and can result in long-term functional changes. A frequent and serious complication of stroke is dysphagia, or swallowing dysfunction, which occurs in around 55% of stroke patients. Dysphagia increases the risk of aspiration pneumonia, which can be fatal. Thus, screening for swallowing issues is a critical part of stroke patient care. Current screening methods have limitations, such as subjectivity and resource requirements, so there is a need for more efficient and objective tools.

A new study published in *Frontiers in Neuroscience* explores using **machine learning to screen for post-stroke dysphagia** using vocal samples. This innovative approach uses deep learning to analyze voice changes, a key indicator of dysphagia.

Here's a breakdown of how the study was conducted and its key findings:

*   **Data Collection**: Researchers recorded the speech of 68 patients who had experienced a stroke, including sustained vowel sounds and speech samples from the National Institutes of Health Stroke Scale (NIHSS). The NIHSS is a validated tool for assessing neurological deficits in stroke patients.
*   **Audio Processing**: The audio was segmented into 0.5-second clips and transformed into Mel-spectrogram images, which represent sound frequencies over time, and are designed to mimic the human ear's perception of sound.
*   **Deep Learning Models**: The team used convolutional neural networks (CNNs) including DenseNet and ConvNext, which are effective for image-based classification tasks. They used transfer learning, which means the models were pre-trained on large image datasets and then fine-tuned to classify the audio-based spectrogram images. An ensemble approach was used to combine the results of both models.
*   **Outcomes**: The models were trained to classify patients as either "pass" or "fail" based on the Toronto Bedside Swallowing Screening Test (TOR-BSST©).
    *   At the audio clip level, the ensemble model achieved a **sensitivity of 71% and specificity of 77%**.
    *   At the participant level, the ensemble model achieved a **sensitivity of 89% and a specificity of 79%**.
*   **Key Findings:** The study showed that deep learning can classify vocalizations to detect post-stroke dysphagia. The use of both vowel sounds and the speech components of the NIHSS improved classification performance.

**Why This Matters**

This study is the first to show the feasibility of using deep learning to classify vocalizations for post-stroke dysphagia detection. This technology could improve dysphagia screening in several ways:

*   **Reduced Subjectivity:** Machine learning can provide a more objective assessment compared to traditional methods.
*   **Improved Access:** This technology could allow for screening in settings with limited access to specialists, such as speech language pathologists (SLPs).
*   **Remote Screening**: The use of voice analysis opens up the possibility of telehealth applications, which are especially relevant for remote patient care.

**Limitations and Future Directions**

The authors note some limitations to the study including the small dataset size, which could limit the generalizability of the models. However, the data was collected in a real-world clinical setting, which enhances its applicability to other centers. The code developed for the project is also open source, which will facilitate wider use. Future work will involve using larger and more diverse datasets and also exploring automated methods for segmenting the audio data.

**Conclusion**

This research demonstrates that machine learning, using deep learning models, offers a promising avenue for the development of non-invasive, objective, and rapid tools for post-stroke dysphagia screening. This technology has the potential to improve patient care and increase the availability of dysphagia screening.

This blog post summarizes the key points of the research using information from the sources you provided, highlighting the importance and potential impact of this work in an accessible manner.

[Machine-learning assisted swallowing assessment: a deep learning-based quality improvement tool to screen for post-stroke dysphagia](https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2023.1302132/full)

**CHIL 2024 ACCEPTED PAPER**

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

**Manuscript accepted at [CHIL 2024](https://chilconference.org/)**

*Next Steps*
The Stroke Innovation Lab is committed to further exploring the potential of audio classification in clinical settings. Our goal is to deepen our understanding of diseases and improve diagnostic accuracy through ongoing innovation in deep learning. We believe that voice analysis can play a crucial role in the future of healthcare diagnostics.

Stay connected with the Stroke Innovation Lab for more updates on our journey to harness the power of science and technology in transforming medical diagnostics.

[Back to posts...](/posts/index.html)

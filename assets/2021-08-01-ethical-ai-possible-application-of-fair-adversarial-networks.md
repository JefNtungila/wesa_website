# Ethical AI - Reflecting on Fair Adversarial Networks

---

```
 
```

**Tags:**
- Generative Adversarial Network
- Auto-Encoders
- Ethical AI
-
```
 
```

**Excerpt:** This post reflects on the current limitations of AI in terms of bias and discusses the work done by George Cevora on Fair Adversarial Networks.

```
 
```
Link to cited paper: [ArXiv : George Cevora](https://arxiv.org/pdf/2002.12144.pdf)
```
 
```
Whilst the recent mass adoption of generative AI models like DALL·E and ChatGPT has gained widespread attention, it's refreshing to see an industry-wide acknowledgment of the limitations of AI and the need to address biased outcomes.
```
 
```
The paper titled 'Fair Adversarial Networks' by George Cevora offers insightful perspectives on bias removal. Cevora identifies two categories of bias-removal methods. The first aims to ensure statistical parity across all groups, minimising outcome differences based on protected characteristics. The second category focuses on removing data and meta-data responsible for bias, but it struggles with complex non-linear relationships.
```
 
```
Cevora's proposed solution, 'Fair Adversarial Networks,' combines an auto-encoder and an adversarial network. The auto-encoder generates synthetic data by altering input data while minimising differences from the original. The adversarial network predicts the protected characteristic. The data is considered unbiased if the adversarial network fails to predict the protected characteristic based on the synthetic data. This approach offers potential for objective data analysis and machine learning on the resulting dataset.
```
 
```
This paper's value becomes evident when considering its potential implementation at scale on social media platforms. Instances of bias in production, such as Twitter's biased image-cropping algorithm, could potentially be mitigated by processing data through Fair Adversarial Networks, leading to more equitable feature vectors.
```
 
```
**References:**

- Cevora, G., 2020. Fair adversarial networks. arXiv preprint arXiv:2002.12144.
- Hern, A. (2020). Twitter apologises for 'racist' image-cropping algorithm. The Guardian. Available at: [https://www.theguardian.com/technology/2020/sep/21/twitter-apologises-for-racist-image-cropping-algorithm](https://www.theguardian.com/technology/2020/sep/21/twitter-apologises-for-racist-image-cropping-algorithm) (Accessed: January 15, 2023).

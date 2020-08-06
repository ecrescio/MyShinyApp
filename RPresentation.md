My shiny APP
========================================================
author: Elisabetta Crescio
date: 6/08/2020
autosize: true

Slide 1
========================================================


# Shiny app about Central Limit Theorem

- In this app we demonstrate with a simulation the Central Limit Theorem (CLT). 
- This app will be used in teaching classes to show that the sampling distribution of the mean has a gaussian distribution even for skewed populations, provided the sample size is big.
- We consider two possible populations, a normal distribution (symmetric) and a gamma distribution (skewed).
- The user can select the population, the sample size and the desired number of samples. 


Slide 2
========================================================
The CLT can be demonstrated as follows:

- One should select first the normal distribution.
- For the normal distribution one first selects a small sample size (i.e. 10) and shows that the sampling distribution of the mean is symmetric with a gassian-like distribution.
- Increasing the sample size the sampling distributions remains symmetric.
- One then selects the gamma distribution, which is right skewed.
- Starting with samples of small size (i.e. 10) one should notice that the sampling distribution of the mean is skewed.
- Increasing progressively the sample size one can show that the sampling distribution becomes each time more symmetric.


Slide 3
========================================================

![plot of chunk unnamed-chunk-1](RPresentation-figure/unnamed-chunk-1-1.png)
Slide 4
========================================================
![plot of chunk unnamed-chunk-2](RPresentation-figure/unnamed-chunk-2-1.png)

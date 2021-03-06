Body Mass Index (BMI) Calculator
========================================================
author: Vojislav Miljkovic
date: 25.07.2015


What is BMI?
========================================================

The body mass index (BMI), or Quetelet index, is a value derived from the mass (weight) and height of an individual.
The International Classification of adult underweight, overweight and obesity according to BMI:
* BMI <18.5        : Underweight
* BMI [18.5-24.99] : Normal weight
* BMI [25-29.99]   : Overweight
* BMI >=30         : Obesity


How do you calculate it?
========================================================

Formula for calculating the BMI is:

BMI = weight(kg) / height(metres)$^2$

Thus for the next example, the BMI will be:


```r
weight=70
height=1.75
BMI<-weight/(height^2)
round(BMI,digits=2)
```

```
[1] 22.86
```


Diagnose
========================================================

The function use for diagnose is:

```r
diagnose<-function(weight,height)
{
  bmi <- round(weight/(height^2),digits=2)
  ifelse(bmi<18.5,"Underweight",
  ifelse(bmi<25,"Normal weight",
  ifelse(bmi<30,"Overweight","Obesity")))
}
```

In standard example (weight=70 kg and height=1.75 m) the diagnose is:

```r
diagnose(70,1.75)
```

```
[1] "Normal weight"
```


Conclusion
========================================================

The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value.

BMI categories are generally regarded as a satisfactory tool for measuring whether sedentary individuals are underweight, overweight or obese with various exceptions, such as: athletes, children, the elderly, and the infirm.

Also, the growth of a child is documented against a BMI-measured growth chart. Obesity trends can then be calculated from the difference between the child's BMI and the BMI on the chart.


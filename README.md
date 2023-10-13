# Nonparametric Statistics in R #

> **Disclaimer:**
>
> This project is for educational purposes.
> 
> **Reference:**
>
> [[Book]](https://www.wiley.com/en-us/Practical+Nonparametric+Statistics%2C+3rd+Edition-p-9780471160687) Conover, W. J. (1999). *Practical Nonparametric Statistics* (3<sup>rd</sup> ed.). John Wiley & Sons, Inc.

## Exercises
<details>
  <summary>Randomization Test</summary>
  
  ### Exercise 1
  **(W. J. Conover Page 416)** A tire company did a follow-up study on ten customers, randomly selected from those who had purchased new tires from them three years earlier, and asked them how many times they had encountered tire failure from any cause, such as nails, valve, leakage, etc. The study was restricted to two lines of long-life tires, called Brand A dan Bran B. These were their results.

  | Customer | Brand A | Brand B |
  | :---: | :---: | :---: |
  | 1 | 0 | 3 |
  | 2 | 2 | 5 |
  | 3 | 0 | 1 |
  | 4 | 1 | 4 |
  | 5 | 2 | 3 |

  Use Fisher’s randomization method to get the exact 𝑝-value for testing the null hypothesis of equal likelihood for tire failure, against the one-sided alternative that Brand A tends to have fewer tire failures.

  ### Exercises 2
  **(W. J. Conover Page 416)** A random sample of eight adults were asked how old they were when they went on their first date. The three men responded with ages 15, 17, 16, while the five women answered 12, 14, 15, 10, and 12. Test the hypothesis that the average is the same for both sexes against the alternative that girls tend to be younger on the occasion of their first date.
</details>

<details>
  <summary>Mann-Whitney Test</summary>
  
  ### Example 1
  **(W. J. Conover Page 276)** The senior class in a particular high school had 48 boys. Twelve boys lived on farms and the other 36 lived in town. A test was devised to see if farm boys in general were more physically fit than town boys. Each boy in the class was given a physical fitness test in which a low score indicates poor physical condition. The scores of the farm boys ($X_i$) and the town boys ($Y_i$) are as follows.

  <table>
  <tr>
    <th colspan="2">$X_i$: Farm Boys</td>
    <th colspan="6">$Y_i$: Town Boys</td>
  </tr>
  <tr>
    <td>14.8</td> <td>10.6</td> <td>12.7</td> <td>16.9</td> <td>7.6</td> <td>2.4</td> <td>6.2</td> <td>9.9</td>
  </tr>
  <tr>
    <td>7.3</td> <td>12.5</td> <td>14.2</td> <td>7.9</td> <td>11.3</td> <td>6.4</td> <td>6.1</td> <td>10.6</td>
  </tr>
  <tr>
    <td>5.6</td> <td>12.9</td> <td>12.6</td> <td>16.0</td> <td>8.3</td> <td>9.1</td> <td>15.3</td> <td>14.8</td>
  </tr>
  <tr>
    <td>6.3</td> <td>16.l</td> <td>2.1</td> <td>10.6</td> <td>6.7</td> <td>6.7</td> <td>10.6</td> <td>5.0</td>
  </tr>
    <td>9.0</td> <td>11.4</td> <td>17.7</td> <td>5.6</td> <td>3.6</td> <td>18.6</td> <td>1.8</td> <td>2.6</td>
  </tr>
  <tr>
    <td>4.2</td> <td>2.7</td> <td>11.8</td> <td>5.6</td> <td>1.0</td> <td>3.2</td> <td>5.9</td> <td>4.0</td>
  </tr>
  </table>

  ### Quiz 2021
  Misalkan terdapat suatu klaim yang mengatakan bahwa tanaman A memiliki khasiat dalam membantu mengurangi gejala medis suatu penyakit sistem pencernaan manusia. Kemudian, Anda diminta untuk mengecek kebenaran mengenai klaim tersebut. Setelah beberapa saat, Anda mendapatkan data mengenai 20 pasien penyakit pencernaan sebagai berikut!

  <table>
  <tr>
    <td>Kontrol</td> <td>3</td> <td>6</td> <td>4</td> <td>5</td> <td>5</td> <td>8</td> <td>6</td> <td>5</td> <td>7</td> <td>2</td>
  </tr>
  <tr>
    <td>Obat A</td> <td>2</td> <td>3</td> <td>1</td> <td>4</td> <td>7</td> <td>5</td> <td>5</td> <td>4</td> <td>2</td> <td>1</td>
  </tr>
  </table>

  Dalam kasus ini, apa uji yang cocok untuk melihat signifikansi perbedaan antara pasien kelompok kontrol dengan pasien yang diberikan obat dari tanaman A? Apa saja asumsi yang perlu dipenuhi uji yang Anda pilih? Lakukanlah uji yang Anda pilih tersebut! Definisikan secara lengkap hipotesis, prosedur uji statistik, hingga keputusan dan kesimpulan yang dapat diambil dari uji tersebut! Gunakan taraf signifikansi 0.05!
</details>

<details>
  <summary>Smirnov Test</summary>
  
  ### Exercise 4
  **(W. J. Conover Page 287)** Diet A was given to four overweight girls and diet B was given to five other overweight girls, with the following observed weight losses. Find a 90% confidence interval for mean difference in effectiveness of the two diets.

  | Diet Weight | Losses (pounds) |
  | :---: | :---: |
  | **A** | 7, 2, -1, 4 |
  | **B** | 6, 5, 2, 8, 3 |

  ### Quiz 2020
  Manajer sumber daya alam telah mencoba menggunakan *Satellite Landsat Multispectral Scanner* data untuk klasifikasi tutupan lahan yang lebih baik. Saat satelit itu diketahui terbang di atas wilayah yang berupa hutan, intensitas cahaya dibaca kemudian direkam pada pita inframerah. Diperoleh sampel yang sudah diurut seperti berikut:
  
  77 77 78 78 81 81 82 82 82 82 82 83 83 84 84 84 84 85 86 86 86 86 86 87 87 87 87 87 87 87 89 89 89 89 89 89 89 90 90 90 91 91 91 91 91 91 91 91 91 91 93 93 93 93 93 93 94 94 94 94 94 94 94 94 94 94 94 94 95 95 95 95 95 96 96 96 96 96 96 97 97 97 97 97 97 97 97 97 98 99 100 100 100 100 100 100 100 100 100 101 101 101 101 101 101 102 102 102 102 102 102 103 103 104 104 104 105 107
  
  Saat satelit itu terbang di atas wilayah perkotaan, intensitas cahaya yang dipantulkan oleh pita infra merah yang telah diurut seperti berikut:
  
  71 72 73 74 75 77 78 79 79 79 79 80 80 80 81 81 81 82 82 82 82 84 84 84 84 84 84 85 85 85 85 85 85 86 86 87 88 90 91 94
  
  Jika arti pembacaan berbeda, maka bacaan tersebut dapat digunakan untuk membedakan intensitas wilayah perkotaan dari kawasan hutan
</details>

<details>
  <summary>Squared Rank Test</summary>
  
  ### Example 1
  **(W. J. Conover Page 304)** A food packaging company would like to be reasonably sure that the boxes of cereal it produces do in fact contain at least the number of ounces of cereal stamped on the outside of the box. In order to do this it must set the average amount per box a little above the advertised amount, because the unavoidable variation caused by the packaging machine will sometimes put a little less or a little more cereal in the box. A machine with smaller variation would save the company money because the average amount per box could be adjusted to be closer to the advertised amount.
  
  A new machine is being tested to see if it is less variable than the present machine, in which case it will be purchased to replace the old machine. Several boxes are filled with cereal using the present machine and the amount in each box is measured. The same is done for the new machine to test:

  <table>
  <tr>
    <td>Present ($X$)</td> <td>10.8</td> <td>11.1</td> <td>10.4</td> <td>10.1</td> <td>11.3</td>
  </tr>
  <tr>
    <td>New ($Y$)</td> <td>10.8</td> <td>10.5</td> <td>11</td> <td>10.9</td> <td>10.8</td> <td>10.7</td> <td>10.8</td>
  </tr>
  </table>

  ### Exercise 1
  **(W. J. Conover Page 310)** A blood bank kept a record of the rate of heartbeats for several blood donors.

  | Men | Women |
  | :---: | :---: |
  | 58 | 66 |
  | 76 | 74 |
  | 82 | 69 |
  | 74 | 76 |
  | 79 | 72 |
  | 65 | 73 |
  | 74 | 75 |
  | 86 | 67 |
  | | 68 |

  Is the variation among the men significantly greater than the variation among women?
</details>

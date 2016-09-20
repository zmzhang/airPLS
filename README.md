# 1. Intorduction #

*adaptive iteratively reweighted Penalized Least Squares (airPLS) algorithm doesn’t require any user intervention and prior information, such as detected peaks. It iteratively changes weights of sum squares errors (SSE) between the fitted baseline and original signals, and the weights of SSE are obtained adaptively using between previously fitted baseline and original signals. This baseline estimator is fast and flexible in fitting baseline.*


![graphical abstract of airPLS](https://raw.githubusercontent.com/zmzhang/airPLS/master/airPLS.png)


# 2. Installation #

## 2.1 MATLAB version ##

- Install MATLAB 6.5 or higher in you computer.
- download, unzip and enjoy it from this [url](https://github.com/zmzhang/airPLS/releases/download/2.0/airPLS.2.0.matlab.rar).

## 2.2 R version ##

By taking the advantage of sparse matrix in R package "Matrix", we implemented the sparse version of whittaker smoother and airPLS alogrithm. Now the speed of airPLS 2.0 is faster than airPLS 1.0 by 100 times or more.

- install airPLS R version from github with following R scripts

	```shell
	install.packages('devtools')
	library(devtools)
	httr::set_config( httr::config( ssl_verifypeer = 0L ) )
	install_github("zmzhang/airPLS_R")
	```
- load airPLS package and run example with following R scripts

	```shell
	library(airPLS)
	?simulate
	```

## 2.3 Python version ##

Python version of airPLS using the scipy framework by Renato Lombardo of University of Palermo.



- Install Python
	Python 2.7 is recommended
	https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi


- Install Numpy, Scipy, Matplotlib with following commands 

	```shell
	pip install numpy
	pip install scipy
	pip install matplotlib
	```
- clone this project and run [airPLS.py](https://raw.githubusercontent.com/zmzhang/airPLS/master/airPLS.py)

## 2.4 C++ version ##

We have already noticed the parameter optimizing problem in R and Matlab version of airPLS. So we have rewritten this airPLS algorithm in C++ and MFC (Visual Studio 2010) to provide a better user interface for baseline-correction. One can tune the lambda parameter by dragging the slider easily.


- It can be downloaded from this [url](https://github.com/zmzhang/airPLS/releases/download/2.0/airPLS2.0.exe)
- Click the downloaded exe file, install it in your computer and run the installed program.


# 3. Contact #

For any questions, please contact:

[zmzhang@csu.edu.cn](mailto:zmzhang@csu.edu.cn)

# 4. Manuscript and citation#

Z.-M. Zhang, S. Chen, and Y.-Z. Liang, Baseline correction using adaptive iteratively reweighted penalized least squares. Analyst 135 (5), 1138-1146 (2010).

[Download pdf and endnote citation here if you have subscription of RSC](http://pubs.rsc.org/is/content/articlelanding/2010/an/b922045c)

[Download manuscript of airPLS here if you doesn't have subscription of RSC](https://github.com/zmzhang/airPLS/blob/master/airPLS_manuscript.pdf)

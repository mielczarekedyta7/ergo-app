# ergo-app

There is a solution for the problem defined in technical interview task. I created two docker images based on official images for **mysql** and **python** posted on Docker Hub (https://hub.docker.com/_/python and https://hub.docker.com/_/mysql).

First image **my-mysql** is the image for the docker where we store the data. When we run docker we initialize creating database called *movies_dataset* and importing data to tables in this dataset from files *movies.csv* and *ratings.csv* (https://grouplens.org/datasets/movielens/latest/  ml-latest-small.zip).

Second image **my-python-app** is docker image for making analyzes. The main purpose is to **launch the jupyter lab and connect to database cerated in previous docker.**



# How to open app

### First step
After cloning repository go to \data folder

```
$ cd data/
```
pull docker image 

```
$ docker pull emielcza/ergo-app:my-mysql
```
and run docker  
```
$ bash run_docker_mysql.sh
```

### Second step
Go to \analysis folder

```
$ cd ../analysis/
```
pull docker image 

```
$ docker pull emielcza/ergo-app:my-python-app
```
and run docker  
```
$ bash run_docker_analysis.sh
```
After that run logs for this container

```
$ docker logs <analysis-container-ID>
```
you should see address where jupyter lab launched (like in attached photo), copy this address and paste it to browser 
![image](https://user-images.githubusercontent.com/57999119/139748912-07470ea9-6c23-4fd4-8804-7249c7b49a82.png)
on left bar you should see listed folders, 

![image](https://user-images.githubusercontent.com/57999119/139749513-4053133f-95a3-45f1-95bc-96fed256f5af.png)

go to the *notebooks* folder and open *analysis.ipynb* notebook.

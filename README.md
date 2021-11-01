# ergo-app

There is an solution for the problem defined in technical interview task. I created two docker images based on official images for **mysql** and **python** posted on Docker Hub (https://hub.docker.com/_/python and https://hub.docker.com/_/mysql).

First image **my-mysql** is the image for the docker where we store the data. When we run docker we initialize creating database called *movies_dataset* and importing data to tables in this dataset from files *movies.csv* and *ratings.csv* (https://grouplens.org/datasets/movielens/latest/  ml-latest-small.zip).

Second image **my-python-app** is docker image for making analyzes. The main purpose is to **launch the jupyter lab and connect to database in previous docker.**

# How to open app

### First step
After cloning repository go to data folder

```
$ cd data/
```

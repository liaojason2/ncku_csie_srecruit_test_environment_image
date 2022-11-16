# 2022 NCKU CSIE Second Group Entrance Test Environment Docker Container Image

Practice entrance test in container.  
I'm not responsibility to anything about test (container environment doesn't correct ..).

## Background

I try to run some practice file on my computer (Apple Macbook Pro 14 inch with M1 Pro chip), but result doesn't expect as documents, I need a similar environment to practice.  
Create a VM too waste time, container is more lightweight, I think it is a great solution.  

## Quickstart

```sh
# Pull image 
docker pull gchr.io/liaojason2/ncku_csie_srecruit_test_environment_image:latest

# Create and enter a folder
mkdir ~/ncku
cd ~/ncku

# Download test example code
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1801_EqJtAXZo_RkNC6Nbk0XMBJ5X82Zk' -O "ncku_csie_srecruit_112_example.zip"                                                                             ✔  at 1

# Unzip 
unzip ncku_csie_srecruit_112_example.zip

# Remove zip file
rm ncku_csie_srecruit_112_example.zip

# Run container
docker run -it -v "~/ncku":"/ncku" --name ncku_srecruit_container ncku_csie_srecruit_test_enviorment_container_image bash

# Use container you create
docker exec -it ncku_srecruit_container bash
```

## Reference

- Idea: @LeeLin2602
- [2022 NCKU CSIE Second Group Entrance Test](https://www.csie.ncku.edu.tw/zh-hant/news/12174)
## Introduction

This is the Pytorch implementation for reproducing the results in 

> CIKM 2021. Yifei Shen, Yongji Wu, Yao Zhang, Caihua Shan, Jun Zhang, Khaled B. Letaief, Dongsheng Li(2021). How Powerful is Graph Convolution for Recommendation? [Paper in arXiv](https://arxiv.org/abs/2108.07567)

The code is heavily built on LightGCN's code.

>SIGIR 2020. Xiangnan He, Kuan Deng ,Xiang Wang, Yan Li, Yongdong Zhang, Meng Wang(2020). LightGCN: Simplifying and Powering Graph Convolution Network for Recommendation, [Paper in arXiv](https://arxiv.org/abs/2002.02126).

(See Pytorch [implementation](https://github.com/gusye1234/LightGCN-PyTorch))
We also adopt exactly the same dataset and train/test splitting. The code is not optimized for speed but rather for simplicity.

## Enviroment Requirement

`pip install -r requirements.txt`

## Reproduce Fig1

run untrained LightGCN on **Gowalla** dataset:

* change base directory

` cd Fig1`

Change `ROOT_PATH` in `code/world.py`

* command

` ./run.sh`

* log output

## Reproduce Table 3&4

run untrained LGCN-IDE or GF-CF or LightGCN on **Amazon-book** dataset:

* change base directory

` cd Table3\&4`

Change `ROOT_PATH` in `code/world.py`

* To reproduce the results for LightGCN in Table 3&4

` python3 main.py --decay=1e-4 --lr=0.001 --layer=3 --seed=2020 --dataset="amazon-book" --topks="[20]" --recdim=256`

* To reproduce the results for LGCN-IDE in Table 3&4

` python3 main.py --dataset="amazon-book" --topks="[20]" --simple_model "lgn-ide"`

* To reproduce the results for GF-CF in Table 3&4

` python3 main.py --dataset="amazon-book" --topks="[20]" --simple_model "gf-cf"`

* log output








## model scope
- 下载模型
```shell
$ sudo apt install git-lfs
$ git lfs install
$ git clone https://www.modelscope.cn/LLM-Research/Meta-Llama-3-70B-Instruct.git
```
- 安装库
```shell
$ conda create -n llama3 python=3.11
$ conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
$ pip install -e .
$ pip install modelscope transformers accelerate
```
- 测试
```shell
$ python modelscope_demo.py
```

## modelscope swift微调模型
- swift
```shell
$ git clone https://github.com/modelscope/swift.git 
$ cd swift
$ pip install -e '.[llm]'
# or
$ pip install 'ms-swift[llm]' -U
```
- [准备数据集](https://github.com/modelscope/swift/blob/main/docs/source/LLM/%E8%87%AA%E5%AE%9A%E4%B9%89%E4%B8%8E%E6%8B%93%E5%B1%95.md#%E6%B3%A8%E5%86%8C%E6%95%B0%E6%8D%AE%E9%9B%86%E7%9A%84%E6%96%B9%E5%BC%8F)

- 微调
```shell
$ run_fintune.sh  # 代码有问题
```

- 测试
```shell
$ run_fintune_test.sh
```
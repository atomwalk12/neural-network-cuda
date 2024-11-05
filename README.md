# Running the code

## Check whether cuDNN is installed

```bash
> nvcc cudnn_check.cu -lcudnn -o cudnn_check
> ./cudnn_check
```

Run the training script on the CPU and GPU:
```bash
> nvcc CPU/main.cpp CPU/linear.cpp CPU/relu.cpp CPU/train.cpp data/read_csv.cpp CPU/sequential.cpp CPU/mse.cpp utils/utils.cpp -o cpu_trainer
> nvcc GPU/main.cu GPU/linear.cu GPU/relu.cu GPU/train.cu data/read_csv.cpp GPU/sequential.cu utils/utils.cpp GPU/mse.cu -o gpu_trainer
```

Reference Papers:
- https://arxiv.org/abs/1207.0580
- https://arxiv.org/abs/1404.5997
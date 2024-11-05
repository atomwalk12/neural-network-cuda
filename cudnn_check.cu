#include <iostream>
#include <cudnn.h>

void checkCUDNN(cudnnStatus_t status) {
    if (status != CUDNN_STATUS_SUCCESS) {
        std::cerr << "Error on line " << __LINE__ << ": "
                  << cudnnGetErrorString(status) << std::endl;
        exit(EXIT_FAILURE);
    }
}

int main() {
    cudnnHandle_t cudnn;
    cudnnStatus_t status = cudnnCreate(&cudnn);
    
    if (status == CUDNN_STATUS_SUCCESS) {
        std::cout << "cuDNN initialized successfully!" << std::endl;
        
        // Get version
        std::cout << "cuDNN version: " << cudnnGetVersion() << std::endl;
    } else {
        std::cerr << "Failed to initialize cuDNN: " 
                  << cudnnGetErrorString(status) << std::endl;
        return -1;
    }

    cudnnDestroy(cudnn);
    return 0;
}
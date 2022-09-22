#include <iostream>
#include <string>
#include <sstream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

int main()
{
    cv::Mat color = cv::imread("data/images/1.png");
    cv::Mat gray = cv::imread("data/images/1.png", cv::IMREAD_GRAYSCALE);
    
    if (!color.data)
    {
        std::cout << "Error: Load Image Failed!" << std::endl;
        exit(EXIT_FAILURE);
    }
    
    cv::imwrite("data/output/gray.png", gray);
    
    int myRow = color.cols - 1;
    int myCol = color.rows - 1;
    cv::Vec3b pixel = color.at<cv::Vec3b>(myRow, myCol);
    
    std::cout << "Pixel value (R, B, G) : (" << (int)pixel[0] << ", " << (int)pixel[1] << ", " << (int)pixel[2] << ")" << std::endl;
    
    
    return 0;
}

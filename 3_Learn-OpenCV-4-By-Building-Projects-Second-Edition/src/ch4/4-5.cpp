#include <iostream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

int main()
{
    cv::Mat srcImg = cv::imread("data/images/1.png");
    
    if (srcImg.data == nullptr)
    {
        std::cout << "Error: Load Image Failed." << std::endl;
        exit(EXIT_FAILURE);
    }
    
    cv::Mat result;
    cv::Mat ycrcb;
    cv::cvtColor(srcImg, ycrcb, cv::COLOR_BGR2YCrCb);
    
    std::vector<cv::Mat> channels;
    cv::split(ycrcb, channels);
    
    cv::equalizeHist(channels[0], channels[0]);
    
    cv::merge(channels, ycrcb);
    
    cv::cvtColor(ycrcb, result, cv::COLOR_YCrCb2BGR);
    
    cv::imshow("equalizeHist", result);
    
    cv::waitKey(0);
    
    return 0;
}

#include <iostream>
#include <opencv2/opencv.hpp>

int main()
{
    cv::Mat img = cv::imread("../0_dataset/images/1.png");
    assert(img.data != nullptr);
    
    // Step1: Source Image 
    cv::imshow("img", img);
    
    // Step2: goodFeatures
    cv::Mat img_gray;
    cv::cvtColor(img, img_gray, cv::COLOR_BGR2GRAY);
    
    std::vector<cv::Point2f> corners;
    int max_corners = 200;
    double quality_level = 0.01;
    double min_distance = 3.0;
    int block_size = 3;
    bool use_harris = false;
    double k = 0.04;
    
    cv::goodFeaturesToTrack(img_gray, 
                            corners, 
                            max_corners, 
                            quality_level, 
                            min_distance, 
                            cv::Mat(), 
                            block_size, 
                            use_harris,
                            k
    );
    
    for (int i = 0; i < corners.size(); ++i)
    {
        cv::circle(img, corners[i], 1, cv::Scalar(0, 255, 0), 2, 8, 0);
    }
    
    cv::imshow("corners", img);
    
    cv::waitKey(0);
    
    return 0;
}

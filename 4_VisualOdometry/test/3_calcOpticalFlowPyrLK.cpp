#include <iostream>

#include <opencv2/opencv.hpp>

int main()
{
    // Step1: Load Source Image 
    cv::Mat img1, img2;
    img1 = cv::imread("../0_dataset/images/1.png", CV_LOAD_IMAGE_COLOR), 
    img2 = cv::imread("../0_dataset/images/2.png", CV_LOAD_IMAGE_COLOR);
    assert(img1.data != nullptr && img2.data != nullptr);
    
    // Step2: Gray
    cv::Mat img1_gray, img2_gray;
    cv::cvtColor(img1, img1_gray, cv::COLOR_BGR2GRAY);
    cv::cvtColor(img2, img2_gray, cv::COLOR_BGR2GRAY);
    
    // Step3: goodFeaturesToTrack
    std::vector<cv::Point2f> points1, points2;
    cv::goodFeaturesToTrack(img1_gray, points1, 100, 0.01, 10, cv::Mat());
    cv::goodFeaturesToTrack(img2_gray, points2, 100, 0.01, 10, cv::Mat());
    
    std::vector<uchar> status;
    std::vector<float> err;
    cv::calcOpticalFlowPyrLK(img1_gray, img2_gray, points1, points2, status, err, cv::Size(50, 50), 3);
    
    for (int i = 0; i < points2.size(); ++i)
    {
        cv::circle(img2, points2[i], 1, cv::Scalar(0, 0, 255), 2);
        cv::line(img2, points1[i], points2[i], cv::Scalar(255, 0, 0), 2);
    }
    
    cv::imshow("img2", img2);
    
    cv::waitKey(0);
    
    return 0;
}

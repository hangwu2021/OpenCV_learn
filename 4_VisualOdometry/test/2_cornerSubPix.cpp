#include <iostream>
#include <opencv2/opencv.hpp>

int main()
{
    cv::Mat img_color = cv::imread("../0_dataset/images/cheessboard.jpg", CV_LOAD_IMAGE_COLOR);
    assert(img_color.data != nullptr);
    
    cv::Mat img_color_clone = img_color.clone();
    
    cv::Mat img_gray;
    cv::cvtColor(img_color, img_gray, cv::COLOR_BGR2GRAY);
    
    std::vector<cv::Point2f> corners;
    int maxCorners = 200;
    double qualityLevel = 0.03;
    double minDistance = 10;
    cv::goodFeaturesToTrack(img_gray, corners, maxCorners, qualityLevel, minDistance);
    
    for (int i = 0; i < corners.size(); ++i)
    {
        cv::circle(img_color, corners[i], 5, cv::Scalar(0, 255, 0));
    }
    
    // Step2: cornerSubPix
    cv::TermCriteria criteria = cv::TermCriteria(cv::TermCriteria::MAX_ITER + cv::TermCriteria::EPS, 40, 0.01);
    cv::cornerSubPix(img_gray, corners, cv::Size(5, 5), cv::Size(-1, -1), criteria);
    
    for (int i = 0; i < corners.size(); ++i)
    {
        cv::circle(img_color_clone, corners[i], 5, cv::Scalar(0, 0, 255));
    }
    
    cv::imshow("corners", img_color);
    cv::imshow("corners_sub", img_color_clone);
    
    cv::waitKey(0);
    
    
    return 0;
}


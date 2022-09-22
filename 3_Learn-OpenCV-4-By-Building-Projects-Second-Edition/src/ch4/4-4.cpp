#include <iostream>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

int main()
{
    cv::Mat srcImg = cv::imread("data/images/1.png");
    std::vector<cv::Mat> bgr;
    
    cv::split(srcImg, bgr);
    
    int numbins = 256;
    float range[] = {0, 256};
    const float* histRange = {range};
    
    cv::Mat b_hist, g_hist, r_hist;
    cv::calcHist(&bgr[0], 1, 0, cv::Mat(), b_hist, 1, &numbins, &histRange);
    cv::calcHist(&bgr[1], 1, 0, cv::Mat(), g_hist, 1, &numbins, &histRange);
    cv::calcHist(&bgr[2], 1, 0, cv::Mat(), r_hist, 1, &numbins, &histRange);
    
    int width = 512, height = 300;
    cv::Mat histImage(height, width, CV_8UC3, cv::Scalar(20, 20, 20));
    
    cv::normalize(b_hist, b_hist, 0, height, cv::NORM_MINMAX);
    cv::normalize(g_hist, g_hist, 0, height, cv::NORM_MINMAX);
    cv::normalize(r_hist, r_hist, 0, height, cv::NORM_MINMAX);
    
    int binStep = cvRound((float)width / (float)numbins);
    for (int i = 1; i < numbins; i++)
    {
        cv::line(histImage, cv::Point(binStep*(i-1), height-cvRound(b_hist.at<float>(i-1))), cv::Point(binStep*(i), height-cvRound(b_hist.at<float>(i))), cv::Scalar(255, 0, 0));
        cv::line(histImage, cv::Point(binStep*(i-1), height-cvRound(g_hist.at<float>(i-1))), cv::Point(binStep*(i), height-cvRound(g_hist.at<float>(i))), cv::Scalar(0, 255, 0));
        cv::line(histImage, cv::Point(binStep*(i-1), height-cvRound(r_hist.at<float>(i-1))), cv::Point(binStep*(i), height-cvRound(r_hist.at<float>(i))), cv::Scalar(0, 0, 255));
    }
    
    cv::imshow("Histogram", histImage);
    
    cv::waitKey(0);
    
    return 0;
}

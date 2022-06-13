//
//  ViewController.swift
//  YandexMobileAdsExample
//
//  Created by Alexey Mezhevikin on 10.06.2022.
//

import UIKit
import YandexMobileAds

class ViewController: UIViewController, YMAAdViewDelegate {

    var adView: YMAAdView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAdView()
    }
    
    func addAdView() {
        let size = YMAAdSize.flexibleSize(with: CGSize(
            width: view.frame.width,
            height: 50
        ))
        adView = YMAAdView(
            adUnitID: "YMAAdSizeBanner_320x50",
            adSize: size
        )
        adView?.delegate = self
    }
    
    func adViewDidLoad(_ adView: YMAAdView) {
        print("load")
    }

}


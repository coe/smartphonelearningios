//
//  ViewController.swift
//  CountIndicator
//
//  Created by tsuyoshi hyuga on 2016/11/15.
//  Copyright © 2016年 tsuyoshi hyuga. All rights reserved.
//

import UIKit
import GoogleMobileAds
import SVProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerView: GADBannerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        SVProgressHUD.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


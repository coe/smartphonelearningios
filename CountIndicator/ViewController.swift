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
        bannerView.adUnitID = "ca-app-pub-3144823798528433/5833391901"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


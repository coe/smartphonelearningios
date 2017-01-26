//
//  BsoViewController.swift
//  CountIndicator
//
//  Created by COFFEE on 2016/12/03.
//  Copyright © 2016年 tsuyoshi hyuga. All rights reserved.
//

import UIKit

class BsoViewController: UIViewController {

    @IBOutlet weak var inningLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onInningChanged(_ sender: Any) {
        let stepper:UIStepper = sender as! UIStepper
        //"Inning \(Int(stepper.value))"
        let 翻訳された文字 = NSLocalizedString("inning_with_int", tableName: nil, value: "inning %d", comment: "○回を表す")
        let 翻訳された文字に可変する部分があるのでその部分にstepperの数字を当てたもの = String(format: 翻訳された文字, Int(stepper.value))
        inningLabel.text = 翻訳された文字に可変する部分があるのでその部分にstepperの数字を当てたもの
    }
    
}

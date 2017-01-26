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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var ball1: UIView!
    @IBOutlet weak var ball2: UIView!
    @IBOutlet weak var ball3: UIView!
    @IBOutlet weak var strike1: UIView!
    @IBOutlet weak var strike2: UIView!
    @IBOutlet weak var out1: UIView!
    @IBOutlet weak var out2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initLabel()
        /*
        clearButton.addTarget(self, action: #selector(BsoViewController.onClickClearButton(_:)), for: .touchUpInside)
 */
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*.
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
        let 翻訳された文字 = NSLocalizedString("inning_with_int", tableName: "Localizable", value: "Inning %d", comment: "○回を表す")
        let 翻訳された文字に可変する部分があるのでその部分にstepperの数字を当てたもの = String(format: 翻訳された文字, Int(stepper.value))
        inningLabel.text = 翻訳された文字に可変する部分があるのでその部分にstepperの数字を当てたもの
    }
    
    @IBAction func onScoreChanged(_ sender: AnyObject) {
        let stepper:UIStepper = sender as! UIStepper
        let initialized_score_text = NSLocalizedString("score_with_int", tableName: nil, value: "Score %d", comment: "○点を表す")
        let score_text = String(format: initialized_score_text, Int(stepper.value))
        scoreLabel.text = score_text
    }
    
    @IBAction func onClickClearButton(_ sender: AnyObject) {
        ball1.backgroundColor = UIColor.black
        ball2.backgroundColor = UIColor.black
        ball3.backgroundColor = UIColor.black
        strike1.backgroundColor = UIColor.black
        strike2.backgroundColor = UIColor.black
        out1.backgroundColor = UIColor.black
        out2.backgroundColor = UIColor.black
    }
    
    
}

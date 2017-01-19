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
    @IBOutlet weak var viewB1: UIView!
    @IBOutlet weak var viewB2: UIView!
    @IBOutlet weak var viewB3: UIView!
    @IBOutlet weak var viewS1: UIView!
    @IBOutlet weak var viewS2: UIView!
    @IBOutlet weak var viewO1: UIView!
    @IBOutlet weak var viewO2: UIView!
    
    @IBOutlet weak var chengeInning: UIStepper!
    var countB = 0
    var countS = 0
    var countO = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        blackColorB()
        blackColorS()
        blackColorO()
        
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
    
    @IBAction func onClickB(_ sender: AnyObject) {
        countB += 1
        switch countB {
        case 1:
            viewB1.backgroundColor = UIColor.blue
            break
        case 2:
            viewB2.backgroundColor = UIColor.blue
            break
        case 3:
            viewB3.backgroundColor = UIColor.blue
            break
        default:
            blackColorB()
            blackColorS()
            break
        }
    }
    
    @IBAction func onClickS(_ sender: AnyObject) {
        countS += 1
        switch countS {
        case 1:
            viewS1.backgroundColor = UIColor.yellow
            break
        case 2:
            viewS2.backgroundColor = UIColor.yellow
            break
        default:
            blackColorS()
            blackColorB()
            
            countO += 1
            if countO == 1 {
                viewO1.backgroundColor = UIColor.red
            }else if countO == 2{
                viewO2.backgroundColor = UIColor.red
            }else {
                blackColorO()
            }
            break
        }
    }
    
    @IBAction func onClickO(_ sender: AnyObject) {
        countO += 1
        switch countO {
        case 1:
            viewO1.backgroundColor = UIColor.red
            blackColorB()
            blackColorS()
            break
        case 2:
            viewO2.backgroundColor = UIColor.red
            blackColorB()
            blackColorS()
            break
        default:
            blackColorB()
            blackColorS()
            blackColorO()
            break
        }
    }
    
    func blackColorB(){
        viewB1.backgroundColor = UIColor.black
        viewB2.backgroundColor = UIColor.black
        viewB3.backgroundColor = UIColor.black
        countB = 0
    }
    func blackColorS(){
        viewS1.backgroundColor = UIColor.black
        viewS2.backgroundColor = UIColor.black
        countS = 0
    }
    func blackColorO(){
        viewO1.backgroundColor = UIColor.black
        viewO2.backgroundColor = UIColor.black
        countO = 0
    }
}

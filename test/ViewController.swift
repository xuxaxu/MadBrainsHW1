//
//  ViewController.swift
//  test
//
//  Created by Ксения Каштанкина on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    let maxLimit = 10
    let minLimit = -10
    
    @IBOutlet weak var lblCount: UILabel!
    var curCnt : Int = 0
    @IBOutlet weak var plusBtn: UIButton!
    
    @IBOutlet weak var minusBtn: UIButton!
    @IBAction func touchUp(_ sender: Any) {
        curCnt += 1
        withChange()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        withChange()
    }
    
    @IBAction func touchMinus(_ sender: Any) {
        curCnt -= 1
        withChange()
    }
    func withChange() {
        lblCount.text = String(curCnt)
        
        plusBtn.isEnabled = !(curCnt == maxLimit)
        minusBtn.isEnabled = !(curCnt == minLimit)
    }
    @IBAction func start(_ sender: Any) {
        curCnt = 0
        withChange()
    }
    
}


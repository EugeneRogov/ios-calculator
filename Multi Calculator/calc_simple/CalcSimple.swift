//
//  CalcSimple.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 11.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcSimple: UIViewController {
    
    @IBOutlet weak var btnMc: UIButton!
    @IBOutlet weak var btnMminus: UIButton!
    @IBOutlet weak var bntMplus: UIButton!
    @IBOutlet weak var btnMr: UIButton!
    @IBOutlet weak var btnAc: UIButton!
    @IBOutlet weak var btnLeftBracket: UIButton!
    @IBOutlet weak var btnRightBracket: UIButton!
    @IBOutlet weak var btnDivision: UIButton!
    @IBOutlet weak var btnRoot: UIButton!
    @IBOutlet weak var btnPercent: UIButton!
    @IBOutlet weak var btnPlusMinus: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnDot: UIButton!
    @IBOutlet weak var btnDel: UIButton!
    @IBOutlet weak var btnEqual: UIButton!
    
    @IBAction func btnMc(_ sender: Any) {
        
    }
    @IBAction func btnMminus(_ sender: Any) {
        
    }
    @IBAction func bntMplus(_ sender: Any) {
        
    }
    @IBAction func btnMr(_ sender: Any) {
        
    }
    @IBAction func btnAc(_ sender: Any) {
        
    }
    @IBAction func btnLeftBracket(_ sender: Any) {
        
    }
    @IBAction func btnRightBracket(_ sender: Any) {
        
    }
    @IBAction func btnDivision(_ sender: Any) {
        
    }
    @IBAction func btnRoot(_ sender: Any) {
        
    }
    @IBAction func btnPercent(_ sender: Any) {
        
    }
    @IBAction func btnPlusMinus(_ sender: Any) {
        
    }
    @IBAction func btnMultiply(_ sender: Any) {
        
    }
    @IBAction func btn7(_ sender: Any) {
        
    }
    @IBAction func btn8(_ sender: Any) {
        
    }
    @IBAction func btn9(_ sender: Any) {
        
    }
    @IBAction func btnMinus(_ sender: Any) {
        
    }
    @IBAction func btn4(_ sender: Any) {
        
    }
    @IBAction func btn5(_ sender: Any) {
        
    }
    @IBAction func btn6(_ sender: Any) {
        
    }
    @IBAction func btnPlus(_ sender: Any) {
        
    }
    @IBAction func btn1(_ sender: Any) {
        
    }
    @IBAction func btn2(_ sender: Any) {
        
    }
    @IBAction func btn3(_ sender: Any) {
        
    }
    @IBAction func btn0(_ sender: Any) {
        
    }
    @IBAction func btnDot(_ sender: Any) {
        
    }
    @IBAction func btnDel(_ sender: Any) {
        
    }
    @IBAction func btnEqual(_ sender: Any) {
        self.performSegue(withIdentifier: "segue_calc_simple_settings", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set long click listeners
        btnMc.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(openSettings(_:))))
        btnMminus.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(openHistory(_:))))
        bntMplus.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(sendResult(_:))))
        
    }
    
    @objc func openSettings(_ sender: UIGestureRecognizer) {
        if sender.state == .began {
            self.performSegue(withIdentifier: "segue_calc_simple_settings", sender: nil)
        }
    }
    
    @objc func openHistory(_ sender: UIGestureRecognizer) {
        if sender.state == .began {
            self.performSegue(withIdentifier: "segue_calc_simple_history", sender: nil)
        }
    }
    
    @objc func sendResult(_ sender: UIGestureRecognizer) {
        if sender.state == .began {
            
        }
    }

}

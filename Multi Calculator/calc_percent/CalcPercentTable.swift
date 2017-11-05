//
//  CalcPercentTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 20.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcPercentTable: UITableViewController {

    @IBOutlet weak var tvPercent1: UILabel!
    @IBOutlet weak var etPercent1: UITextField!
    @IBOutlet weak var tvNumber1: UILabel!
    @IBOutlet weak var etNumber1: UITextField!
    @IBOutlet weak var tvResult1: UILabel!
    
    @IBOutlet weak var tvNumber2: UILabel!
    @IBOutlet weak var etNumber2: UITextField!
    @IBOutlet weak var tvNumber2_: UILabel!
    @IBOutlet weak var etNumber2_: UITextField!
    @IBOutlet weak var tvResult2: UILabel!
    
    @IBOutlet weak var tvPercent3: UILabel!
    @IBOutlet weak var etPercent3: UITextField!
    @IBOutlet weak var tvNumber3: UILabel!
    @IBOutlet weak var etNumber3: UITextField!
    @IBOutlet weak var tvResult3: UILabel!
    
    @IBOutlet weak var tvPercent4: UILabel!
    @IBOutlet weak var etPercent4: UITextField!
    @IBOutlet weak var tvNumber4: UILabel!
    @IBOutlet weak var etNumber4: UITextField!
    @IBOutlet weak var tvResult4: UILabel!
    
    @IBAction func etPercent1Listener(_ sender: UITextField) {
        calculate1()
    }
    @IBAction func etNumber1Listener(_ sender: UITextField) {
        calculate1()
    }
    
    @IBAction func etNumber2Listener(_ sender: UITextField) {
        calculate2()
    }
    @IBAction func etNumber2_Listener(_ sender: UITextField) {
        calculate2()
    }
    
    @IBAction func etPercent3Listener(_ sender: UITextField) {
        calculate3()
    }
    @IBAction func etNumber3Listener(_ sender: UITextField) {
        calculate3()
    }
    
    @IBAction func etPercent4Listener(_ sender: UITextField) {
        calculate4()
    }
    @IBAction func etNumber4Listener(_ sender: UITextField) {
        calculate4()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
        NotificationCenter.default.addObserver(self, selector: #selector(CalcPercentTable.clearAllFields), name: NSNotification.Name(rawValue: Constant.NC_CALC_PERCENT_CLEAR), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CalcPercentTable.sendResult), name: NSNotification.Name(rawValue: Constant.NC_CALC_PERCENT_SEND), object: nil)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return NSLocalizedString("how_much_is", comment: "")
        case 1:
            return NSLocalizedString("what_percent_of_the_number_of", comment: "")
        case 2:
            return NSLocalizedString("add", comment: "")
        case 3:
            return NSLocalizedString("subtract", comment: "")
        default:
            return ""
        }
    }
    
    @objc func clearAllFields() {
        etPercent1.text = ""
        etNumber1.text = ""
        tvResult1.text = ""
        
        etNumber2.text = ""
        etNumber2_.text = ""
        tvResult2.text = ""
        
        etPercent3.text = ""
        etNumber3.text = ""
        tvResult3.text = ""
        
        etPercent4.text = ""
        etNumber4.text = ""
        tvResult4.text = ""
    
        self.view.endEditing(true)
    }
    
    @objc func sendResult() {
        
    }
    
    fileprivate func initViews() {
        // set type of keyboard
        etPercent1.keyboardType = UIKeyboardType.decimalPad
        etNumber1.keyboardType = UIKeyboardType.decimalPad
        etNumber2.keyboardType = UIKeyboardType.decimalPad
        etNumber2_.keyboardType = UIKeyboardType.decimalPad
        etPercent3.keyboardType = UIKeyboardType.decimalPad
        etNumber3.keyboardType = UIKeyboardType.decimalPad
        etPercent4.keyboardType = UIKeyboardType.decimalPad
        etNumber4.keyboardType = UIKeyboardType.decimalPad
        
        // localisation
        tvPercent1.text = NSLocalizedString("percent", comment: "")
        tvNumber1.text = NSLocalizedString("number", comment: "")
        
        tvNumber2.text = NSLocalizedString("number", comment: "")
        tvNumber2_.text = NSLocalizedString("number", comment: "")
        
        tvPercent3.text = NSLocalizedString("percent", comment: "")
        tvNumber3.text = NSLocalizedString("number", comment: "")
        
        tvPercent4.text = NSLocalizedString("percent", comment: "")
        tvNumber4.text = NSLocalizedString("number", comment: "")
        
    }
    
    fileprivate func calculate1() {
        Utility.autoZero(textField: etPercent1)
        Utility.autoZero(textField: etNumber1)
        
        if etPercent1.text != "" && etNumber1.text != "" {
            let NameField = "eff"
            let DateField = "dddddd"
            let string = "Name: \(NameField) Date: \(DateField)"
            tvResult1.text = string

        } else {
            tvResult1.text = ""
        }
    }
    
    fileprivate func calculate2() {
        Utility.autoZero(textField: etNumber2)
        Utility.autoZero(textField: etNumber2_)
        
        if etNumber2.text != "" && etNumber2_.text != "" {

            
        } else {
            tvResult2.text = ""
        }
    }
    //tvtvv
    fileprivate func calculate3() {
        Utility.autoZero(textField: etPercent3)
        Utility.autoZero(textField: etNumber3)
        
        if etPercent3.text != "" && etNumber3.text != "" {
            
            
        } else {
            tvResult3.text = ""
        }
    }
    
    fileprivate func calculate4() {
        Utility.autoZero(textField: etPercent4)
        Utility.autoZero(textField: etNumber4)
        
        if etPercent4.text != "" && etNumber4.text != "" {
            
            
        } else {
            tvResult4.text = ""
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

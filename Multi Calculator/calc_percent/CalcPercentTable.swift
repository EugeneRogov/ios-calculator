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
        
    }
    @IBAction func etNumber1Listener(_ sender: UITextField) {
        
    }
    
    @IBAction func etNumber2Listener(_ sender: UITextField) {
        
    }
    @IBAction func etNumber2_Listener(_ sender: UITextField) {
        
    }
    
    @IBAction func etPercent3Listener(_ sender: UITextField) {
        
    }
    @IBAction func etNumber3Listener(_ sender: UITextField) {
        
    }
    
    @IBAction func etPercent4Listener(_ sender: UITextField) {
        
    }
    @IBAction func etNumber4Listener(_ sender: UITextField) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
        NotificationCenter.default.addObserver(self, selector: #selector(CalcPercentTable.clearAllFields), name: NSNotification.Name(rawValue: Constant.NC_CALC_PERCENT_CLEAR), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CalcPercentTable.sendResult), name: NSNotification.Name(rawValue: Constant.NC_CALC_PERCENT_SEND), object: nil)
        
//        let NameField = "eff"
//        let DateField = "dddddd"
//        
//        let string = "Name: \(NameField) \nDate: \(DateField)"
//        
//        print(string)
        
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
        tvPercent1.text = ""
        etPercent1.text = ""
        tvNumber1.text = ""
        etNumber1.text = ""
        tvResult1.text = ""
        
        tvNumber2.text = ""
        etNumber2.text = ""
        tvNumber2_.text = ""
        etNumber2_.text = ""
        tvResult2.text = ""
        
        tvPercent3.text = ""
        etPercent3.text = ""
        tvNumber3.text = ""
        etNumber3.text = ""
        tvResult3.text = ""
        
        tvPercent4.text = ""
        etPercent4.text = ""
        tvNumber4.text = ""
        etNumber4.text = ""
        tvResult4.text = ""
    }
    
    @objc func sendResult() {
        
    }
    
    fileprivate func initViews() {
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
    
    fileprivate func calculate() {
     
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

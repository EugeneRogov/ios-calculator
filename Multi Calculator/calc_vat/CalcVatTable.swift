//
//  CalcVatTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 20.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcVatTable: UITableViewController {
    
    @IBOutlet weak var tvRateOfVat: UILabel!
    @IBOutlet weak var etRateOfVat: UITextField!
    @IBOutlet weak var tvAmount: UILabel!
    @IBOutlet weak var etAmount: UITextField!

    @IBOutlet weak var tvAddSumVat: UILabel!
    @IBOutlet weak var tvAddSumVatResult: UILabel!
    @IBOutlet weak var tvAddSumWithVat: UILabel!
    @IBOutlet weak var tvAddSumWithVatResult: UILabel!
    
    @IBOutlet weak var tvExcludeSumVat: UILabel!
    @IBOutlet weak var tvExcludeSumVatResult: UILabel!
    @IBOutlet weak var tvExcludeSumWithoutVat: UILabel!
    @IBOutlet weak var tvExcludeSumWithoutVatResult: UILabel!

    @IBAction func rateOfVatListener(_ sender: UITextField) {
        calculate()
    }
    @IBAction func amountListener(_ sender: UITextField) {
        calculate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0:
                return ""
            case 1:
                return NSLocalizedString("add_vat", comment: "")
            case 2:
                return NSLocalizedString("exclude_vat", comment: "")
            default:
                return ""
        }
    }
    
    fileprivate func initViews() {
        // set type of keyboard
        etRateOfVat.keyboardType = UIKeyboardType.decimalPad
        etAmount.keyboardType = UIKeyboardType.decimalPad
        
        // localisation
        tvRateOfVat.text = NSLocalizedString("rate_of_vat", comment: "")
        tvAmount.text = NSLocalizedString("amount", comment: "")
        
        tvAddSumVat.text = NSLocalizedString("sum_vat", comment: "")
        tvAddSumWithVat.text = NSLocalizedString("sum_with_vat", comment: "")
        
        tvExcludeSumVat.text = NSLocalizedString("sum_vat", comment: "")
        tvExcludeSumWithoutVat.text = NSLocalizedString("sum_without_vat", comment: "")
    }
    
    fileprivate func calculate() {
        // auto zero
        if etRateOfVat.text == "." {
            etRateOfVat.text = "0."
        }
        if etAmount.text == "." {
            etAmount.text = "0."
        }
        
        if etRateOfVat.text != "" && etAmount.text != "" {
            let vat = Double(etRateOfVat.text!)
            let sum = Double(etAmount.text!)
            
            // add vat
            let sumVat = ((vat! * sum!) / 100)
            tvAddSumVatResult.text = String(sumVat)
            tvAddSumWithVatResult.text = String(sum! + sumVat)
            
            // exclude vat
            let sumWithoutVat = ((vat! * sum!) / (100 + vat!))
            tvExcludeSumVatResult.text = String(sumWithoutVat)
            tvExcludeSumWithoutVatResult.text = String(sum! - sumWithoutVat)
        } else {
            clearAllFields()
        }
    }
    
    fileprivate func clearAllFields() {
        tvAddSumVatResult.text = ""
        tvAddSumWithVatResult.text = ""
        tvExcludeSumVatResult.text = ""
        tvExcludeSumWithoutVatResult.text = ""
    }
    
}

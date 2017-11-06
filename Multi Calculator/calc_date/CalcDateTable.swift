//
//  CalcDateTable.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 26.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit

class CalcDateTable: UITableViewController {
    
    @IBOutlet weak var tvYears: UILabel!
    @IBOutlet weak var tvYearsResult: UILabel!
    @IBOutlet weak var tvMonths: UILabel!
    @IBOutlet weak var tvMonthsResult: UILabel!
    @IBOutlet weak var tvWeeks: UILabel!
    @IBOutlet weak var tvWeeksResult: UILabel!
    @IBOutlet weak var tvDays: UILabel!
    @IBOutlet weak var tvDaysResult: UILabel!
    @IBOutlet weak var tvHours: UILabel!
    @IBOutlet weak var tvHoursResult: UILabel!
    @IBOutlet weak var tvMinutes: UILabel!
    @IBOutlet weak var tvMinutesResult: UILabel!
    @IBOutlet weak var tvSeconds: UILabel!
    @IBOutlet weak var tvSecondsResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
        NotificationCenter.default.addObserver(self, selector: #selector(CalcDateTable.clearAllFields), name: NSNotification.Name(rawValue: Constant.NC_CALC_VAT_CLEAR), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CalcDateTable.sendResult), name: NSNotification.Name(rawValue: Constant.NC_CALC_VAT_CLEAR), object: nil)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return ""
        case 1:
            return NSLocalizedString(StringIDs.total, comment: "")
        default:
            return ""
        }
    }
    
    @objc func clearAllFields() {

    }
    
    @objc func sendResult() {
        
    }
    
    fileprivate func initViews() {
        // localisation
        tvYears.text = NSLocalizedString(StringIDs.years, comment: "")
        tvMonths.text = NSLocalizedString(StringIDs.months, comment: "")
        tvWeeks.text = NSLocalizedString(StringIDs.weeks, comment: "")
        tvDays.text = NSLocalizedString(StringIDs.days, comment: "")
        tvHours.text = NSLocalizedString(StringIDs.hours, comment: "")
        tvMinutes.text = NSLocalizedString(StringIDs.minutes, comment: "")
        tvSeconds.text = NSLocalizedString(StringIDs.seconds, comment: "")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

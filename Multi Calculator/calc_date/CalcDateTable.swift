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
        
        
    }
    
    fileprivate func initViews() {
        tvYears.text = NSLocalizedString("years", comment: "")
        tvMonths.text = NSLocalizedString("months", comment: "")
        tvWeeks.text = NSLocalizedString("weeks", comment: "")
        tvDays.text = NSLocalizedString("days", comment: "")
        tvHours.text = NSLocalizedString("hours", comment: "")
        tvMinutes.text = NSLocalizedString("minutes", comment: "")
        tvSeconds.text = NSLocalizedString("seconds", comment: "")
    }
    
}

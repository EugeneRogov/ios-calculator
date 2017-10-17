//
//  About.swift
//  Multi Calculator
//
//  Created by Евгений Рогов on 15.10.17.
//  Copyright © 2017 XDPI Lab. All rights reserved.
//

import UIKit
import MessageUI

class About: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var tvText: UITextView!
    @IBOutlet weak var btnSendEmail: UIButton!
    @IBOutlet weak var ivIcon: UIImageView!
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var version: UILabel!
    
    @IBAction func btnSenEmail(_ sender: Any) {
        let mailComposerViewController = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposerViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    fileprivate func initViews() {
        appName.text = NSLocalizedString("app_name", comment: "")
        let versionNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
        version.text = NSLocalizedString("version", comment: "") + " " + versionNumber
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["xdpilab@gmail.com"])
        mailComposerVC.setSubject("Debug info, Calculator")
//        mailComposerVC.setMessageBody("How are you", isHTML: false)
        
        return mailComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "OK", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func  mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}

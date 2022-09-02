//
//  CommonFunction.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import Foundation
import UIKit


var selectedLanguage : StringConstant.Languages = .english
var tableViewReloadData : ((_ loc : String )-> Void )?
class CommonFunctions {
    static let shared = CommonFunctions()
    
     func alert(_ vc : UIViewController) {
        
         
        let alert = UIAlertController(title: "Notice", message: "Select the Language", preferredStyle: UIAlertController.Style.alert)
            
        // Create the actions
        let enAction = UIAlertAction(title: "English", style: UIAlertAction.Style.default) {
            UIAlertAction in
            selectedLanguage = .english
            tableViewReloadData?(StringConstant.LanguageLocString.english.rawValue)
        }
        let esAction = UIAlertAction(title: "Spanish", style: UIAlertAction.Style.default) {
            UIAlertAction in
            selectedLanguage = .spanish
            tableViewReloadData?(StringConstant.LanguageLocString.spanish.rawValue)
        }
        let ebAction = UIAlertAction(title: "Arabic", style: UIAlertAction.Style.default) {
            UIAlertAction in
            selectedLanguage = .arabic
            tableViewReloadData?(StringConstant.LanguageLocString.arabic.rawValue)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
        }
        // Add the actions
        alert.addAction(enAction)
        alert.addAction(esAction)
        alert.addAction(ebAction)
        alert.addAction(cancelAction)
         
        vc.present(alert, animated: true, completion: nil)
    }
}

//
//  ViewModel.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import Foundation
import UIKit

class ViewModel {
    let userDefaults = UserDefaults.standard
    
    let listOfFormData = [HomeData(title: LocStrConst.india.rawValue,  shortDesc: LocStrConst.countryOfheritage.rawValue, desc: LocStrConst.indiaishometothefamousHoliFestival.rawValue),
                          HomeData(title: LocStrConst.america.rawValue, shortDesc: LocStrConst.centerofEntertainment.rawValue, desc: LocStrConst.americaIsHomeToManyNaturalWonders.rawValue),
                          HomeData(title: LocStrConst.china.rawValue, shortDesc: LocStrConst.chinahasavarietyofbeliefs.rawValue, desc: LocStrConst.efficiallyChinahas56groups.rawValue),
                          HomeData(title: LocStrConst.russia.rawValue,   shortDesc: LocStrConst.russiaHas12ActiveVolcanos.rawValue, desc: LocStrConst.tetrisWasInventedinRussia.rawValue),
                          HomeData(title: LocStrConst.dubai.rawValue, shortDesc: LocStrConst.itsaveryyoungcity.rawValue, desc: LocStrConst.ithasaUNESCOWorldHeritageSite.rawValue),
                          HomeData(title: LocStrConst.spain.rawValue, shortDesc: LocStrConst.theEUssecondlargestcountry.rawValue, desc: LocStrConst.nudityislegalinSpain.rawValue)]
    
    func getAllData() -> [HomeData] {
        return listOfFormData
    }
    
    func fetchCurrentLanguage() {
        userDefaults.synchronize()
        let value = userDefaults.value(forKey: StringConstant.Key.lang.rawValue) as? String
        if value  == StringConstant.LanguageLocString.arabic.rawValue {
            selectedLanguage = .arabic
        }
        else if value  == StringConstant.LanguageLocString.spanish.rawValue {
            selectedLanguage = .spanish
        }
        else {
            selectedLanguage = .english
        }
    }
    func setCurrentLanguage(_ loc : String) {
        userDefaults.synchronize()
        userDefaults.set(loc,forKey: StringConstant.Key.lang.rawValue)
    }
}

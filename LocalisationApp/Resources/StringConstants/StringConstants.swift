//
//  StringConstants.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import Foundation

enum StringConstant {
    static let blankSpace = ""
    
    enum TableViewCellId : String {
        case homeTableCell = "HomeTableCell"
    }
    enum Languages : CaseIterable {
        case english
        case spanish
        case arabic
    }
    enum LanguageLocString : String {
        case ofType = "lproj"
        case english = "en"
        case spanish = "es"
        case arabic = "ar"
    }
    enum Numerics : Int {
       case TableRowHeight = 120
    }
    enum Key : String {
        case lang = "lang"
    }
    
}

enum LocStrConst : String {
    case india = "India"
    case america = "America"
    case china = "China"
    case russia = "Russia"
    case dubai = "Dubai"
    case spain = "Spain"
    case countryOfheritage = "Country Of heritage"
    case centerofEntertainment = "Center of Entertainment"
    case chinahasavarietyofbeliefs = "China has a variety of beliefs."
    case russiaHas12ActiveVolcanos = "Russia Has 12 Active Volcanos"
    case itsaveryyoungcity = "It's a very young city."
    case theEUssecondlargestcountry = "The EU's second-largest country"
    case indiaishometothefamousHoliFestival = "India is home to the famous Holi Festival."
    case americaIsHomeToManyNaturalWonders = "America Is Home To Many Natural Wonders"
    case efficiallyChinahas56groups = "Officially China has 56 ethnic groups"
    case tetrisWasInventedinRussia = "Tetris Was Invented in Russia."
    case ithasaUNESCOWorldHeritageSite = "It has a UNESCO World Heritage Site."
    case nudityislegalinSpain = "Nudity is legal in Spain."
}

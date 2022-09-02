//
//  String + Extensions.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import Foundation
//localization of language
extension String {
    private func localiseString(loc:String) -> String {
        let path = Bundle.main.path(forResource: loc, ofType: StringConstant.LanguageLocString.ofType.rawValue)
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: StringConstant.blankSpace, comment: StringConstant.blankSpace)
    }
    
}
extension String {
    func localizedLanguage() -> String {
          switch selectedLanguage {
        case .english :
                return self.localiseString(loc: "en")
        case .spanish :
                return self.localiseString(loc: "es")
        case .arabic :
                return self.localiseString(loc: "ar")
       }
    }
}

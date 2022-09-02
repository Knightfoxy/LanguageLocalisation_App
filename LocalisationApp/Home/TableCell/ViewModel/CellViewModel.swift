//
//  CellViewModel.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import Foundation
import UIKit

class CellViewModel {

    var data : HomeData = HomeData(title: StringConstant.blankSpace, shortDesc: StringConstant.blankSpace, desc: StringConstant.blankSpace)
    
    func getCellData() -> HomeData {
          return data
    }
}


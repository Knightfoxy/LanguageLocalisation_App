//
//  HomeTableCell.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import UIKit

class HomeTableCell: UITableViewCell {
    
    //MARK: - Stoed Properties
    var objVM = CellViewModel()
    
    //MARK: - IB Outlets
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var shortDescLbl: UILabel!
    @IBOutlet weak var decsLbl: UILabel!
    
    //MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        leftAlignment()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        displayCell()
        if selectedLanguage == StringConstant.Languages.arabic {
            rightAlignment()
        }
    }
    //MARK: - Custom Methods
    func rightAlignment() {
        titleLbl.rightAlign()
        decsLbl.rightAlign()
        shortDescLbl.rightAlign()
    }
    func leftAlignment() {
        titleLbl.leftAlign()
        decsLbl.leftAlign()
        shortDescLbl.leftAlign()
    }
}
//MARK: - Extension
extension HomeTableCell {
    private func displayCell() {
        titleLbl.text = objVM.getCellData().title.localizedLanguage()
        decsLbl.text = objVM.getCellData().desc.localizedLanguage()
        shortDescLbl.text = objVM.getCellData().shortDesc.localizedLanguage()
    }
}

//
//  ViewController.swift
//  LocalisationApp
//
//  Created by Ayush Mishra on 18/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Stored Properties
    var objVM  = ViewModel()
    //MARK: - IB Outlets
    @IBOutlet private(set) weak var baseTableView: UITableView!
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        objVM.fetchCurrentLanguage()
        tableViewReloadData = { loc in
            self.objVM.setCurrentLanguage(loc)
            self.baseTableView.reloadData() 
        }
    }
    // MARK: - IB Actions
    @IBAction func changeBtn(_ sender: Any) {
        CommonFunctions.shared.alert(self)
    }
}
//MARK: - Extension + Tableview Delegates
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return StringConstant.blankSpace
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objVM.getAllData().count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(StringConstant.Numerics.TableRowHeight.rawValue)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = baseTableView.dequeueReusableCell(withIdentifier: StringConstant.TableViewCellId.homeTableCell.rawValue, for: indexPath) as? HomeTableCell {
            cell.objVM.data = objVM.getAllData()[indexPath.row]
            return cell
        } else {
            return UITableViewCell()
        }
    }
    func registerNib(_ cellIdentifier : String,_ baseTableView : UITableView) {
        let cellNib = UINib(nibName: cellIdentifier , bundle: nil)
        baseTableView.register(cellNib, forCellReuseIdentifier: cellIdentifier)
    }
    func initialSetup() {
        self.baseTableView.delegate = self
        self.baseTableView.dataSource = self
        registerNib(StringConstant.TableViewCellId.homeTableCell.rawValue, baseTableView)
    }
}

//
//  ThemeViewController.swift
//  Assignment01
//
//  Created by C Karthika on 21/03/2022.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var themeTableView: UITableView!
    
    let themeNames = ["Original Theme", "Red Theme", "Blue Theme", "Green Theme"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        self.themeTableView.delegate   = self
        self.themeTableView.dataSource = self
    }
}

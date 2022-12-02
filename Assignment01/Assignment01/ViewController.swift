//
//  ViewController.swift
//  Assignment01
//
//  Created by C Karthika on 10/03/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var TeamNameLabel: UILabel!
    @IBOutlet weak var LogoImageView: UIImageView!
    @IBOutlet weak var themeButton: UIButton!
    
    @IBOutlet weak var NextScreenButton: UIButton!
    
    let themeManager = ThemeManager.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catchNotification()
        
        NextScreenButton.layer.cornerRadius = NextScreenButton.layer.frame.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        applyTheme()
    }
    
    func applyTheme() {
        self.view.backgroundColor = ThemeManager.current.primaryColor
        self.TeamNameLabel.textColor = ThemeManager.current.labelColor
    }
    
    func catchNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: NSNotification.Name("ThemeUpdate"), object: nil)
    }
    
    @objc
    func reloadTheme(){
        applyTheme()
    }
}



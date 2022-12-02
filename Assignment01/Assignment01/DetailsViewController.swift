//
//  DetailsViewController.swift
//  Assignment01
//
//  Created by C Karthika on 12/03/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var detailedView: UITextView!
    
    
    @IBAction func backTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var personData : Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailedView.text = personData.details
        
        detailedView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue3"{
            
            //get the destination
            let destination = segue.destination as! webViewController
            
            //push data
            destination.personData = self.personData
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        applyTheme()
    }
    
    func applyTheme() {
        self.view.backgroundColor = ThemeManager.current.primaryColor
        detailedView.backgroundColor = ThemeManager.current.secondaryColor
    }
    
    func catchNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: NSNotification.Name("ThemeUpdate"), object: nil)
    }
    
    @objc
    func reloadTheme(){
        applyTheme()
    }
    
}

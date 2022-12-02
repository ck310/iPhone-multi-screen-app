//
//  InfoViewController.swift
//  Assignment01
//
//  Created by C Karthika on 10/03/2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    //outlets
    
    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var positionTextField: UITextField!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var dobTextField: UITextField!
    
    @IBOutlet weak var debutTextField: UITextField!
    
    @IBOutlet weak var leftTextField: UITextField!
    
    var personData : Person!
    
    func presentPersonDataToViews(){
        
        personImageView.image = UIImage(named: personData.image)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // pass the data to outlets
        presentPersonDataToViews()

        
        
        // Do any additional setup after loading the view.
        nameTextField.text     = personData.name
        positionTextField.text = personData.position
        countryTextField.text  = personData.country
        dobTextField.text      = personData.DOB
        debutTextField.text    = personData.debut
        leftTextField.text     = personData.left
        
        
        personImageView.layer.masksToBounds = true
        personImageView.layer.cornerRadius  = personImageView.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue2"{
            
            //get the destination
            let destination = segue.destination as! DetailsViewController
            
            //push data
            destination.personData = self.personData
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        applyTheme()
    }
    
    func applyTheme() {
        self.view.backgroundColor = ThemeManager.current.primaryColor
        
    }
    
    func catchNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: NSNotification.Name("ThemeUpdate"), object: nil)
    }
    
    @objc
    func reloadTheme() {
        applyTheme()
    }
}

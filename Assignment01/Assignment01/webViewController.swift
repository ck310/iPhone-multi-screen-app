//
//  webViewController.swift
//  Assignment01
//
//  Created by C Karthika on 12/03/2022.
//
import UIKit
import WebKit

class webViewController: UIViewController {
    
    var personData : Person!
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var webViewOutlet: WKWebView!
    
    func presentPersonDataToViews(){
        
        if let url = URL(string: personData.website) {
        
            UIApplication.shared.open(url)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentPersonDataToViews()
    
    }
    
}

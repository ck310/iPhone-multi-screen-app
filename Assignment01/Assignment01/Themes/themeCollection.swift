//
//  themeCollection.swift
//  Assignment01
//
//  Created by C Karthika on 20/03/2022.
//

import UIKit

struct OriginalTheme: ThemeProtocol {
    var primaryColor: UIColor   = UIColor(named: "0-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "0-SecondaryColor")!
    var labelColor: UIColor     = UIColor(named: "LabelColor-2")!
    var themeName: String       = "Original Theme"
    
}

struct RedTheme: ThemeProtocol {
    var primaryColor: UIColor   = UIColor(named: "1-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "1-SecondaryColor")!
    var labelColor: UIColor     = UIColor(named: "LabelColor-1")!
    var themeName: String       = "Red Theme"
}

struct BlueTheme: ThemeProtocol{
    var primaryColor: UIColor   = UIColor(named: "2-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "2-SecondaryColor")!
    var labelColor: UIColor     = UIColor(named: "LabelColor-1")!
    var themeName: String       = "Blue Theme"
}

struct GreenTheme: ThemeProtocol{
    var primaryColor: UIColor   = UIColor(named: "3-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "3-SecondaryColor")!
    var labelColor: UIColor     = UIColor(named: "LabelColor-1")!
    var themeName: String       = "Green Theme"
}
   

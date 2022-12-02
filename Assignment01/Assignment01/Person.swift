//
//  Person.swift
//  Person Data
//
//  Created by C Karthika on 06/03/2022.
//

import Foundation
import WebKit

class Person{
    // properties
    var name     : String
    var position : String
    var country  : String
    var DOB      : String
    var debut    : String
    var left     : String
    var image    : String
    var details  : String
    var website  : String
    
    
    // init functions
    
    init(){
        self.name     = "No Name"
        self.position = "Not known"
        self.country  = "No country"
        self.DOB      = "No DOB"
        self.debut    = "No info"
        self.left     = "No Data"
        self.image    = "No Image"
        self.details  = "No Info"
        self.website  = "No link"
    }
    
    init(name:String, position:String, country:String, DOB:String, debut:String, left:String, image:String, details:String, website:String){
        self.name     = name
        self.position = position
        self.country  = country
        self.DOB      = DOB
        self.debut    = debut
        self.left     = left
        self.image    = image
        self.details  = details
        self.website  = website
    }
    
    // some more methods if required
    
}

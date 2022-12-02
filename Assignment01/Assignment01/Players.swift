//
//  People.swift
//  Person Data
//
//  Created by C Karthika on 06/03/2022.
//

import Foundation

class Players{
    
    var data : [Person]!
    
    
    init(fromXMLFile:String){
        let parser = XMLPlayerParser(name: fromXMLFile)
        parser.parsing()
        
        self.data = parser.playerData
    }
    
    //methods
    
    func dataLength()->Int{
        return data.count
    }
    
    func personData(index:Int)->Person{
        return data[index]
    }
    
}

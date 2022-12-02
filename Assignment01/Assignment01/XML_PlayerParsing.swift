//
//  XML_PeopleParsing.swift
//  People Table
//
//  Created by C Karthika on 06/03/2022.
//

import Foundation

class XMLPlayerParser : NSObject, XMLParserDelegate{
    
    // property and init
    var name : String
    init(name:String){self.name = name}
    
    // vars to get the data from xml tags
    var pName, pPosition, pCountry, pDOB, pDebut, pLeft, pImage, pDetails, pWebsite : String!
    
    let tags = ["name", "position", "country", "DOB", "debut", "left", "image", "details", "website"]
    
    // vars to spy on data
    var elementId = -1
    var passData = false
    
    // vars to manage data from xml
    var playerData = [Person]()
    var personData : Person!
    
    // parser
    var parser = XMLParser()
    
    // override the delegate methods
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        // check passdata and element id
        if passData{
            switch elementId {
            case 0: pName     = string
            case 1: pPosition = string
            case 2: pCountry  = string
            case 3: pDOB      = string
            case 5: pDebut    = string
            case 6: pLeft     = string
            case 7: pImage    = string
            case 8: pDetails  = string
            case 9: pWebsite  = string
                
            default: break
            }
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        //check the tags and block the spies
        if tags.contains(elementName) {
            passData = false
            elementId = -1
        }
        
        //check end tag person
        if elementName == "person"{
            
            //make person data
            personData = Person(name: pName, position: pPosition, country: pCountry, DOB: pDOB, debut: pDebut, left: pLeft, image: pImage, details: pDetails, website: pWebsite)
            
            //append personData to playerData
            playerData.append(personData)
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        // check if elementName is in tags
        if tags.contains(elementName) {
            passData = true
            switch elementName {
            case "name"       : elementId = 0
            case "position"   : elementId = 1
            case "country"    : elementId = 2
            case "DOB"        : elementId = 3
            case "debut"      : elementId = 5
            case "left"       : elementId = 6
            case "image"      : elementId = 7
            case "details"    : elementId = 8
            case "website"    : elementId = 9
               
               default: break
            }
        }
    }
    
    // start parsing
    func parsing(){
        
        //get the path to xml file
        let bundleUrl = Bundle.main.bundleURL
        let fileURL = URL(fileURLWithPath: self.name, relativeTo: bundleUrl)
        
        parser = XMLParser(contentsOf: fileURL)!
        parser.delegate = self
        
        parser.parse()
    }
    
    
    
}

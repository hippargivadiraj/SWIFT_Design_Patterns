//
//  HtmlBuilder.swift
//  BuilderPattern
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import Foundation
class HtmlBuilder : CustomStringConvertible
{
    private let rootName : String
    var root = HtmlElement()
    
    init(rootName : String){
        self.rootName = rootName
        root.name = rootName
    }
        func addChild (name : String, text: String){
    
            let e = HtmlElement(name,  text)
            root.elements.append(e)
    
        }
    
    var description: String
    {
        return root.description
}
    
    func clear(){
       root = HtmlElement(rootName, "")
        
    }
}

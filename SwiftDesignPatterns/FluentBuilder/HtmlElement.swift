//
//  HtmlElelemt.swift
//  BuilderPattern
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import Foundation
class HtmlElement : CustomStringConvertible {
    var name : String = ""
    var text :  String = ""
    var elements = [HtmlElement]()
    private let indentSize = 2
    
    init(){}
    init(_  name : String , _ text : String){
        self.name = name
        self.text = text
    }
    
    
    private func description (  _ indent : Int) -> String{
        var buffer = ""
        let i = String(repeating: " ", count: indent)
        buffer += i + "<\(name)>\n"
        if !text.isEmpty {
            buffer += String(repeating: " ", count: (indent + 1))
            buffer += text
            buffer += "\n"
        }
        for e in elements {
            buffer += e.description(indent+1)
        }
        buffer += "\(i)<\(name)>\n"
        
        return buffer
    }
    
    public var description: String {
        return description( 0 )
    }
}


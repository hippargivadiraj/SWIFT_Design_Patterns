//
//  Person.swift
//  FacetedBuilder
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible
{
  
    
    //Address Fields
    var street = ""
    var city = ""
    var zip = ""
    
    //Company Fields
    var company = ""
    var position = ""
    var income = 0
    
    var description: String {
       
        return " Person lives \(street) in \(city) at \(zip). Works in \(company) position \(position) with Salary \(income)"
        
    }
    
}

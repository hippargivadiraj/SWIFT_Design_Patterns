//
//  PersonBuilder.swift
//  FacetedBuilder
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import Foundation
class PersonBuilder
{
  var person = Person()
    var lives : PersonAddressBuilder
    {
        return PersonAddressBuilder(person)
        
    }
    var works : PersonJobBuilder
    {
        return PersonJobBuilder(person)
        
    }
    func build() -> Person
    {
        return person
    }
}

class PersonAddressBuilder :PersonBuilder
{
    internal init ( _ person : Person)
    {
        super.init()
        self.person = person
    }
    func at( _ streetAddress: String) ->PersonAddressBuilder
    {
        person.street = streetAddress
        return self
    }
    func atzip( _ zip: String) ->PersonAddressBuilder
    {
        person.zip = zip
        return self
    }
    func inCity( _ city: String) ->PersonAddressBuilder
    {
        person.city = city
        return self
    }
    
    
}

class PersonJobBuilder :PersonBuilder
{
    internal init ( _ person : Person)
    {
        super.init()
        self.person = person
    }
    func atCompany( _ company: String) ->PersonJobBuilder
    {
        person.company = company
        return self
    }
    func inPosition( _ position: String) ->PersonJobBuilder
    {
        person.position = position
        return self
    }
    func forSalary( _ salary: Int) ->PersonJobBuilder
    {
        person.income = salary
        return self
    }
    
    
}

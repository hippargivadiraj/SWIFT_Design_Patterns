//
//  ViewController.swift
//  FacetedBuilder
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pb = PersonBuilder()
        let p = pb.lives.at("123 SomeStreet")
                        .inCity("Munbai")
                        .atzip("1275675")
                    .works.atCompany("LANDT")
                            .inPosition("Supervisor")
                            .forSalary(20000)
        .build()
        print(p)
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


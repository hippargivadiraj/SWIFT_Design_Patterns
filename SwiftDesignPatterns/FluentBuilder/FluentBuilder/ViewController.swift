//
//  ViewController.swift
//  FluentBuilder
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //THIS IS FLUENT Builder, though it gives a warning: Result of call to 'addChild(name:text:)' is unused
        
        let builder = HtmlBuilder(rootName: "ul")
        builder.addChild(name: "li", text: "Hello")
                .addChild(name: "li", text: "Word")
                .addChild(name: "li", text: "Of FluentBuilder")
        // builder.clear()
        print(builder.description)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


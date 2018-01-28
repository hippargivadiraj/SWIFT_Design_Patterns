//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Leadconsultant on 1/27/18.
//  Copyright © 2018 Leadconsultant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let builder = HtmlBuilder(rootName: "ul")
        builder.addChild(name: "li", text: "Hello")
        builder.addChild(name: "li", text: "Word")
       // builder.clear()
        print(builder.description)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


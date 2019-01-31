//
//  ViewController.swift
//  switchLabel
//
//  Created by Magnus Kruschwitz on 31.01.19.
//  Copyright © 2019 Magnus Kruschwitz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var labelOne: NSTextField!
    @IBOutlet weak var labelTwo: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func switchText(_ sender: NSButton) {
        var tmpString: String
        
        tmpString = labelOne.stringValue
        labelOne.stringValue = labelTwo.stringValue
        labelTwo.stringValue = tmpString
    }
    
    @IBAction func closeApplication(_ sender: NSButton) {
        NSApplication.shared.terminate(self)
    }
}


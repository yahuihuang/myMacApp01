//
//  ViewController.swift
//  myMacApp01
//
//  Created by grace on 2020/1/4.
//  Copyright © 2020 grace. All rights reserved.
//

import Cocoa
import AVFoundation

class ViewController: NSViewController, NSTableViewDelegate {

    @IBOutlet weak var textField: NSTextField!
    let synth = AVSpeechSynthesizer()
    
    @IBOutlet weak var playlistTableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func buttonClickAction(_ sender: NSButton) {
//        print("button Click !")
//
//        var text = textField.stringValue
//        if text == "" {
//            text = "寫些字吧!"
//        }
//
//        let myUtterance = AVSpeechUtterance(string: text)
//        myUtterance.voice = AVSpeechSynthesisVoice(language: "zh-tw")
//        myUtterance.rate = 0.1
//        synth.speak(myUtterance)
        let openPanel = NSOpenPanel()
        openPanel.allowedFileTypes = ["mp3", "plist"]
        openPanel.beginSheetModal(for: self.view.window!) { (response) in
            print(openPanel.url?.lastPathComponent)
            self.textField.stringValue = openPanel.url!.lastPathComponent
        }
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 2;
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        
    }
}


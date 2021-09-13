//
//  ViewController.swift
//  SwiftLocalization04
//
//  Created by Ata Anıl Turgay on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloLabel = UILabel(frame: CGRect(x: 20,
                                               y: 100,
                                               width: 100,
                                               height: 40))
        helloLabel.textColor = .black
        helloLabel.text = "hello_message".localized(with: "")
        self.view.addSubview(helloLabel)
    }
}


extension String {
    func localized(with comment: String = "") -> String {
        return NSLocalizedString(self,
                                 tableName: "StringTable",
                                 bundle: Bundle.main,
                                 value: "",
                                 comment: comment)
    }
}

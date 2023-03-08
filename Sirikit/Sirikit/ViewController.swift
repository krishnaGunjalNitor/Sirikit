//
//  ViewController.swift
//  Sirikit
//
//  Created by Krishna Gunjal on 08/03/23.
//

import UIKit
import IntentsUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSiriButton(to: self.view)
    }

    func addSiriButton(to view: UIView) {
     if #available(iOS 12.0, *) {
         let button = INUIAddVoiceShortcutButton(style: .whiteOutline)
             button.shortcut = INShortcut(intent: intent )
             button.delegate = self
             button.translatesAutoresizingMaskIntoConstraints = false
             view.addSubview(button)
             view.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
             view.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
         }
     }
     
     func showMessage() {
         let alert = UIAlertController(title: "Done!", message: "This is your first shortcut action!", preferredStyle: UIAlertController.Style.alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
         self.present(alert, animated: true, completion: nil)
     }
}


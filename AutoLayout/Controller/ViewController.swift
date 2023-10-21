//
//  ViewController.swift
//  AutoLayout
//
//  Created by kraujalis.rolandas on 20/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var booksImage: UIImageView!
    @IBOutlet var styleOutletsCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in button.layer.cornerRadius = 12
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.gray.cgColor
        }
    }

    @IBAction func buttonAAction(_ sender: Any) {
        styleOutletsCollection[2].isHidden = true
    }
    @IBAction func buttonBAction(_ sender: Any) {
        styleOutletsCollection[2].isHidden = false
    }
    @IBAction func buttonEAction(_ sender: Any) {
        let newColor: UIColor = UIColor(_colorLiteralRed: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        view.backgroundColor = newColor
    }
    @IBAction func buttonDAction(_ sender: Any) {
        if booksImage.image == UIImage(systemName: "pencil") {
            booksImage.image = UIImage(systemName: "books.vertical.circle.fill")
        } else {
            booksImage.image = UIImage(systemName: "pencil")
        }
//        booksImage.image = UIImage(systemName: "pencil")
//        booksImage.image = UIImage(systemName: "books.vertical.circle.fill")
    }
    
    
#warning("Button A,B should be on the bottom of the screen, CDE, on the top")
#warning("add button style: icon, title, color")
#warning("when press on button I'm hiding some buttons, or changing the view color, image")
}


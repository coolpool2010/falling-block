//
//  ViewController.swift
//  Falling block game
//
//  Created by crazy dev on 11/18/18.
//  Copyright © 2018 Rain. All rights reserved.
//

import UIKit

let COLUMNS = 6

class ViewController: UIViewController {

    @IBOutlet weak var blockArea: UIView!
    
    override func viewDidLoad() {
        initBoard()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var vChannels = [UIView]()
    lazy var cSize = CGSize(width: blockArea.frame.width / CGFloat(COLUMNS), height: blockArea.frame.height)
    
    func initBoard() {
        for i in 0 ..< COLUMNS {
            let oneView = UIView(frame: CGRect(origin: CGPoint(x: (self.blockArea.frame.origin.x + CGFloat(i) * self.cSize.width), y: self.blockArea.frame.origin.y), size: cSize))
            oneView.tintColor = .red
            self.blockArea.addSubview(oneView)
            self.blockArea.bringSubviewToFront(oneView)
            vChannels.append(oneView)
        }
    }
    
//    lazy var vView1 = UIView(frame: CGRect(origin: blockArea.frame.origin, size: self.cSize))
    
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

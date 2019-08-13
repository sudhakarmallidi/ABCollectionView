//
//  ViewController.swift
//  ABCollectionView
//
//  Created by sudhakarmallidi@gmail.com on 08/11/2019.
//  Copyright (c) 2019 sudhakarmallidi@gmail.com. All rights reserved.
//

import UIKit
import ABCollectionView

class ViewController: UIViewController {
    var abCollectionView: ABCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.abCollectionView = ABCollectionView(frame: self.view.bounds)
        self.abCollectionView.backgroundColor = .purple
        self.view.addSubview(self.abCollectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


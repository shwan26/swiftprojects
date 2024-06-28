//
//  ViewController.swift
//  view hierachy
//
//  Created by syan k on 2024/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueView = UIView(frame: CGRect(x: 100, y: 200, width: 50, height: 50))
        blueView.backgroundColor = .blue
        
        view.addSubview(blueView)
        
        let greenView = UIView(frame: CGRect(x: 10, y: 10, width: 25, height: 25))
        greenView.backgroundColor = .green
        
        //view.addSubview(greenView)
        blueView.addSubview(greenView) // hierachy
    }


}


//
//  DetailViewController.swift
//  SourceryT
//
//  Created by JuanFelix on 2019/8/9.
//  Copyright © 2019 JuanFelix. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let color: Int
    let name: String
    
    init(name: String, color: Int) {
        self.name = name
        self.color = color
        super.init(nibName: nil, bundle: nil)
        self.title = "\(name) Detail"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch color {
        case 1:
            view.backgroundColor = UIColor.cyan
        case 2:
            view.backgroundColor = UIColor.orange
        default:
            view.backgroundColor = UIColor.purple
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

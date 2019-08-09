//
//  ViewController.swift
//  SourceryT
//
//  Created by JuanFelix on 2019/8/8.
//  Copyright © 2019 JuanFelix. All rights reserved.
//

import UIKit

struct Model {
    var name: String
    var url: String
}

class ViewController: UIViewController {
    //Test SwiftLint
    // swiftlint:disable all
    let noWarning :String = ""
    let i = ""
    let hasWarning :String = ""
    let y = ""
    
    let list = [
        Model(name: "Once", url: "navigator://user/Once"),
        Model(name: "Robin", url: "navigator://user/Robin"),
        Model(name: "Apple", url: "navigator://user/Apple"),
        Model(name: "Alert", url: "navigator://alert?title=Woow&message=Hello, Navigator"),
        Model(name: "HTTP", url: "http://www.baidu.com"),
        Model(name: "HTTPS", url: "https://www.github.com")
    ]
    
    @IBOutlet weak var tblList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblList.delegate = self
        tblList.dataSource = self
        self.title = "Router Navigator"
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = list[indexPath.row]
        if indexPath.row < 3  {
            let context = ["color": indexPath.row + 1]
            AppDelegate.navigator.pushURL(model.url, context: context)
        } else {
            let pushed = AppDelegate.navigator.present(model.url) != nil
            if !pushed {
                AppDelegate.navigator.open(model.url)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            cell?.detailTextLabel?.numberOfLines = 0
            cell?.detailTextLabel?.textColor = .lightGray
        }
        cell?.imageView?.image = UIImage(asset: Asset.zxPin)
        let model = list[indexPath.row]
        cell?.textLabel?.text = model.name
        cell?.detailTextLabel?.text = model.url
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
}

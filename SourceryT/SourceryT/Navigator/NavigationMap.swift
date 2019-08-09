//
//  NavigationMap.swift
//  SourceryT
//
//  Created by JuanFelix on 2019/8/9.
//  Copyright © 2019 JuanFelix. All rights reserved.
//

import Foundation
import URLNavigator
import SafariServices

enum NavigationMap {
    static func initialize(navigator: NavigatorType) {
        navigator.register("navigator://user/<name>") { (url, value, context) -> UIViewController? in
            guard let name = value["name"] as? String else {
                return nil
            }
            var cType = 1
            if let context = context as? Dictionary<String,Int> {
                cType = context["color"] ?? 1
            }
            return DetailViewController(name: name, color: cType)
        }
        
        navigator.register("http://<path:_>", self.webViewControllerFactory)
        navigator.register("https://<path:_>", self.webViewControllerFactory)
        
        navigator.handle("navigator://alert", self.alert(navigator: navigator))
    }
    
    
    
    private static func webViewControllerFactory(url: URLConvertible,
                                                 values: [String: Any],
                                                 context: Any?) -> UIViewController? {
        guard let url = url.urlValue else {
            return nil
        }
        return SFSafariViewController(url: url)
    }
    
    private static func alert(navigator: NavigatorType) -> URLOpenHandlerFactory {
        return { url, value, context in
            guard let title = url.queryParameters["title"] else {
                return false
            }
            let message = url.queryParameters["message"]
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            navigator.present(alertController)
            return true
        }
    }
}

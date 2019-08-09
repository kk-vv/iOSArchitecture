//
//  PersonModel.swift
//  SourceryT
//
//  Created by JuanFelix on 2019/8/8.
//  Copyright © 2019 JuanFelix. All rights reserved.
//

import Foundation

struct PersonModel: AutoEquatable {
    var name: String
    var age: Int
    // swiftlint:disable:next force_cast
    let noWarning = NSNumber() as! Int
    let hasWarning = NSNumber() as! Int // swiftlint:disable:this force_cast
    let noWarning2 = NSNumber() as! Int // swiftlint:disable:this force_cast
    let noWarning3 = NSNumber() as! Int
    // swiftlint:disable:previous force_cast
}

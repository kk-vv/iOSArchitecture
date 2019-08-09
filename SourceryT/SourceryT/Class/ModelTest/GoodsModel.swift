//
//  GoodsModel.swift
//  SourceryT
//
//  Created by JuanFelix on 2019/8/8.
//  Copyright © 2019 JuanFelix. All rights reserved.
//

import Foundation

class GoodsModel: AutoEquatable {
    var name: String = ""
    var id: String  =  ""
    var type: Int   =   0
    var description: String =   ""
    var images = [String]()
}

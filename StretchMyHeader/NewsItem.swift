//
//  NewsItem.swift
//  StretchMyHeader
//
//  Created by Elle Ti on 2017-08-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

import Foundation
import UIKit

struct NewsItem
{
    // Data model for tableview
    var category: Category
    var headline: String = ""
}

enum Category: String
{
    case World
    case Americas
    case Europe
    case MiddleEast
    case Africa
    case AsiaPacific
    
    func color() -> UIColor
    {
        switch self {
        case .World:
            return UIColor.red
        case .Americas:
            return UIColor.blue
        case .Europe:
            return UIColor.green
        case .MiddleEast:
            return UIColor.yellow
        case .Africa:
            return UIColor.orange
        case .AsiaPacific:
            return UIColor.purple
        }
    }
    
    func name() -> String
    {
        switch self {
        case .World:
            return "World"
        case .Americas:
            return "Americas"
        case .Europe:
            return "Europe"
        case .MiddleEast:
            return "Middle East"
        case .Africa:
            return "Africa"
        case .AsiaPacific:
            return "Asia Pacific"
        }
    }
}

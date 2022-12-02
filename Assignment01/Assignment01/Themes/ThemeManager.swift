//
//  ThemeManager.swift
//  Assignment01
//
//  Created by C Karthika on 20/03/2022.
//

import Foundation


class ThemeManager {
    static var current: ThemeProtocol = themes[0]
    
    static let themes = [OriginalTheme(), RedTheme(), BlueTheme(), GreenTheme()] as![ThemeProtocol]
    }


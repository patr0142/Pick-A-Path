//
//  Page.swift
//  Pick-A-Path
//
//  Created by Katelyn Patrick on 2020-11-19.
//  Copyright © 2020 Katelyn Patrick. All rights reserved.
//

import Foundation

class Page {
    
    var pageNumber: Int
    var pageText: String
    var pageChoiceA: Page?
    var pageChoiceB: Page?
    
    init(){
        pageNumber = 0
        pageText = ""
    }
    
}

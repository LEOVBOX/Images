//
//  DownloadOptions.swift
//  Images
//
//  Created by Леонид Шайхутдинов on 24.11.2024.
//

import Foundation

enum DownloadOptions {
    enum From {
        case disk
        case memory
    }
    case circle
    case cached(From)
    case resize(CGSize)
}

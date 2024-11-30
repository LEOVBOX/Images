//
//  CollectionViewModel.swift
//  Images
//
//  Created by Леонид Шайхутдинов on 24.11.2024.
//

import Foundation

class CollectionViewModel {
    private let imagesURL = ["https://images.unsplash.com/photo-1719937050601-969f4f25d060?q=80&w=2396&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://images.unsplash.com/photo-1729158323189-fb5fc303739d?q=80&w=2480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://simbio.ru/mdzh/wp-content/uploads/2019/11/332216-alexfas01.jpg", "https://i.ytimg.com/vi/GMOSgO5t72Q/maxresdefault.jpg", "https://cs6.livemaster.ru/storage/2e/b5/7c0314e45756e51891a141b3b08q.jpg", "https://images.unsplash.com/photo-1732823141364-b61b8ff8c490?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://cs2.livemaster.ru/storage/94/f7/97f4df0d80fdc59c3800b5a29fji--suveniry-i-podarki-nabor-pryanikov-novogodnee-assorti.jpg",
        "https://www.sstu.ru/upload/iblock/ab3/90803476971dce78d567044ccb563e51.jpeg"
    ]
    
    private let imagesCount: Int
    lazy var randomImages: [ImageViewModel] = []
    
    init(imagesCount: Int) {
        self.imagesCount = imagesCount
        generateRandomImageArray()
    }
    
    func generateRandomImageArray() {
        guard imagesCount > 0 else {
            return
        }
        
        for i in 0..<imagesCount {
            if let randomElement = imagesURL.randomElement(), let imageURL = URL(string: randomElement) {
                randomImages.append(.init(fileName: "image\(i)", imageURL: imageURL))
            }
        }
    }
}

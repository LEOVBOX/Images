//
//  CollectionViewModel.swift
//  Images
//
//  Created by Леонид Шайхутдинов on 24.11.2024.
//

import Foundation

class CollectionViewModel {
    private let imagesURL = ["https://i.pinimg.com/originals/30/a0/2b/30a02b9d7517d5b27803c8180d8123c6.jpg", "https://i.pinimg.com/originals/ae/73/ad/ae73ad4c9aa5210598ab9c78b2a5fae1.jpg", "https://simbio.ru/mdzh/wp-content/uploads/2019/11/332216-alexfas01.jpg", "https://i.ytimg.com/vi/GMOSgO5t72Q/maxresdefault.jpg", "https://cs6.livemaster.ru/storage/2e/b5/7c0314e45756e51891a141b3b08q.jpg", "https://i.pinimg.com/originals/d4/03/fd/d403fdb2a32ed0085770771657cdb770.jpg", "https://cs2.livemaster.ru/storage/94/f7/97f4df0d80fdc59c3800b5a29fji--suveniry-i-podarki-nabor-pryanikov-novogodnee-assorti.jpg",
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

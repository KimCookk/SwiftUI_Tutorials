//
//  ModelData.swift
//  Landmarks
//
//  Created by 김태성 on 10/15/23.
//

import Foundation

// Observation을 사용하면 SwfitUI View는 바인딩을 사용하지 않고도 데이터 변경을 지원 할 수 있다.
@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

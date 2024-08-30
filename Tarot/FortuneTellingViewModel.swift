//
//  FortuneTellingViewModel.swift
//  Tarot
//
//  Created by pukita on 20.08.2024.
//

import Foundation

class FortuneTellingViewModel: ObservableObject{
    
    static var numbers = [0,1,2,3,4,5,6]
    
    static func randomNumber() -> Int {
        let randomIndex = Int.random(in: 0..<numbers.count)
        let number = numbers[randomIndex]
        numbers.remove(at: randomIndex)
        return number
    }
    
    @Published var randomInt = randomNumber()
    @Published var randomInt2 = randomNumber()
    @Published var randomInt3 = randomNumber()
}

//
//  IntroductionView.swift
//  Tarot
//
//  Created by pukita on 20.08.2024.
//

import SwiftUI

struct IntroductionView: View {
    let deviceBg = #colorLiteral(red: 0.7509253621, green: 0.690577209, blue: 1, alpha: 1)
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: FortuneTellingView()){
                    Text("Гадание ->")
                        .bold()
                        .font(.system(size: 40))
                        .foregroundStyle(Color(.black))
                }
                    
            
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
             .background(Color(deviceBg))
            
        }
    }
}

#Preview {
    IntroductionView()
}

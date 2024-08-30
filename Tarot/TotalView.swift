//
//  TotalView.swift
//  Tarot
//
//  Created by pukita on 21.08.2024.
//

import SwiftUI

struct TotalView: View {
    let deviceBg = #colorLiteral(red: 0.7509253621, green: 0.690577209, blue: 1, alpha: 1)
    var body: some View {
        VStack{
             Text("Пока ничего нет")
        }
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height)
        .background(Color(deviceBg))
    }
}

#Preview {
    TotalView()
}

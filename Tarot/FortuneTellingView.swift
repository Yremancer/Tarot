//
//  NewView.swift
//  Tarot
//
//  Created by pukita on 19.08.2024.
//

import SwiftUI

struct FortuneTellingView: View {
    
    @ObservedObject var fortuneTellingViewModel = FortuneTellingViewModel()
    
    
    @State var isPress = false
    @State var press = false
    @State var press1 = false
    @State var press2 = false
    
    let deviceBg = #colorLiteral(red: 0.7509253621, green: 0.690577209, blue: 1, alpha: 1)
    
    struct Card{
        var name: String
        var text: String
    }
    
    var cards: [Int: Card] = [
        0: Card(name: "TheFool", text: "Будет полезный опыт, который будет способствовать вашему росту как человека. Новое приключение может быть буквальным и может включать в себя путешествие в новые земли или территории, которые вы никогда раньше не посещали."),
        1: Card(name: "TheMagician", text: ""),
        2: Card(name: "TheHighPriestess", text: ""),
        3: Card(name: "TheEmpress", text: "Карта Таро Императрица в чтении призывает вас соединиться со своей женской стороной. Это можно перевести по-разному — подумайте о творчестве, элегантности, чувственности, плодородии и воспитании. Она говорит вам быть добрее к себе и искать красоту и счастье в своей.Императрица часто приносит сильные всплески творческой или артистической энергии. жизни."),
        4: Card(name: "TheEmperor", text: ""),
        5: Card(name: "TheChariot", text: "Когда в раскладе Таро появляется прямая карта Колесница , это говорит вам, что сейчас самое время получить то, что вы хотите. Просто сосредоточьтесь и верьте в свои способности, и вы добьетесь своей цели. Колесница говорит вам, что вас ждет триумф и что вы полностью контролируете его осуществление."),
        6: Card(name: "TheMoon", text: "")
    ]
    
    
    
    func identity( _ a : Int, _ b : Int) -> Bool{
        return a == b
    }
    
    mutating func doNotIdentity( c: inout Int, d: Int){
        while identity(c,d) {
            c = Int.random(in: 0...6)
        }
    }
    
    var body: some View {
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 90)
                    .foregroundStyle(Color(.blue))
                    .frame(width: UIScreen.main.bounds.width * 0.75)
                    .rotationEffect(.degrees(50))
                
                RoundedRectangle(cornerRadius: 90)
                    .foregroundStyle(Color(.pink))
                    .frame(width: UIScreen.main.bounds.width * 0.75)
                    .rotationEffect(.degrees(130))
                VStack{
                    Text("**Ваше нагадание:**")
                        .font(.system(size: 45))
                    if isPress{
                        VStack{
                            HStack{
                                Button(action: {press.toggle()}, label: {
                                    if press{
                                        ZStack{
                                            Rectangle()
                                                .foregroundStyle(Color(.white))
                                                .frame(width: 140, height: 230.5)
                                            Rectangle()
                                                .foregroundStyle(Color(.gray))
                                                .frame(width: 125, height: 215.5)
                                            Text(cards[fortuneTellingViewModel.randomInt]!.text)
                                                .foregroundStyle(Color(.black))
                                                .frame(width: 120, height: 210.5)
                                                .minimumScaleFactor(0.5)
                                        }
                                    }else{
                                        Image(cards[fortuneTellingViewModel.randomInt]!.name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 140)
                                    }
                                })
                                Button(action: {press1.toggle()}, label: {
                                    if press1{
                                        ZStack{
                                            Rectangle()
                                                .foregroundStyle(Color(.white))
                                                .frame(width: 140, height: 230.5)
                                            Rectangle()
                                                .foregroundStyle(Color(.gray))
                                                .frame(width: 125, height: 215.5)
                                            Text(cards[fortuneTellingViewModel.randomInt2]!.text)
                                                .foregroundStyle(Color(.black))
                                                .frame(width: 120, height: 210.5)
                                                .minimumScaleFactor(0.5)
                                        }
                                    }else{
                                        Image(cards[fortuneTellingViewModel.randomInt2]!.name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 140)
                                    }
                                })
                            }
                            VStack{
                                Button(action: {press2.toggle()}, label: {
                                    if press2{
                                        ZStack{
                                            Rectangle()
                                                .foregroundStyle(Color(.white))
                                                .frame(width: 140, height: 230.5)
                                            Rectangle()
                                                .foregroundStyle(Color(.gray))
                                                .frame(width: 125, height: 215.5)
                                            Text(cards[fortuneTellingViewModel.randomInt3]!.text)
                                                .foregroundStyle(Color(.black))
                                                .frame(width: 120, height: 210.5)
                                                .minimumScaleFactor(0.5)
                                        }
                                    }else{
                                        Image(cards[fortuneTellingViewModel.randomInt3]!.name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 140)
                                    }
                                })
                                HStack{
                                    Button(action: {
                                        press = false
                                        press1 = false
                                        press2 = false
                                    },
                                           label: {
                                        NavigationLink(
                                            destination: TotalView(),
                                            label: {
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 60)
                                                        .frame(width: 154, height: 60)
                                                        .foregroundStyle(Color(.black))
                                                    Text("Итог")
                                                        .bold()
                                                        .font(.system(size: 30))
                                                        .foregroundStyle(Color(deviceBg))
                                                }
                                            }
                                        )
                                        
                                    })
                                    Button(action: {
                                        isPress.toggle()
                                        press = false
                                        press1 = false
                                        press2 = false
                                    }, label: {
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 60)
                                                .frame(width: 154, height: 60)
                                                .foregroundStyle(Color(.black))
                                            Text("**Переделать**")
                                                .foregroundStyle(Color(deviceBg))
                                                .font(.system(size: 24))
                                        }
                                    })
                                }
                            }
                        }.padding(.bottom, 8)
                        
                    }else{
                        Button(action: {
                            isPress.toggle()
                            FortuneTellingViewModel.numbers = [0,1,2,3,4,5,6]
                            fortuneTellingViewModel.randomInt = FortuneTellingViewModel.randomNumber()
                            fortuneTellingViewModel.randomInt2 = FortuneTellingViewModel.randomNumber()
                            fortuneTellingViewModel.randomInt3 = FortuneTellingViewModel.randomNumber()
                        }, label: {
                            Text("**Показать**")
                                .foregroundStyle(Color(deviceBg))
                                .font(.system(size: 30))
                                .padding(7)
                                .background(
                                    Capsule()
                                        .fill(Color(.black))
                                        .frame(width: 154, height: 60)
                                )
                        })
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(Color(deviceBg))
        }
    }
}
#Preview {
    FortuneTellingView()
}



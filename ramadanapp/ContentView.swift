//
//  ContentView.swift
//  ramadanapp
//
//  Created by Nada Alm on 5/1/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var thekr = ""
    @State var counter = 0
    var body: some View {
        
        ZStack{
            
            BG()
            
            VStack{
                Text(thekr).font(.largeTitle).foregroundColor(.white).padding().multilineTextAlignment(.center)
                
                Text("\(counter)").foregroundColor(.white).font(.system(size: 60)).bold().padding(.horizontal, 70).background(Color(#colorLiteral(red: 0.9643970538, green: 1, blue: 0.9489036366, alpha: 0.173239512)))
                    .clipShape(Capsule())

                
            }.onTapGesture {
                self.counter += 1
            }.onLongPressGesture{
                
                self.thekr = athkar.randomElement()!
                self.counter = 0
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BG: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header").resizable().aspectRatio(contentMode:  .fit)
                Spacer()
                
                Image("Mosque").resizable().aspectRatio(contentMode:  .fit)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

//
//  SwiftUIView.swift
//  ramadanapp
//
//  Created by Nada Alm on 5/2/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ClassWork2: View {
    
   @State var pageNo = ""
    var body: some View {
        
        ZStack{
            
            BG()
            
            VStack{
            Text("Page \(pageNo)").foregroundColor(.white).font(.largeTitle).fontWeight(.bold)
                TextField("page number", text: $pageNo).keyboardType(.numberPad).textFieldStyle(RoundedBorderTextFieldStyle()).padding().frame(height: 120)
            
            
            }
        }
        
        
    }
}

struct ClassWork2_Previews: PreviewProvider {
    static var previews: some View {
       ClassWork2()
    }
}

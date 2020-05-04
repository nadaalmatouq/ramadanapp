//
//  ClassWork3.swift
//  ramadanapp
//
//  Created by Nada Alm on 5/3/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ClassWork3: View {
    
    
    var counter = "0"
    @State var thekr = "الحمدالله"
    var body: some View {
        ZStack{
        
        BG()
            
            VStack{
            
                Text(thekr).modifier(basicModifier())
                
                Text("\(counter)").modifier(basicModifier())
                
                
            
            }
            
            
            
            
            
        }
        
    }
}


struct basicModifier :ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white).multilineTextAlignment(.center).padding()
    }
    
}

struct ClassWork3_Previews: PreviewProvider {
    static var previews: some View {
        ClassWork3()
    }
}

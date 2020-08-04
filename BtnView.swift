//
//  BtnView.swift
//  BurgerMenuDark
//
//  Created by Ender Ismail on 04.08.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct BtnView: View {
    var img = "grid"
    var txt = "Story"
    
    var body: some View {
        HStack(spacing: 22) {
            
            Image(img)
                .resizable()
                .frame(width: 25, height: 25)    
            
            Text(txt)
            
            Spacer()
        }
    }
}

struct BtnView_Previews: PreviewProvider {
    static var previews: some View {
        BtnView(img: "grid", txt: "Story")
    }
}

//
//  HomeScreen.swift
//  BurgerMenuDark
//
//  Created by Ender Ismail on 04.08.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    @State var dark = false
    @State var show = false
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            GeometryReader {_ in
                
                VStack {
                    
                    ZStack {
                        
                        HStack {
                            
                            Button(action: {
                                
                                withAnimation(.default) {
                                    
                                    self.show.toggle()
                                }
                                
                            }) {
                                
                                Image("menu")
                                    .resizable()
                                .frame(width: 25, height: 25)
                            }
                            
                            Spacer()
                        }
                        
                        Text("Profile")
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.primary)
                    .overlay(Rectangle().stroke(Color.primary.opacity(0.1), lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.top))
                    
                    
                    
                    Image("avatar2")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 55)
                    
                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        .padding()
                    
                    Spacer()
                    
                }
                
            }
            
            HStack {
                
                SidebarMenu(dark: self.$dark, show: self.$show)
                    .preferredColorScheme(self.dark ? .dark : .light)
                    .offset(x: self.show ? 0: -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
                
            }
            .background(Color.primary.opacity(self.show ? (self.dark ? 0.05 : 0.2) : 0).edgesIgnoringSafeArea(.all))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

//
//  SideBarMenu.swift
//  BurgerMenuDark
//
//  Created by Ender Ismail on 04.08.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct SidebarMenu: View {
    
    @Binding var dark: Bool
    @Binding var show: Bool
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Button(action: {
                    
                    withAnimation(.default) {
                        
                        self.show.toggle()
                    }
                    
                }) {
                    
                    Image("back")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                }
                
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("avatar2")
            .resizable()
            .frame(width: 241, height: 150)
            .clipShape(Circle())
            
            VStack(spacing: 12) {
                
                Text("John Doe")
                
                Text("Mobile Software Engineer")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            HStack(spacing: 22) {
                
                Image(systemName: "moon.fill")
                    .font(.title)
                
                Text("Dark Mode")
                
                Spacer()
                
                Button(action: {
                    
                    self.dark.toggle()
                    
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle =
                        self.dark ? .dark : .light
                    
                }) {
                    Image("toggle-left")
                        .font(.title)
                        .rotationEffect(.init(degrees: self.dark ? 180 : 0))
                }
            }
            .padding(.top, 25)
            
            Group {
                
                Button(action: {}) {
                    
                    BtnView(img: "grid", txt: "Story")
                        .foregroundColor(.yellow)
                }
                .padding(.top,25)
                
                Button(action: {}) {
                        
                    BtnView(img: "chat", txt: "Chats")
                        .foregroundColor(.pink)
                }
                .padding(.top,25)
                
                Divider()
                    .padding(.top, 25)
                
                Button(action: {}) {
                    
                    BtnView(img: "media", txt: "Video & Photos")
                        .foregroundColor(.purple)
                }
                .padding(.top,25)
                
                Button(action: {}) {
                    
                   BtnView(img: "settings", txt: "Settings")
                        .foregroundColor(.green)
                }
                .padding(.top,25)
                
                Button(action: {}) {
                    
                    BtnView(img: "help", txt: "Help ?")
                        .foregroundColor(.green)
                }
                .padding(.top,25)
                
                Button(action: {}) {
                    
                   BtnView(img: "notification", txt: "Notifications")
                        .foregroundColor(.red)
                }
                .padding(.top,25)
            }
            
            Spacer()
        }
        .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background((self.dark ? Color.black : Color.white).edgesIgnoringSafeArea(.all))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(.all))
        
    }
}

struct SideBarMenu_Previews: PreviewProvider {
    static var previews: some View {
        SidebarMenu(dark: Binding.constant(false), show: Binding.constant(false))
    }
}



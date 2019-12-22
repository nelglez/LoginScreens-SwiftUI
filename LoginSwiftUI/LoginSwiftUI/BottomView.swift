//
//  BottomView.swift
//  LoginSwiftUI
//
//  Created by Nelson Gonzalez on 12/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct BottomView : View{
    @Binding var showing: LoginViewState
    
    var body : some View{
        
        
        VStack{
            
            Button(action: {
                
            }) {
                
                Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
                
            }.background(Color(red: 255/255, green: 165/255, blue: 151/255))
            .clipShape(Capsule())
            .padding(.top, 45)
            
            Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,30)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("google").renderingMode(.original).padding()
                    
                    
                }.background(Color(red: 235/255, green: 232/255, blue: 232/255))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("facebook").renderingMode(.original).padding()
                    
                    
                }.background(Color(red: 235/255, green: 232/255, blue: 232/255))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("linkedin").renderingMode(.original).padding()
                    
                    
                }.background(Color(red: 235/255, green: 232/255, blue: 232/255))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("twitter").renderingMode(.original).padding()
                    
                    
                }.background(Color(red: 235/255, green: 232/255, blue: 232/255))
                .clipShape(Circle())
                
            }.padding(.top, 25)
            
            HStack(spacing: 8){
                
                Text("Don't Have an Account?").foregroundColor(Color.gray.opacity(0.5))
                
                Button(action: {
                    self.showing = .showingSignUp
                }) {
                    
                   Text("Sign Up")
                    
                }.foregroundColor(.blue)
                
            }.padding(.top, 25)
        }
    }
}
struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(showing: .constant(.showingLoginView))
    }
}

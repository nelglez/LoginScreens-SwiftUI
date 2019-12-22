//
//  SignUpBottomView.swift
//  LoginSwiftUI
//
//  Created by Nelson Gonzalez on 12/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct SignUpBottomView: View {
     @Binding var showing: LoginViewState
       
       var body : some View{
           
           
        VStack {
               
               Button(action: {
                   
               }) {
                   
                   Text("Sign Up").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                   
                   
               }.background(Color(red: 255/255, green: 165/255, blue: 151/255))
               .clipShape(Capsule())
               .padding(.top, 45)
               
    
               HStack(spacing: 8){
                   
                   Text("Already Have An Account?").foregroundColor(Color.gray.opacity(0.5))
                   
                   Button(action: {
                       self.showing = .showingLoginView
                   }) {
                       
                      Text("Sign In")
                       
                   }.foregroundColor(.blue)
                   
               }.padding(.top, 25)
        }
       }
}

struct SignUpBottomView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpBottomView(showing: .constant(.showingLoginView))
    }
}

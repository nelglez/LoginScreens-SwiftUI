//
//  SignUpView.swift
//  LoginSwiftUI
//
//  Created by Nelson Gonzalez on 12/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @Binding var showing: LoginViewState
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
      
    var body: some View {
        
        VStack{
                
                Image("signUp").frame(width: 50, height: 50)
                
                Text("Sign Up").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
                
                VStack{
                    
                    VStack(alignment: .leading){
                        
                        Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                        HStack{
                            
                            TextField("Enter Your Username", text: $username)
                            
                            if username != "" {
                                
                                Image("checkmark").foregroundColor(Color.init(.label))
                            }
                            
                        }
                        
                        Divider()
                        
                    }.padding(.bottom, 15)
                    
                    VStack(alignment: .leading){
                        
                        Text("Email").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                            
                        TextField("Enter Your Email", text: $email)
                        
                        if email != "" {
                            Image("checkmark").foregroundColor(Color.init(.label))
                        }
                        
                        Divider()
                    }.padding(.bottom, 15)
                    
                    VStack(alignment: .leading){
                        
                        Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                            
                        SecureField("Enter Your Password", text: $password)
                        
                        Divider()
                    }.padding(.bottom, 15)
                
                
                SignUpBottomView(showing: $showing)
                
            }.padding()
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(showing: .constant(.showingSignUp))
    }
}

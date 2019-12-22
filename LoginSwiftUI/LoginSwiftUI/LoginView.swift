//
//  LoginView.swift
//  LoginSwiftUI
//
//  Created by Nelson Gonzalez on 12/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//


import SwiftUI

struct LoginView: View {
    
    @Binding var showing: LoginViewState
   
    @State var username = ""
    @State var pass = ""
    
    var body : some View{
        
        VStack{
            
            Image("login").frame(width: 50, height: 50)
            
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
            
            VStack(alignment: .leading){
                
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
                    
                    Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                    SecureField("Enter Your Password", text: $pass)
                    
                    Divider()
                }
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Forgot Password?").foregroundColor(Color.gray.opacity(0.5))
                    }
                }

            }.padding(.horizontal, 6)
            
            
            BottomView(showing: $showing)
            
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showing: .constant(.showingLoginView))
    }
}

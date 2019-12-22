//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Nelson Gonzalez on 12/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

enum LoginViewState {
    case showingSignUp
    case showingLoginView
}

import SwiftUI

struct ContentView: View {
    @State var showing: LoginViewState = .showingLoginView
    var body: some View {
        ZStack {
            if showing == .showingLoginView {
                LoginView(showing: $showing).opacity(showing == .showingLoginView ? 1.0 : 0.0).animation(.easeInOut)
            } else if showing == .showingSignUp {
                SignUpView(showing: $showing).opacity(showing == .showingSignUp ? 1.0 : 0.0).animation(.easeInOut)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





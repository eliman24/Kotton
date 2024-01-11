//
//  LoginView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/5/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("forest")
                    .ignoresSafeArea()
                VStack {
                    // image
                    Image("kotton-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 120)
                        .padding(.vertical, 32)
                    
//                    Text("Create Your Account")
//                        .font(.largeTitle)
//                        .fontWeight(.black)
//                        .foregroundColor(Color.white)
//                        .padding()
//                    Text("Please enter login info")
//                        .foregroundColor(Color("spring"))
                    
                    // form fields
                    VStack(spacing: 15.0) {
                        InputView(data: $email, title: "Email")
                        
                        InputView(data: $password, title: "Password", isSecureField: true)
                    }
                    .padding()
                    .padding(.top, 12)
                    
                    // sign in button
                    Button {
                        print("Log user in...")
                    } label: {
                        HStack {
                            Text("SIGN IN")
                        }
                    }
                    .padding(.horizontal)
                    .fontWeight(.semibold)
                    .font(.title2)
                    .frame(width: UIScreen.main.bounds.width - 60, height: 23)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("spring"))
                    .cornerRadius(16)
                    
                    Spacer()
                    
                    // sign up button
                    NavigationLink(destination: RegistrationView()) {
                        HStack(spacing: 4) {
                            Text("Don't have an account?")
                            Text("Sign up")
                                .fontWeight(.bold)
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                    .font(.system(size: 14))
                    .foregroundColor(.spring)
                    
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    LoginView()
}

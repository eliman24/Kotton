//
//  RegistrationView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/6/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss


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
                    
                    // form fields
                    VStack(spacing: 15.0) {
                        InputView(data: $email,
                                  title: "Email")
                        
                        InputView(data: $fullname,
                                  title: "Full Name")
                        
                        InputView(data: $password,
                                  title: "Password", isSecureField: true)
                        
                        InputView(data: $confirmPassword,
                                  title: "Confirm Password",
                                  isSecureField: true)
                    }
                    .padding()
                    .padding(.top, 12)
                    
                    // sign in button
                    Button {
                        print("Log user in...")
                    } label: {
                        HStack {
                            Text("SIGN UP")
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
                    
                    Button{
                        dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Text("Already have an account?")
                            Text("Sign in")
                                .fontWeight(.bold)
                        }
                    }
                        .font(.system(size: 14))
                        .foregroundColor(.spring)
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    RegistrationView()
}

//
//  ContentView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 11/21/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        NavigationStack {
            if isLoggedIn {
                ShopView()
            } else {
                SignupView(isLoggedIn: $isLoggedIn)
            }
        }
    }
}

struct SignupView: View {
    @Environment(\.managedObjectContext) private var viewContext
//    @Binding var isLoggedIn: Bool
//    @State private var first_name: String = ""
//    @State private var last_name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
//    @State private var showingSignupScreen = false
    @State private var showLogin = false
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("forest")
                    .ignoresSafeArea()
                VStack {
                    Text("Create Your Account")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .padding()
                    Text("Please enter info to create an account")
                        .foregroundColor(Color("spring"))
                    VStack(spacing: 15.0) {
                        InputFieldView(data: $email, title: "Email")
                        PasswordView(data: $password, title: "Password")
                    }
                    .padding()
                    
                    Button("Create Account") {
                        register()
                        isLoggedIn = true
                    }
                    .fontWeight(.heavy)
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("spring"))
                    .cornerRadius(40)
                    .padding()
                    
                    HStack {
                        Text("Already have an account?")
                            .fontWeight(.medium)
                            .foregroundColor(Color("spring"))
                        Button("Log in") {
                            showLogin.toggle()
                        }
//                        .sheet(isPresented: $showLogin) {
//                            LoginView(isLoggedIn: $isLoggedIn, email: $email, password: $password)
//                        }
                        .ignoresSafeArea()
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                    }.padding(16)
                }
            }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            } else {
                print("Sign-up successful!")
            }
        }
    }
}

#Preview {
    ContentView()
//        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

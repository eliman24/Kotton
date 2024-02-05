//
//  UserView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/4/23.
//

import SwiftUI
import Firebase

struct UserView: View {
    @State private var first_name: String = ""
    @State private var last_name: String = ""
    @State private var username: String = ""
    @State private var phone_nbr: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("forest")
                    .ignoresSafeArea()
                
                VStack {
                    Group {
                        Text("Kotton")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        
                        Text("Please enter info to update user profile")
                            .foregroundColor(.spring)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.bottom, 42)
                        
                    } // header
                    
                    VStack(spacing: 15.0) {
                        InputView(data: $first_name, title: "First Name")
                        InputView(data: $last_name, title: "Last Name")
                        InputView(data: $phone_nbr, title: "Phone Number")
                        InputView(data: $email, title: "Email")
                        InputView(data: $password, title: "Password", isSecureField: true)
                    }
                    .padding()
                    
//                    Button("Save Info") {
//                        SaveInfo()
//                    }
                    NavigationLink(destination: ShopView()) {
                        Text("Save Info")
                    }
                    .fontWeight(.heavy)
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("spring"))
                    .cornerRadius(40)
                    .padding()
                    
                    
                }

            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    UserView()
}

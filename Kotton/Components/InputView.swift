//
//  InputFieldView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 11/27/23.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    var isSecureField = false
    
    var body: some View {
      ZStack {
          if isSecureField {
              SecureField("", text: $data)
                  .padding(.horizontal, 10)
                  .frame(height: 42)
                  .overlay(
                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                        .stroke(Color.spring, lineWidth: 1)
              )
            HStack {                    // HStack for the text
              Text(title ?? "Input")
                .font(.headline)
                .fontWeight(.thin)      // making the text small
                .foregroundColor(Color("spring"))
                .multilineTextAlignment(.leading)
                .padding(4)
                .background(Color("forest"))
                Spacer()
            }
            .padding(.leading, 8)
            .offset(CGSize(width: 0, height: -20))  // pushign the text up to overlay the border of the input field
              
          } else {
                TextField("", text: $data)
                  .padding(.horizontal, 10)
                  .frame(height: 42)
                  .overlay(
                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                        .stroke(Color.spring, lineWidth: 1)
                  )
                HStack {                    // HStack for the text
                  Text(title ?? "Input")
                    .font(.headline)
                    .fontWeight(.thin)      // making the text small
                    .foregroundColor(Color("spring"))
                    .multilineTextAlignment(.leading)
                    .padding(4)
                    .background(Color("forest"))
                    Spacer()
                }
                .padding(.leading, 8)
                .offset(CGSize(width: 0, height: -20))  // pushign the text up to overlay the border of the input field
              
          }
      }.padding(4)
    }
}

struct InputFieldView_Previews: PreviewProvider {
    @State static var data: String = ""
    
    static var previews: some View {
        InputFieldView(data: $data, title: "Password")
    }
}

//
//  ShopView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/3/23.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("spring")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Group {
                            HStack{
                                Spacer()
                                NavigationLink(destination: UserView()) {
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .tint(.forest)
                                }
                                .padding()
                            }
                            
                            Text("Kotton")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .padding(.bottom, 10)
                            
                            Text("Shop for all your favorite clothing!")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding(.bottom, 42)
                            
                        } // header
                        
                        Group {
                            HStack {
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("blacktop")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Black Top")
                                        .modifier(ProductName())
                                    Text("Comfortable, cushy, pillowy feel.")
                                        .modifier(ProductDesc())
                                    Text("$48.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                                    

                                VStack(alignment: .leading, spacing: 7) {
                                    Image("darkjeans")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Dark-Wash Jeans")
                                        .modifier(ProductName())
                                    Text("Frayed wide-leg bottoms.")
                                        .modifier(ProductDesc())
                                    Text("$27.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                            } // first row
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("whitedress")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("White Dress")
                                        .modifier(ProductName())
                                    Text("Cute babydoll dress")
                                        .modifier(ProductDesc())
                                    Text("$48.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                                
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("cashmeresweater")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Cashmere Sweater")
                                        .modifier(ProductName())
                                    Text("Fuzzy cashmere sweater")
                                        .modifier(ProductDesc())
                                    Text("$27.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                            } // second row
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("blacktop")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Black Top")
                                        .modifier(ProductName())
                                    Text("Comfortable, cushy, pillowy feel.")
                                        .modifier(ProductDesc())
                                    Text("$48.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                                    

                                VStack(alignment: .leading, spacing: 7) {
                                    Image("darkjeans")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Dark-Wash Jeans")
                                        .modifier(ProductName())
                                    Text("Frayed wide-leg bottoms.")
                                        .modifier(ProductDesc())
                                    Text("$27.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                            } // third row
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("whitedress")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("White Dress")
                                        .modifier(ProductName())
                                    Text("Cute babydoll dress")
                                        .modifier(ProductDesc())
                                    Text("$48.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                                
                                VStack(alignment: .leading, spacing: 7) {
                                    Image("cashmeresweater")
                                        .resizable()
                                        .modifier(ImageSize())
                                    Text("Cashmere Sweater")
                                        .modifier(ProductName())
                                    Text("Fuzzy cashmere sweater")
                                        .modifier(ProductDesc())
                                    Text("$27.00")
                                        .modifier(ProductName())
                                }
                                .modifier(ProductIcon())
                            } // fourth row
                        } // product icons
                        .padding(1)
                    }
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}
    
struct ImageSize: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15)
    }
}

struct ProductName: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            
    }
}

struct ProductDesc: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
    }
}

struct ProductIcon : ViewModifier {
    func body(content: Content) -> some View {
        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
            content
        }
            .foregroundColor(.black)
            .padding(9)
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 12)
            .padding()
    }
}

#Preview {
    ShopView()
}

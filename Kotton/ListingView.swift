//
//  ListingView.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/1/23.
//

import SwiftUI

struct ListingView: View {
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        NavigationView {
            List(dataManager.listings, id: \.id) { listing in
                Text(listing.id)
            }
            .navigationTitle("Listings")
            .navigationBarItems(trailing: Button(action: {
                // add
            }, label: {
                
            }))
        }
    }
}

#Preview {
    ListingView()
}

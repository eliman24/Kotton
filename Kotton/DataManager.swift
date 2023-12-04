//
//  DataManager.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 12/1/23.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var listings: [Listing] = []
    
    init() {
        fetchListings()
    }
    
    func fetchListings() {
        listings.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Listings")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let item_name = data["item name"] as? String ?? ""
                    let item_brand = data["item brand"] as? String ?? ""
                    let item_category = data["item category"] as? String ?? ""
                    let item_price = data["item price"] as? String ?? ""
                    let item_desc = data["item desc"] as? String ?? ""
                    let item_material = data["item material"] as? String ?? ""
                    
                    let listing = Listing(id: id, item_name: item_name, item_brand: item_brand, item_category: item_category, item_price: item_price, item_desc: item_desc, item_material: item_material)
                    self.listings.append(listing)
                }
            }
        }
    }
}

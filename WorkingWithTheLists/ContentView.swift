//
//  ContentView.swift
//  WorkingWithTheLists
//
//  Created by ramil on 02/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
        }
    }

    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

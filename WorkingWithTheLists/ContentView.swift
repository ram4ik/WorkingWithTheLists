//
//  ContentView.swift
//  WorkingWithTheLists
//
//  Created by ramil on 02/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var username = "Anonymous"
}

struct ContentView: View {
    let users = [User(), User(), User()]

    var body: some View {
        List(users) { user in
            Image("paul-hudson")
                .resizable()
                .frame(width: 40, height: 40)
            Text(user.username)
        }
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

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct ExampleRow: View {
    var body: some View {
        Text("Example Row")
    }
}

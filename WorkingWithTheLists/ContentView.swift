//
//  ContentView.swift
//  WorkingWithTheLists
//
//  Created by ramil on 02/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }

            Section(header: Text("Other tasks"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
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

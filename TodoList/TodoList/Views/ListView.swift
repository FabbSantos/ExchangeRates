//
//  ListView.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/18/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Hi")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

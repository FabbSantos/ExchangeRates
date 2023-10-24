//
//  TodoListApp.swift
//  TodoList
//
//  Created by user239336 on 10/18/23.
//

import SwiftUI


/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */


@main
struct TodoListApp: App {
    
    @State var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}

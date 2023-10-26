//
//  noItemsView.swift
//  TodoList
//
//  Created by user239336 on 10/25/23.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    var body: some View {
        ScrollView {
            VStack (spacing: 30){
                Text("No items on the list!")
                    .font(.title)
                    .fontWeight(.semibold)
//                    .opacity(0.7)
                Text("There's something you need to remember? Add it to the list!")
//                    .foregroundColor(.gray)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Item 🥳")
                            .padding(.vertical, 14)
                            .padding(.horizontal, 24)
                            .foregroundColor(.white)
                            .font(.headline)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                    })
                .shadow(radius: 5, y: 5)
//                .scaleEffect(animate ? 1.1 : 1.0)
            }
            .multilineTextAlignment(.center)
            .padding(50)
            .onAppear(perform: addAnimation)
        }
    }
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 1.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}

//
//  ContentView.swift
//  BetterRestPrelude
//
//  Created by Ajin on 15/10/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        /*
        //adding frame to the component
        Text("Hello, world!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
         */
        
        /*
         
        //MARK: - Order of modifiers
         //order of the modifier matters
         
        Button("Hello world") {
            print(type(of: self.body))
        }
        .background(.gray)
        .frame(width: 200, height: 200)
        .background(.red)
         
         */
        
        
        /*
        //MARK: - Enviromental and individual modifiers
        //first modifier applied to enviroment and then to child.
        //font works but for blur, it wont undo blur to child
        
        VStack{
            Text("A")
                //.font(.subheadline)
                .blur(radius: 0)
            Text("B")
            Text("C")
        }
        //.font(.title)
        .blur(radius: 5)
         */
        
        
        /*
        //MARK: - View as properties
        
        //view as normal property
        var text1 = Text("Hi")
        text1
        
        
        //view as computed property
        //nb: add this view outside the main view
        @ViewBuilder var text2: some View{
            VStack{
                Text("A")
                Text("B")
            }
        }
        
        text2
         
         */
        
        /*
        //MARK: - Applying custom modifier
        Text("Hi")
            .modifier(Title())
         */
        
        
        /*
         //MARK: - Calling custom containers
         
        GridStack(rows: 4, columns: 3) { row, col in
            Image(systemName: "circle.fill")
        }
         */
        
    }
}

/*
//MARK: - Custom modifier

struct Title: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
    }
}
*/

/*
//MARK: - Custom container

struct GridStack<Content: View>: View{
    
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int,Int)-> Content
    
    var body: some View{
        
        VStack{
            ForEach(0..<rows, id: \.self){ row in
                
                HStack{
                    ForEach(0..<columns, id: \.self){ col in
                        content(row,col)
                    }
                }
            }
        }
    }
}
 
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

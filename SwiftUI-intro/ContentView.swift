//
//  ContentView.swift
//  SwiftUI-intro
//
//  Created by David Svensson on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    var persons = [Person(firstName: "David", lastName: "Svensson"),
                   Person(firstName: "Susan", lastName: "Svensson"),
                   Person(firstName: "Lois", lastName: "Svensson"),
                   Person(firstName: "Laura", lastName: "Svensson")]
    
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            List(persons) { person in
                PersonView(person: person)
            }
//
//            List() {
//                ForEach(persons) { person in
//                    PersonView(person: person)
//                }
//            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PersonView: View {
    var person : Person
    
    var body: some View {
        HStack {
            ZStack {
                
                Circle()
                    .fill(Color.blue)
                    .frame(width:30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(systemName: "person.circle")
            }
            VStack(alignment: .leading) {
                Text(person.firstName)
                Text(person.lastName)
            }
            
        }
    }
}

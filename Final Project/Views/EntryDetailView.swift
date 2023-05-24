//
//  EntryDetailView.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/23/23.
//

import SwiftUI

struct EntryDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var entryName = ""
    @State private var selectedMood = ""
    @State private var rating = ""
    
    @State var tap = false
    
    var entry: Entry
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                
                Text("Journal Entry")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                    .padding(-2)
                Spacer()
                    .frame(height: 30)
                HStack {
                    Text("Date and Time:")
                        .fontWeight(.bold)
                    Text(entry.date)
                    Text(entry.timeOfDay)
                }
                        
                    HStack{
                        Text("Mood and Rating:")
                            .fontWeight(.bold)
                            .padding(-2)
                        Text(entry.mood)
                        Text("\(entry.rating)")
                    }
                   
                Text (entry.entryText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
                    .background()
                    .foregroundColor(tap ? .gray : .red)
                    .cornerRadius(16)
                    .shadow(color: .gray, radius: 5)
                    .onTapGesture {
                        tap.toggle()
                    
                }
            }
            
            .padding(.vertical, 100)
            .padding(.horizontal, 20)
        }
    }
}
    

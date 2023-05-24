//
//  Entry.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/23/23.
//

import Foundation

let moods = ["Great", "Good", "Meh", "Bad", "Awful"]

struct Entry: Identifiable {
    
    var id = UUID()
    var entryName: String
    var date: String
    var timeOfDay: String
    var entryText: String
    var mood: String
    var rating: Int
    
}

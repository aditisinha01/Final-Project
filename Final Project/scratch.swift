//
//  scratch.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/24/23.
//

import SwiftUI

struct scratch: View {
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
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
                    Text("05/24/2023,")
                    Text("8:00 AM")
                }
                HStack{
                    Text("Mood and Rating:")
                        .fontWeight(.bold)
                        .padding(-2)
                    Text("Bad,")
                    Text("\(2)/10")
                }
                  
                    Text ("I did really bad todaaksjdfhaksjdfhaksjdafhkjshdfaaskdhfakjdshfkjasdhfjksdhfkjdsahfkjdshfkjsdhfjksdhfkjsdhfkjsdhfkjdshfkjsdhfkjsdhjfkhajkdshfjksdahtodaaksjdfhaksjdfhaksjdafhkjshdfaaskdhfakjdshfkjasdhfjksdhfkjdsahfkjdshfkjsdhfjksdhfkjsdhfkjsdhfkjdshfkjsdhfkjsdhjfkhajkdshfjksdahftodaaksjdfhaksjdfhaksjdafhkjshdfaaskdhfakjdshfkjasdhfjksdhfkjdsahfkjdshfkjsdhfjksdhfkjsdhfkjsdhfkjdshfkjsdhfkjsdhjfkhajkdshfjksdahftodaaksjdfhaksjdfhaksjdafhkjshdfaaskdhfakjdshfkjasdhfjksdhfkjdsahfkjdshfkjsdhfjksdhfkjsdhfkjsdhfkjdshfkjsdhfkjsdhjfkhajkdshfjksdahftodaaksjdfhaksjdfhaksjdafhkjshdfaaskdhfakjdshfkjasdhfjksdhfkjdsahfkjdshfkjsdhfjksdhfkjsdhfkjsdhfkjdshfkjsdhfkjsdhjfkhajkdshfjksdahffkjsdhfkjsdhfkjshdfkjsdhfkjsdhfkjsdfhakjfsdfhkjsdfhkjsdhfsdfdsy")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                        .background()
                        .cornerRadius(16)
                        .shadow(color: .gray, radius: 5)

            }
        }

            .padding(.vertical, 100)
            .padding(.horizontal, 20)
        }
    struct scratch_Previews: PreviewProvider {
        static var previews: some View {
            scratch()
        }
    }
}

//
//  FirstBootView.swift
//  Treasureventure
//
//  Created by Jerish Bovas on 2022-04-28.
//

import SwiftUI

struct FirstBootView: View {
    
    private var basicviewmodel = BasicViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Spacer()
            VStack(alignment: .center){
                Text("Welcome to ")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                Text("Treasureventure")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
            }
            infoPart
            Spacer()
            Spacer()
            VStack {
                Button {
                    basicviewmodel.setFirstTime(false)
                } label: {
                    HStack{
                            Spacer()
                            Text("Continue")
                            .font(.headline)
                            .padding(10)
                            Spacer()
                        }
                }
                .buttonStyle(.borderedProminent)
                Link("View terms and privacy policies", destination: URL(string: "https://www.jerishbovas.com/treasureventure/privacy")!)
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            Spacer()

        }
        .padding(30)
    }
}

struct FirstBootView_Previews: PreviewProvider {
    static var previews: some View {
        FirstBootView()
    }
}

extension FirstBootView {
    
    private var infoPart: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 15) {
                Image(systemName: "person.text.rectangle")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .frame(width: 40, alignment: .center)
                VStack(alignment: .leading) {
                    Text("Create your profile")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("New feature lets you create your own profile to sync your achievements")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            HStack(spacing: 15) {
                Image(systemName: "photo.on.rectangle.angled")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .frame(width: 40, alignment: .center)
                VStack(alignment: .leading) {
                    Text("Items with Images")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("All items includes images to help you in finding the item.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            HStack(spacing: 15) {
                Image(systemName: "map.fill")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .frame(width: 40, alignment: .center)
                VStack(alignment: .leading) {
                    Text("Location based quests")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Game uses your current location to provide you the quests nearby")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
    }
}

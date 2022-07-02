//
//  BasicViewModel.swift
//  ScavengerHunt
//
//  Created by Jerish Bovas on 2022-04-28.
//

import Foundation
import SwiftUI

class FunctionsLibrary{
    
    public func setFirstTime(_ val: Bool){
        UserDefaults.standard.set(val, forKey: "firstTime")
    }
    
    public func getCompressedImage(image: UIImage) -> Data?{
        guard var correctImage = image.jpegData(compressionQuality: 1.0) else {
            return nil
        }
        let count = correctImage.count / 1024
        if(count > 256){
            let longQuality = Double(256) / Double(count)
            let quality = Double(floor(100 * longQuality)/100)
            print(quality)
            
            if let newImage = image.jpegData(compressionQuality: CGFloat(quality)){
                correctImage = newImage
            }
        }
        
        return correctImage
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

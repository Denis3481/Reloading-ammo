//
//  File.swift
//  
//
//  Created by Денис Шишкин on 31.01.2023.
//

import Foundation

// MARK: - Select
struct Select: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
 public  var  idRecipe, nameRecipe, ulrPic: String

    enum CodingKeys: String, CodingKey {
        case idRecipe = "id_recipe"
        case nameRecipe = "name_recipe"
        case ulrPic = "ulr_pic"
    }
}


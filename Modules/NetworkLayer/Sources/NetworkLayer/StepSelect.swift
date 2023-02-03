//
//  File.swift
//  
//
//  Created by Денис Шишкин on 01.02.2023.
//

import Foundation


// MARK: - StepSelect
 public struct StepSelect: Codable {
   let data: [Step]
}


// MARK: - Datum
public struct Step: Codable {
 public  var idStep, nameStep, descStep, ulrPic: String

    enum CodingKeys: String, CodingKey {
        case idStep = "id_step"
        case nameStep = "name_step"
        case descStep = "desc_step"
        case ulrPic = "ulr_pic"
    }
}

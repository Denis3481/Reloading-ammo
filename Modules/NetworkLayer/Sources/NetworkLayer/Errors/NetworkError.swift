//
//  NetworkError.swift
//  
//
//  Created by Денис Шишкин on 31.01.2023.
//

import Foundation

public enum NetworkError: Error {
   case custom(String)
   case emptyData
   case wrongJson(String)
}

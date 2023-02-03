//
//  Types.swift
//  
//
//  Created by Денис Шишкин on 31.01.2023.
//

import Foundation

public typealias NetworkResult = Result<Array<RecipeType>, NetworkError>
public typealias ReloadingCallback = (NetworkResult)-> Void


//
//  DownloadOperation.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 02.02.2023.
//

import Foundation
import NetworkLayer

class DownloadOperation : AsyncOperation {
    
    var outputImage: Data? = nil
    lazy var  urlSessions: URLSession? = {
        URLSession.init(configuration: URLSessionConfiguration.default)
    }()
    
    private var dataTask: URLSessionDataTask? = nil
    
    private var url: String? = nil
    
    convenience init(url: String) {
        self.init()
        self.url = url
    }
    
    override func main() {
        guard let urlPath = URL(string: url!) else {
            state = .finished
            return
        }
        let request = URLRequest(url: urlPath)
        
        self.dataTask = urlSessions?.dataTask(with: request, completionHandler: { data, response, error in
            if let data = data {
                self.outputImage = data
            }
            self.state = .finished
        })
        self.dataTask?.resume()
    }
}

//
//  API.swift
//  ViperApi
//
//  Created by Balla Tamás on 2022. 10. 03..
//

import Foundation

public enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
}

private let BASEURL: String = "free-news.p.rapidapi.com"

class API {
    
    let headers = [
        "X-RapidAPI-Key": "a77812708amshbecbfa835cfb89ap17448bjsnbd959e6c19ca",
        "X-RapidAPI-Host": BASEURL
    ]
    
    // Make api singleton
    public static let instance: API = API()
    
    private init() {}
    
    
    
    public func searchArticles(withQuery query: String) {
        let request = NSMutableURLRequest(url: NSURL(string: "\(BASEURL)/v1/search?q=\(query)")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        
        request.httpMethod = HTTPMethod.GET.rawValue
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, _, error in
            guard let data = data, error == nil else {
                // self?.presenter?.interactorDidFetchArticles(with: .failure(error))
                return
            }
            
            do {
                let entities = try JSONDecoder().decode([Article].self, from: data)
                // NotificationCenter.default.post(name: .articles(entities), object: nil)
            } catch{
                print("Something went wrong")
            }
            
        }
        
        dataTask.resume()
    }
}

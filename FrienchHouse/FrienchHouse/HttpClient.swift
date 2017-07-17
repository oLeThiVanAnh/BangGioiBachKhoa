//
//  HttpClient.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/11/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import Foundation
import Alamofire

class HttpClient {

    enum API: String {
        case collections              = "collections"
        case collection_detail       = "collection_detail"
        case dress_detail            = "dress_detail"
    }
    enum ResponseStatus: Int {
        case success = 201
        case unauthorizedSuccess = 204
        case invalid = 400
        case unauthorized = 401
        case unknown
    }
    private let baseURL = "https://api.frienchhouse/"
    typealias Response = (ResponseStatus, [String: Any]?) -> Void

    static let shared = HttpClient()

    func callrequest(method: HTTPMethod, api: API, params: Dictionary<String, Any>? = nil, headers: HTTPHeaders? = nil, success: @escaping Response, failure: @escaping (String?) -> Void) {
        let url = baseURL + api.rawValue
        Alamofire.request(url, method: method, parameters: params, encoding: URLEncoding.default, headers: headers).responseData { (response) in
            switch response.result {
                case .success(let value):
                    guard let code = response.response?.statusCode, let statusCode = ResponseStatus(rawValue: code) else {
                        success(.unknown, nil)
                        return
                    }
                    guard let json = try? JSONSerialization.jsonObject(with: value, options: []), let resultValue = json as?
                        [String: Any] else {
                        success(statusCode, nil)
                        return
                    }
                    success(statusCode, resultValue)
                case .failure(let error):
                    failure(error as? String)
            }
        }
    }
}


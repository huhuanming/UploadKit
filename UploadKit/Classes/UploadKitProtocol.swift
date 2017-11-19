//
//  UploadKitProtocol.swift
//  UploadKit
//
//  Created by Huanming Hu  on 2017/11/18.
//

import Foundation

public protocol UKTaskProtocol {
    
    static var config: Dictionary<String, String> { get set }
    
    var request: NSMutableURLRequest { get set }
    
    var identifier: String { get set }

    func onSuccess(response: Any)
    
    func onFail(response: Any)
    
    func onProgress(bytesSent: Int, totalBytesSent: Int, Bresponse: Any)
    
    func onComplete()
}

public struct UKFileConfig: Codable {
    
    var taskType: String
    
    var taskConfig: [String: String]
}

public protocol UKFileProtocol: Codable {
    
    var identifier: String { get set }
    
    var config: UKFileConfig { get set }
    
    var localUri: URL { get }
}

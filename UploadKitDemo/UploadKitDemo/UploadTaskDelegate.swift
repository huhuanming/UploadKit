//
//  UploadTaskProtocol.swift
//  UploadKitDemo
//
//  Created by Huanming Hu  on 2016/10/29.
//  Copyright © 2016年 UploadKit. All rights reserved.
//

import Foundation

protocol UploadTaskDelegate {
    var url: URL { get set }
    var httpHeaders: Dictionary<String, String> { get set }
    var httpBody: Data { get set }
    var request: NSMutableURLRequest { get }
    var task: URLSessionTask { get }
    var priority: Int { get set }
    func before(beforeFunc: ()  -> Void) -> Self
    func process(process: (Progress)->Void) -> Self
    func complete(completeFunc: ()  -> Void) -> Self
    func success(successFunc: (Data)  -> Void) -> Self
    func failure(failureFunc: (Error , Data, String)  -> Void) -> Self
    func start()
}

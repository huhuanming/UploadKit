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
    func before(before_func: ()  -> Void) -> Self
    func complete(complete_func: ()  -> Void) -> Self
    func success(success_func: (Data)  -> Void) -> Self
    func failure(failure_func: (Error , Data, String)  -> Void) -> Self
    func start()
}

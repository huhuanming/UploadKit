//
//  UploadQueue.swift
//  UploadKitDemo
//
//  Created by Huanming Hu  on 2016/10/29.
//  Copyright © 2016年 UploadKit. All rights reserved.
//

import Foundation

class UploadQueue {
    var defaultBackend: UploadBackendDelegate
    var tasks: Array<UploadTaskDelegate> = []
    var maximumConcurrent : Int = 1
    
    init() {
        
    }
    
    func start() -> Void {

    }
    
    func pause() -> Void {
        
    }
    
    func stop() -> Void {
        
    }
}

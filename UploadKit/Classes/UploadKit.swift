import Foundation

public enum UKTaskStatus: Int, Codable {
    case pending, doing, done, error
}

public struct UKTaskState: Codable {
    var bytesSent: Int = 0
    var totalBytesSent: Int = 0
    var status: UKTaskStatus
    var description: String?
    
    init(status: UKTaskStatus) {
        self.status = status
    }
}

typealias UKIdentifier = String

public struct UKFileState: Codable {
    var uri: URL
    var identifier: UKIdentifier
    var config: UKFileConfig
}

public struct UKState: Codable  {
    var fileQueue: [UKFileState]
    var taskStates: Dictionary<UKIdentifier, UKTaskState>
}

public class Uploader {
    
    public static let shared = Uploader()
    
    public var poolSize: Int = 0
    
    public var maxConcurrentNumber: Int = 0
    
    public private(set) var isRunning: Bool = false
    
    public private(set) var state: UKState = UKState(fileQueue: [], taskStates:[:])
    {
        didSet
        {
            
        }
    }

    @discardableResult
    public func addFile(file: UKFileProtocol) -> Uploader {
        state.fileQueue.append(UKFileState(
                uri: file.localUri,
                identifier: file.identifier,
                config: file.config
            ))
        state.taskStates[file.identifier] = UKTaskState(status: UKTaskStatus.pending)
        return Uploader.shared
    }
    
    private init() {
    }
    
}

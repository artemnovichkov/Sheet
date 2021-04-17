//
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//


import Foundation

extension URL: Identifiable {
    
    public var id: String {
        absoluteString
    }
}

extension String: Identifiable {
    
    public var id: String {
        self
    }
}

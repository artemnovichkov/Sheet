//
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct SafariView: View {
    
    @State var url: URL
    
    var body: some View {
        NavigationView {
            Text("Content of " + url.absoluteString)
                .navigationBarTitle("Working with modal views in SwiftUI", displayMode: .inline)
        }
    }
}

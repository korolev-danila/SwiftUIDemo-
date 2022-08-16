//
//  UserResponse2.swift
//  SwiftUITest
//
//  Created by Данила on 15.08.2022.
//

import Foundation
import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}


import Foundation

enum ValidationErrorType {
    case Required,
    Email,
    Password,
    MinLength,
    MaxLength,
    ZipCode,
    PhoneNumber,
    FullName,
    NoError
    
    func description() -> String {
        switch self {
        case .Required:
            return "Required field"
        case .Email:
            return "Must be a valid email"
        case .Password:
            return "Must be a valid Password"
        case .MaxLength:
            return "This field should be less than"
        case .ZipCode:
            return "5 digit zipcode"
        case .PhoneNumber:
            return "10 digit phone number"
        case .FullName:
            return "Provide a first & last name"
        default:
            return ""
        }
    }
    
}
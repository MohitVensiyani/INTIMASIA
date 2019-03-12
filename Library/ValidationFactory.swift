
import Foundation

class ValidationFactory {
    class func validationForRule(rule:ValidationRuleType) -> Validation {
        switch rule {
        case .Required:
            return RequiredValidation()
        case .Email:
            return EmailValidation()
        case .Password:
            return PasswordValidation()
        case .MinLength:
            return MinLengthValidation()
        case .MaxLength:
            return MaxLengthValidation()
        case .PhoneNumber:
            return PhoneNumberValidation()
        case .ZipCode:
            return ZipCodeValidation()
        case .FullName:
            return FullNameValidation()
        default:
            
            return RequiredValidation()
        }
    }
}

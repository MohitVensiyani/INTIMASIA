
import Foundation
import UIKit

class ValidationRule {
    let textField:UITextField
    var rules:[ValidationRuleType] = []
    
    init(textField:UITextField, rules:[ValidationRuleType]){
        self.textField = textField
        self.rules = rules
    }
    
    func validateField() -> ValidationError? {
        for rule in rules {
            let validation = ValidationFactory.validationForRule(rule)
            let attempt:(isValid:Bool, error:ValidationErrorType) = validation.validate(textField.text!)
            if !attempt.isValid {
                return ValidationError(textField: textField, error: attempt.error)
            }
        }
        return nil
    }
    
}

import Foundation
import UIKit

class ValidationError {
    let textField:UITextField
    let error:ValidationErrorType
    
    init(textField:UITextField, error:ValidationErrorType){
        self.textField = textField
        self.error = error
    }
    
}
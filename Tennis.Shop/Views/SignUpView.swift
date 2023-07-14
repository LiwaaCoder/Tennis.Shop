//
//  SignUpView.swift
//  Tennis.Shop
//
//  Created by liwaa on 04/07/2023.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct SignUpView: View {
    @Binding var isLoggedIn: Bool
    @State private var phoneNumber = ""
    @State private var verificationCode = ""
    @State private var verificationID = ""
    @State private var isCodeSent = false
    
    var body: some View {
            VStack {
                if !isCodeSent {
                    TextField("Phone Number", text: $phoneNumber)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .autocapitalization(.none)
                        .keyboardType(.numberPad)
                } else {
                    TextField("Verification Code", text: $verificationCode)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .autocapitalization(.none)
                        .keyboardType(.numberPad)
                }
                
                Button(action: {
                    if !isCodeSent {
                        sendVerificationCode()
                    } else {
                        verifyPhoneNumber()
                    }
                }) {
                    Text(isCodeSent ? "Verify" : "Send Code")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.top, 30)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
            .padding()
        }
    
    func sendVerificationCode() {
        // Validate the phone number format
        guard phoneNumber.count >= 10 else {
            // Display an error message or handle the validation failure
            return
        }
        
        // Request verification code from Firebase
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
            if let error = error {
                // Error occurred during verification code request
                // Display an error message or handle the failure
                print("Verification code request error: \(error.localizedDescription)")
            } else if let verificationID = verificationID {
                // Verification code sent successfully
                self.isCodeSent = true
                self.verificationID = verificationID
            }
        }
    }
    
    func verifyPhoneNumber() {
        // Validate the verification code
        guard !verificationCode.isEmpty else {
            // Display an error message or handle the validation failure
            return
        }
        
        // Create a Firebase credential with the verification ID and verification code
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID, verificationCode: verificationCode)
        
        // Sign in with the phone number credential
        Auth.auth().signIn(with: credential) { authResult, error in
            if let error = error {
                // Error occurred during phone number authentication
                // Display an error message or handle the authentication failure
                print("Phone number authentication error: \(error.localizedDescription)")
            } else {
                // Phone number authentication successful
                // You can perform additional actions, such as saving user data to a database
                print("Phone number authentication successful")
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    @State static var isLoggedIn = false
    
    static var previews: some View {
        SignUpView(isLoggedIn: $isLoggedIn)
    }
}

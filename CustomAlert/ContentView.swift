//
//  ContentView.swift
//  CustomAlert
//
//  Created by Zeeshan Suleman on 02/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var presentAlert = false
    
    var body: some View {
        ZStack{
            
            Button{
                withAnimation{
                    presentAlert.toggle()
                }
            } label: {
                Text("Show Custom Alert")
            }
            
            if presentAlert{
                
//                Success Alert
                
//                CustomAlert(presentAlert: $presentAlert) {
//                    withAnimation{
//                        presentAlert.toggle()
//                    }
//                } rightButtonAction: {
//                    withAnimation{
//                        presentAlert.toggle()
//                    }
//                }

                
//                Error Alert
                
                CustomAlert(presentAlert: $presentAlert, alertType: .error(title: "Error", message: "Please confirm that you're still open to session requests then you will find the call from new user."), isShowVerticalButtons: true){
                    withAnimation{
                        presentAlert.toggle()
                    }
                } rightButtonAction: {
                    withAnimation{
                        presentAlert.toggle()
                    }
                }
            }
        }
    }
}

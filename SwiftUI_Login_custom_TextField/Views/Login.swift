//
//  Login.swift
//  SwiftUI_Login_custom_TextField
//
//  Created by Seogun Kim on 2021/06/14.
//
import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @Namespace var animation
    
    @State var show = false
    
    var body: some View {
        
        VStack{
            
            Spacer(minLength: 0)
            
            HStack{
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("로그인")
                        .font(.system(size: 40, weight: .heavy))
                        // for Dark Mode Adoption...
                        .foregroundColor(.primary)
                    
                    Text("로그인 후 이용하실 수 있습니다.")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "envelope", title: "EMAIL", value: $email,animation: animation)
            
            CustomTextField(image: "lock", title: "PASSWORD", value: $password,animation: animation)
                .padding(.top,5)
            
            HStack{
                
                Spacer(minLength: 0)
                
                VStack(alignment: .trailing, spacing: 20) {
                    
                    Button(action: {}) {
                        
                        Text("아이디를 잊어버리셨나요?")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("yellow"))
                    }
                    
                    Button(action: {}) {
                        
                        HStack(spacing: 10){
                            
                            Text("로그인")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "arrow.right")
                                .font(.title2)
                        }
                        .modifier(CustomButtonModifier())

                    }
                }
            }
            .padding()
            .padding(.top,10)
            .padding(.trailing)
            
            Spacer(minLength: 0)
            
            HStack(spacing: 8){
                
                Text("아이디가 없으신가요?")
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                NavigationLink(destination: Register(show: $show), isActive: $show) {
                    
                    Text("회원가입")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("yellow"))
                }
            }
            .padding()
        }
    }
}


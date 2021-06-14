//
//  Register.swift
//  SwiftUI_Login_custom_TextField
//
//  Created by Seogun Kim on 2021/06/14.
//

import SwiftUI

struct Register: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    @State var number = ""
    
    @Binding var show : Bool
    
    @Namespace var animation
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack{
                
                HStack{
                    
                    Button(action: {show.toggle()}) {
                        
                        Image(systemName: "arrow.left")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .padding()
                .padding(.leading)
                
                HStack{
                    
                    Text("계정 생성")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading)
                
                CustomTextField(image: "person", title: "FULL NAME", value: $name, animation: animation)
                
                CustomTextField(image: "envelope", title: "EMAIL", value: $email, animation: animation)
                    .padding(.top,5)
                
                CustomTextField(image: "lock", title: "PASSWORD", value: $password, animation: animation)
                    .padding(.top,5)
                
                CustomTextField(image: "phone.fill", title: "PHONE NUMBER", value: $number, animation: animation)
                    .padding(.top,5)
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        HStack(spacing: 10){
                            
                            Text("가입하기")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "arrow.right")
                                .font(.title2)
                        }
                        .modifier(CustomButtonModifier())

                    }
                }
                .padding()
                .padding(.top)
                .padding(.trailing)
                
                HStack{
                    
                    Text("이미 가입된 계정이 있으신가요?")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Button(action: {show.toggle()}) {
                        
                        Text("로그인")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("yellow"))
                    }
                }
                .padding()
                .padding(.top,10)
                
            }
        })
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


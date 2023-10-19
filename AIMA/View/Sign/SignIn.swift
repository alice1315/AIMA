//
//  ContentView.swift
//  AIMA
//
//  Created by 黃允謙 on 2023/10/19.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack(){
                // Logo
                VStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 150, height: 150)
                        .background(
                            Image("logo_white")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        )
                    Text(" AIMA  你的學習小老師")
                        .textBasicWhite()
                        .font(.title2)
                        .bold()
                        .kerning(1.3)
                }
                .frame(height: 250, alignment: .top)
                .padding(.top, 20)
                .itemShadow()
                
                // Sign In
                VStack(spacing: 12) {
                    HStack() {
                        Text("使用手機號碼登入")
                            .textBasicWhite()
                            .bold()
                        
                        Button{
                            // Pending
                        } label: {
                            Image(systemName: "arrow.right")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color(.white))
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .itemShadow()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "envelope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        Text("電子信箱")
                          .textBasicGray()
                          .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .inputField()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        Text("密碼")
                          .textBasicGray()
                          .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .inputField()
                }
                
                VStack() {
                    Button {
                        // Pending
                    } label: {
                        Text("忘記密碼")
                            .textBasicWhite()
                            .bold()
                    }
                }
                .frame(height: 60, alignment: .topLeading)
                .padding(.top, 13)

                Button {
                    // Pending
                } label: {
                    Text("登入").welcomeButton()
                }
                
                HStack() {
                    Text("還沒有帳號？")
                        .textBasicWhite()
                    
                    Button {
                        // Pending
                    } label: {
                        Text("註冊帳號")
                            .textBasicWhite()
                            .bold()
                    }
                }
                .frame(height: 60, alignment: .topLeading)
                .padding(.top, 13)
                
                VStack(spacing: 20) {
                    
                    
                    Text("其他方式登入")
                        .textBasicWhite()
                    
                    HStack(alignment: .center, spacing: 40) {
                        
                        Button {
                            // Pending
                        } label: {
                            Image(systemName: "faceid")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .fontWeight(.regular)
                                .frame(width: 42, height: 42)
                                .foregroundColor(Color.white)
                        }
                        
                        Button {
                            // Pending
                        } label: {
                            Image("logo_google")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .clipped()
                        }
                        
                        Button {
                            // Pending
                        } label: {
                            Image("logo_line")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .clipped()

                        }
                    }
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity, alignment: .top)
//                .itemShadow()
                .overlay(
                    Rectangle()
                        .frame(width: nil, height: 1, alignment: .top)
                        .foregroundColor(Color.white), alignment: .top)

            }
            .frame(width: 332)
        }.welcomeFrame()
    }
}

#Preview {
    SignIn()
}

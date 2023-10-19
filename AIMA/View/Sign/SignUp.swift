//
//  SignUp.swift
//  AIMA
//
//  Created by 黃允謙 on 2023/10/19.
//

import SwiftUI

struct SignUp: View {
    @State var username: String = ""
    @State var phone: String = ""
    @State var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Text("註冊帳號")
                    .textBasicWhite()
                    .pageTitle()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 12) {
                    HStack(spacing: 25) {
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))

                        TextField("姓名", text: $username)
                            .foregroundColor(Color("TextColorGray2"))
                            .accentColor(Color("TextColorGray2"))
                    }
                    .inputField()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "phone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        TextField("手機號碼（擇一）", text: $phone)
                            .foregroundColor(Color("TextColorGray2"))
                            .accentColor(Color("TextColorGray2"))
                    }
                    .inputField()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "envelope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        TextField("電子信箱（擇一）", text: $email)
                            .foregroundColor(Color("TextColorGray2"))
                            .accentColor(Color("TextColorGray2"))
                    }
                    .inputField()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        SecureField("請輸入6～8位的半形英數字", text: $password)
                            .foregroundColor(Color("TextColorGray2"))
                            .accentColor(Color("TextColorGray2"))
                    }
                    .inputField()
                    
                    HStack(spacing: 25) {
                        Image(systemName: "lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .fontWeight(.semibold)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("TextColorGray1"))
                        
                        SecureField("再次輸入密碼", text: $password)
                            .foregroundColor(Color("TextColorGray2"))
                            .accentColor(Color("TextColorGray2"))
                    }
                    .inputField()
                }
                .frame(height: 350, alignment: .top)
                .padding(.top, 20)
                
                Button {
                    // Pending
                } label: {
                    Text("繼續").welcomeButton()
                }
                
                HStack() {
                    Text("已經有帳號？").textBasicWhite()
                    
                    Button {
                        // Pending
                    } label: {
                        Text("登入帳號")
                            .textBasicWhite()
                            .bold()
                    }
                }
                .frame(height: 60, alignment: .topLeading)
                .padding(.top, 13)
                
            }
            .frame(width: 332)
            .padding(.top, 50)
        }.welcomeFrame()
    }
}

#Preview {
    SignUp()
}


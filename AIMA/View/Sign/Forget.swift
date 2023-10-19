//
//  Forget.swift
//  AIMA
//
//  Created by 黃允謙 on 2023/10/19.
//

import SwiftUI

struct Forget: View {
    @State var phone: String = ""
    @State var email: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Text("忘記密碼")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .textBasicWhite()
                    .pageTitle()
                
                VStack(spacing: 12) {
                    Text("請輸入註冊之 手機號碼 或 電子信箱：")
                        .frame(maxWidth: .infinity, minHeight: 40, alignment: .topLeading)
                        .textBasicWhite()
                    
                    
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
                }
                .frame(height: 350, alignment: .top)
                .padding(.top, 20)
                
                Button {
                    // Pending
                } label: {
                    Text("寄送驗證碼").welcomeButton()
                }
            }
            .frame(width: 332)
            .padding(.top, 50)
        }.welcomeFrame()
    }
}

#Preview {
    Forget()
}

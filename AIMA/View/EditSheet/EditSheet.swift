//
//  Edit.swift
//  AIMA
//
//  Created by 黃允謙 on 2023/11/12.
//

import SwiftUI

struct Edit: View {
    var body: some View {
        VStack() {
            VStack(spacing: 24) {
                
                TopView(text: "確認上傳檔案")

                VStack(spacing: 20) {
                    // 譜頁面
                    RectangleGradient()
                        .frame(height: 480)
                    
                    HStack(spacing: 20) {
                        Button{
                            // Pending
                        } label: {
                            Image(systemName: "arrowtriangle.left.fill")
                                .foregroundColor(Color("BasicPurple"))
                                .font(.system(size: 20))
                        }
                        
                        HStack(spacing: 15) {
                            Text("1")
                            Text("/")
                            Text("12")
                        }.darkGray()
                        
                        Button{
                            // Pending
                        } label: {
                            Image(systemName: "arrowtriangle.right.fill")
                                .foregroundColor(Color("BasicPurple"))
                                .font(.system(size: 20))
                        }
                    }
                    
                    Spacer()
                    
                    // 確認
                    HStack(spacing: 50) {
                        Button{
                            // Pending
                        } label: {
                            Text("取消上傳").secButton()
                        }
                        
                        Button{
                            // Pending
                        } label: {
                            Text("確認上傳").mainButton()
                        }
                    }
                    
                    
                    
                    
                }
            }
        }
        .frame(maxWidth: 332, maxHeight: .infinity, alignment: .top)
        .padding(.top, 30)
        .safeAreaInset(edge: .bottom, spacing: 15){FooterView}
    }
}

#Preview {
    Edit()
}

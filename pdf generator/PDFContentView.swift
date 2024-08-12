//
//  PDFContentView.swift
//  pdf generator
//
//  Created by Allan Njiru on 09/08/2024.
//

import SwiftUI

import SwiftUI

struct PDFContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Valuation Report")
                    Spacer()
                    Text(formattedCurrentDate())
                }
                .font(.system(size: 14))
                
                Divider()
                
                HStack {
                    Spacer()
                    Text("PCMY - Property Calculator Malaysia")
                        .foregroundColor(Color("blue_color"))
                        .font(.system(size: 14, weight: .bold))
                        .padding(.bottom, 20)
                        .padding(.top, 10)
                    Spacer()
                }
                
                
                Group {
                    HStack {
                        Text("DETAILS")
                            .font(.system(size: 14))
                            .bold()
                            .foregroundColor(Color("blue_color"))
                        Spacer()
                    }

                    HStack {
                        Text("Purchase Price")
                        Spacer()
                        Text("100,000.00")
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)

                    HStack {
                        Text("Disbursements")
                        Spacer()
                        Text("500.00")
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)
                    .padding(.vertical,10)
                    .background(Color(UIColor.systemGray6))
                }
                
                Group {
                    HStack {
                        Text("SUMMARY")
                            .font(.system(size: 14))
                            .bold()
                            .foregroundColor(Color("blue_color"))
                        Spacer()
                    }
                    
                    HStack {
                        Text("Valuation Fee")
                        Spacer()
                        Text("400.00")
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Disbursements")
                        Spacer()
                        Text("500.00")
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)
                    .padding(.vertical,10)
                    .background(Color(UIColor.systemGray6))
                    
                    HStack {
                        Text("SST (8%)")
                        Spacer()
                        Text("72.00")
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Total")
                        Spacer()
                        Text("972.00")
                            .bold()
                    }
                    .font(.system(size: 12))
                    .padding(.horizontal, 20)
                    .padding(.vertical,10)
                    .background(Color(UIColor.systemGray6))
                }
                
                HStack {
                    Spacer()
                    Text("Disclaimer")
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color("blue_color"))
                    Spacer()
                }
                .padding(.top, 20)
                
                Text("All data and information provided by PCMY - Property Calculator Malaysia are for informational purposes only. We’ve made every effort to ensure the accuracy and reliability of the calculations, correctness, completeness, suitability, or validity of any information and we shall not be liable for any errors, omissions, or delays in this information or any losses, injuries, or damages arising from its display or use. All information is provided on an as-is basis. Should you require further information, please check with the respective personnel.")
                    .font(.system(size: 10))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                Spacer()
                
                HStack {
                    Text("Powered by © ")
                        .font(.system(size: 10))
                    + Text("PCMY - Property Calculator Malaysia")
                        .font(.system(size: 10))
                        .foregroundColor(Color("blue_color"))
                    + Text(" • Malaysia's Most Comprehensive Property & Real Estate Tools")
                        .font(.system(size: 10))
                }
                
                
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 20)
        }
    }
    
    private func formattedCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a, d MMM yyyy"
        return dateFormatter.string(from: Date())
    }
}



struct PDFContentView_Previews: PreviewProvider {
    static var previews: some View {
        PDFContentView()
    }
}

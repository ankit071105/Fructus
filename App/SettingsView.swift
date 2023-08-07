//
//  SettingsView.swift
//  Fructus
//
//  Created by ANKIT KUMAR on 05/08/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    HStack{
                        Image("logo")
                            .renderingMode(.original)
                            .resizable()
                            .background(Color.green)
                            .scaledToFit()
                            .frame(width: 100, height: 140, alignment: .leading)
                            .cornerRadius(40)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text("Fructus")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.137, brightness: 0.184))
                            Text("Most Fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are source of many essential nutrients, including potassium, dietary liber, vitamins and much more")
                                .font(.caption)
                                .italic()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.084, brightness: 0.31))
                            
                        }
                        
                        
                        
                        
                    }// Hstack
                    VStack{
                        Text("Customization")
                            .font(.title)
                            .fontWeight(.heavy)
                            .italic()
                            .padding(.bottom, 20)
                            .frame(maxWidth: 640, alignment: .leading)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.137, brightness: 0.184))
                        Text("If you wish you can Restart the App")
                            .font(.body)
                            .italic()
                            .foregroundColor(Color(hue: 1.0, saturation: 0.084, brightness: 0.31))
                        
                    }
                    Button(action: {
                        isOnBoarding = true
                    }){
                        HStack(spacing: 55){
                            Text("Restart")
                              
                            Image(systemName: "arrow.right.circle")
                             
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fill)
                                .imageScale(.large)
                                .foregroundColor(.black)
                                .frame(width: 15, height: 10)


                        }
                        .padding(.all)

                        .background(
                            Capsule().strokeBorder(Color.black, lineWidth: 1.5) )
                      

                    }
          
                    
                    Section( header: Text("About The App"),
                             footer: HStack {
                        Spacer()
                        Text("copyright © All right reserved.")
                        Spacer()
                    }.padding(.vertical , 8)
                    ) {
                        CustomListView(rowLabel: "Applications", rowIcon: "apps.iphone", rowContent: "Fructus", rowTintColor: .blue)
                        CustomListView(rowLabel: "Compatiblity", rowIcon: "info.circle", rowContent: "ios, ipadOS", rowTintColor: .red)
                        CustomListView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                        CustomListView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                        CustomListView(rowLabel: "Designer",
                                       rowIcon: "paintpalette", rowContent: "Ankit Kumar", rowTintColor: .pink)
                    
                        CustomListView(rowLabel: "Website",
                                       rowIcon: "globe", rowContent: nil, rowTintColor: .indigo,
                                          rowLinkLabel: "Ankit Profile Linkedin" ,
                                      rowLinkDestination: "https://www.linkedin.com/in/ankit-kumar-01a52827b/")
                        
                    }
                    .padding(.horizontal, 30)

                    }// Vstack
                }// Scroll
            .background(Color(hue: 0.579, saturation: 0.378, brightness: 0.943, opacity: 0.889))
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
            }// Navigation
   
        }
    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

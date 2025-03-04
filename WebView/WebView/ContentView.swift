//
//  ContentView.swift
//  WebView
//
//  Created by Marc on 2/10/24.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @Environment(\.mainWindowSize) var mainWindowSize
    @State private var myWidth = 350
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                 
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        WebView(htmlString: getHtmlString())
                            .frame(maxWidth: .infinity)
                            .frame(height: 400)
                            .padding(.top)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Informació")
                                .font(.title)
                            
                            Label("Distancia: 23km", systemImage: "figure.walk")
                            Label("Elevació total: 50m", systemImage: "mountain.2")
                            Label("Tipus de recorregut: Flora", systemImage: "leaf")
                            
                            Text("Sobre el recorregut")
                                .font(.title2)
                                .bold()
                                .padding(.top)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                               
                            Spacer()
                            
                            Label("Inicia recorregut", systemImage: "play")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background { Color.accentColor }
                                .foregroundStyle(Color.white)
                                .clipShape(.capsule)
                        }.padding(.horizontal)
                        
                    }
                }
                .padding(.bottom)
                .scrollIndicators(.hidden)
            }
            .navigationTitle("Hortes Sta Eugenia!")
            
        }
    }
    
    
    private func getHtmlString() -> String {
        let html = """
            <header><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'></header>
    <iframe frameBorder="0" scrolling="no" src="https://es.wikiloc.com/wikiloc/embedv2.do?id=66406183&elevation=off&images=off&maptype=H" width="\(myWidth)" height="350"></iframe><div style="color:#777;font-size:11px;line-height:16px;">Powered by&nbsp;<a style="color:#4C8C2B;font-size:11px;line-height:16px;" target="_blank" href="https://es.wikiloc.com">Wikiloc</a></div>
    """
        
        return html
    }
}

#Preview {
    ContentView()
}

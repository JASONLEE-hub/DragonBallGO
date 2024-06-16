//
//  MapView.swift
//  DragonBallGO
//
//  Created by 이재승 on 6/3/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MapCameraPosition = .userLocation(fallback: .automatic)
    @State private var dummyRegion: MapCameraPosition = .region(.dummyRegion)
    @State private var mapSelection: MKMapItem?
    @State private var isShowingRaderView: Bool = false
    
    var body: some View {
        VStack {
            Map(position: $dummyRegion, selection: $mapSelection) {
                /*
                 UserAnnotation(anchor: .center)
                 */
                Annotation("User", coordinate: .dummyLocation) {
                    ZStack {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.blue.opacity(0.25))
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                        
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.blue)
                    }
                }
                Annotation("1Star", coordinate: CLLocationCoordinate2D(latitude: 37.14712281365863, longitude: 127.33589695581377), anchor: .bottom) {
                    ZStack {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.red.opacity(0.25))
                        Image(._1Star)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fill)
                    }
                    
                }
            }
            .mapControls {
                MapCompass()
                MapPitchToggle()
                MapUserLocationButton()
            }
            .overlay(alignment: .bottomLeading, content: {
                Button {
                    
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 80)
                            .foregroundStyle(.yellow.opacity(0.3))
                        Image(.goku)
                            .resizable()
                            .frame(width: 100, height: 80)
                        Text("1")
                            .font(.title2)
                            .foregroundStyle(.red)
                            .bold()
                            .offset(x: -28, y: -5)
                    }
                }
                
            })
            .overlay(alignment: .bottom, content: {
                Button {
                    
                } label: {
                    Image(.zstar)
                        .resizable()
                        .frame(width: 90, height: 90)
                }
                
            })
            .overlay(alignment: .bottomTrailing) {
                Button(action: {
                    isShowingRaderView.toggle()
                }, label: {
                    ZStack {
                        Image(.dragonRader)
                            .resizable()
                            .frame(width: 90, height: 90)
                        Text("5 Km")
                            .foregroundStyle(.red)
                            .bold()
                    }
                })
            }
        }
        .sheet(isPresented: $isShowingRaderView, content: {
            DragonRaderView()
        })
    }
}

extension CLLocationCoordinate2D {
    static var dummyLocation: CLLocationCoordinate2D {
        return .init(latitude: 37.14765302474348, longitude: 127.33407305368364)
    }
}

extension MKCoordinateRegion {
    static var dummyRegion: MKCoordinateRegion {
        return .init(center: .dummyLocation, latitudinalMeters: 500, longitudinalMeters: 500)
    }
}

#Preview {
    MapView()
}

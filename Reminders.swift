//
//  Reminders.swift
//  Stay Prepared
//
//  Created by sunitha on 1/4/23.
//

import Foundation
import SwiftUI
import Combine

struct Checklist: View {
    
    @State var todo: [String] = [
        "Designate an emergency meeting location",
        "Plan escape routes",
        "Family communication plan",
        "Test your fire extinguisher",
        "Know the main control locations",
        "Create an emergency supply kit per person",
        "Write a list of emergency contacts",
        "Sign up for wildfire alerts in your area"
    ]
    
    @State var descripts: [String] = [
        "Make sure it is far from your house and accesssible for everyone",
        "Plan out a route on google maps and share with everyone in your family; take into account dry fuel",
        "Designate out of area friends as points of contact in the case of an emergency",
        "Make sure everyone knows how to use them!",
        "Inform everyone of the gas, electric, and water shut-off controls",
        "Check out ready.gov for more details",
        "Make sure the contacts are known by everyone",
        "Sign up on sccalert.com for alerts specifically for your city"
    ]
    
    @State var show: [Bool] = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    ]
    
    @State var done: [Bool] = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    ]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                Spacer()
                Text("Preparedness Checklist")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            
            Lis25t {
                Section(header:Text("Evacuation Plan Checklist")) {
                    ForEach(0..<3, id: \.self) { i in
                        //VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(todo[i].capitalized)
                                    
                                    Button {
                                        show[i] = !show[i]
                                    } label: {
                                        Text("Details")
                                            .font(.caption)
                                            .foregroundColor(.blue)
                                            
                                    }
                                    .controlSize(.small)
                                    if show[i] {
                                        Text(descripts[i])
                                            .font(.caption)
                                            .foregroundColor(.purple)
                                    }
                                }
                                
                                Spacer()
                                
                                Button {
                                    done[i] = !done[i]
                                } label: {
                                    if done[i] {
                                        Text("Completed!")
                                        .foregroundColor(.green)
                                    }
                                    else{
                                        Text("Incomplete")
                                        .foregroundColor(.red)
                                    }
                                }
                                .buttonStyle(.bordered)
                                .controlSize(.small)
                                
                            }
                       // }
                    }
                }
            }
            
            //evacuation plan
            List {
                Section(header:Text("Preparedness Plan Checklist")) {
                    ForEach(3..<(todo.count), id: \.self) { i in
                        //VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(todo[i].capitalized)
                                    
                                    Button {
                                        show[i] = !show[i]
                                    } label: {
                                        Text("Details")
                                            .font(.caption)
                                            .foregroundColor(.blue)
                                    }
                                    .controlSize(.small)
                                    if show[i] {
                                        Text(descripts[i])
                                            .font(.caption)
                                            .foregroundColor(.purple)
                                    }
                                }
                                
                                Spacer()
                                
                                Button {
                                    done[i] = !done[i]
                                } label: {
                                    if done[i] {
                                        Text("Completed!")
                                        .foregroundColor(.green)
                                    }
                                    else{
                                        Text("Incomplete")
                                        .foregroundColor(.red)
                                    }
                                }
                                .buttonStyle(.bordered)
                                .controlSize(.small)
                                
                            }
                    }
                }
            }
            //Spacer(minLength:100)
            
        }
    }
}

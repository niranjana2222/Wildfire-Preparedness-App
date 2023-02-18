//
//  ContentView.swift
//  Stay Prepared
//
//  Created by sunitha on 1/3/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        
        if currentPage > totalPages {
            HomePage()
        }
        else {
            WalkthroughScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Homepage
struct HomePage: View
{
    @State var goBack = false
    @State var reminders = false
    @State var contacts = false
    @State var kit = false
    @State var alerts = false
    @State var checklist = false
    @State var resources = false
    @State var home = true
    
    @State var showingAlert = true

    var body: some View
    {
        //NavigationView {
            if goBack {
                WalkthroughScreen()
            
            } else if reminders {
                VStack {
                    Button(action: {
                            reminders = false
                            home = true
                        
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                    
                    Reminders()
                }
            
            } else if contacts {
                VStack {
                    Button(action: {
                        
                            contacts = false
                            kit = false
                            alerts = false
                            checklist = false
                            resources = false
                        
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                    
                    Contacts()
                }
            
            }else if kit {
                VStack {
                    //Spacer(minLength:-100)
                    Button(action: {
                        
                            contacts = false
                            kit = false
                            alerts = false
                            checklist = false
                            resources = false
                            
                        
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                        //.padding(.top, -37.0)
                    
                    Kit()
                    //Spacer()
                    
                }
            
            }
            /*else if alerts {
                VStack {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            alerts = false
                            
                        }
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                    
                    Alerts()
                }
            
            }*/else if checklist {
                VStack {
                    Button(action: {
                        contacts = false
                        kit = false
                        alerts = false
                        checklist = false
                        resources = false
                            
                        
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                        //.padding(.top, -37.0)
                    
                    Checklist()
                    //Spacer()
                }
            
            }else if resources {
                VStack {
                    Button(action: {
                        contacts = false
                        kit = false
                        alerts = false
                        checklist = false
                        resources = false
                        
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                        .padding(.trailing, 300.0)
                        //.padding(.top, -37.0)
                    
                    Resources()
                }
            
            }else {
                VStack {
                    
                    Spacer()
                   
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation(.easeInOut) {
                                goBack = true
                                
                            }
                        }, label:{
                            Text("<")
                                .font(.system(size:15, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(10)
                        })
                        
                        Spacer()
                        
                        Text("Prepare Your Home")
                        .font(.title)
                        .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.easeInOut) {
                                reminders = true
                            }
                        }, label: {
                            Text("!")
                                .font(.system(size:15, weight: .semibold))
                                .foregroundColor(.black)
                                .frame(width:25, height:25)
                                .background(Color.yellow)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                            .stroke(Color.black.opacity(0.04), lineWidth: 4)
                                            .padding(-8)
                                    
                                    )
                            })
                        
                        Spacer()
                    }
                    
                    Button(action: {contacts = true}, label: {
                        Text("Emergency Contacts")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Button(action: {kit = true}, label: {
                        Text("Emergency Kit")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                            
                    })
                    /*
                    Button(action: {alerts = true}, label: {
                        Text("Local Alerts")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    */
                    Button(action: {checklist = true}, label: {
                        Text("  Preparing Checklist  ")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Button(action: {resources = true}, label: {
                        Text("Information Resources")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 250.0)
                            .background(Color.red)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                    })
                    
                    Spacer()
                    HStack{
                        Spacer()
                        Spacer()
                        Image("image1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Text("WAI")
                            .font(.footnote)
                        Spacer()
                        Text("waiforchange@gmail.com")
                            .font(.footnote)
                        Spacer()
                        Text("Instagram: @waiforchange")
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
            }
        //}
    }
}

import UserNotifications
//reminder page
struct Reminders: View
{
    @State var good = false
    @State var bg = Color.red
    var body: some View
    {
        VStack {
            
            HStack {
                
                Spacer()
                Text("Reminders")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            
            Button(
                action: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) {success, error in
                        if success {
                            bg = Color.green
                        }else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }, label: {
                    VStack {
                        Text("Agree to Notifications")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding([.top, .leading, .bottom, .trailing])
                            .frame(width: 300.0)
                            .background(bg)
                            .cornerRadius(4.0)
                            .hoverEffect(.lift)
                        Text("This app needs permission to give you notifications.")
                            .font(.body)
                            .foregroundColor(.black)
                            .frame(width: 300.0)
                            .padding([.top, .leading, .bottom, .trailing])
                    }
            })
            
            
            Button( action: {
                let content = UNMutableNotificationContent()
                content.title = "Check your emergency kit"
                content.subtitle = "It's been a year already!"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval:5, repeats:false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }, label: {
                VStack {
                    Text("Emergency Kit Checkup")
                        .font(.headline)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding([.top, .leading, .bottom, .trailing])
                        .frame(width: 300.0)
                        .background(.blue)
                        .cornerRadius(4.0)
                        .hoverEffect(.lift)
                    Text("Reminder to check and update items in your emergency kit in one month.")
                        .font(.body)
                        .foregroundColor(.black)
                        .frame(width: 300.0)
                        .padding([.top, .leading, .bottom, .trailing])
                }
            })
            
        }
    }
}

import Contacts
//contacts page
struct Contacts: View
{
    var body: some View
    {
        VStack {
            HStack {
                
                Spacer()
                Text("Emergency Contacts")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            Button("+ Add to Contacts") {
                
                let contact = CNMutableContact()
                // Name
                contact.givenName = "Ming"
                // Phone No.
                contact.phoneNumbers = [CNLabeledValue(label: CNLabelPhoneNumberiPhone, value: CNPhoneNumber(stringValue: "12345678"))]
                // Save the created contact.
                let store = CNContactStore()
                let saveRequest = CNSaveRequest()
                saveRequest.add(contact, toContainerWithIdentifier: nil)
                do {
                    try store.execute(saveRequest)
                } catch {
                    print("Error occur: \(error)")
                }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
        }
    }
}

//kit page
struct Kit: View
{
    @State var supplies: [String] = [
        "WATER + FOOD",
        "FLASHLIGHT",
        "FIRST AID KID",
        "BATTERIES",
        "SLEEPING BAG",
        "GARBAGE BAG",
        "CASH + DOCUMENTS",
        "SANITIZER",
        "MASK",
        "CLOTHING",
        "MATCHES"
    ]
    
    @State var done2: [Bool] = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    ]
    
    @State var showingAlert: Bool = true
    
    var body: some View
    {
        VStack {
            Button("") {
                       showingAlert = true
                   }
                   .alert(isPresented: $showingAlert) {
                       Alert(title: Text("Reminders"), message: Text("Once you have completed your emergency kit, set a reminder for a check up!"), dismissButton: .default(Text("Got it!")))
                   }
            HStack {
                
                Spacer()
                Text("Emergency Kit")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            
            // go bag
            List {
                Section(header:Text("Emergency Go-Bag")) {
                    ForEach(0..<(supplies.count), id: \.self) { i in
                        //VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(supplies[i].capitalized)
                                    
                                }
                                
                                Spacer()
                                
                                Button {
                                    done2[i] = !done2[i]
                                } label: {
                                    if done2[i] {
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
            Spacer(minLength:10)
        }
    }
}

/*
//alerts page
struct Alerts: View
{
    var body: some View
    {
        HStack {
            
            Spacer()
            Text("Local Alerts")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
        }
    }
}
*/

//resources page
struct Resources: View
{
    var body: some View
    {
        VStack{
            Spacer()
            HStack {
                
                Spacer()
                Text("Important Resources")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            Spacer()
            
            VStack {
                Link("CalFire.org", destination: URL(string: "https://www.fire.ca.gov/incidents/")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.blue)
                    .cornerRadius(4.0)
            
                Text("Calfire provides a map of where wildfires are located in realtime with information about their size, damage, and status.")
                    .font(.body)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.blue)
                    .cornerRadius(4.0)
                    .hoverEffect(.lift)
            }
            
            Spacer()
            
            VStack {
                Link("AirNow.gov", destination: URL(string: "https://www.airnow.gov/")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.blue)
                    .cornerRadius(4.0)
            
                Text("AirNow provides realtime information about the air quality in any given zip code within the United States.")
                    .font(.body)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.blue)
                    .cornerRadius(4.0)
                    .hoverEffect(.lift)
            }
            
            Spacer()
            
            VStack {
                Link("50states.com", destination: URL(string: "https://www.50states.com/california/fire_departments.htm")!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom, .trailing])
                    .frame(width: 300.0)
                    .background(Color.blue)
                    .cornerRadius(4.0)
                
                Text("50states.com provides information about the local fire department in your area given your city or zipcode.")
                        .font(.body)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding([.top, .leading, .bottom, .trailing])
                        .frame(width: 300.0)
                        .background(Color.blue)
                        .cornerRadius(4.0)
                        .hoverEffect(.lift)
            }
            Spacer()
                
        }
        
    }
}
//walkthrough
struct WalkthroughScreen: View
{
    @AppStorage("currentPage") var currentPage = 1
    var body: some View
    {
        ZStack
        {
           
            if currentPage == 1 {
                ScreenView(image: "image2", title:"5 million acres of land is burned and over 2.5 billion dollars is spent on restoration costs in the US per year", topic: " Wildfire Statistics ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 2 {
                ScreenView(image: "image3", title:"Wildfires are mainly human-caused due to irresponsible debri-burning, electrical power failures, and vehicle accidents.", topic: " Wildfire Causes ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 3 {
                ScreenView(image: "image4", title:"Wildfires affect everyone. The harmful effects they have on the environment ripple over to wildlife and humans.", topic: " Wildfire Effects ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 4 {
                ScreenView(image: "image5", title:"The likelihood of catastrophic and severe wildfires will increase by 33% by 2050 and 52% by the year 2100.", topic: " Future Predictions ", bgColor: Color.white)
                    .transition(.scale)
            }
            else if currentPage == 5 {
                ScreenView(image: "image1", title:"It only takes 5 minutes!", topic: " How can we prepare? ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 6 {
                ScreenView(image: "image6", title:"Remove all dead brush, twigs, dead grass, and flammable materials within 30 feet of your house.", topic: " Home Hardening ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 7 {
                ScreenView(image: "image7", title:"Put all  items into two backpacks and store one in your house and car. See ready.gov for a full list.", topic: " Emergency Kit ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 8 {
                ScreenView(image: "image8", title:"Set aside 3 friends or family contacts outside of your direct community known by everyone in your family.", topic: " Emergency Contacts ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 9 {
                ScreenView(image: "image9", title:"Check the local radio, AmberAlerts, and alert apps such as SCCAlert in Santa Clara County. ", topic: " Alert Systems ", bgColor: Color.white)
                    .transition(.scale)
            }
            
            else if currentPage == 10 {
                ScreenView(image: "image10", title:"Listen to your local fire department and check calfire.org for updates on nearby wildfires in your area.", topic: " Helpful Resources ", bgColor: Color.white)
                    .transition(.scale)
            }
            
        }
        .overlay(
            Button(action: {
                withAnimation(.easeInOut) {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    else  {
                        currentPage = 1
                    }
                    
                }
            }, label: {
                Text(">")
                    .font(.system(size:15, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(width:30, height:30)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    
                    .overlay(
                        ZStack{
                        Circle()
                                .stroke(Color.black.opacity(0.04), lineWidth: 4)
                                .padding(-15)
                        Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color.gray, lineWidth:4)
                                .rotationEffect(.init(degrees:-90))
                                .padding(-15)
                    })
                    .padding(-10)
                
            })
                .padding(.bottom, 20)
                , alignment:.bottom
        )
    }
}
    
//screen for walkthrough
struct ScreenView: View
{
    var image: String
    var title: String
    var topic: String
    var bgColor: Color
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack (spacing: 20)
        {
            Spacer()
            Spacer()
            HStack {
                    
                if currentPage != 1 {
                    //back button
                    Button(action: {
                        withAnimation(.easeInOut) {
                            if currentPage > 1 {
                                currentPage -= 1
                            }
                            
                        }
                    }, label:{
                        Text("<")
                            .font(.system(size:15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
                
                Spacer()
                
                Button(action:{
                    currentPage = 5
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                })
            }
            .foregroundColor(.black)
            .padding()
            
            Text(topic)
                .font(.title)
                .fontWeight(.semibold)
                .kerning(1.1)
                .padding([.top, .leading, .bottom, .trailing])
                .background(Color.red)
                .cornerRadius(4.0)
            
            HStack{
                Spacer()
                Spacer()
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding([.top, .leading, .bottom, .trailing])
                    .animation(Animation.easeInOut)
                    .background(Color.yellow)
                    .cornerRadius(4.0)

                Spacer()
                Spacer()
            }
                        
            HStack{
                Spacer()
                Spacer()
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(Animation.easeInOut)
                Spacer()
                Spacer()
            }
            Spacer(minLength:90)
            
        }
        .background(bgColor).ignoresSafeArea()
        
    }
}

//total pages
var totalPages = 10


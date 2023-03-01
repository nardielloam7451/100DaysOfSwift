//stands for vertical stack, also a HStack (Horizontal Stack) and ZStack (depth stack)
        VStack(spacing: 20) {
            HStack{
                Text("1")
                Text("2")
                Text("3")
            }
            HStack{
                Text("4")
                Text("5")
                Text("6")
            }
            HStack{
                Text("7")
                Text("8")
                Text("9")
            }
        }

//playing around with color, so we can learn more about how to better understand colors in swiftui
        ZStack{
            Color.secondary
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Hello World")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)//allows us to use specifc materials that are native to swift and swift ui.
            VStack{
                Color.blue
                Color.red
            }
        }
        .ignoresSafeArea()//allows you to ignore the area around the notch.

         //standard linear gradient, can also do a radial gradiant, which starts at a point and stops at whatever point you use.
        //can also use angular gradiant in order to use more colors 
        LinearGradient(gradient: Gradient(stops:[Gradient.Stop(color: .white, location: 0.45), Gradient.Stop(color:.black, location: 0.55)]), startPoint: .top, endPoint: .bottom)

        VStack{
            Button {
                print("Edit button was tapped!")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            Button(role: .destructive){
                print("Button was tapped!")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
            Button("Delete selction", action: executeDelete).buttonStyle(.borderedProminent)
        }
        
    }
    func executeDelete(){
        print("Now deleting")
    }

    Button("Show Alert"){
            showingAlert = true
        }.alert("Important Message", isPresented: $showingAlert){
            Button("OK"){}
        }
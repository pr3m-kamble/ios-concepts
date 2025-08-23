import SwiftUI

struct DatePickerBootcamp: View {
    @State private var date: Date = Date()
    let startDate: Date = Calendar.current.date(from: DateComponents(
        year: 2018
    )) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormater: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .short
        formater.timeStyle = .short
        return formater
    }
    
    var body: some View {
         
        VStack{
            Text("SELECTED DATE IS: ")
            Text(dateFormater.string(from: date))
                .font(.title)
            
            // DatePicker("Select Date",selection: $date)
         
 //        DatePicker("Select Date", selection: $date,displayedComponents: [.date,.hourAndMinute])
          
         DatePicker("Select Date", selection: $date, in: startDate...endingDate, displayedComponents: [.date,.hourAndMinute])
             .accentColor(Color.red)
             .datePickerStyle(
                 CompactDatePickerStyle()
                //GraphicalDatePickerStyle()
                 //WheelDatePickerStyle()
             )
            
       
        }
    }
}

#Preview {
    DatePickerBootcamp()
}

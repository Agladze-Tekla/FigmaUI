//
//  ProfileView.swift
//  FigmaUI
//
//  Created by Tekla on 12/6/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var nameText: String = ""
    
    @State private var emailText: String = ""
    
    @State private var passwordText: String = ""
    
    @State private var dateOfBirthText: String = ""
    
    @State private var countryRegionText: String = ""
    
    var body: some View {
        
        VStack(spacing: 21) {
            ImageView()
            NameStructView(nameText: $nameText)
            EmailStructView(emailText: $emailText)
            PasswordStructView(passwordText: $passwordText)
            DateOfBirthStructView(dateOfBirthText: $dateOfBirthText)
            CountryRegionStructView(countryRegionText: $countryRegionText)
            SaveButtonView(
                nameText: $nameText,
                emailText: $emailText,
                passwordText: $passwordText,
                dateOfBirthText: $dateOfBirthText,
                countryRegionText: $countryRegionText)
        }
    }
}

struct ImageView: View {
    var body: some View {
        Image("kungfupanda")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 170, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(red: 36/255, green: 39/255, blue: 96/255), lineWidth: 1)
                     //.padding()
            )
    }
}

struct NameStructView: View {
    @Binding var nameText: String
    var body: some View {
        VStack(alignment: .leading) {
            NameLabelView()
            NameTextFieldView(nameText: $nameText)
        }
    }
}

struct NameLabelView: View {
    var body: some View {
        Text("Name")
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

struct NameTextFieldView: View {
    @Binding var nameText: String
    var body: some View {
        TextField("Name", text: $nameText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity)
    }
}

struct EmailStructView: View {
    @Binding var emailText: String
    var body: some View {
        VStack(alignment: .leading) {
            EmailLabelView()
            EmailTextFieldView(emailText: $emailText)
        }
    }
}

struct EmailLabelView: View {
    var body: some View {
        Text("Email")
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

struct EmailTextFieldView: View {
    @Binding var emailText: String
    var body: some View {
        TextField("Email", text: $emailText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity)
    }
}

struct PasswordStructView: View {
    @Binding var passwordText: String
    var body: some View {
        VStack(alignment: .leading) {
            PasswordLabelView()
            PasswordTextFieldView(passwordText: $passwordText)
        }
    }
}

struct PasswordLabelView: View {
    var body: some View {
        Text("Password")
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

struct PasswordTextFieldView: View {
    @Binding var passwordText: String
    var body: some View {
        SecureField("Password", text: $passwordText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity)
    }
}

struct DateOfBirthStructView: View {
    @Binding var dateOfBirthText: String
    var body: some View {
        VStack(alignment: .leading) {
            DateOfBirthLabelView()
            DateOfBirthTextFieldView(dateOfBirthText: $dateOfBirthText)
        }
    }
}

struct DateOfBirthLabelView: View {
    var body: some View {
        Text("Date of Birth")
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

struct DateOfBirthTextFieldView: View {
    @Binding var dateOfBirthText: String
    var body: some View {
        TextField("Date of Birth", text: $dateOfBirthText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity)
    }
}

struct CountryRegionStructView: View {
    @Binding var countryRegionText: String
    var body: some View {
        VStack(alignment: .leading) {
            CountryRegionLabelView()
            CountryRegionTextFieldView(countryRegionText: $countryRegionText)
        }
    }
}

struct CountryRegionLabelView: View {
    var body: some View {
        Text("Country/Region")
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

struct CountryRegionTextFieldView: View {
    @Binding var countryRegionText: String
    var body: some View {
        TextField("Country/Region", text: $countryRegionText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity)
    }
}

struct SaveButtonView: View {
    @Binding var nameText: String
    @Binding var emailText: String
    @Binding var passwordText: String
    @Binding var dateOfBirthText: String
    @Binding var countryRegionText: String
    var body: some View {
        Button(action: {
            print("Name: \(nameText)")
            print("Email: \(emailText)")
            print("Password: \(passwordText)")
            print("Date of Birth: \(dateOfBirthText)")
            print("Country/Region: \(countryRegionText)")
        }) {
            Text("Save Changes")
                .font(.custom("Inter-Regular", size: 20))
                .padding(.horizontal, 44)
                .padding(.vertical, 14)
                .background(Color(red: 36/255, green: 39/255, blue: 96/255))
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(6)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

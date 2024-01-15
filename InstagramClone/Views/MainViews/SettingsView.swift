import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Section(header: Text("Account")) {
                    NavigationLink(destination: EditProfileView()) {
                        Text("Edit Profile")
                    }

                    NavigationLink(destination: ChangePasswordView()) {
                        Text("Change Password")
                    }
                }

                Section(header: Text("Preferences")) {
                    Toggle("Private Account", isOn: .constant(false))
                    Toggle("Dark Mode", isOn: .constant(true))
                }

                Section(header: Text("Support")) {
                    NavigationLink(destination: HelpCenterView()) {
                        Text("Help Center")
                    }

                    NavigationLink(destination: ReportProblemView()) {
                        Text("Report a Problem")
                    }
                }

                Section(header: Text("About")) {
                    NavigationLink(destination: AboutInstagramView()) {
                        Text("About Instagram")
                    }

                    NavigationLink(destination: TermsOfServiceView()) {
                        Text("Terms of Service")
                    }

                    NavigationLink(destination: PrivacyPolicyView()) {
                        Text("Privacy Policy")
                    }
                }

                Spacer()
            }
            .padding()
            .foregroundColor(.accentColor)
            .navigationBarTitle("Settings", displayMode: .inline)
        }
    }
}

struct EditProfileView: View {
    var body: some View {
        Text("Edit Profile View")
            .navigationBarTitle("Edit Profile")
    }
}

struct ChangePasswordView: View {
    var body: some View {
        Text("Change Password View")
            .navigationBarTitle("Change Password")
    }
}

struct HelpCenterView: View {
    var body: some View {
        Text("Help Center View")
            .navigationBarTitle("Help Center")
    }
}

struct ReportProblemView: View {
    var body: some View {
        Text("Report Problem View")
            .navigationBarTitle("Report a Problem")
    }
}

struct AboutInstagramView: View {
    var body: some View {
        Text("About Instagram View")
            .navigationBarTitle("About Instagram")
    }
}

struct TermsOfServiceView: View {
    var body: some View {
        Text("Terms of Service View")
            .navigationBarTitle("Terms of Service")
    }
}

struct PrivacyPolicyView: View {
    var body: some View {
        Text("Privacy Policy View")
            .navigationBarTitle("Privacy Policy")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

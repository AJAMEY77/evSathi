import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final _formKey = GlobalKey<FormState>();
  String _issueCategory = "";
  String _issueDescription = "";
  String _userEmail = "";
  String _userPhone = "";

  void _submitTicket() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Implement logic to send ticket data (issueCategory, issueDescription, userEmail, userPhone) to your ticketing system
      // Show a confirmation message with a reference number for tracking
      setState(() {
        _confirmationMessage =
            "Your ticket has been submitted. Reference number: 12345";
      });
    }
  }

  String? _validateEmail(String? value) {
    if (value?.isEmpty ?? false) {
      return "Please enter your email address";
    }
    return null;
  }

  String? _validateDescription(String? value) {
    if (value?.isEmpty ?? false) {
      return "Please describe your issue";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Support Center"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Company Logo (replace with your logo widget)
              const FlutterLogo(size: 50.0),
              const SizedBox(height: 20.0),
              const Text(
                "Create a Support Ticket",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),

              // Issue Category (Optional)
              DropdownButtonFormField<String>(
                value: _issueCategory,
                hint: const Text("Select Issue Category (Optional)"),
                items: [
                  const DropdownMenuItem(
                    value: "",
                    child: Text("Select Issue Category"),
                  ),
                  const DropdownMenuItem(
                    value: "billing",
                    child: Text("Billing"),
                  ),
                  const DropdownMenuItem(
                    value: "technical",
                    child: Text("Technical Issue"),
                  ),
                  const DropdownMenuItem(
                    value: "account",
                    child: Text("Account Access"),
                  ),
                ],
                onChanged: (value) => setState(() => _issueCategory = value!),
              ),

              const SizedBox(height: 10.0),

              // Issue Description
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Describe your issue:",
                ),
                validator: _validateDescription,
                onSaved: (value) => setState(() => _issueDescription = value!),
                maxLines: 5,
              ),

              const SizedBox(height: 10.0),

              // Contact Information
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Your Email Address:",
                ),
                validator: _validateEmail,
                onSaved: (value) => setState(() => _userEmail = value!),
              ),

              const SizedBox(height: 10.0),

              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone Number (Optional):",
                ),
                onSaved: (value) => setState(() => _userPhone = value!),
              ),

              const SizedBox(height: 20.0),

              // Submit Button
              ElevatedButton(
                onPressed: _submitTicket,
                child: const Text("Submit Ticket"),
              ),

              const SizedBox(height: 10.0),

              // Confirmation Message
              Text(
                _confirmationMessage,
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _confirmationMessage = "";
}

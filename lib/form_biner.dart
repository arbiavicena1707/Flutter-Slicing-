import 'package:flutter/material.dart';

class FormBiner extends StatefulWidget {
  const FormBiner({super.key});

  @override
  State<FormBiner> createState() => _FormBinerState();
}

class _FormBinerState extends State<FormBiner> {
  bool isOn = false;
  String? selectedGender;
  String gender = '';
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  final TextEditingController _birthDateController = TextEditingController();

  // GlobalKey for the Form
  final _formKey = GlobalKey<FormState>();

  void _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        _birthDateController.text =
            pickedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binar - Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Attach the formKey
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  helperText: "What's your name?",
                  counterText: '8/20',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                value: selectedGender,
                items: [
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select your gender';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                        });
                      }
                    },
                  ),
                  const Text('Connect Instagram'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text("Gender : "),
                  const SizedBox(width: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio<String>(
                        value: 'boy',
                        groupValue: gender,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              gender = val;
                            }
                          });
                        },
                      ),
                      const Text('Boy'),
                      const SizedBox(width: 16),
                      Radio<String>(
                        value: 'girl',
                        groupValue: gender,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              gender = val;
                            }
                          });
                        },
                      ),
                      const Text('Girl'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CheckboxListTile(
                value: checkbox1,
                onChanged: (value) {
                  setState(() {
                    checkbox1 = value ?? false;
                  });
                },
                title: const Text('Flutter'),
              ),
              CheckboxListTile(
                value: checkbox2,
                onChanged: (value) {
                  setState(() {
                    checkbox2 = value ?? false;
                  });
                },
                title: const Text('Java'),
              ),
              CheckboxListTile(
                value: checkbox3,
                onChanged: (value) {
                  setState(() {
                    checkbox3 = value ?? false;
                  });
                },
                title: const Text('C#'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _birthDateController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Birth date',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: _pickDate,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your birth date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // If the form is valid, process the data
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

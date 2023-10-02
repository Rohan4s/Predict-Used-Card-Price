import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:predict_used_car_price/styles/app_texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  static const double tilePadding = 10;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.appName, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,

      ),
      body: Container(
        // color: Colors.grey[800],
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: FormBuilder(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FormBuilderDropdown(
                      name: AppTexts.modelName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.modelLabel,
                      ),
                      items: ['a', 'b', 'c']
                          .map((model) => DropdownMenuItem(
                                value: model,
                                child: Text(model),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderDropdown(
                      name: AppTexts.brandName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.brandLabel,
                      ),
                      items: ['b1', 'b2', 'b3']
                          .map((brand) => DropdownMenuItem(
                                value: brand,
                                child: Text(brand),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderDropdown(
                      name: AppTexts.yearName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.yearLabel,
                      ),
                      items: ['y1', 'y2', 'y3']
                          .map((modelYear) => DropdownMenuItem(
                                value: modelYear,
                                child: Text(modelYear),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderDropdown(
                      name: AppTexts.bodyTypeName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.bodyTypeLabel,
                      ),
                      items: ['y1', 'y2', 'y3']
                          .map((bodyType) => DropdownMenuItem(
                                value: bodyType,
                                child: Text(bodyType),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderDropdown(
                      name: AppTexts.transmissionName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.transmissionLabel,
                      ),
                      items: ['y1', 'y2', 'y3']
                          .map((transmission) => DropdownMenuItem(
                                value: transmission,
                                child: Text(transmission),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderDropdown(
                      name: AppTexts.fuelTypeName,
                      decoration: const InputDecoration(
                        labelText: AppTexts.fuelTypeLabel,
                      ),
                      items: ['y1', 'y2', 'y3']
                          .map((fuelType) => DropdownMenuItem(
                                value: fuelType,
                                child: Text(fuelType),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderTextField(
                      name: AppTexts.engineCapacityName, // Field name used to access the value
                      decoration: const InputDecoration(labelText: AppTexts.engineCapacityLabel),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: tilePadding),
                    FormBuilderTextField(
                      name: AppTexts.millageName, // Field name used to access the value
                      decoration: const InputDecoration(labelText: AppTexts.millageLabel),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: tilePadding*2),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //TODO: Call Api From here
                          final formData = _formKey.currentState!.value;
                          print('Form data: $formData');
                        }
                      },
                      child: const Text(AppTexts.predictLabel),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:PipoVigilante/src/views/proveedores/controller/proveedor_controller.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProveedoresDetailsView extends GetView<ProveedorController> {
  static final String routeName = '/proveedores-details';
  const ProveedoresDetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "${controller.proveedorSelected.titulo}",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Control",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                controller.proveedorSelected.descripcion,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Mensaje de la administración emitido por por:",
                style: TextStyle(fontSize: 15.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                controller.proveedorSelected.emitido,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

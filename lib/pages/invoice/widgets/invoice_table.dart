// import 'package:flutter/material.dart';
// import 'package:invoice_app/constants/text_input.dart';

// class InvoiceTable extends StatefulWidget {
//   const InvoiceTable({Key key}) : super(key: key);

//   @override
//   _InvoiceTableState createState() => _InvoiceTableState();
// }

// class _InvoiceTableState extends State<InvoiceTable> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: new DataTable(
//         showCheckboxColumn: false,
//         columns: [
//           new DataColumn(
//               label: Text(
//             'Name',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )),
//           new DataColumn(
//               label: Text(
//             'Quantity',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )),
//           new DataColumn(
//               label: Text(
//             'Rate',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )),
//           new DataColumn(
//               label: Text(
//             'Amount',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )),
//         ],
//         rows: [
//           new DataRow(
//             cells: [
//               DataCell(
//                 Container(
//                   child: TextFormField(
//                     decoration: textInputDecoration.copyWith(
//                         hintText: 'Enter Client Name'
//                         // hintStyle: TextStyle(
//                         //     fontWeight: FontWeight.bold)
//                         ),
//                     validator: (val) =>
//                         val.isEmpty ? 'Enter Client name' : null,
//                     onChanged: (val) {
//                       // setState(() => email = val);
//                     },
//                   ),
//                 ),
//               ),
//               DataCell(
//                 Container(
//                   child: TextFormField(
//                     decoration: textInputDecoration.copyWith(
//                         hintText: 'Enter Client Name'
//                         // hintStyle: TextStyle(
//                         //     fontWeight: FontWeight.bold)
//                         ),
//                     validator: (val) =>
//                         val.isEmpty ? 'Enter Client name' : null,
//                     onChanged: (val) {
//                       // setState(() => email = val);
//                     },
//                   ),
//                 ),
//               ),
//               DataCell(
//                 Container(
//                   child: TextFormField(
//                     decoration:
//                         textInputDecoration.copyWith(hintText: 'Quantity'
//                             // hintStyle: TextStyle(
//                             //     fontWeight: FontWeight.bold)
//                             ),
//                     validator: (val) => val.isEmpty ? 'Quantity' : null,
//                     onChanged: (val) {
//                       // setState(() => email = val);
//                     },
//                   ),
//                 ),
//               ),
//               DataCell(
//                 Container(
//                   width: 70,
//                   child: TextFormField(
//                     decoration: textInputDecoration.copyWith(hintText: 'Amount'
//                         // hintStyle: TextStyle(
//                         //     fontWeight: FontWeight.bold)
//                         ),
//                     validator: (val) => val.isEmpty ? 'Amount' : null,
//                     onChanged: (val) {
//                       // setState(() => email = val);
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

class Info extends StatelessWidget{
  const Info({super.key, required this.bmi});

  final String bmi;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Body Mass Index Info'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[const Text('Body mass index (BMI) is a value derived from the mass (weight) and height of
            a person.\n\nThe BMI is defined as the body mass divided by the square of the body
                height, and is expressed in units of kg/m\u00B2, resulting from mass in kilograms
                (kg) and height in metres (m).'),
    Table(
    order: TableBorder.all(color: Colors.orangeAccent),
    //defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    children: const [
    TableRow(
    children: [
    TableCell(child: Text('BMI Value',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold))),
    TableCell(child: Text('Classification',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)))
    ],
    TableRow(
    children: [
    TableCell(child: Center(child: Text('Below 18.5',textAlign: TextAlign.center))),
    TableCell(child: Center(child: Text('Underweight',textAlign: TextAlign.center)))
    ],
    ),
    TableRow(
    children: [
    TableCell(child: Center(child: Text('18.5 to 24.9',textAlign: TextAlign.center))),
    TableCell(child: Center(child: Text('Normal',textAlign: TextAlign.center)))
    ]
    ),
    TableRow(
    children: [
    TableCell(child: Center(child: Text('More than 25',textAlign: TextAlign.center))),
    TableCell(child: Center(child: Text('Overweight',textAlign: TextAlign.center)))
    ]
    ),
    )
    ],
    ),
    bmi == ""?  Text("Please enter bidy weight and height"):
    Text("Your body mass index (BMI) is $bmi"),
    ElevatedButton(
    onPressed: () {
    Navigator.pop(context);
    },
    child: const Text('Go back!'),
    ),
    ]
    )
    )
    )
  }
}
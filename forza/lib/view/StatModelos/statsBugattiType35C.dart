import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaBugattiType35C extends StatefulWidget {
  @override
  _TelaBugattiType35C createState() => _TelaBugattiType35C();
}

class _TelaBugattiType35C extends State<TelaBugattiType35C> {
  late List<Type35C> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Classificação D 285"),
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              /*Vai retornar a tela anterior a essa, nao mexer*/
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.grey.shade400,
        body: SafeArea(
            child: Center(
                child: Container(
          height: 300,
          width: 350,
          child: SfCartesianChart(
            title: ChartTitle(text: 'Estatísticas'),
            borderColor: Colors.pink,
            borderWidth: 1,
            palette: <Color>[Colors.pink],
            margin: EdgeInsets.all(15),
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries>[
              BarSeries<Type35C, String>(
                  name: 'Bugatti Type 35C',
                  dataSource: _chartData,
                  xValueMapper: (Type35C value, _) => value.nome,
                  yValueMapper: (Type35C value, _) => value.value,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                  animationDuration: 2500)
            ],
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(
                edgeLabelPlacement: EdgeLabelPlacement.shift,
                majorGridLines: MajorGridLines(width: 0),
                axisLine: AxisLine(width: 0)),
          ),
        ))));
  }

  List<Type35C> getChartData() {
    final List<Type35C> chartData = [
      Type35C('Off-Road', 4.9),
      Type35C('Frenagem', 1.9),
      Type35C('Lançamento', 1.4),
      Type35C('Aceleração', 2.5),
      Type35C('Manejo', 3.4),
      Type35C('Velocidade', 4),
    ];
    return chartData;
  }
}

class Type35C {
  Type35C(this.nome, this.value);
  final String nome;
  final double value;
}

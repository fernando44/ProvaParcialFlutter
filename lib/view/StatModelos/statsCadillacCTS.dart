import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaCadillacCTS extends StatefulWidget {
  @override
  _TelaCadillacCTS createState() => _TelaCadillacCTS();
}

class _TelaCadillacCTS extends State<TelaCadillacCTS> {
  late List<CTSData> _chartData;
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
          title: Text("Classificação A 761"),
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
              BarSeries<CTSData, String>(
                  name: 'Cadillac CTS-V',
                  dataSource: _chartData,
                  xValueMapper: (CTSData value, _) => value.nome,
                  yValueMapper: (CTSData value, _) => value.value,
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

  List<CTSData> getChartData() {
    final List<CTSData> chartData = [
      CTSData('Off-Road', 4.7),
      CTSData('Frenagem', 4.4),
      CTSData('Lançamento', 5.2),
      CTSData('Aceleração', 4.9),
      CTSData('Manejo', 5.3),
      CTSData('Velocidade', 7.2),
    ];
    return chartData;
  }
}

class CTSData {
  CTSData(this.nome, this.value);
  final String nome;
  final double value;
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaBugattiChiron extends StatefulWidget {
  @override
  _TelaBugattiChiron createState() => _TelaBugattiChiron();
}

class _TelaBugattiChiron extends State<TelaBugattiChiron> {
  late List<ChironData> _chartData;
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
              BarSeries<ChironData, String>(
                  name: 'Bugatti Chiron',
                  dataSource: _chartData,
                  xValueMapper: (ChironData value, _) => value.nome,
                  yValueMapper: (ChironData value, _) => value.value,
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

  List<ChironData> getChartData() {
    final List<ChironData> chartData = [
      ChironData('Off-Road', 5),
      ChironData('Frenagem', 8.6),
      ChironData('Lançamento', 6.1),
      ChironData('Aceleração', 9.9),
      ChironData('Manejo', 7.9),
      ChironData('Velocidade', 10),
    ];
    return chartData;
  }
}

class ChironData {
  ChironData(this.nome, this.value);
  final String nome;
  final double value;
}

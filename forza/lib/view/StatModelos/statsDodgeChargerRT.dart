import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaChargerRT extends StatefulWidget {
  @override
  _TelaChargerRT createState() => _TelaChargerRT();
}

class _TelaChargerRT extends State<TelaChargerRT> {
  late List<ChargerRTData> _chartData;
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
          title: Text("Classificação C 548"),
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
              BarSeries<ChargerRTData, String>(
                  name: 'Dodge Charger R/T',
                  dataSource: _chartData,
                  xValueMapper: (ChargerRTData value, _) => value.nome,
                  yValueMapper: (ChargerRTData value, _) => value.value,
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

  List<ChargerRTData> getChartData() {
    final List<ChargerRTData> chartData = [
      ChargerRTData('Off-Road', 5.1),
      ChargerRTData('Frenagem', 2.4),
      ChargerRTData('Lançamento', 3.5),
      ChargerRTData('Aceleração', 3.6),
      ChargerRTData('Manejo', 3.8),
      ChargerRTData('Velocidade', 5.1),
    ];
    return chartData;
  }
}

class ChargerRTData {
  ChargerRTData(this.nome, this.value);
  final String nome;
  final double value;
}

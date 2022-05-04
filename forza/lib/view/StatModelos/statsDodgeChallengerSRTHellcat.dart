import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaChallengerHellcat extends StatefulWidget {
  @override
  _TelaChallengerHellcat createState() => _TelaChallengerHellcat();
}

class _TelaChallengerHellcat extends State<TelaChallengerHellcat> {
  late List<ChallengerData> _chartData;
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
          title: Text("Classificação A 755"),
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
              BarSeries<ChallengerData, String>(
                  name: 'Dodge Challenger SRT Hellcat',
                  dataSource: _chartData,
                  xValueMapper: (ChallengerData value, _) => value.nome,
                  yValueMapper: (ChallengerData value, _) => value.value,
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

  List<ChallengerData> getChartData() {
    final List<ChallengerData> chartData = [
      ChallengerData('Off-Road', 4.2),
      ChallengerData('Frenagem', 4.9),
      ChallengerData('Lançamento', 4.6),
      ChallengerData('Aceleração', 4.5),
      ChallengerData('Manejo', 5.4),
      ChallengerData('Velocidade', 7.7),
    ];
    return chartData;
  }
}

class ChallengerData {
  ChallengerData(this.nome, this.value);
  final String nome;
  final double value;
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../NavBar.dart';

class TelaChevyCorvette extends StatefulWidget {
  @override
  _TelaChevyCorvette createState() => _TelaChevyCorvette();
}

class _TelaChevyCorvette extends State<TelaChevyCorvette> {
  late List<C8CorvetteData> _chartData;
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
          title: Text("Classificação S1 806"),
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
              BarSeries<C8CorvetteData, String>(
                  name: 'Chevrolet C8 Corvette Stingray',
                  dataSource: _chartData,
                  xValueMapper: (C8CorvetteData value, _) => value.nome,
                  yValueMapper: (C8CorvetteData value, _) => value.value,
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

  List<C8CorvetteData> getChartData() {
    final List<C8CorvetteData> chartData = [
      C8CorvetteData('Off-Road', 4.8),
      C8CorvetteData('Frenagem', 5.2),
      C8CorvetteData('Lançamento', 7.6),
      C8CorvetteData('Aceleração', 6.9),
      C8CorvetteData('Manejo', 7),
      C8CorvetteData('Velocidade', 7.2),
    ];
    return chartData;
  }
}

class C8CorvetteData {
  C8CorvetteData(this.nome, this.value);
  final String nome;
  final double value;
}

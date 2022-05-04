import 'package:flutter/material.dart';
import 'package:forza/view/NavBar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TelaChevyChevelle extends StatefulWidget {
  @override
  _TelaChevyChevelle createState() => _TelaChevyChevelle();
}

class _TelaChevyChevelle extends State<TelaChevyChevelle> {
  late List<ChevelleData> _chartData;
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
          title: Text("Classificação C 531"),
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
              BarSeries<ChevelleData, String>(
                  name: 'Chevrolet Chevelle Super Sport 454',
                  dataSource: _chartData,
                  xValueMapper: (ChevelleData value, _) => value.nome,
                  yValueMapper: (ChevelleData value, _) => value.value,
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

  List<ChevelleData> getChartData() {
    final List<ChevelleData> chartData = [
      ChevelleData('Off-Road', 5.4),
      ChevelleData('Frenagem', 2.4),
      ChevelleData('Lançamento', 3.2),
      ChevelleData('Aceleração', 3.3),
      ChevelleData('Manejo', 3.6),
      ChevelleData('Velocidade', 4.7),
    ];
    return chartData;
  }
}

class ChevelleData {
  ChevelleData(this.nome, this.value);
  final String nome;
  final double value;
}

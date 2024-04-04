import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BuildChartAlone extends StatefulWidget {
  const BuildChartAlone({super.key});

  @override
  State<BuildChartAlone> createState() => _BuildChartAloneState();
}

class _BuildChartAloneState extends State<BuildChartAlone> {
  late PageController _pageController;
  int _currentIndex = 0;

  List<DataItem> dataList = [];
  List<DataItem> lastSixHoursDataList = [];
  List<DataItem> lastTwelveHoursDataList = [];
  List<DataItem> lastTwentyFourHoursDataList = [];
  List<DataItem> lastOneWeekDataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    _pageController = PageController(
      initialPage: _currentIndex,
      viewportFraction: 1,
    );
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.4.1/data.txt'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonDataList = jsonDecode(response.body);
      setState(() {
        dataList = jsonDataList.map((data) => DataItem.fromJson(data)).toList();
        lastSixHoursDataList = getLastData(dataList, 6);
        lastTwelveHoursDataList = getLastData(dataList, 12);
        lastTwentyFourHoursDataList = getLastData(dataList, 24);
        lastOneWeekDataList = getLastData(dataList, 168);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  List<DataItem> getLastData(List<DataItem> dataList, int hours) {
    DateTime lastDateTime = DateTime.parse(dataList.last.date);
    DateTime targetTime = lastDateTime.subtract(Duration(hours: hours));

    return dataList.where((data) {
      DateTime dataDateTime = DateTime.parse(data.date);
      return dataDateTime.isAfter(targetTime) ||
          dataDateTime.isAtSameMomentAs(targetTime);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Colors.white,
        width: 350.0,
        height: 230.0,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: 4,
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 35, 35, 10),
                  child: _buildChart(index),
                );
              },
            ),
            Positioned(
              top: 5.0,
              right: 45.0,
              child: SizedBox(
                height: 25.0,
                width: 250.0,
                child: SegmentedButton(
                  segments: [
                    ButtonSegment(
                      value: 0,
                      label: Container(
                        alignment: Alignment.center,
                        width: 60.0,
                        child: Text(
                          "6 Saat",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Container(
                        alignment: Alignment.center,
                        width: 60.0,
                        child: Text(
                          "12 Saat",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Container(
                        alignment: Alignment.center,
                        width: 60.0,
                        child: Text(
                          "24 Saat",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Container(
                        alignment: Alignment.center,
                        width: 60.0,
                        child: Text(
                          "1 Hafta",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                  selected: {_currentIndex},
                  onSelectionChanged: (Set<int> selected) {
                    setState(() {
                      _currentIndex = selected.first;
                    });
                    _pageController.animateToPage(
                      selected.first,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart(int index) {
    List<FlSpot> spots;
    late double maxx; // Initialize with negative infinity
    late double minx; // Initialize with positive infinity
    List<DataItem> chartList = [];
    switch (index) {
      case 0:
        chartList = lastSixHoursDataList;
        if (lastSixHoursDataList.isNotEmpty) {
          minx = 0.0;
          maxx = lastSixHoursDataList.length.toDouble() - 1;
          spots = lastSixHoursDataList.asMap().entries.map((entry) {
            double xValue = entry.key.toDouble();
            return FlSpot(xValue, entry.value.value);
          }).toList();
        } else {
          minx = 0.0;
          maxx = 24.0;
          spots = [];
        }
        break;

      case 1:
        chartList = lastTwelveHoursDataList;
        if (lastTwelveHoursDataList.isNotEmpty) {
          minx = 0.0;
          maxx = lastTwelveHoursDataList.length.toDouble() - 1;
          spots = lastTwelveHoursDataList.asMap().entries.map((entry) {
            double xValue = entry.key.toDouble();
            return FlSpot(xValue, entry.value.value);
          }).toList();
        } else {
          minx = 0.0;
          maxx = 24.0;
          spots = [];
        }
        break;

      case 2:
        chartList = lastTwentyFourHoursDataList;
        if (lastTwentyFourHoursDataList.isNotEmpty) {
          minx = 0.0;
          maxx = lastTwentyFourHoursDataList.length.toDouble() - 1;
          spots = lastTwentyFourHoursDataList.asMap().entries.map((entry) {
            double xValue = entry.key.toDouble();
            return FlSpot(xValue, entry.value.value);
          }).toList();
        } else {
          minx = 0.0;
          maxx = 24.0;
          spots = [];
        }
        break;

      case 3:
        chartList = lastOneWeekDataList;
        if (lastOneWeekDataList.isNotEmpty) {
          minx = 0.0;
          maxx = lastOneWeekDataList.length.toDouble() - 1;

          spots = lastOneWeekDataList.asMap().entries.map((entry) {
            double xValue = entry.key.toDouble();
            return FlSpot(xValue, entry.value.value);
          }).toList();
        } else {
          minx = 0.0;
          maxx = 24.0;
          spots = [];
        }
        break;

      default:
        spots = [];
    }

    return LineChart(
      LineChartData(
        minX: minx, // Check for finite value
        maxX: maxx, // Check for finite value
        minY: 11.2, // Check for finite value
        maxY: 13.7, // Check for finite value
        backgroundColor: Colors.grey[100],
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            barWidth: 3,
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 238, 240, 105),
                Colors.greenAccent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 238, 240, 105).withOpacity(0.2),
                  Colors.greenAccent.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            dotData: const FlDotData(
              show: false,
            ),
          )
        ],
        gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            verticalInterval: 1,
            horizontalInterval: 0.5,
            getDrawingHorizontalLine: (value) {
              if (value == 11.5 || value == 12.5 || value == 13.5) {
                return const FlLine(
                  color: Colors.grey,
                  strokeWidth: 1,
                  dashArray: [3],
                );
              } else {
                return const FlLine(
                  color: Colors.transparent,
                  strokeWidth: 1,
                );
              }
            },
            getDrawingVerticalLine: (value) {
              if (chartList.isEmpty) {
                return const FlLine(
                  color: Colors.transparent,
                  strokeWidth: 1,
                );
              }
              DateTime dateTime = chartList.isNotEmpty
                  ? DateTime.parse(chartList[value.toInt()].date)
                  : DateTime.now();

              DateTime firstDateTime = DateTime.parse(chartList.first.date);
              DateTime lastDateTime = DateTime.parse(chartList.last.date);
              Duration hourDifference = lastDateTime.difference(firstDateTime);

              if (hourDifference.inHours <= 24) {
                if (dateTime.minute == 0) {
                  // Eğer saat dakikası 00 ise çizgi gri olsun
                  return const FlLine(
                    color: Colors.grey,
                    strokeWidth: 1,
                  );
                } else {
                  // Değilse çizgi transparan olsun
                  return const FlLine(
                    color: Colors.transparent,
                    strokeWidth: 1,
                  );
                }
              } else {
                if (DateTime.parse(chartList[value.toInt()].date).year !=
                        DateTime.parse(chartList[value.toInt() - 1].date)
                            .year ||
                    DateTime.parse(chartList[value.toInt()].date).month !=
                        DateTime.parse(chartList[value.toInt() - 1].date)
                            .month ||
                    DateTime.parse(chartList[value.toInt()].date).day !=
                        DateTime.parse(chartList[value.toInt() - 1].date).day) {
                  // Eğer saat dakikası 00 ise çizgi gri olsun
                  return const FlLine(
                    color: Colors.grey,
                    strokeWidth: 1,
                  );
                } else {
                  // Değilse çizgi transparan olsun
                  return const FlLine(
                    color: Colors.transparent,
                    strokeWidth: 1,
                  );
                }
              }
            }),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 0.5,
              getTitlesWidget: (double value, TitleMeta meta) {
                const style = TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black,
                );

                Widget text;

                if (value == 11.5 || value == 12.5 || value == 13.5) {
                  text = Text('$value', style: style);
                } else {
                  text = const Text('', style: style);
                }

                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 0,
                  angle: 1.5,
                  child: text,
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 1,
                getTitlesWidget: (double value, TitleMeta meta) {
                  const style = TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black,
                  );

                  Widget text;

                  if (chartList.isEmpty ||
                      value.toInt() <= 0 ||
                      value.toInt() >= chartList.length) {
                    text = const Text('', style: style);
                  } else {
                    DateTime currentDateTime =
                        DateTime.parse(chartList[value.toInt()].date);
                    DateTime previousDateTime =
                        DateTime.parse(chartList[value.toInt() - 1].date);

                    DateTime firstDateTime =
                        DateTime.parse(chartList.first.date);
                    DateTime lastDateTime = DateTime.parse(chartList.last.date);

                    Duration hourDifference =
                        lastDateTime.difference(firstDateTime);

                    if (hourDifference.inHours <= 24) {
                      if (currentDateTime.minute == 0) {
                        text = Text('${currentDateTime.hour}.00', style: style);
                      } else {
                        text = const Text('', style: style);
                      }
                    } else {
                      if (currentDateTime.year != previousDateTime.year ||
                          currentDateTime.month != previousDateTime.month ||
                          currentDateTime.day != previousDateTime.day) {
                        text = Text(
                            '${currentDateTime.day}.${currentDateTime.month}',
                            style: style);
                      } else {
                        text = const Text('', style: style);
                      }
                    }
                  }

                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    space: 0,
                    angle: 1.5,
                    child: text,
                  );
                }),
          ),
        ),
      ),
    );
  }
}

class DataItem {
  final String date;
  final double value;

  DataItem({required this.date, required this.value});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(
      date: json['date'],
      value: json['value'].toDouble(),
    );
  }
}

class SegmentedButton extends StatelessWidget {
  final List<ButtonSegment> segments;
  final Set<int> selected;
  final ValueChanged<Set<int>> onSelectionChanged;

  const SegmentedButton({
    super.key,
    required this.segments,
    required this.selected,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected:
          segments.map((segment) => selected.contains(segment.value)).toList(),
      onPressed: (int newIndex) {
        onSelectionChanged({newIndex});
      },
      borderRadius: BorderRadius.circular(5.0),
      borderColor: Colors.black,
      selectedBorderColor: Colors.grey,
      fillColor: Colors.greenAccent,
      selectedColor: Colors.white,
      textStyle: const TextStyle(color: Colors.black),
      children: segments.map((segment) => segment.label).toList(),
    );
  }
}

class ButtonSegment {
  final int value;
  final Widget label;

  ButtonSegment({
    required this.value,
    required this.label,
  });
}

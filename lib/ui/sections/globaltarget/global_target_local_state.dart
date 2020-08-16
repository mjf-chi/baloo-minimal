class GlobalTargetLocalState extends BaseViewModel {
  int _selectedIdx = 0;
  List<Map<String, double>> _data;

  DateTime _current = new DateTime.now();
  final List<String> _timeRanges = [
    new DateFormat.MMMM().format(current), // month
    new DateFormat.y().format(current), // year
    '2035', // lifetime
  ];

  GlobalTargetLocalState({
    List<Map<String, double>> data,
  }) : _data = data;

  int get selectedIdx => _selectedIdx;
  List<String> get timeRanges => _timeRanges;
  Map<String, double> get data => _data[_selectedIdx];

  void selectItem(int idx) {
    setLoading(true);
    selectedIdx(idx);
    setLoading(false);
  }
}

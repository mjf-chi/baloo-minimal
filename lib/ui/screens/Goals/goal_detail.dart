import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baloo/core/constants/routes.dart';
import 'package:baloo/core/models/new_goal.dart';
import 'package:baloo/core/viewmodels/global/engagement_view_model.dart';
import 'package:baloo/core/viewmodels/screenmodels/goal_detail_model.dart';

import 'package:baloo/ui/components/Buttons/wide_button.dart';
import 'package:baloo/ui/components/Navigation/nav_bar.dart';
import 'package:baloo/ui/components/base_data_widget.dart';


class GoalDetail extends StatelessWidget {
  final NewGoal goal;


  GoalDetail({ @required this.goal });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseDataWidget<GoalDetailModel>(
        model: GoalDetailModel(evm: Provider.of<EngagementViewModel>(context)),
        builder: (context, model, child) =>
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(child: _goalBox(goal: goal)),
              SliverToBoxAdapter(
                child: WideButton(
                  label: model.loading == true
                    ? 'Updating goal ... '
                    : 'Focus on this goal',
                  onFill: model.loading == true
                    ? () => {}
                    : () => model.setGoal(goal.id),
                ),
              ),
              SliverToBoxAdapter(child: Container(height: 72)),
            ],
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Hero(
          tag: 'navBar',
          child: NavBar(),
        ),
      ),
    );
  }
}


class _goalBox extends StatelessWidget {
  final NewGoal goal;


  _goalBox({ @required this.goal });


  Widget _topSection(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    goal.imperativeMessage,
                    style: TextStyle(
                      color: Color(0xFF2F2F33),
                      fontSize: 22,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              // TODO mjf: Touch area is only on the icon
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, true);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.close,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              goal.description == null ? '' : goal.description,
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Muli',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomSection() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              "This week's focus",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Muli',
                color: Color(0xFF595959),
              ),
            ),
          ),
          Text(
            goal.focuses[0].imperativeMessage,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              fontFamily: 'Muli',
              color: Color(0xFF2F2F33),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 40.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.0, 1.0],
          colors: goal.colors,
        ),
        boxShadow: [
          new BoxShadow(
            color: Color(0x0F000000),
            offset: new Offset(0.0, 4.0),
            blurRadius: 12.0,
          ),
        ],
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.0)),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20.0, 48.0, 20.0, 36.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _topSection(context),
            Container(height: 96),
            _bottomSection(),
          ],
        ),
      ),
    );
  }
}

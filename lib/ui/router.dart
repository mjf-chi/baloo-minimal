import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baloo/core/constants/routes.dart';
import 'package:baloo/ui/components/Transitions/scale_route_transition.dart';

import 'package:baloo/ui/screens/Impact/impact_screen.dart';
import 'package:baloo/ui/screens/Action/action_screen.dart';
import 'package:baloo/ui/screens/communities_screen.dart';
import 'package:baloo/ui/screens/Goals/goal_screen.dart';
import 'package:baloo/ui/screens/Goals/goal_detail.dart';
import 'package:baloo/ui/screens/accomplishment_detail.dart';
import 'package:baloo/ui/screens/Profile/profile_screen.dart';
import 'package:baloo/ui/screens/Communities/community_detail.dart';
import 'package:baloo/ui/screens/Communities/community_accomplishment_detail.dart';
import 'package:baloo/ui/screens/ActionReport/action_report_screen.dart';
import 'package:baloo/ui/screens/LogIn/login_screen.dart';
import 'package:baloo/ui/screens/CreateAccount/create_account_screen.dart';
import 'package:baloo/ui/screens/does_not_exist_screen.dart';

// Models
import 'package:baloo/core/models/community.dart';
import 'package:baloo/core/models/authentication.dart';
import 'package:baloo/core/models/user.dart';
import 'package:baloo/core/viewmodels/global/user_view_model.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.CreateAccount:
        return MaterialPageRoute(
          builder: (ctx) {
            final uvm = Provider.of<UserViewModel>(ctx);
            if (uvm.user != null) {
              return ActionScreen();
            }

            return CreateAccountScreen();
          },
        );
      case RoutePaths.LogIn:
        return MaterialPageRoute(
          builder: (ctx) {
            final uvm = Provider.of<UserViewModel>(ctx);
            if (uvm.user != null) {
              return ActionScreen();
            }

            return LogIn();
          },
        );
      case RoutePaths.Action:
        return MaterialPageRoute(
          builder: (ctx) {
            final uvm = Provider.of<UserViewModel>(ctx);
            if (uvm.user != null) {
              return ActionScreen();
            }
            return LogIn();
          }
        );
      case RoutePaths.Impact:
        return MaterialPageRoute(builder: (_) => ImpactScreen());
      case RoutePaths.Communities:
        return MaterialPageRoute(builder: (_) => CommunitiesScreen());
      case RoutePaths.Goal:
        return MaterialPageRoute(
          builder: (_) => GoalScreen(),
        );
      case RoutePaths.Profile:
        return MaterialPageRoute(
          builder: (ctx) {
            final authenticated = Provider.of<Authentication>(ctx);
            if (authenticated != null) {
              return ProfileScreen();
            } else {
              return LogIn();
            }
          }
        );
      case RoutePaths.CommunityDetail:
        return MaterialPageRoute(
          builder: (_) => CommunityDetail(communityId: settings.arguments),
        );
      case RoutePaths.GoalDetail:
        return MaterialPageRoute(
          builder: (_) => GoalDetail(goal: settings.arguments),
        );
      case RoutePaths.Accomplishment:
        return MaterialPageRoute(
          builder: (_) => AccomplishmentDetail(accomplishment: settings.arguments),
        );
      case RoutePaths.CommunityAccomplishment:
        return MaterialPageRoute(
          builder: (_) => CommunityAccomplishmentDetail(accomplishment: settings.arguments),
        );
      case RoutePaths.ActionReport:
        return MaterialPageRoute(
          builder: (_) => ActionReport(),
        );
      default:
        return MaterialPageRoute(builder: (_) => DoesNotExistScreen());
    }
  }
}


import 'package:flutter/material.dart';
import 'package:portfolio_app/common/blog.dart';
import 'package:portfolio_app/mobile/about_mobile.dart';

import 'package:portfolio_app/mobile/contact_mobile.dart';
import 'package:portfolio_app/mobile/landing_page_mobile.dart';
import 'package:portfolio_app/mobile/portfolio_mobile.dart';
import 'package:portfolio_app/web/about_web.dart';

import 'package:portfolio_app/web/contact_web.dart';
import 'package:portfolio_app/web/landing_page_web.dart';
import 'package:portfolio_app/web/portfolio_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 850) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 850) {
              return AboutWeb();
            } else {
              return AboutMobile();
            }
          }),
        );
      case '/portfolio':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 850) {
                    return PortfolioWeb();
                  } else {
                    return PortfolioMobile();
                  }
                }),
            settings: settings);
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 850) {
                    return ContactWeb();
                  } else {
                    return ContactMobile();
                  }
                }),
            settings: settings);
      case '/blog':
        return MaterialPageRoute(builder: (_) => Blog(), settings: settings);
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 850) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
    }
  }
}

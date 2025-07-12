import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/model/tiles_model.dart';

final List<TilesData> awards = [
  TilesData(
      name: 'Student Technical Assistant',
      image: 'assests/images/awards/uw.png',
      imageLight: 'assests/images/awards/uw.png',
      description:
          'Worked with Milgard Center of Business Analytics to help and resolve issues with MSBA students with Azure services and MS-SQL Integration.',
      link: 'https://www.tacoma.uw.edu/business/cba/our-people',
      year: '2020-2021'),
  TilesData(
      name: 'STFC Member',
      image: 'assests/images/awards/stfc.png',
      imageLight: 'assests/images/awards/stfc.png',
      description:
          'Member of Student Technical Fee Committee at UW. Responsible for making decision related to technology which impacted 4000+ students.',
      link: 'https://www.tacoma.uw.edu/student-fees/stfc2122',
      year: '2020-2021'),
  TilesData(
    name: 'mBillionth South Asia Award',
    image: 'assests/images/awards/mbillion.png',
    imageLight: 'assests/images/awards/mbillion.png',
    description:
        "TaanaBaana Mobile App won a special mention award in 'Inclusion & Empowerment' category in New Delhi in Feburary 2020",
    link: 'http://mbillionth.in/taana-baana-2/',
    year: '2020',
  ),
  TilesData(
      name: 'Secretary - General',
      image: 'assests/images/awards/jecrcmun.png',
      imageLight: 'assests/images/awards/jecrcmun_light.png',
      description:
          'Served as a Secretary General of JECRC MUN 2018. Managed a team of 50+ people.',
      link: 'https://www.facebook.com/jecrcmun/',
      year: '2018'),
  TilesData(
      name: 'Won High Commendation at GTC MUN',
      image: 'assests/images/awards/gtcmun.png',
      imageLight: 'assests/images/awards/gtcmun.png',
      description: 'Won High Commendation for representing France in UNESCO.',
      link: 'https://www.facebook.com/gtcmun/',
      year: '2018'),
  TilesData(
    name: 'Gold Medal',
    image: 'assests/images/awards/iitj.png',
    imageLight: 'assests/images/awards/iitj_light.png',
    description:
        'Won gold medal at IIT Jodhpur chess tournament in 2016 and won silver medal in 2015',
    year: '2015-2016',
  ),
  TilesData(
      name: 'Alumni Interview Head',
      image: 'assests/images/awards/jmag.png',
      imageLight: 'assests/images/awards/jmag.png',
      description:
          'Member of JECRC college office magazine. I have took interviews of various important alumnis and high profile guests',
      link: 'https://www.facebook.com/jecrcmag/',
      year: '2015-2017'),
  TilesData(
    name: 'Winner at RTU Chess Tournament 3x',
    image: 'assests/images/awards/rtu.png',
    imageLight: 'assests/images/awards/rtu_light.png',
    description:
        'Won 3 Annual RTU chess tournament in a row. (2014-2015-2016). Runner\'s up in 2017',
    year: '2014-2017',
  ),
];

final List<TilesData> projects = [
  TilesData(
      name: 'Portolio',
      image: 'assests/images/projects/portfolio.png',
      imageLight: 'assests/images/projects/portfolio.png',
      description:
          'chill hobby. \nA portfolio app made with flutter.\n one codebase for web, android and iOS.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.laptop,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Web Application",
            ),
            tooltip: "Web Application"),
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2019 - Present'),
  TilesData(
    name: 'Open Street Maps — Connectivity',
    image: 'assests/images/projects/osm.png',
    imageLight: 'assests/images/projects/osm.png',
    description:
        'Worked closely with Microsoft on improving road connectivity for Open Street Maps using graph algorithms',
    link:
        'https://github.com/sarabjot294/important_files/blob/cf35ad8a5ca1680ec724c791bdcf625e2bd0468e/OSM%20Project%20Poster.pdf',
    smallIcons: [
      SmallIcons(
          icon: Icon(
            Icons.laptop,
            size: 15.0,
            color: kAccentColorLight,
            semanticLabel: "Web Application",
          ),
          tooltip: "Web Application"),
      SmallIcons(
          icon: Icon(
            Icons.cloud_circle,
            size: 15.0,
            color: kAccentColorLight,
            semanticLabel: "Cloud Application",
          ),
          tooltip: "Cloud Application"),
    ],
    year: '2020-2021',
  ),
  TilesData(
      name: 'TaanaBaana',
      image: 'assests/images/projects/taanabaana.png',
      imageLight: 'assests/images/projects/taanabaana.png',
      description:
          "An android app with multiple user role logins used by supply chain. It has various features like barcode scanning, image capture, GPS, firebase crashanalytics, and etc.",
      link: 'http://mbillionth.in/taana-baana-2/',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
        SmallIcons(
            icon: Icon(
              Icons.cloud_circle,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Cloud Application",
            ),
            tooltip: "Cloud Application"),
        SmallIcons(
            icon: Icon(
              Icons.laptop,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Web Application",
            ),
            tooltip: "Web Application"),
      ],
      year: "2018-2020"),
  TilesData(
      name: 'Crystalline',
      image: 'assests/images/projects/crystaline.png',
      imageLight: 'assests/images/projects/crystaline.png',
      description:
          'Created smart lamp with home assistant using Raspberry Pi for Internet of Things coursework at UW. Responsible for creating backend architecture using IBM Watson, Grafana, and Node-red.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.desktop_mac,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Desktop Application",
            ),
            tooltip: "Desktop Application"),
      ],
      year: '2021'),
  TilesData(
      name: 'Multinode Key-Value Store',
      image: 'assests/images/projects/symphony.png',
      imageLight: 'assests/images/projects/symphony.png',
      description:
          'Created a multi-node cluster of servers using Docker for \‘Advance Distributed Systems\’ coursework. Implemented 2-phase commit for \‘put\’ and \‘delete\’ operations with thread-safe parallel programming.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.cloud_circle,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Cloud Application",
            ),
            tooltip: "Cloud Application"),
      ],
      year: '2021'),
  TilesData(
      name: 'Online Spam Detection',
      image: 'assests/images/projects/spam_detection.png',
      imageLight: 'assests/images/projects/spam_detection.png',
      description:
          'Developed multiple machine learning models to detect false reviews on the hotel website. Performed data analysis, data cleaning, data pre-processing, model training, and fine-tuning.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.desktop_mac,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Desktop Application",
            ),
            tooltip: "Desktop Application"),
      ],
      year: '2020'),
  TilesData(
      name: 'SoochnaPrenuer',
      image: 'assests/images/projects/soochna.png',
      imageLight: 'assests/images/projects/soochna.png',
      description:
          'An android mobile application to capture all the image, audio, video data straight from the field at high quality. It is intregated with FTP to transfer MIME directly to server.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2020'),
  TilesData(
      name: 'League de Alok',
      image: 'assests/images/projects/alok.png',
      imageLight: 'assests/images/projects/alok.png',
      description:
          'A racing bar graph created with 2019-20 FPL season for our mini league \'Liga de Alok\' just for fun.',
      link: 'https://public.flourish.studio/visualisation/3255550/',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.laptop,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Web Application",
            ),
            tooltip: "Web Application"),
      ],
      year: '2020'),
  TilesData(
      name: 'JR-Live',
      image: 'assests/images/projects/jrlive.png',
      imageLight: 'assests/images/projects/jrlive.png',
      description:
          'An ecommerce app built for internal sales team for JR. It has various features like sort, filter, search and add to favourites, creating quotation and invoicing in PDF and Excel.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
        SmallIcons(
            icon: Icon(
              Icons.cloud_circle,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Cloud Application",
            ),
            tooltip: "Cloud Application"),
      ],
      year: '2019'),
  TilesData(
      name: 'JRF field-work',
      image: 'assests/images/projects/field_work.png',
      imageLight: 'assests/images/projects/field_work.png',
      description:
          'An android application used by JR Foundation team to manage all work flow and provides analytics of each project.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2019'),
  TilesData(
      name: 'JR-Mirzapur',
      image: 'assests/images/projects/mirzapur.png',
      imageLight: 'assests/images/projects/mirzapur.png',
      description:
          'An mobile application linked with Microdoft dynamic NAV through an intermidiate Linux server for managing orders in Jaipur Rugs. Created the whole mobile application and backend with PHP Laravel.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2019'),
  TilesData(
      name: 'JRC Store-Management',
      image: 'assests/images/projects/store.png',
      imageLight: 'assests/images/projects/store.png',
      description:
          'An inventory management app created in Flutter with Barcode functionality to keep track of items at multiple locations through a centeralized database',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2019'),
  TilesData(
      name: 'JRF Survey',
      image: 'assests/images/projects/survey.png',
      imageLight: 'assests/images/projects/survey.png',
      description:
          'A survey app created for JR Foundation team, to link each artisans in the systems. Multiple features like, offline mode, aadhar scanning and etc.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.stay_primary_portrait_outlined,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Mobile Application",
            ),
            tooltip: "Mobile Application"),
      ],
      year: '2019'),
  TilesData(
      name: 'Binge Watch',
      image: 'assests/images/projects/binge.png',
      imageLight: 'assests/images/projects/binge.png',
      description:
          'A desktop application which provides user tailor made movie recommendations. It uses ML alogirthm to suggest top 3 movies based upon user\'s past experience.',
      smallIcons: [
        SmallIcons(
            icon: Icon(
              Icons.desktop_mac,
              size: 15.0,
              color: kAccentColorLight,
              semanticLabel: "Desktop Application",
            ),
            tooltip: "Desktop Application"),
      ],
      year: '2017'),
];

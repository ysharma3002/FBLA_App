import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';




class test extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<test> {
  CalendarController _controller;
  Map<DateTime,List<dynamic>> _events;
  List<dynamic> _selectedEvents;


  @override
  void initState() {
    super.initState();
    _controller = CalendarController();

    _events = {
      DateTime (2020, 1, 8): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 1, 10): ['Adviser News Published and Emailed'],
    DateTime (2020, 1, 24): ['Membership and Dues Received DEADLINE for Section Conference and Competitive Events'],
    DateTime (2020, 1, 24): ['Section Conferences - Skill Tests Completed Online SUBMITTED DEADLINE'],
    DateTime (2020, 1, 24): ['Section Conferences Registration CLOSES'],
    DateTime (2020, 1, 31): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 2, 1): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 2): ['National FBLA-PBL Week'],
    DateTime (2020, 2, 2): ['National Share Your FBLA-PBL Story Day'],
    DateTime (2020, 2, 2): ['National FBLA Spring Stock Market Game BEGINS'],
    DateTime (2020, 2, 3): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 3): ['National FBLA Lifesmarts Spring Competition BEGINS'],
    DateTime (2020, 2, 3): ['National FBLA Virtual Business Finance Spring Challenge Competitive Event BEGINS'],
    DateTime (2020, 2, 3): ['National FBLA Virtual Business Management Spring Challenge Competitive Event BEGINS'],
    DateTime (2020, 2, 3): ['National FBLA Webinar: National Presidents Forum Time TBA'],
    DateTime (2020, 2, 4): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 4): ['National FBLA Each One Reach One Day'],
    DateTime (2020, 2, 5): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 5): ['National FBLA Adviser Appreciation Day'],
    DateTime (2020, 2, 5): ['National FBLA Professional Attire Day'],
    DateTime (2020, 2, 6): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 6): ['National Career Awareness Day'],
    DateTime (2020, 2, 7): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 7): ['National FBLA-PBL Week'],
    DateTime (2020, 2, 7): ['National FBLA-PBL Spirit Day'],
    DateTime (2020, 2, 8): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 8): ['National FBLA-PBL Week'],
    DateTime (2020, 2, 8): ['Bay, Central, Inland, and Northern Section Leadership Conference'],
    DateTime (2020, 2, 8): ['National FBLA Community Service Day'],
    DateTime (2020, 2, 9): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 10): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 10): ['SLC Guide Posted on Web Site Under Conferences - SLC'],
    DateTime (2020, 2, 11): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 12): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 12): ['Adviser News Published and Emailed'],
    DateTime (2020, 2, 13): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 14): ['National Career and Technical Education Month'],
    DateTime (2020, 2, 14): ['CBEA, Redondo Beach, CA'],
    DateTime (2020, 2, 15): ['CBEA, Redondo Beach, CA'],
    DateTime (2020, 2, 16): ['CBEA, Redondo Beach, CA'],
    DateTime (2020, 2, 17): ['CBEA, Redondo Beach, CA'],
    DateTime (2020, 2, 17): ['Professional Membership Registration & Dues Paid in National System for CA State Project Recognition'],
    DateTime (2020, 2, 22): ['Gold Coast and Southern Section Leadership Conference'],
    DateTime (2020, 2, 28): ['Adviser News Submissions Due to lmartin@cafbla.org','Abhi is GOAT','Abhi is GOAT','Abhi is GOAT','Abhi is GOAT','Abhi is GOAT','Abhi is GOAT','Abhi is GOAT'],
    DateTime (2020, 2, 29): ['National Career and Technical Education Month'],
    DateTime (2020, 3, 1): ['CA Financial Literacy Webcast Contest - Link SUBMISSION DEADLINE'],
    DateTime (2020, 3, 1): ['Membership Registration & Payment Received Deadline for SLC and NLC Eligibility'],
    DateTime (2020, 3, 1): ['National FBLA Action Awareness ENDS'],
    DateTime (2020, 3, 1): ['National FBLA Community Service Awards RECEIPT DEADLINE'],
    DateTime (2020, 3, 1): ['National FBLA Individual BAA Entries: Future, Business, & Leader SUBMITTED'],
    DateTime (2020, 3, 2): ['National FBLA Spring Stock Market Game Registration DEADLINE'],
    DateTime (2020, 3, 3): ['Annual Local Chapter Adviser Award Entry Form SUBMITTED'],
    DateTime (2020, 3, 3): ['Chapter BAA Final Chapter POW Form SUBMITTED to Section Directors'],
    DateTime (2020, 3, 3): ['L. Byram Bates Memorial Scholarship Applications SUBMITTED'],
    DateTime (2020, 3, 3): ['SLC Chapter Competitive Events SUBMITTED and Competitors REGISTERED'],
    DateTime (2020, 3, 3): ['SLC Individual Interview Event Materials SUBMITTED and Competitors REGISTERED'],
    DateTime (2020, 3, 3): ['Whos Who Entry Form SUBMITTED'],
    DateTime (2020, 3, 6): ['Adviser News Published and Emailed'],
    DateTime (2020, 3, 6): ['State Officer Applications EMAILED DEADLINE'],
    DateTime (2020, 3, 6): ['State Projects - Chapter Projects Must Be SUBMITTED in Badging System for State Approval'],
    DateTime (2020, 3, 12): ['State Officer Executive Board Meeting'],
    DateTime (2020, 3, 13): ['State Officer Executive Board Meeting'],
    DateTime (2020, 3, 13): ['State Chapter Projects Needing Correction Must Be RESUBMITTED in Badging System for State Approval'],
    DateTime (2020, 3, 13): ['State Management Team Meeting'],
    DateTime (2020, 3, 13): ['SLC Online Conference Regular Rate Registration ENDS'],
    DateTime (2020, 3, 20): ['SLC Completed Skill School-Site Online Tests SUBMITTED'],
    DateTime (2020, 3, 20): ['SLC Hotel Reservations Ontario RECEIVED'],
    DateTime (2020, 3, 20): ['SLC Online Late Conference Registration ENDS'],
    DateTime (2020, 3, 27): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 4, 1): ['National FBLA 100 Percent Class Participation - RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Bylaws Amendment - RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Chapter, State, and National Membership Recognition Awards - RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Distinguished Business Leader Scholarship - RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Membership Achievement Award - RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Membership Madness RECEIPT DEADLINE'],
    DateTime (2020, 4, 1): ['National FBLA Outstanding Chapter - RECEIPT DEADLINE'],
    DateTime (2020, 4, 3): ['Adviser News Published and Emailed'],
    DateTime (2020, 4, 7): ['NBEA Convention in Boston, MA'],
    DateTime (2020, 4, 8): ['NBEA Convention in Boston, MA'],
    DateTime (2020, 4, 9): ['NBEA Convention in Boston, MA'],
    DateTime (2020, 4, 10): ['NBEA Convention in Boston, MA'],
    DateTime (2020, 4, 11): ['NBEA Convention in Boston, MA'],
    DateTime (2020, 4, 23): ['2020 SLC in Ontario, CA'],
    DateTime (2020, 4, 24): ['2020 SLC in Ontario, CA'],
    DateTime (2020, 4, 24): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 4, 24): ['National FBLA Spring Stock Market Game ENDS'],
    DateTime (2020, 4, 25): ['2020 SLC in Ontario, CA'],
    DateTime (2020, 4, 25): ['CA FBLA Industry Board of Directors Meeting Ontario, CA'],
    DateTime (2020, 4, 25): ['CAP Committee Meeting at SLC'],
    DateTime (2020, 4, 25): ['National FBLA BAA America Level SUBMITTED'],
    DateTime (2020, 4, 25): ['National FBLA CSA Achievement Award - RECEIPT DEADLINE'],
    DateTime (2020, 4, 25): ['NLC Qualifiers Meeting'],
    DateTime (2020, 4, 26): ['2020 SLC in Ontario, CA'],
    DateTime (2020, 4, 27): ['NLC Qualifiers Event Verification Spreadsheet Sent to Advisers for Verification of NLC Commitment'],
    DateTime (2020, 4, 30): ['National FBLA Professional Membership Recognition Awards - RECEIPT DEADLINE'],
    DateTime (2020, 4, 30): ['NLC Verification Spreadsheet - SUBMISSION DEADLINE to Nancy Sansot via Email'],
    DateTime (2020, 5, 1): ['Adviser News Published and Emailed'],
    DateTime (2020, 5, 5): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
    DateTime (2020, 5, 6): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
    DateTime (2020, 5, 7): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
    DateTime (2020, 5, 8): ['NLC Event Registrations - Last Day to Make Changes'],
    DateTime (2020, 5, 8): ['NLC Intern Application - RECEIPT DEADLINE'],
    DateTime (2020, 5, 14): ['State Officer Executive Board Meeting Sacramento, CA'],
    DateTime (2020, 5, 15): ['State Officer Executive Board Meeting Sacramento, CA'],
    DateTime (2020, 5, 15): ['National Officer Candidate Application - RECEIPT DEADLINE must be submitted first to state by Mar. 3'],
    DateTime (2020, 5, 15): ['NLC State Chapter Voting Delegates - RECEIPT DEADLINE'],
    DateTime (2020, 5, 15): ['State Management Team Meeting Sacramento, CA'],
    DateTime (2020, 5, 16): ['CA FBLA Industry Board of Directors Meeting Sacramento, CA'],
    DateTime (2020, 5, 29): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 6, 5): ['Adviser News Published and Emailed'],
    DateTime (2020, 6, 9): ['NLC Local Chapter Voting Delegates - Registration Deadline'],
    DateTime (2020, 6, 19): ['State Leadership Summit Location TBA'],
    DateTime (2020, 6, 20): ['State Leadership Summit Location TBA'],
    DateTime (2020, 6, 26): ['Adviser News Submissions Due to lmartin@cafbla.org'],
    DateTime (2020, 6, 28): ['Institute for Leaders Salt Lake City, UT'],
    DateTime (2020, 6, 29): ['Institute for Leaders Salt Lake City, UT'],
    DateTime (2020, 6, 29): ['2020 NLC Salt Lake City, UT'],
    DateTime (2020, 6, 30): ['2020 NLC Salt Lake City, UT'],
    DateTime (2020, 7, 1): ['2020 NLC Salt Lake City, UT'],
    DateTime (2020, 7, 2): ['2020 NLC Salt Lake City, UT'],

    };


    _selectedEvents = [];
  }



  Map<String,dynamic> encodeMap(Map<DateTime,dynamic> map) {
    Map<String,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime,dynamic> decodeMap(Map<String,dynamic> map) {
    Map<DateTime,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }

  @override
  Widget build(BuildContext context) {

            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              TableCalendar(
              events: _events,
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  canEventMarkersOverflow: true,
                  todayColor: Colors.orange,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,

              onDaySelected: (date, events) {


                setState(() {

                  _selectedEvents = events;

                  });
              },

              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),


              Expanded(
                child: _buildEventList()
              )


    ],
    );

  }


  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.8),
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ListTile(
          title: Text(event.toString()),
          onTap: () => print('$event tapped!'),
        ),
      ))
          .toList(),
    );
  }

}
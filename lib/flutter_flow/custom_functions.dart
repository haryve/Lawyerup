import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? guestName(
  List<String> participantsnames,
  String? authusername,
) {
  return participantsnames.first == authusername
      ? participantsnames.last
      : participantsnames.first;
}

List<DocumentReference>? additemAtTopofLisCopy(
  List<DocumentReference>? listofusers,
  DocumentReference? user,
) {
  if (user != null) {
    if (listofusers == null) {
      listofusers = [user];
    } else {
      listofusers.insert(0, user);
    }
  }
  return listofusers;
}

String? guestImage(
  List<String> participantsimage,
  String? authuserimage,
) {
  return participantsimage.first == authuserimage
      ? participantsimage.last
      : participantsimage.first;
}

int? calculatecost(
  int? time,
  int? cost,
) {
  if (time != null && cost != null) {
    double minutes = (time / 60) - 1;
    int roundedMinutes = minutes.round();
    return roundedMinutes * cost;
  }
}

List<DocumentReference>? additemAtTopofLis(
  List<DocumentReference>? listofusers,
  DocumentReference? user,
) {
  if (user != null) {
    if (listofusers == null) {
      listofusers = [user];
    } else {
      listofusers.insert(0, user);
    }
  }
  return listofusers;
}

String? generateMentalHealthQuote() {
  final List<String> quotes = [
    "Health is not valued till sickness comes.",
    "Telemedicine is the future of accessible care.",
    "Wherever you are, care is now just a click away.",
    "Affordable healthcare, without the wait.",
    "India’s first on-demand, per-minute healthcare at your fingertips.",
    "You don’t need to travel to get treated anymore.",
    "Your health deserves instant attention.",
    "Smart care for the modern India.",
    "Bringing doctors closer, digitally.",
    "Care that travels faster than illness.",
    "CareMeez – Because your time and health both matter.",
    "Get expert help, minute by minute.",
    "Skip the line, not the care – CareMeez it!",
    "Meet doctors in minutes, not hours.",
    "Let’s build a healthier India together – one consultation at a time.",
    "CareMeez – Your wellness, our mission.",
    "Powered by doctors, driven by compassion.",
    "Your care, your terms, your CareMeez.",
    "The smarter way to get medical advice.",
    "India's own digital doctor ecosystem.",
    "It’s okay to ask for help. It’s strong to seek it.",
    "Mental health is just as important as physical health.",
    "Healing begins with a conversation.",
    "Strong minds. Stronger futures.",
    "Don’t carry the weight alone – talk to an expert today.",
    "CareMeez – For your peace of mind.",
    "Invisible pain is real. Let’s treat it like it.",
    "One talk can change everything.",
    "Wellness isn’t a luxury. It’s a right.",
    "Your mind matters – every minute of it.",
    "Behind every cure, there's a caring doctor.",
    "Real doctors. Real help. Real-time.",
    "Doctors you can trust, instantly.",
    "Talk to the best in the field – without leaving your home.",
    "CareMeez connects people to purpose-driven doctors.",
    "Our mission: Empower doctors, serve patients.",
    "Digital care doesn’t mean impersonal care.",
    "Where expertise meets empathy.",
    "Your health is our calling.",
    "We believe in humans behind healthcare.",
    "Empowered patients lead healthier lives.",
    "Awareness is the first step toward healing.",
    "Small steps today lead to big wellness tomorrow.",
    "Don’t wait for illness to care for yourself.",
    "Health is your best investment.",
    "Prevention is better than panic.",
    "Knowledge is the best prescription.",
    "Choose progress. Choose health.",
    "When you take charge of your health, you change your life.",
    "Live informed. Live empowered.",
    "Bridging the healthcare divide – one village at a time.",
    "Care beyond cities. Health for every corner of India.",
    "Smartphones bring doctors to doorsteps.",
    "No pin code is too far for good health.",
    "Revolutionizing rural health with just one call.",
    "Internet + Care = CareMeez.",
    "Healthcare is not a privilege – it’s a connection away.",
    "The future of Indian healthcare is digital.",
    "Digitally inclusive, medically superior.",
    "From screens to stethoscopes – redefining reach.",
    "Fitness, nutrition, and care – all in one place.",
    "Good health isn’t a destination. It’s a daily choice.",
    "Eat well. Sleep well. Consult well.",
    "A healthy lifestyle is just a consultation away.",
    "Stay fit. Stay focused. Stay cared for.",
    "Whole-body wellness, now digital.",
    "From yoga to gynecology, we’ve got you covered.",
    "Wellness isn’t seasonal. Neither is our care.",
    "Health begins with habits. And help.",
    "CareMeez supports you through every health journey.",
    "Minutes matter. Get care fast.",
    "Why wait? CareMeez makes it instant.",
    "The fastest way to trusted care.",
    "Time is health. Don’t waste either.",
    "Immediate care for immediate relief.",
    "Talk. Heal. Repeat – All in minutes.",
    "Medical help when you actually need it – now.",
    "On your schedule. On your phone.",
    "From symptoms to solutions, instantly.",
    "Bookless. Borderless. Boundless care.",
    "Clear prices. No surprises.",
    "Affordable care. Trusted professionals.",
    "Healthcare that doesn’t cost your peace of mind.",
    "Get help, not hidden fees.",
    "Your health, your control.",
    "Consult for ₹15/min – quality doesn’t need to be costly.",
    "Affordable expertise. Exceptional impact.",
    "Low cost. High trust.",
    "Care you can afford. Results you can feel.",
    "Invest in health, not hospital bills.",
    "Consult a doctor in 60 seconds.",
    "Scroll. Click. Heal.",
    "All your doctors, one app.",
    "One platform. Endless specialists.",
    "Swipe your way to better health.",
    "Health isn’t offline anymore.",
    "A healthier you is one tap away.",
    "Medical care, reimagined for India.",
    "Your doctor’s now in your pocket.",
    "Where good health begins with great tech."
  ];

  // Generate a random index from the quotes list
  int randomIndex = math.Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

List<DateTime>? getavailslots(
  DateTime? reservedslots,
  DateTime startDateArg,
) {
  List<DateTime> getAvailableSlots(
      List<DateTime> reservedSlots, DateTime startDateArg) {
    // MODIFY CODE ONLY BELOW THIS LINE

    List<DateTime> availableBookings = [];
    DateTime now = startDateArg;
    DateTime startTime = DateTime(now.year, now.month, now.day, now.hour, 0);
    DateTime endTime = startTime.add(const Duration(days: 2)); // now + 2 days

    // Loop through the time slots from start to end time
    for (DateTime currentTime = startTime;
        currentTime.isBefore(endTime);
        currentTime = currentTime.add(const Duration(hours: 1))) {
      bool isReserved = false;

      // Check if the current time slot is reserved
      for (DateTime reservedTime in reservedSlots) {
        if (currentTime.year == reservedTime.year &&
            currentTime.month == reservedTime.month &&
            currentTime.day == reservedTime.day &&
            currentTime.hour == reservedTime.hour) {
          isReserved = true;
          break;
        }
      }

      // Add the current time slot to available bookings if it's not reserved
      if (!isReserved && currentTime.hour >= 9 && currentTime.hour <= 24) {
        availableBookings.add(currentTime);
      }
    }

    List<DateTime> availableSlots = availableBookings
        .where((dateTime) => dateTime.day == availableBookings[0].day)
        .toList();

    return availableSlots;
  }
}

List<String>? getLanguagesForState(String? state) {
  final Map<String, List<String>> stateLanguages = {
    'Andhra Pradesh': ['Telugu', 'Urdu', 'Tamil', 'Kannada', 'Odia'],
    'Arunachal Pradesh': ['Nishi', 'Adi', 'Apatani', 'Tagin', 'Hindi'],
    'Assam': ['Assamese', 'Bengali', 'Bodo', 'Hindi', 'Nepali'],
    'Bihar': ['Hindi', 'Maithili', 'Urdu', 'Bengali', 'Santali'],
    'Chhattisgarh': ['Hindi', 'Chhattisgarhi', 'Odia', 'Bengali', 'Telugu'],
    'Goa': ['Konkani', 'Marathi', 'Hindi', 'Kannada', 'Urdu'],
    'Gujarat': ['Gujarati', 'Hindi', 'Marathi', 'Sindhi', 'Urdu'],
    'Haryana': ['Hindi', 'Punjabi', 'Urdu', 'Bengali', 'Maithili'],
    'Himachal Pradesh': ['Hindi', 'Punjabi', 'Nepali', 'Kashmiri', 'Dogri'],
    'Jharkhand': ['Hindi', 'Santali', 'Bengali', 'Urdu', 'Odia'],
    'Karnataka': ['Kannada', 'Telugu', 'Tamil', 'Urdu', 'Marathi'],
    'Kerala': ['Malayalam', 'Tamil', 'Tulu', 'Kannada', 'Konkani'],
    'Madhya Pradesh': ['Hindi', 'Marathi', 'Urdu', 'Sindhi', 'Gujarati'],
    'Maharashtra': ['Marathi', 'Hindi', 'Urdu', 'Gujarati', 'Telugu'],
    'Manipur': ['Meitei', 'Nepali', 'Hindi', 'Bengali', 'English'],
    'Meghalaya': ['Khasi', 'Garo', 'Bengali', 'Nepali', 'Hindi'],
    'Mizoram': ['Mizo', 'English', 'Hindi', 'Meitei', 'Chakma'],
    'Nagaland': ['Ao', 'Angami', 'Sema', 'Lotha', 'Konyak'],
    'Odisha': ['Odia', 'Santali', 'Urdu', 'Telugu', 'Hindi'],
    'Punjab': ['Punjabi', 'Hindi', 'Urdu', 'Bengali', 'English'],
    'Rajasthan': ['Hindi', 'Marwari', 'Mewari', 'Dhundhari', 'Shekhawati'],
    'Sikkim': ['Nepali', 'Hindi', 'Bengali', 'Urdu', 'Punjabi'],
    'Tamil Nadu': ['Tamil', 'Malayalam', 'Telugu', 'Urdu', 'Kannada'],
    'Telangana': ['Telugu', 'Urdu', 'Gondi', 'Kannada', 'Marathi'],
    'Tripura': ['Bengali', 'Kokborok', 'Chakma', 'English', 'Meitei'],
    'Uttar Pradesh': ['Hindi', 'Urdu', 'Punjabi', 'Nepali', 'Bengali'],
    'Uttarakhand': ['Hindi', 'Garhwali', 'Kumaoni', 'Punjabi', 'Nepali'],
    'West Bengal': ['Bengali', 'Hindi', 'Santali', 'Urdu', 'Nepali'],
    'Andaman and Nicobar Islands': [
      'Bengali',
      'Hindi',
      'Tamil',
      'Telugu',
      'Malayalam'
    ],
    'Chandigarh': ['Punjabi', 'Hindi', 'English'],
    'Dadra and Nagar Haveli and Daman and Diu': [
      'Gujarati',
      'Hindi',
      'Marathi'
    ],
    'Delhi': ['Hindi', 'Punjabi', 'Urdu', 'English'],
    'Jammu and Kashmir': ['Kashmiri', 'Urdu', 'Hindi', 'Dogri', 'Punjabi'],
    'Ladakh': ['Ladakhi', 'Urdu', 'Balti', 'Hindi'],
    'Lakshadweep': ['Malayalam', 'Jeseri', 'Mahl'],
    'Puducherry': ['Tamil', 'Telugu', 'Malayalam', 'French', 'English']
  };

  return state != null ? stateLanguages[state] : null;
}

String? getStringBasedOnTime() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  }
  if (hour < 17) {
    return 'Good Afternoon';
  }
  return 'Good Evening';
}

List<LawyersRecord> mergeDocumentLists(
  List<LawyersRecord> list1,
  List<LawyersRecord> list2,
) {
  // merge two document lists and return merged lists
// Combine both lists and remove duplicates
  var mergedList = List<LawyersRecord>.from(list1);
  mergedList.addAll(list2);
  mergedList = mergedList.toSet().toList(); // Remove duplicates
  return mergedList;
}

List<String> stringToListOfStrings(String data) {
  try {
    final result = jsonDecode(data);
    return List<String>.from(result);
  } catch (e) {
    return [];
  }
}

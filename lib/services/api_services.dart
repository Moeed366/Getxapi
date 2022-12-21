



import 'package:dio/dio.dart';

import 'network_Rapid_client.dart';
import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;
  final NetworkRapidClient rapidnetworkclient;
  ApiService({required this.networkClient,required this.rapidnetworkclient});

  Future<Response> getProfileData() {
    return networkClient.get('https://mocki.io/v1/da1c63d4-e3e5-48b2-b507-64e2515aae79', {});
  }

  Future<Response> getrapiddata() {
    return rapidnetworkclient.get('/users', {});
  }
  /*Future<Response> updateProfile(Map<String, Object> params) {
    return networkClient.post('api/update-profile', params);
  }

  Future<Response> login(Map<String, Object> params) {
    return networkClient.post('/api/User-Login', params);
  }

  Future<Response> logout() {
    return networkClient.post('api/logout', {});
  }

  Future<Response> getDictionaryData() {
    return networkClient.get('api/dictionary_data', {});
  }

  Future<Response> getSurveyQuestion() {
    return networkClient.get('api/display_survey_question', {});
  }

  Future<Response> submitWalkAround(Map<String, Object> params) {
    return networkClient.post('/api/walkArond', params);
  }

  Future<Response> uploadImage(Map<String, Object> params) {
    return networkClient.post('api/upload_image', params);
  }

  Future<Response> uploadDamageReport(Map<String, Object> params) {
    return networkClient.post('api/save_demage_report', params);
  }

  Future<Response> uploadIncidentReport(Map<String, Object> params) {
    return networkClient.post('api/incident-report', params);
  }

  Future<Response> startShift(Map<String, Object> params) {
    return networkClient.post('/api/start', params);
  }

  Future<Response> closeShift(Map<String, Object> params) {
    return networkClient.post('/api/close', params);
  }

  Future<Response> addContacts(Map<String, Object> params) {
    return networkClient.post('api/create_contact', params);
  }

  Future<Response> updateContacts(var id, Map<String, Object> params) {
    return networkClient.patch('api/contact_update/$id', params);
  }

  Future<Response> getContactData() {
    return networkClient.get('api/show_all_contact', {});
  }

  Future<Response> deleteContact(String id) {
    return networkClient.deleteUser('api/delete_contact/$id');
  }

  Future<Response> getHolidays(Map<String, Object> params) {
    return networkClient.post('api/add_holidays', params);
  }


  Future<Response> getShiftData(Map<String, Object> params) {
    return networkClient.post('api/calender_holiday', params);
  }

  Future<Response> getVideoCategory(Map<String, Object> params) {
    // print("data has been loaded video");
    return networkClient.post('api/specific_videos', params);
  }

  Future<Response> postChats(Map<String, Object> params) {
    // print("data has been loaded video");
    return networkClient.post('api/add_msg', params);
  }*/
}

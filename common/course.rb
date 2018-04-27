require 'JSON'

class Course

end

course_list = JSON.parse(
  '[
  {
    "id": 1204471,
    "name": "Advanced Game Design",
    "account_id": 81259,
    "uuid": "7kvYwvhvfpSwCpesWGWc61tvDLiW2RIAGE5GYsgc",
    "start_at": "2017-09-06T07:00:00Z",
    "grading_standard_id": null,
    "is_public": false,
    "course_code": "HIN651",
    "default_view": "modules",
    "root_account_id": 10, "enrollment_term_id": 1, "end_at": "2018-01-31T07:59:00Z", "public_syllabus": false,
"public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false,
"apply_assignment_group_weights": false,
  "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_7kvYwvhvfpSwCpesWGWc61tvDLiW2RIAGE5GYsgc.ics"},
 "time_zone": "America/Los_Angeles",
  "original_name": "Advanced Game Design: Art, Code, \u0026 Prototypes",
  "sis_course_id": null, "integration_id": null,
  "enrollments": [
    {"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}],
 "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false
  },
  {"id": 1198040, "name": "AP Computer Science A", "account_id": 81259, "uuid": "KrQO8m9y96euTyXAlEiUdcqvZxreix6zeSBsvmKH", "start_at": "2017-09-06T07:00:00Z", "grading_standard_id": null, "is_public": false, "course_code": "CSA: HIN421/422", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": "2018-06-16T06:59:00Z", "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_KrQO8m9y96euTyXAlEiUdcqvZxreix6zeSBsvmKH.ics"}, "time_zone": "America/Los_Angeles", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false}, {"id": 1204307, "name": "AP Computer Science Principles", "account_id": 81259, "uuid": "KCcRm0DQnIBZR73O562h3VZDAig5FHiztju6z9yg", "start_at": "2017-09-06T07:00:00Z", "grading_standard_id": null, "is_public": false, "course_code": "CSP: HIN411/412", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": "2018-06-16T06:59:00Z", "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_KCcRm0DQnIBZR73O562h3VZDAig5FHiztju6z9yg.ics"}, "time_zone": "America/Los_Angeles", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false}, {"id": 1219554, "name": "Game Design", "account_id": 81259, "uuid": "C6Q5zfg5l8woWrWehkrW7ROZNDFx2VxAciRxdL4W", "start_at": null, "grading_standard_id": null, "is_public": false, "course_code": "Game", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": null, "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_C6Q5zfg5l8woWrWehkrW7ROZNDFx2VxAciRxdL4W.ics"}, "time_zone": "America/Denver", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "unpublished", "restrict_enrollments_to_course_dates": false}, {"id": 1248844, "name": "Game Design \u0026 Programming", "account_id": 81259, "uuid": "u6CyDuDxp0PycMtrUNfCONYLLgimfTY4XcVR5afX", "start_at": null, "grading_standard_id": null, "is_public": false, "course_code": "GDP: HIN611 \u0026 HIN651/652", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": null, "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_u6CyDuDxp0PycMtrUNfCONYLLgimfTY4XcVR5afX.ics"}, "time_zone": "America/Los_Angeles", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "unpublished", "restrict_enrollments_to_course_dates": false}, {"id": 1194139, "name": "Intro to Game Design", "account_id": 81259, "uuid": "vAJckX7FSgL4r8V8X4sFQ7nSS3Ty7LVhArJlrHRw", "start_at": "2017-09-06T07:00:00Z", "grading_standard_id": null, "is_public": false, "course_code": "IGD: HIN611", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": "2018-01-31T07:59:00Z", "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_vAJckX7FSgL4r8V8X4sFQ7nSS3Ty7LVhArJlrHRw.ics"}, "time_zone": "America/Los_Angeles", "original_name": "Introduction to Game Design: Concepts \u0026 Design", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false}, {"id": 1203529, "name": "Sandbox", "account_id": 81259, "uuid": "HAHXFgrlt6xJXiBnsi8NVFInTHO72C8IgfJ7YD8p", "start_at": "2017-08-27T23:34:00Z", "grading_standard_id": null, "is_public": false, "course_code": "Sandbox", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": null, "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_HAHXFgrlt6xJXiBnsi8NVFInTHO72C8IgfJ7YD8p.ics"}, "time_zone": "America/Los_Angeles", "sis_course_id": null, "integration_id": null, "enrollments": [{"type": "teacher", "role": "TeacherEnrollment", "role_id": 822, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false}, {"id": 1166563, "name": "TEALS Summer Training 2017 (AP CS A)", "account_id": 81259, "uuid": "zOHRY286bd5uVEylIGO8t2lu7MteN1P3IC38oLGa", "start_at": "2017-06-15T17:02:00Z", "grading_standard_id": null, "is_public": false, "course_code": "TEALS |2017/18| AP CS A", "default_view": "modules", "root_account_id": 10, "enrollment_term_id": 1, "end_at": null, "public_syllabus": false, "public_syllabus_to_auth": false, "storage_quota_mb": 250, "is_public_to_auth_users": false, "apply_assignment_group_weights": false, "calendar": {"ics": "https://canvas.instructure.com/feeds/calendars/course_zOHRY286bd5uVEylIGO8t2lu7MteN1P3IC38oLGa.ics"}, "time_zone": "America/Los_Angeles", "enrollments": [{"type": "student", "role": "StudentEnrollment", "role_id": 821, "user_id": 8305705, "enrollment_state": "active"}], "hide_final_grades": false, "workflow_state": "available", "restrict_enrollments_to_course_dates": false
}]')

course_index = []
course_list.each do |course|
  if (course["enrollments"][0]["type"] == "teacher")
    hash = { :id => course['id'], :name => course['name'], :course_code => course['course_code'] }
    course_index.push(hash)
  end
end

course_index.each do |c|
  puts c[:id].to_s + ': ' + c[:name] + ' (' + c[:course_code] + ')'
end
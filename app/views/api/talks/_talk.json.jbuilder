json.extract! talk, :id, :semester_id, :speaker_id, :date
json.semester_start_date talk.semester.start_date
json.speaker talk.speaker
json.url api_talk_url(talk, format: :json)

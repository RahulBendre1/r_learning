library('RPostgreSQL')

output_file_path <- '/Users/mural.kummitha/work/R/datainterfaces/data/meetings.csv'

db_connection <- dbConnect(PostgreSQL(), user = '', password = '', 
                           dbname='bluesky_development', host='localhost')
dbListTables(db_connection)

fetch_meetings <- function(qry) {
  meetings = dbSendQuery(db_connection, qry)
  fetch(meetings)
}

qry = "select meeting_with, id, start_time, end_time from mwc2018.meeting_requests"
top_meetings = fetch_meetings(qry)

print(top_meetings)

# filter

qry = "select meeting_with, id, start_time, end_time from mwc2018.meeting_requests where meeting_with = 'cisco'"
filtered_meetings = dbSendQuery(db_connection, qry)
result = fetch(filtered_meetings)

print(nrow(result))
print(result)

if (!file.exists(output_file_path)) {
  file.create(output_file_path)
}

write.csv(result, file=output_file_path)

data_stream = read.csv(output_file_path)
print(data_stream)


# update

update_qry = "update mwc2018.meeting_requests set meeting_with = 'cisco dup' where id = 6"
# update_qry = dbSendQuery(db_connection, update_qry)

print(update_qry)

result = dbSendQuery(db_connection, 'drop table if exists mtcars')
print(result)




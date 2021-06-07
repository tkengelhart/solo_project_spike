-- Get trip details
SELECT "date", "activity"."name", "time_of_day", "constraints", "notes" FROM "itinerary_activity"
LEFT JOIN
"activity"
ON 
"activity"."id" = "itinerary_activity"."activity_id"
JOIN
"itinerary"
ON
"itinerary"."id" = "itinerary_activity"."itinerary_id"
WHERE "itinerary"."trip_name" = 'nashville';


-- Insert new activity
INSERT INTO "activity" ("name", "constraints", "activity_url", "activity_location") 
VALUES ('mall of america', 'none', 'https://www.mallofamerica.com/', 'minneapolis');

-- Add new trip
INSERT INTO "itinerary" ("start", "end", "trip_name") 
VALUES ('08-13-2021', '08-21-2021', 'nashville');

-- Delete activity
DELETE FROM "activity"
WHERE "activity"."id" = 4;

-- Add activity to a trip
INSERT INTO "itinerary_activity" ("itinerary_id", "activity_id", "time_of_day", "date", "notes")
VALUES ('1', '1', 'evening', '08-13-2021', 'whole family');

-- Edit itinerary activity
UPDATE "itinerary_activity" SET "time_of_day" = 'afternoon' 
WHERE "itinerary_activity"."id" = 2;













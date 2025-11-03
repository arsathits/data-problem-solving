# 🎬 Problem 33: Reviewed Flags of Top Videos

## 📌 Problem Statement

You are given two datasets:

1. **user_flags** – Contains information about flags submitted by users on videos.
2. **flag_review** – Contains information on whether the flagged content was reviewed by YouTube and the review outcome.

Each video may receive multiple flags from different users. Some flags may not have a corresponding review record.  

Your task is to determine, for the video (or videos) that received the **most user flags**, how many of these flags were **reviewed by YouTube**.  

Output the **video ID** along with the **number of reviewed flags**. Only consider flags that have a valid corresponding `flag_id` in the review table.

# 📌 Schema: Reviewed Flags of Top Videos

We have two tables under the schema `reviewed_flags_top_videos`:

## 1. Table: `user_flags`

| Column Name      | Data Type | Description                          |
|-----------------|-----------|--------------------------------------|
| flag_id         | TEXT      | Primary key, unique identifier for each flag |
| user_firstname  | TEXT      | First name of the user who flagged the video |
| user_lastname   | TEXT      | Last name of the user who flagged the video |
| video_id        | TEXT      | ID of the video being flagged        |

## 2. Table: `flag_review`

| Column Name      | Data Type | Description                          |
|-----------------|-----------|--------------------------------------|
| flag_id         | TEXT      | Primary key, corresponds to `user_flags.flag_id` |
| reviewed_by_yt  | BOOLEAN   | Indicates if YouTube reviewed the flag |
| reviewed_date   | DATE      | Date when the flag was reviewed      |
| reviewed_outcome| TEXT      | Outcome of the review (e.g., REMOVED, APPROVED) |

CREATE TABLE user_profiles (
                               id UUID PRIMARY KEY,
                               user_id UUID,
                               display_name VARCHAR(100),
                               first_name VARCHAR(100),
                               last_name VARCHAR(100),
                               email VARCHAR(100),
                               phone_number VARCHAR(10),
                               gender VARCHAR(10),
                               created_at TIMESTAMPTZ,
                               created_by VARCHAR(255),
                               updated_at TIMESTAMPTZ,
                               updated_by VARCHAR(255),
                               is_deleted BOOLEAN DEFAULT FALSE,
                               deleted_at TIMESTAMPTZ,
                               deleted_by VARCHAR(255)
);

CREATE TABLE user_address (
                              id UUID PRIMARY KEY,
                              user_profile_id UUID UNIQUE,
                              address_line_1 VARCHAR(100),
                              address_line_2 VARCHAR(100),
                              city VARCHAR(25),
                              country VARCHAR(2),
                              district VARCHAR(30),
                              province VARCHAR(30),
                              profile_type VARCHAR(30),
                              created_at TIMESTAMPTZ,
                              created_by VARCHAR(255),
                              updated_at TIMESTAMPTZ,
                              updated_by VARCHAR(255),
                              is_deleted BOOLEAN DEFAULT FALSE,
                              deleted_at TIMESTAMPTZ,
                              deleted_by VARCHAR(255)
);

CREATE TABLE tags (
                      id UUID PRIMARY KEY,
                      slug TEXT,
                      path TEXT,
                      level TEXT,
                      parent_id UUID,
                      display_order INT DEFAULT 0,
                      description TEXT,
                      is_active BOOLEAN DEFAULT TRUE,
                      created_at TIMESTAMPTZ,
                      created_by VARCHAR(255),
                      updated_at TIMESTAMPTZ,
                      updated_by VARCHAR(255),
                      is_deleted BOOLEAN DEFAULT FALSE,
                      deleted_at TIMESTAMPTZ,
                      deleted_by VARCHAR(255)
);

CREATE TABLE user_tag (
                          id UUID PRIMARY KEY,
                          user_id UUID,
                          tag_id UUID,
                          proficiency_level INT,
                          year_of_experience INT,
                          is_primary BOOLEAN DEFAULT FALSE,
                          is_specialization BOOLEAN DEFAULT FALSE,
                          note TEXT,
                          source VARCHAR(50),
                          last_used_at TIMESTAMPTZ,
                          created_at TIMESTAMPTZ,
                          created_by VARCHAR(255),
                          updated_at TIMESTAMPTZ,
                          updated_by VARCHAR(255),
                          is_deleted BOOLEAN DEFAULT FALSE,
                          deleted_at TIMESTAMPTZ,
                          deleted_by VARCHAR(255)
);

CREATE TABLE user_social_links (
                                   id UUID PRIMARY KEY,
                                   user_profile_id UUID,
                                   website_name VARCHAR(50),
                                   url TEXT,
                                   created_at TIMESTAMPTZ,
                                   created_by VARCHAR(255),
                                   updated_at TIMESTAMPTZ,
                                   updated_by VARCHAR(255),
                                   is_deleted BOOLEAN DEFAULT FALSE,
                                   deleted_at TIMESTAMPTZ,
                                   deleted_by VARCHAR(255)
);

CREATE TABLE user_work_experiences (
                                       id UUID PRIMARY KEY,
                                       user_profile_id UUID,
                                       company_name VARCHAR(100),
                                       employment_type VARCHAR(100),
                                       location VARCHAR(100),
                                       work_preference VARCHAR(100),
                                       position VARCHAR(100),
                                       start_date DATE,
                                       end_date DATE,
                                       is_current BOOLEAN,
                                       description TEXT,
                                       created_at TIMESTAMPTZ,
                                       created_by VARCHAR(255),
                                       updated_at TIMESTAMPTZ,
                                       updated_by VARCHAR(255),
                                       is_deleted BOOLEAN DEFAULT FALSE,
                                       deleted_at TIMESTAMPTZ,
                                       deleted_by VARCHAR(255)
);

CREATE TABLE user_educations (
                                 id UUID PRIMARY KEY,
                                 user_profile_id UUID,
                                 university_name VARCHAR(100),
                                 major VARCHAR(100),
                                 degree VARCHAR(100),
                                 graduation_year SMALLINT,
                                 start_date DATE,
                                 end_date DATE,
                                 is_current BOOLEAN DEFAULT FALSE,
                                 created_at TIMESTAMPTZ,
                                 created_by VARCHAR(255),
                                 updated_at TIMESTAMPTZ,
                                 updated_by VARCHAR(255),
                                 is_deleted BOOLEAN DEFAULT FALSE,
                                 deleted_at TIMESTAMPTZ,
                                 deleted_by VARCHAR(255)
);

CREATE TABLE user_certifications (
                                     id UUID PRIMARY KEY,
                                     user_profile_id UUID,
                                     name VARCHAR(150),
                                     issuer VARCHAR(100),
                                     issued_date DATE,
                                     expired_date DATE,
                                     cert_url TEXT,
                                     cert_code VARCHAR(100),
                                     created_at TIMESTAMPTZ,
                                     created_by VARCHAR(255),
                                     updated_at TIMESTAMPTZ,
                                     updated_by VARCHAR(255),
                                     is_deleted BOOLEAN DEFAULT FALSE,
                                     deleted_at TIMESTAMPTZ,
                                     deleted_by VARCHAR(255)
);

CREATE TABLE user_availabilities (
                                     id UUID PRIMARY KEY,
                                     user_profile_id UUID,
                                     day_of_week SMALLINT,
                                     start_time TIME,
                                     end_time TIME,
                                     timezone VARCHAR(50),
                                     created_at TIMESTAMPTZ,
                                     created_by VARCHAR(255),
                                     updated_at TIMESTAMPTZ,
                                     updated_by VARCHAR(255),
                                     is_deleted BOOLEAN DEFAULT FALSE,
                                     deleted_at TIMESTAMPTZ,
                                     deleted_by VARCHAR(255)
);
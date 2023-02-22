--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_year` varchar(50) NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  `note` text,
  `is_running` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `activity` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `caste` varchar(100) DEFAULT NULL,
  `health_condition` varchar(255) DEFAULT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `photo` varchar(120) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `is_guardian` varchar(50) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `gud_relation` varchar(100) DEFAULT NULL,
  `gud_name` varchar(100) DEFAULT NULL,
  `gud_phone` varchar(50) DEFAULT NULL,
  `gud_email` varchar(50) DEFAULT NULL,
  `gud_national_id` varchar(50) DEFAULT NULL,
  `gud_present_address` varchar(255) DEFAULT NULL,
  `gud_permanent_address` varchar(255) DEFAULT NULL,
  `gud_profession` varchar(100) DEFAULT NULL,
  `gud_religion` varchar(100) DEFAULT NULL,
  `gud_other_info` varchar(255) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(50) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `father_designation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(50) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_designation` varchar(100) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `previous_class` varchar(100) DEFAULT NULL,
  `second_language` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = New, 1 = Waiting, 2 = Decline, 3 = Approved',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `admit_card_settings`
--

CREATE TABLE `admit_card_settings` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `border_color` varchar(20) DEFAULT NULL,
  `top_bg` varchar(20) DEFAULT NULL,
  `bottom_bg` varchar(20) DEFAULT NULL,
  `school_logo` varchar(120) DEFAULT NULL,
  `school_name` varchar(120) DEFAULT NULL,
  `school_name_font_size` varchar(20) DEFAULT NULL,
  `school_name_color` varchar(20) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_address_color` varchar(20) DEFAULT NULL,
  `admit_font_size` varchar(20) DEFAULT NULL,
  `admit_color` varchar(20) DEFAULT NULL,
  `admit_bg` varchar(20) DEFAULT NULL,
  `title_font_size` varchar(20) DEFAULT NULL,
  `title_color` varchar(20) DEFAULT NULL,
  `value_font_size` varchar(20) DEFAULT NULL,
  `value_color` varchar(20) DEFAULT NULL,
  `exam_font_size` varchar(20) DEFAULT NULL,
  `exam_color` varchar(20) DEFAULT NULL,
  `subject_font_size` varchar(20) DEFAULT NULL,
  `subject_color` varchar(20) DEFAULT NULL,
  `bottom_text` varchar(100) DEFAULT NULL,
  `bottom_text_color` varchar(20) DEFAULT NULL,
  `bottom_text_align` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `note` text,
  `assignment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `assignment_submissions`
--

CREATE TABLE `assignment_submissions` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `submission` varchar(150) NOT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `custom_id` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `isbn_no` varchar(20) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `rack_no` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `library_member_id` int(11) NOT NULL COMMENT 'Library member id',
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date NOT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `top_title` varchar(255) DEFAULT NULL,
  `sub_title_middle` varchar(255) DEFAULT NULL,
  `main_text` text,
  `footer_left` varchar(255) DEFAULT NULL,
  `footer_middle` varchar(255) DEFAULT NULL,
  `footer_right` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `numeric_name` int(11) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `action_note` text,
  `complain_date` datetime DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `complain_types`
--

CREATE TABLE `complain_types` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `discount_type` varchar(50) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `cover_image` varchar(120) DEFAULT NULL,
  `file_name` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text,
  `academic_year_id` int(11) NOT NULL,
  `email_type` varchar(50) NOT NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `absent_date` date DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `mail_protocol` varchar(50) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` varchar(20) NOT NULL,
  `smtp_timeout` tinyint(1) NOT NULL,
  `smtp_user` varchar(100) NOT NULL,
  `smtp_pass` varchar(100) NOT NULL,
  `smtp_crypto` varchar(50) NOT NULL,
  `mail_type` varchar(50) NOT NULL,
  `char_set` varchar(50) NOT NULL,
  `priority` tinyint(1) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_address` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `designation_id` int(11) NOT NULL,
  `salary_grade_id` int(11) DEFAULT NULL,
  `salary_type` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `other_info` text,
  `display_order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_place` varchar(255) DEFAULT NULL,
  `event_from` date NOT NULL,
  `event_to` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_attendances`
--

CREATE TABLE `exam_attendances` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `is_attend` varchar(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `total_subject` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `total_obtain_mark` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `result_status` varchar(50) NOT NULL,
  `merit_rank_in_class` varchar(50) NOT NULL,
  `merit_rank_in_section` varchar(50) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `expenditures`
--

CREATE TABLE `expenditures` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_head_id` int(11) NOT NULL,
  `expenditure_type` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expenditure_via` varchar(20) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `expenditure_heads`
--

CREATE TABLE `expenditure_heads` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `fees_amount`
--

CREATE TABLE `fees_amount` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `final_results`
--

CREATE TABLE `final_results` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `total_subject` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `total_obtain_mark` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `result_status` varchar(50) NOT NULL,
  `merit_rank_in_class` varchar(20) NOT NULL,
  `merit_rank_in_section` varchar(20) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `global_setting`
--

CREATE TABLE `global_setting` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_title` varchar(255) DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `enable_rtl` tinyint(1) NOT NULL,
  `enable_frontend` tinyint(1) NOT NULL,
  `theme_name` varchar(100) DEFAULT NULL,
  `date_format` varchar(20) NOT NULL,
  `time_zone` varchar(150) NOT NULL,
  `brand_logo` varchar(120) DEFAULT NULL,
  `favicon_icon` varchar(100) DEFAULT NULL,
  `brand_footer` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `splash_image` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_setting`
--

INSERT INTO `global_setting` (`id`, `brand_name`, `brand_title`, `language`, `enable_rtl`, `enable_frontend`, `theme_name`, `date_format`, `time_zone`, `brand_logo`, `favicon_icon`, `brand_footer`, `google_analytics`, `currency`, `currency_symbol`, `splash_image`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 'Multi School', 'Global Multi School Management System Express', 'english', 0, 1, 'rebecca-purple', 'M j, Y', 'Asia/Dhaka', '1538469805-brand-logo.png', '1591459702-favicon-icon.ico', 'Copyright © Global Multi School Management System Express at 2020', '', 'USD', '$', '1591459036-splash-image.jpg', 1, 1, 1, '2018-10-02 10:39:15', '2020-06-14 16:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `gmsms_sessions`
--

CREATE TABLE `gmsms_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `point` decimal(10,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_to` int(11) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `guardian_feedbacks`
--

CREATE TABLE `guardian_feedbacks` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `guardian_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `hostel_members`
--

CREATE TABLE `hostel_members` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `id_card_settings`
--

CREATE TABLE `id_card_settings` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `border_color` varchar(20) DEFAULT NULL,
  `top_bg` varchar(20) DEFAULT NULL,
  `bottom_bg` varchar(20) DEFAULT NULL,
  `school_logo` varchar(120) DEFAULT NULL,
  `school_name` varchar(120) DEFAULT NULL,
  `school_name_font_size` varchar(20) DEFAULT NULL,
  `school_name_color` varchar(20) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_address_color` varchar(20) DEFAULT NULL,
  `id_no_font_size` varchar(20) DEFAULT NULL,
  `id_no_color` varchar(20) DEFAULT NULL,
  `id_no_bg` varchar(20) DEFAULT NULL,
  `title_font_size` varchar(20) DEFAULT NULL,
  `title_color` varchar(20) DEFAULT NULL,
  `value_font_size` varchar(20) DEFAULT NULL,
  `value_color` varchar(20) DEFAULT NULL,
  `bottom_text` varchar(100) DEFAULT NULL,
  `bottom_text_color` varchar(20) DEFAULT NULL,
  `bottom_text_align` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `income_heads`
--

CREATE TABLE `income_heads` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `head_type` varchar(50) DEFAULT NULL COMMENT 'fee, income, hostel, transport',
  `title` varchar(255) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `custom_invoice_id` varchar(50) NOT NULL,
  `is_applicable_discount` tinyint(1) DEFAULT '0',
  `academic_year_id` int(11) NOT NULL,
  `invoice_type` varchar(50) NOT NULL COMMENT 'income,invoice',
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `gross_amount` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `paid_status` varchar(20) NOT NULL DEFAULT 'Unpaid',
  `temp_amount` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `invoice_type` varchar(20) DEFAULT NULL COMMENT 'income, fee, hostel, transport',
  `gross_amount` float NOT NULL,
  `discount` float NOT NULL,
  `net_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `meeting_id` varchar(100) NOT NULL,
  `meeting_password` varchar(120) NOT NULL,
  `class_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `send_notification` tinyint(1) DEFAULT '0',
  `class_type` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci,
  `bengali` longtext COLLATE utf8_unicode_ci,
  `spanish` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `urdu` longtext COLLATE utf8_unicode_ci,
  `chinese` longtext COLLATE utf8_unicode_ci,
  `japanese` longtext COLLATE utf8_unicode_ci,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `russian` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `korean` longtext COLLATE utf8_unicode_ci,
  `german` longtext COLLATE utf8_unicode_ci,
  `italian` longtext COLLATE utf8_unicode_ci,
  `thai` longtext COLLATE utf8_unicode_ci,
  `hungarian` longtext COLLATE utf8_unicode_ci,
  `dutch` longtext COLLATE utf8_unicode_ci,
  `latin` longtext COLLATE utf8_unicode_ci,
  `indonesian` longtext COLLATE utf8_unicode_ci,
  `turkish` longtext COLLATE utf8_unicode_ci,
  `greek` longtext COLLATE utf8_unicode_ci,
  `persian` longtext COLLATE utf8_unicode_ci,
  `malay` longtext COLLATE utf8_unicode_ci,
  `telugu` longtext COLLATE utf8_unicode_ci,
  `tamil` longtext COLLATE utf8_unicode_ci,
  `gujarati` longtext COLLATE utf8_unicode_ci,
  `polish` longtext COLLATE utf8_unicode_ci,
  `ukrainian` longtext COLLATE utf8_unicode_ci,
  `panjabi` longtext COLLATE utf8_unicode_ci,
  `romanian` longtext COLLATE utf8_unicode_ci,
  `burmese` longtext COLLATE utf8_unicode_ci,
  `yoruba` longtext COLLATE utf8_unicode_ci,
  `hausa` longtext COLLATE utf8_unicode_ci,
  `mylang` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--


--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(1, 'add', 'Add', 'যোগ করুন', 'Añadir', 'إضافة', 'जोड़ना', 'شامل کریں', '加', '追加', 'Adicionar', 'Добавить', 'Ajouter', '더하다', 'Hinzufügen', 'Inserisci', 'เพิ่ม', 'hozzáad', 'Toevoegen', 'addere', 'Menambahkan', 'Eklemek', 'Προσθέτω', 'اضافه کردن', 'Tambah', 'చేర్చు', 'கூட்டு', 'ઉમેરો', 'Dodaj', 'Додати', 'ਜੋੜੋ', 'Adăuga', 'ပေါင်း', 'Fi kun', 'Ƙara', NULL),
(2, 'edit', 'Edit', 'সম্পাদনা করুন', 'Editar', 'تصحيح', 'संपादित करें', 'ترمیم', '编辑', '編集', 'Editar', 'редактировать', 'modifier', '편집하다', 'Bearbeiten', 'modificare', 'แก้ไข', 'szerkesztése', 'Bewerk', 'recensere', 'Edit', 'Düzenle', 'Επεξεργασία', 'ویرایش', 'Edit', 'మార్చు', 'தொகு', 'સંપાદિત કરો', 'Edytować', 'Редагувати', 'ਸੰਪਾਦਿਤ ਕਰੋ', 'Editați | ×', 'Edit ကို', 'Ṣatunkọ', 'Shirya', NULL),
(3, 'delete', 'Delete', 'মুছুন', 'Borrar', 'حذف', 'हटाना', 'حذف کریں', '删除', '削除', 'Excluir', 'Удалить', 'effacer', '지우다', 'Löschen', 'Elimina', 'ลบ', 'Töröl', 'Verwijder', 'delere', 'Menghapus', 'silmek', 'Διαγράφω', 'حذف', 'Padam', 'తొలగించు', 'அழி', 'કાઢી નાંખો', 'Kasować', 'Видалити', 'ਮਿਟਾਓ', 'Șterge', 'ဖျက်ပစ်ပါ', 'Paarẹ', 'Share', NULL),
(4, 'view', 'View', 'দেখুন', 'Ver', 'رأي', 'राय', 'دیکھیں', '视图', 'ビュー', 'Visão', 'Посмотреть', 'vue', '전망', 'Aussicht', 'vista', 'ดู', 'Kilátás', 'Uitzicht', 'View', 'Melihat', 'Görünüm', 'Θέα', 'چشم انداز', 'Lihat', 'చూడండి', 'காண்க', 'જુઓ', 'Widok', 'Вид', 'ਵੇਖੋ', 'Vedere', 'ကြည့်ရှုခြင်း', 'Wo', 'Duba', NULL),
(5, 'action', 'Action', 'ক্রিয়া', 'Acción', 'عمل', 'कार्य', 'عمل', '行动', 'アクション', 'Açao', 'действие', 'action', '동작', 'Aktion', 'Azione', 'การกระทำ', 'Akció', 'Actie', 'actum', 'Tindakan', 'Aksiyon', 'Δράση', 'عمل', 'Tindakan', 'యాక్షన్', 'அதிரடி', 'ક્રિયા', 'Akcja', 'Дія', 'ਐਕਸ਼ਨ', 'Acțiune', 'လှုပ်ရှားမှု', 'Ise', 'Action', NULL),
(6, 'status', 'Status', 'অবস্থা', 'Estado', 'الحالة', 'स्थिति', 'حالت', '状态', '状態', 'Status', 'Положение дел', 'statut', '지위', 'Status', 'Stato', 'สถานะ', 'Állapot', 'staat', 'Status', 'Status', 'durum', 'Κατάσταση', 'وضعیت', 'Status', 'స్థితి', 'நிலைமை', 'સ્થિતિ', 'Status', 'Статус', 'ਸਥਿਤੀ', 'stare', 'အဆင့်အတန်း', 'Ipo', 'Matsayi', NULL),
(7, 'select', 'Select', 'নির্বাচন করুন', 'Seleccionar', 'تحديد', 'चुनते हैं', 'منتخب کریں', '选择', '選択', 'Selecione', 'Выбрать', 'sélectionner', '고르다', 'Wählen', 'Selezionare', 'เลือก', 'választ', 'kiezen', 'select', 'Memilih', 'seçmek', 'Επιλέγω', 'انتخاب کنید', 'Pilih', 'ఎంచుకోండి', 'தேர்வு', 'પસંદ કરો', 'Wybierz', 'Виберіть', 'ਚੁਣੋ', 'Selectați', 'ကို Select လုပ်ပါ', 'Yan', 'Zaɓi', NULL),
(8, 'photo', 'Photo', 'ছবি', 'Foto', 'صورة فوتوغرافية', 'तस्वीर', 'تصویر', '照片', '写真', 'foto', 'Фото', 'photo', '사진', 'Foto', 'Foto', 'ภาพถ่าย', 'Fénykép', 'Foto', 'photo', 'Foto', 'Fotoğraf', 'φωτογραφία', 'عکس', 'Foto', 'ఫోటో', 'புகைப்பட', 'ફોટો', 'Zdjęcie', 'Фотографія', 'ਫੋਟੋ', 'Fotografie', 'ဓာတ်ပုံ', 'aworan', 'Hotuna', NULL),
(9, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'अपलोड', 'اپ لوڈ کریں', '上传', 'アップロード', 'Envio', 'Загрузить', 'télécharger', '업로드', 'Hochladen', 'Caricare', 'อัปโหลด', 'Feltöltés', 'Uploaden', 'Index', 'Upload', 'Yükleme', 'Μεταφόρτωση', 'بارگذاری', 'Muat naik', 'అప్లోడ్', 'பதிவேற்றம்', 'અપલોડ કરો', 'Przekazać plik', 'Завантажити', 'ਅਪਲੋਡ ਕਰੋ', 'Încărcați', 'လွှတ်တင်ခြင်း', 'Po si', 'Upload', NULL),
(10, 'created', 'Created', 'তৈরীর তারিখ', 'Creado', 'خلقت', 'बनाया था', 'تخلیق', '创建', '作成した', 'Criada', 'созданный', 'créé', '만들어진', 'Erstellt', 'Creato', 'ที่สร้างไว้', 'Alkotó', 'gemaakt', 'creatum', 'Dibuat', 'düzenlendi', 'Δημιουργήθηκε', 'ایجاد شده', 'Dicipta', 'రూపొందించబడింది', 'உருவாக்கப்பட்டது', 'બનાવ્યું', 'Stworzony', 'Створено', 'ਬਣਾਇਆ ਗਿਆ', 'Creată', 'Created', 'Ti ṣẹda', 'An yi', NULL),
(11, 'modified', 'Modified', 'পরিবর্তিত তারিখ', 'Modificado', 'تم التعديل', 'संशोधित', 'ترمیم', '改性', '変更された', 'Modificado', 'модифицированный', 'modifié', '수정 됨', 'Geändert', 'Modificata', 'ดัดแปลง', 'Módosított', 'gewijzigde', 'Modified', 'Diubah', 'Değiştirilmiş', 'Τροποποιήθηκε', 'اصلاح شده', 'Diubah suai', 'సవరించిన', 'திருத்தப்பட்ட', 'સંશોધિત', 'Zmodyfikowany', 'Змінено', 'ਸੰਸ਼ੋਧਿਤ', 'Modificat', 'ပြုပြင်ထားသော', 'Ti yipada', 'An gyara', NULL),
(12, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'रद्द करना', 'منسوخ کریں', '取消', 'キャンセル', 'Cancelar', 'Отмена', 'Annuler', '취소', 'Stornieren', 'Annulla', 'ยกเลิก', 'Megszünteti', 'Annuleer', 'Cancel', 'Membatalkan', 'İptal etmek', 'Ματαίωση', 'لغو', 'Batalkan', 'రద్దు', 'ரத்து', 'રદ કરો', 'Anuluj', 'Скасувати', 'ਰੱਦ ਕਰੋ', 'Anulare', 'Cancel', 'Fagilee', 'Cancel', NULL),
(13, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'خضع', 'जमा करें', 'جمع', '提交', '提出する', 'Enviar', 'Отправить', 'soumettre', '제출', 'einreichen', 'Sottoscrivi', 'เสนอ', 'beküldése', 'voorleggen', 'submit', 'Menyerahkan', 'Gönder', 'υποβάλλουν', 'ارسال', 'Hantar', 'సమర్పించండి', 'சமர்ப்பி', 'સબમિટ કરો', 'Zatwierdź', 'Відправити', 'ਜਮ੍ਹਾਂ ਕਰੋ', 'A depune', 'တင်သွင်း', 'Firanṣẹ', 'Sanya', NULL),
(14, 'update', 'Update', 'আপডেট', 'Actualizar', 'تحديث', 'अद्यतन करें', 'اپ ڈیٹ', '更新', '更新', 'Atualizar', 'Обновить', 'mettre à jour', '최신 정보', 'Aktualisieren', 'Aggiornare', 'ปรับปรุง', 'frissítés', 'Bijwerken', 'Update', 'Memperbarui', 'Güncelleştirme', 'Εκσυγχρονίζω', 'به روز رسانی', 'Kemas kini', 'నవీకరణ', 'புதுப்பிக்கப்பட்டது', 'અપડેટ કરો', 'Aktualizacja', 'Оновити', 'ਅੱਪਡੇਟ ਕਰੋ', 'Actualizați', 'Update ကို', 'Imudojuiwọn', 'Sabuntawa', NULL),
(15, 'no_data_found', 'No available data found ', 'কোন তথ্য পাওয়া যায় নি', 'No hay datos disponibles encontrados', 'لم يتم العثور على بيانات متوفرة', 'कोई उपलब्ध डेटा नहीं मिला', 'دستیاب ڈیٹا نہیں ملا', '没有找到可用的数据', '利用可能なデータが見つかりません', 'Não foram encontrados dados disponíveis', 'Нет доступных данных', 'mettre à jour...', '사용할 수있는 데이터가 없습니다.', 'Keine verfügbaren Daten gefunden', 'Nessun dato disponibile trovato', 'ไม่พบข้อมูลที่มีอยู่', 'Nincs elérhető adat', 'Geen beschikbare gegevens gevonden', 'Notitia available non inveni', 'Tidak ditemukan data yang tersedia', 'Mevcut veri bulunamadı', 'Δεν βρέθηκαν διαθέσιμα δεδομένα', 'داده های موجود یافت نشد', 'Tiada data yang terdapat', 'అందుబాటులో ఉన్న డేటా కనుగొనబడలేదు', 'கிடைக்கக்கூடிய தரவுகள் எதுவும் கிடைக்கவில்லை', 'કોઈ ઉપલબ્ધ માહિતી મળી નથી', 'Nie znaleziono żadnych dostępnych danych', 'Не знайдено доступних даних', 'ਕੋਈ ਉਪਲਬਧ ਡੇਟਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu s-au găsit date disponibile', 'မျှမတွေ့မရရှိနိုင်ပါဒေတာ', 'Ko si data to wa ti o wa', 'Babu samin bayanai da aka samo', NULL),
(16, 'confirm_alert', 'Are you sure you want to delete this', 'আপনি কি ডেটা মুছে ফেলার ব্যাপারে নিশ্চিত?', 'Estás seguro que quieres eliminar esto', 'هل أنت متأكد أنك تريد حذف هذا', 'क्या आप वाकई इसे हटाना चाहते हैं', 'کیا آپ واقعی یہ حذف کرنا چاہتے ہیں', '你确定要删除这个吗', 'これを削除してもよろしいですか？', 'Tem certeza de que deseja excluir isso', 'Вы действительно хотите удалить это', 'vous êtes sûr de vouloir supprimer ce', '이 사진을 삭제 하시겠습니까?', 'Möchtest du das wirklich löschen?', 'Sei sicuro di voler cancellare questo', 'คุณแน่ใจหรือไม่ว่าต้องการลบข้อมูลนี้', 'Biztosan törölni szeretné', 'Weet je zeker dat je dit wilt verwijderen?', 'Esne certus vos volo ut delete is', 'Apa kamu yakin ingin menghapus ini', 'Bunu silmek istediğinizden emin misiniz', 'Είστε βέβαιοι ότι θέλετε να το διαγράψετε', 'آیا مطمئن هستید که می خواهید این را حذف کنید', 'Adakah anda pasti mahu memadam ini', 'మీరు దీన్ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా', 'இதை நீ நிச்சயமாக நீக்க விரும்புகிறாயா?', 'શું તમે ખરેખર આને કાઢી નાખવા માંગો છો?', 'Czy na pewno chcesz to usunąć?', 'Ви впевнені, що хочете видалити це', 'ਕੀ ਤੁਸੀਂ ਨਿਸ਼ਚਤ ਰੂਪ ਤੋਂ ਇਸ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Sigur doriți să ștergeți acest lucru', 'သင်ဤပယ်ဖျက်ဖို့လိုတာသေချာ', 'Ṣe o da ọ loju pe o fẹ paarẹ yii', 'Kuna tabbatar kana so ka share wannan', NULL),
(17, 'insert_success', 'Data inserted successfully', 'ডেটা সফলভাবে ঢোকানো হয়েছে', 'Datos insertados con éxito', 'تم إدراج البيانات بنجاح', 'डेटा सफलतापूर्वक डाला गया', 'ڈیٹا کامیابی سے داخل ہوگئی ہے', '数据插入成功', 'データが正常に挿入された', 'Dados inseridos com sucesso', 'Данные успешно вставлены', 'Données insérées avec succès', '데이터가 성공적으로 삽입되었습니다.', 'Daten wurden erfolgreich eingefügt', 'Dati inseriti correttamente', 'แทรกข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen be vannak illesztve', 'Gegevens succesvol ingevoegd', 'Data bene insertas', 'Data berhasil dimasukkan', 'Veriler başarıyla eklendi', 'Τα δεδομένα έχουν εισαχθεί με επιτυχία', 'داده ها با موفقیت وارد شدند', 'Data dimasukkan dengan jayanya', 'డేటా విజయవంతంగా చొప్పించబడింది', 'தரவு வெற்றிகரமாக சேர்க்கப்பட்டது', 'ડેટા સફળતાપૂર્વક શામેલ કર્યો', 'Dane wstawione pomyślnie', 'Дані введені успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਪਾਇਆ ਗਿਆ', 'Datele introduse cu succes', 'အောင်မြင်စွာဖြည့်စွက်ဖို့ဒေတာ', 'Data ti a fi sii ni ifijišẹ', 'Bayanin da aka sanya nasara', NULL),
(18, 'insert_failed', 'Data insert failed. Please try again ', 'ডেটা সন্নিবেশ ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La inserción de datos falló. Inténtalo de nuevo', 'أخفقت عملية إدراج البيانات. حاول مرة اخرى', 'डेटा डालना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا داخل ناکام ہوگیا. دوبارہ کوشش کریں', '数据插入失败。 请再试一次', 'データの挿入に失敗しました。 もう一度お試しください', 'A inserção de dados falhou. Por favor, tente novamente', 'Ошибка ввода данных. Пожалуйста, попробуйте еще раз', 'Linsertion de données a échoué. Sil vous plaît essayez', '데이터 삽입에 실패했습니다. 다시 시도적으로 업데이트되었습니다.하십시오.', 'Daten einfügen fehlgeschlagen. Bitte versuche es erneut', 'Inserimento dati non riuscito. Per favore riprova', 'แทรกข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatbetöltés meghiúsult. Kérlek próbáld újra', 'Gegevensinvoer mislukt. Probeer het opnieuw', 'Data inserta defecit. Quaero, iterum conare', 'Penyisipan data gagal Silahkan coba lagi', 'Veri girişi başarısız oldu. Lütfen tekrar deneyin', 'Η εισαγωγή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'درج اطلاعات وارد نشد لطفا دوباره تلاش کنید', 'Masukkan data gagal. Sila cuba lagi', 'డేటా చొప్పించడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு செருக முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા શામેલ નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wstawić danych. Proszę spróbuj ponownie', 'Вставка даних не вдалося. Будь ласка спробуйте ще раз', 'ਡੇਟਾ ਡ੍ਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Introducerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုထည့်သွင်းမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Asun faili ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Saka bayanai ya kasa. Da fatan a sake gwadawa', NULL),
(19, 'update_success', 'Data updated successfully', 'ডেটা সফলভাবে আপডেট করা হয়েছে', 'Datos actualizados con éxito', 'تم تحديث البيانات بنجاح', 'डेटा सफलतापूर्वक अपडेट किया गया', 'ڈیٹا کامیابی سے اپ ڈیٹ کیا', '数据已成功更新', 'データが正常に更新された', 'Dados atualizados com sucesso', 'Обновлены данные', 'Data updated successfully', '데이터가 성공적으로 업데이트되었습니다..', 'Daten wurden erfolgreich aktualisiert', 'Dati aggiornati con successo', 'อัปเดตข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen frissültek', 'Gegevens zijn succesvol bijgewerkt', 'Updated notitia feliciter', 'Data berhasil diperbarui', 'Veri başarıyla güncellendiVeri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Τα δεδομένα ενημερώθηκαν με επιτυχία', 'داده ها با موفقیت به روز شد', 'Data dikemas kini berjaya', 'డేటా విజయవంతంగా నవీకరించబడింది', 'தரவு வெற்றிகரமாக புதுப்பிக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક અપડેટ થયો છે', 'Data zaktualizowana pomyślnie', 'Дані оновлено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਅਪਡੇਟ ਕੀਤਾ ਗਿਆ', 'Datele au fost actualizate cu succes', 'ဒေတာကိုအောင်မြင်စွာ updated', 'Ti ṣe imudojuiwọn imudojuiwọn ni ifijišẹ', 'An sabunta bayanan da aka sabunta', NULL),
(20, 'update_failed', 'Data update failed. Please try again', 'তথ্য আপডেট ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La actualización de datos falló. Inténtalo de nuevo', 'فشل تحديث البيانات. حاول مرة اخرى', 'डेटा अपडेट विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا اپ ڈیٹ ناکام ہوگیا. دوبارہ کوشش کریں', '数据更新失败。 请再试一次', 'データの更新に失敗しました。 もう一度お試しください', 'A atualização de dados falhou. Por favor, tente novamente', 'Ошибка обновления данных. Пожалуйста, попробуйте еще раз', 'La mise à jour des données a Veuillez réessayer', '데이터 업데이트에 실패했습니다. 다시 시도하십시오.', 'Datenaktualisierung fehlgeschlagen. Bitte versuche es erneut', 'Aggiornamento dati fallito. Per favore riprova', 'การอัปเดตข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatfrissítés nem sikerült. Kérlek próbáld újra', 'Gegevensupdate mislukt. Probeer het opnieuw', 'Data update defecit. Quaero, iterum conare', 'Pembaruan data gagal Silahkan coba lagi', 'Veri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Η ενημέρωση δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'به روز رسانی داده خراب شد لطفا دوباره تلاش کنید', 'Kemas kini data gagal. Sila cuba lagi', 'డేటా నవీకరణ విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு புதுப்பிப்பு தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા અપડેટ નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Aktualizacja danych nie powiodła się. Proszę spróbuj ponownie', 'Не вдалося оновити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਅਪਡੇਟ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Actualizarea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကို update ကိုမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Imudara data ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Rashin bayanin bayanai ya kasa. Da fatan a sake gwadawa', NULL),
(21, 'delete_success', 'Data deleted successully', 'ডেটা সফলভাবে মোছা হয়েছে', 'Datos borrados con éxito', 'تم حذف البيانات بنجاح', 'डाटा सफलतापूर्वक हटा दिया गया', 'ڈیٹا کامیابی سے خارج ہوگئی ہے', '数据删除成功', 'データが正常に削除された', 'Dados eliminados com sucesso', 'Удалены данные', 'DonnéDonnées supprimées avec succès', '데이터가 성공적으로 삭제되었습니다.', 'Daten wurden erfolgreich gelöscht', 'Dati cancellati con successo', 'ลบข้อมูลสำเร็จแล้ว', 'Az adatok sikeresen törölve', 'Gegevens zijn met succes verwijderd', 'Data delevit feliciter', 'Data berhasil dihapus', 'Veri başarıyla silindi', 'Τα δεδομένα διαγράφηκαν με επιτυχία', 'داده ها با موفقیت حذف شدند', 'Data berjaya dipadam', 'డేటా విజయవంతంగా తొలగించబడింది', 'தரவு வெற்றிகரமாக நீக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક કાઢી નાખ્યો', 'Dane zostały pomyślnie usunięte', 'Дані видалено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ', 'Datele au fost șterse cu succes', 'အောင်မြင်စွာဖျက်ပစ်ဒေတာများ', 'Paarẹ ti paarẹ ni ifijišẹ', 'Bayanan da aka share nasarar', NULL),
(22, 'delete_failed', 'Data delete failed. Please try again', 'ডেটা মুছে ফেলতে ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La eliminación de datos falló. Inténtalo de nuevo', 'أخفق حذف البيانات. حاول مرة اخرى', 'डेटा को विफल करना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا ناکام ہوگیا. دوبارہ کوشش کریں', '数据删除失败。 请再试一次', 'データの削除に失敗しました。 もう一度お試しください', 'A exclusão de dados falhou. Por favor, tente novamente', 'Ошибка удаления данных. Пожалуйста, попробуйте еще раз', 'La suppression des données a échoué. Veuillez réessayer', '데이터를 삭제하지 못했습니다. 다시 시도하십시오.', 'Daten löschen fehlgeschlagen. Bitte versuche es erneut', 'Cancellazione dei dati fallita. Per favore riprova', 'การลบข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adat törlése nem sikerült. Kérlek próbáld újra', 'Gegevens verwijderen mislukt. Probeer het opnieuw', 'Delete notitia defuit. Quaero, iterum conare', 'Penghapusan data gagal Silahkan coba lagi', 'Veri silinemedi. Lütfen tekrar deneyin', 'Η διαγραφή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'داده حذف شد لطفا دوباره تلاش کنید', 'Pemadaman data gagal. Sila cuba lagi', 'డేటా తొలగింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு நீக்கம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા કાઢી નાખવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Usuwanie danych nie powiodło się. Proszę spróbuj ponownie', 'Не вдалося видалити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਮਿਟਾਉਣਾ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Ștergerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုမအောင်မြင်ပါဖျက်ပစ်ပါမည်။ ထပ်ကြိုးစားပါ', 'Pipadanu data pa. Jọwọ gbiyanju lẹẹkansi', 'Kuskuren bayanai ya kasa. Da fatan a sake gwadawa', NULL),
(23, 'sl_no', '#SL', 'ক্রমিক', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '# એસએલ', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', NULL),
(24, 'find', 'Find', 'খোঁজ করুন', 'Encontrar', 'تجد', 'खोज', 'مل', '找', '検索', 'Encontrar', 'найти', 'Trouver', '발견', 'Finden', 'Trova', 'หา', 'megtalálja', 'Vind', 'Find', 'Menemukan', 'bulmak', 'Εύρημα', 'پیدا کردن', 'Cari', 'కనుగొనండి', 'கண்டுபிடிக்க', 'શોધવા', 'Odnaleźć', 'Знайдіть', 'ਲੱਭੋ', 'Găsi', 'ရှာတွေ့', 'Wa', 'Nemo', NULL),
(25, 'quick_link', 'Quick Link', 'সরাসরি লিঙ্ক', 'Enlace rápido', 'رابط سريع', 'त्वरित लिंक', 'فوری لنک', '快速链接', 'クイックリンク', 'Link rápido', 'Прямая ссылка', 'Lien rapide', '빠른 링크', 'Schneller Link', 'Collegamento veloce', 'ลิงก์ด่วน', 'Gyors link', 'Snelle link', 'Velox Link', 'Tautan Cepat', 'Hızlı link', 'Γρήγορη σύνδεση', 'اتصال سریع', 'Pautan Cepat', 'త్వరిత లింక్', 'விரைவு இணைப்பு', 'ક્વિક લિંક', 'Szybki link', 'Швидка посилання', 'ਤੁਰੰਤ ਲਿੰਕ', 'Legătură rapidă', 'quick Link ကို', 'Ọna asopọ kiakia', 'Quick Link', NULL),
(26, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'डैशबोर्ड', 'ڈیش بورڈ', '仪表板', 'ダッシュボード', 'painel de controle', 'Панель приборов', 'tableau de bord', '데이터를 삭제하지 못했계기반', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'Irányítópult', 'Dashboard', 'ashboardday', 'Dasbor', 'gösterge paneli', 'Ταμπλό', 'داشبورد', 'Papan Pemuka', 'డాష్బోర్డ్', 'டாஷ்போர்டு', 'ડેશબોર્ડ', 'Deska rozdzielcza', 'Панель приладів', 'ਡੈਸ਼ਬੋਰਡ', 'Bord', 'dashboard ကို', 'Dasibodu', 'Dashboard', NULL),
(27, 'list', 'List', 'তালিকা', 'Lista', 'قائمة', 'सूची', 'فہرست', '名单', 'リスト', 'Lista', 'Список', 'liste', '명부', 'Liste', 'Elenco', 'รายการ', 'Lista', 'Lijst', 'album', 'Daftar', 'Liste', 'Λίστα', 'فهرست', 'Senarai', 'జాబితా', 'பட்டியல்', 'યાદી', 'Lista', 'Перелік', 'ਸੂਚੀ', 'Listă', 'စာရင်း', 'Akojọ', 'Jerin', NULL),
(28, 'setting', 'Setting', 'সেটিংস', 'Ajuste', 'ضبط', 'सेटिंग', 'سیٹنگ', '设置', '設定', 'Configuração', 'настройка', 'Sélection', '환경', 'Rahmen', 'Ambientazione', 'การตั้งค่า', 'Beállítás', 'omgeving', 'Occasum', 'pengaturan', 'Ayar', 'Σύνθεση', 'تنظیمات', 'Menetapkan', 'సెట్టింగు', 'அமைப்பை', 'સેટિંગ', 'Oprawa', 'Налаштування', 'ਸੈਟਿੰਗ', 'reglaj', 'setting ကို', 'Eto', 'Saitin', NULL),
(29, 'payment', 'Payment', 'পেমেন্ট', 'Pago', 'دفع', 'भुगतान', 'ادائیگی', '付款', '支払い', 'Forma de pagamento', 'Оплата', 'Paiement', '지불', 'Zahlung', 'Pagamento', 'การชำระเงิน', 'Fizetés', 'Betaling', 'Payment', 'Pembayaran', 'Ödeme', 'Πληρωμή', 'پرداخت', 'Pembayaran', 'చెల్లింపు', 'கொடுப்பனவு', 'ચુકવણી', 'Zapłata', 'Оплата', 'ਭੁਗਤਾਨ', 'Plată', 'ငွေပေးချေမှုရမည့်', 'Isanwo', 'Biyan kuɗi', NULL),
(30, 'theme', 'Theme', 'থিম', 'Tema', 'موضوع', 'विषय', 'خیالیہ', '主题', 'テーマ', 'Tema', 'тема', 'thème', '테마', 'Thema', 'Tema', 'กระทู้', 'Téma', 'Thema', 'theme', 'Tema', 'Tema', 'Θέμα', 'موضوع', 'Tema', 'థీమ్', 'தீம்', 'થીમ', 'Motyw', 'Тема', 'ਥੀਮ', 'Temă', 'အကွောငျး', 'Akori', 'Jigo', NULL),
(31, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'भाषा', 'زبان', '语言', '言語', 'Língua', 'язык', 'La langue', '언어', 'Sprache', 'linguaggio', 'ภาษา', 'Nyelv', 'Taal', 'Lingua', 'Bahasa', 'Dil', 'Γλώσσα', 'زبان', 'Bahasa', 'భాషా', 'மொழி', 'ભાષા', 'Język', 'Мова', 'ਭਾਸ਼ਾ', 'Limba', 'ဘာသာစကား', 'Ede', 'Harshe', NULL),
(32, 'administrator', 'Administrator', 'প্রশাসক', 'Administrador', 'مدير', 'प्रशासक', 'منتظم', '管理员', '管理者', 'Administrador', 'администратор', 'administrateur', '관리자', 'Administrator', 'Amministratore', 'ผู้บริหาร', 'Adminisztrátor', 'Beheerder', 'administrator', 'Administrator', 'yönetici', 'Διαχειριστής', 'مدیر', 'Pentadbir', 'నిర్వాహకుడు', 'நிர்வாகி', 'સંચાલક', 'Administrator', 'Адміністратор', 'ਪ੍ਰਬੰਧਕ', 'Administrator', 'အုပ်ချုပ်သူ', 'IT', 'Mai gudanarwa', NULL),
(33, 'academic_year', 'Academic Year', 'শিক্ষাবর্ষ', 'Año académico', 'السنة الأكاديمية', 'शैक्षणिक वर्ष', 'تعلیمی سال', '学年', '学年', 'Ano acadêmico', 'Академический год', 'Année académique', '학년', 'Akademisches Jahr', 'Anno accademico', 'ปีการศึกษา', 'Tanév', 'Academiejaar', 'anno academic', 'Tahun akademik', 'Akademik yıl', 'Ακαδημαϊκό έτος', 'سال تحصیلی', 'Tahun akademik', 'విద్యా సంవత్సరం', 'கல்வி ஆண்டில்', 'શૈક્ષણીક વર્ષ', 'Rok akademicki', 'Навчальний рік', 'ਅਕਾਦਮਿਕ ਸਾਲ', 'An academic', 'စာသင်နှစ်', 'Akẹkọ Ọdún', 'Makarantar Kwalejin', NULL),
(34, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستعمل', 'उपयोगकर्ता', 'صارف', '用户', 'ユーザー', 'Do utilizador', 'пользователь', 'Utilisateur', '사용자', 'Benutzer', 'Utente', 'ผู้ใช้งาน', 'használó', 'Gebruiker', 'User', 'Pengguna', 'kullanıcı', 'Χρήστης', 'کاربر', 'Pengguna', 'వాడుకరి', 'பயனர்', 'વપરાશકર્તા', 'Użytkownik', 'Користувач', 'ਯੂਜ਼ਰ', 'Utilizator', 'အသုံးပြုသူကို', 'Olumulo', 'Mai amfani', NULL),
(35, 'role', 'Role', 'ভূমিকা', 'Papel', 'وظيفة', 'भूमिका', 'کردار', '角色', '役割', 'Função', 'Роль', 'Rôle', '역할', 'Rolle', 'Ruolo', 'บทบาท', 'Szerep', 'Rol', 'partes', 'Peran', 'rol', 'Ρόλος', 'نقش', 'Peranan', 'పాత్ర', 'பங்கு', 'ભૂમિકા', 'Rola', 'Роль', 'ਭੂਮਿਕਾ', 'Rol', 'အခန်းက္ပ', 'Ipa', 'Matsayi', NULL),
(36, 'user_role', 'User Role', 'ব্যবহারকারীর ভূমিকা', 'Rol del usuario', 'دور المستخدم', 'उपयोगकर्ता भूमिका', 'صارف کردار', '用户角色', 'ユーザーロール', 'Papel do usuário', 'Роль пользователя', 'Rôle dutilisateur', '사용자 역할', 'Benutzer-Rolle', 'Ruolo utente', 'บทบาทผู้ใช้', 'Felhasználói szerepkör', 'Gebruikersrol', 'User Partes', 'Peran pengguna', 'Kullanıcı rolü', 'Ρόλος χρήστη', 'نقش کاربر', 'Peranan Pengguna', 'వాడుకరి పాత్ర', 'பயனர் பங்கு', 'વપરાશકર્તા ભૂમિકા', 'Rola użytkownika', 'Роль користувача', 'ਯੂਜ਼ਰ ਭੂਮਿਕਾ', 'Rolul utilizatorului', 'အသုံးပြုသူအခန်းက္ပ', 'Išẹ Olumulo', 'Mai amfani', NULL),
(37, 'role_permission', 'Role Permission', 'ভূমিকা অনুমতি', 'Permiso de función', 'إذن الدور', 'भूमिका अनुमति', 'کردار کی اجازت', '角色权限', '役割の許可', 'Permissão de papel', 'Ролевое разрешение', 'Permission de rôle', '역할 권한', 'Rollenberechtigungen', 'Permesso di ruolo', 'การอนุญาตบทบาท', 'Szerepengedély', 'Roltoestemming', 'Licet munus', 'Perizinan Peran', 'Rol İzni', 'Άδεια ρόλου', 'نقش مجاز', 'Kebenaran Peranan', 'పాత్ర అనుమతి', 'பங்கு அனுமதி', 'ભૂમિકા પરવાનગી', 'Zezwolenie na role', 'Ролевий дозвіл', 'ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ', 'Permisiune pentru roluri', 'အခန်းက္ပခွင့်ပြုချက်', 'Igbese ipa', 'Yarjejeniyar aiki', NULL),
(38, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট', 'Restablecer la contraseña', 'إعادة تعيين كلمة المرور', 'पासवर्ड रीसेट', 'پاس ورڈ ری سیٹ', '重设密码', 'パスワードを再設定する', 'Redefinir Senha', 'Сброс пароля', 'réinitialiser le mot de passe', '암호를 재설정', 'Passwort zurücksetzen', 'Resetta la password', 'รีเซ็ตรหัสผ่าน', 'Jelszó visszaállítása', 'Reset wachtwoord', 'Reset password', 'Reset Password', 'Şifreyi yenile', 'Επαναφέρετε τον κωδικό πρόσβασης', 'بازنشانی گذرواژه', 'Menetapkan semula kata laluan', 'రహస్యపదాన్ని మార్చుకోండి', 'கடவுச்சொல்லை மீட்டமைக்க', 'પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło', 'Скинути пароль', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Reseteaza parola', 'လျှို့ဝှတ်နံပါတ်အားမူလအတိုင်းပြန်လုပ်သည်', 'Atunwo Ọrọigbaniwọle', 'Sake saita kalmar sirri', NULL),
(39, 'reset_user_password', 'Reset User Password', 'ব্যবহারকারী পাসওয়ার্ড রিসেট', 'Restablecer contraseña de usuario', 'إعادة تعيين كلمة مرور المستخدم', 'उपयोगकर्ता पासवर्ड रीसेट करें', 'صارف کا پاس ورڈ ری سیٹ کریں', '重置用户密码', 'ユーザパスワードをリセットする', 'Redefinir Senha do Usuário', 'Сбросить пароль пользователя', 'Réinitialiser mot de passe', '사용자 암호 재설정', 'Benutzerpasswort zurücksetzen', 'Reimposta password utente', 'รีเซ็ตรหัสผ่านผู้ใช้', 'Felhasználói jelszó visszaállítása', 'Reset gebruikerswachtwoord', 'User Password Reset', 'Reset Password Pengguna', 'Kullanıcı Parolasını Sıfırla', 'Επαναφορά κωδικού χρήστη', 'تنظیم مجدد رمز عبور کاربر', 'Tetapkan semula Kata Laluan Pengguna', 'యూజర్ పాస్వర్డ్ను రీసెట్ చేయండి', 'பயனர் கடவுச்சொல்லை மீட்டமைக்கவும்', 'વપરાશકર્તા પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło użytkownika', 'Скинути пароль користувача', 'ਯੂਜ਼ਰ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Resetați parola de utilizator', 'အသုံးပြုသူ Password ကို Reset', 'Atunto Ọrọ Olumulo Titun', 'Sake saitin Kalmar Mai amfani', NULL),
(40, 'backup', 'Backup', 'ব্যাকআপ', 'Apoyo', 'دعم', 'बैकअप', 'بیک اپ', '备用', 'バックアップ', 'Cópia de segurança', 'Резервное копирование', 'Sauvegarde', '지원', 'Backup', 'di riserva', 'การสำรองข้อมูล', 'biztonsági mentés', 'backup', 'tergum', 'Backup', 'yedek', 'Αντιγράφων ασφαλείας', 'پشتیبان گیری', 'Sandaran', 'బ్యాకప్', 'காப்பு', 'બેકઅપ', 'Utworzyć kopię zapasową', 'Резервне копіювання', 'ਬੈਕਅਪ', 'Backup', 'Backup ကို', 'Afẹyinti', 'Ajiyayyen', NULL),
(41, 'human_resource', 'Human Resource', 'মানব সম্পদ', 'Recursos humanos', 'الموارد البشرية', 'मानव संसाधन', 'انسانی وسائل', '人力资源', '人的資源', 'Recursos humanos', 'Человеческие ресурсы', 'Ressource humaine', '인적 자원', 'Personal', 'Risorse umane', 'ทรัพยากรบุคคล', 'Emberi erőforrás', 'Human Resource', 'Humanum Resource', 'Sumber daya manusia', 'İnsan kaynakları', 'Ανθρώπινο δυναμικό', 'منابع انسانی', 'Sumber Manusia', 'మానవ వనరుల', 'மனித வளம்', 'માનવ સંસાધન', 'Zasoby ludzkie', 'Людський ресурс', 'ਮਾਨਵ ਸੰਸਾਧਨ', 'Resurse umane', 'လူ့စွမ်းအားအရင်းအမြစ်', 'Eda eniyan', 'Human Resource', NULL),
(42, 'designation', 'Designation', 'পদবি', 'Designacion', 'تعيين', 'पद', 'عہدہ', '指定', '指定', 'Designação', 'обозначение', 'La désignation', '지정', 'Bezeichnung', 'Designazione', 'การแต่งตั้ง', 'Kijelölés', 'Aanwijzing', 'designatio', 'Penunjukan', 'tayin', 'Ονομασία', 'تعیین', 'Jawatan', 'హోదా', 'பதவி', 'હોદ્દો', 'Przeznaczenie', 'Позначення', 'ਅਹੁਦਾ', 'Desemnare', 'သတ်မှတ်ရေး', 'Ipilẹṣẹ', 'Dama', NULL),
(43, 'employee', 'Employee', 'কর্মচারী', 'Empleado', 'موظف', 'कर्मचारी', 'ملازم', '雇员', '従業員', 'Empregado', 'Наемный рабочий', 'Employé', '종업원', 'Mitarbeiter', 'Dipendente', 'ลูกจ้าง', 'Munkavállaló', 'Werknemer', 'Aliquam', 'Karyawan', 'işçi', 'Υπάλληλος', 'کارمند', 'Pekerja', 'ఉద్యోగి', 'பணியாளர்', 'કર્મચારી', 'Pracownik', 'Працівник', 'ਕਰਮਚਾਰੀ', 'Angajat', 'လုပ်သား', 'Abáni', 'Maaikaci', NULL),
(44, 'teacher', 'Teacher', 'শিক্ষক', 'Profesor', 'مدرس', 'अध्यापक', 'استاد', '老师', '先生', 'Professor', 'учитель', 'Prof', '선생', 'Lehrer', 'Insegnante', 'ครู', 'Tanár', 'Leraar', 'magister', 'Guru', 'Öğretmen', 'Δάσκαλος', 'معلم', 'Guru', 'టీచర్', 'ஆசிரியர்', 'શિક્ષક', 'Nauczyciel', 'Вчитель', 'ਟੀਚਰ', 'Profesor', 'ဆရာမ', 'Olùkọ', 'Malam', NULL),
(45, 'class', 'Class', 'শ্রেণী', 'Clase', 'صف دراسي', 'कक्षा', 'کلاس', '类', 'クラス', 'Classe', 'Класс', 'Classe', '수업', 'Klasse', 'Classe', 'ชั้น', 'Osztály', 'Klasse', 'genus', 'Kelas', 'Sınıf', 'Τάξη', 'کلاس', 'Kelas', 'క్లాస్', 'வர்க்கம்', 'વર્ગ', 'Klasa', 'Клас', 'ਕਲਾਸ', 'Clasă', 'အတန်းအစား', 'Kilasi', 'Class', NULL),
(46, 'section', 'Section', 'শাখা', 'Sección', 'الجزء', 'अनुभाग', 'سیکشن', '部分', 'セクション', 'Seção', 'Раздел', 'Section', '섹션', 'Sektion', 'Sezione', 'มาตรา', 'Szakasz', 'Sectie', 'sectioni', 'Bagian', 'Bölüm', 'Ενότητα', 'بخش D', 'Seksyen', 'విభాగం', 'பிரிவு', 'વિભાગ', 'Sekcja', 'Розділ', 'ਅਨੁਭਾਗ', 'Secțiune', 'အပိုင်း', 'Abala', 'Sashi', NULL),
(47, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'विषय', 'مضمون', '学科', '件名', 'Subject', 'Предмет', 'assujettir', '제목', 'Gegenstand', ' Soggetto', 'เรื่อง', 'Tantárgy', 'Onderwerpen', 'subject', 'Subyek', 'konu', 'Θέμα', 'موضوع', 'Subjek', 'విషయం', 'பொருள்', 'વિષય', 'Przedmiot', 'Тема', 'ਵਿਸ਼ਾ', 'Subiect', 'ဘာသာရပ်', 'Koko-ọrọ', 'Subject', NULL),
(48, 'syllabus', 'Syllabus', 'পাঠ্যক্রম', 'Silaba', 'المنهج', 'पाठ्यक्रम', 'نصاب', '教学大纲', 'シラバス', 'Programa de Estudos', 'Учебный план', 'Programme', '강의 계획서', 'Lehrplan', 'Programma', 'หลักสูตร', 'Tanmenet', 'Syllabus', 'Syllabus', 'Silabus', 'Müfredat', 'Περίληψη', 'سرفصل دروس', 'Silibus', 'సిలబస్', 'பாடத்திட்டங்கள்', 'અભ્યાસક્રમ', 'Konspekt', 'Силабус', 'ਸਿਲੇਬਸ', 'Silabă', 'သင်ရိုးညွှန်းတမ်း', 'Syllabus', 'Syllabus', NULL),
(49, 'guardian', 'Guardian', 'অভিভাবক', 'guardián', 'وصي', 'अभिभावक', 'سرپرست', '监护人', 'ガーディアン', 'Guardião', 'блюститель', 'Gardien', '보호자', 'Wächter', 'Custode', 'ผู้ปกครอง', 'Gyám', 'Voogd', 'custos', 'Wali', 'Gardiyan', 'Κηδεμόνας', 'نگهبان', 'Guardian', 'సంరక్షకుడు', 'கார்டியன்', 'ગાર્ડિયન', 'Opiekun', 'Опікун', 'ਗਾਰਡੀਅਨ', 'paznic', 'ဂေါကလူကြီး', 'Oluṣọ', 'Guardian', NULL),
(50, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'छात्र', 'طالب علم', '学生', '学生', 'Aluna', 'Студент', 'Étudiant', '학생', 'Schüler', 'Alunno', 'นักเรียน', 'Diák', 'Student', 'Discipulus', 'Mahasiswa', 'Öğrenci', 'Μαθητης σχολειου', 'دانشجو', 'Pelajar', 'విద్యార్థి', 'மாணவர்', 'વિદ્યાર્થી', 'Student', 'Студентка', 'ਵਿਦਿਆਰਥੀ', 'Student', 'ကြောငျးသား', 'Ọmọ-iwe', 'Student', NULL),
(51, 'attendance', 'Attendance', 'উপস্থিতি', 'Asistencia', 'الحضور', 'उपस्थिति', 'حاضری', '勤', '出席', 'Comparecimento', 'посещаемость', 'Présence', '출석', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'Részvétel', 'opkomst', 'attendance', 'Kehadiran', 'katılım', 'Παρουσία', 'حضور', 'Kehadiran', 'హాజరు', 'வருகை', 'હાજરી', 'Frekwencja', 'Відвідуваність', 'ਹਾਜ਼ਰੀ', 'prezență', 'တက်ရောက်သူ', 'Wiwa', 'Ziyarci', NULL),
(52, 'assignment', 'Assignment', 'এসাইনমেন্ট', 'Asignación', 'مهمة', 'असाइनमेंट', 'تفویض', '分配', '割り当て', 'Tarefa', 'присваивание', 'Affectation', '할당', 'Zuordnung', 'assegnazione', 'การมอบหมาย', 'Feladat', 'toewijzing', 'assignment', 'Tugas', 'atama', 'ΑΝΑΘΕΣΗ ΕΡΓΑΣΙΑΣ', 'وظیفه', 'tugasan', 'అసైన్మెంట్', 'வேலையை', 'સોંપણી', 'Zadanie', 'Назначення', 'ਅਸਾਈਨਮੈਂਟ', 'Misiune', 'တာဝန်ကျတဲ့နေရာ', 'Ifiranṣẹ', 'Matsayi', NULL),
(53, 'exam', 'Exam', 'পরীক্ষা', 'Examen', 'امتحان', 'परीक्षा', 'امتحان', '考试', '試験', 'Exame', 'Экзамен', 'Examen', '시험', 'Prüfung', 'Esame', 'การสอบ', 'Vizsga', 'tentamen', 'nito', 'Ujian', 'sınav', 'Εξέταση', 'امتحان', 'Peperiksaan', 'పరీక్షా', 'தேர்வு', 'પરીક્ષા', 'Egzamin', 'Іспит', 'ਪ੍ਰੀਖਿਆ', 'Examen', 'စာမေးပွဲ', 'Idanwo', 'Binciken', NULL),
(54, 'exam_grade', 'Exam Grade', 'পরীক্ষার গ্রেড', 'Examen de grado', 'امتحان الصف', 'परीक्षा ग्रेड', 'امتحان گریڈ', '考试成绩', '試験グレード', 'Nota da prova', 'Экзамен', 'Grade dexamen', '시험 성적', 'Prüfungsnote', 'Voto desame', 'ระดับการสอบ', 'Vizsga fokozat', 'Examencijfer', 'Romani nito', 'Kelas ujian', 'Sınav Notu', 'Βαθμό εξετάσεων', 'درجه آزمون', 'Gred Peperiksaan', 'పరీక్ష గ్రేడ్', 'தேர்வு தரம்', 'પરીક્ષા ગ્રેડ', 'Stopień egzaminu', 'Ступінь іспиту', 'ਐਜੂਕੇਸ਼ਨ ਗ੍ਰੇਡ', 'Gradul de examen', 'စာမေးပွဲအဆင့်', 'Ayẹwo Ipele', 'Binciken Nazari', NULL),
(55, 'exam_term', 'Exam Term', 'পরীক্ষা টার্ম', 'Plazo del examen', 'مدة الامتحان', 'परीक्षा की अवधि', 'امتحان کی مدت', '考试期限', '試験期間', 'Termo do Exame', 'Срок действия экзамена', 'Terme dexamen', '시험 기간', 'Prüfungsdauer', 'Termine desame', 'เงื่อนไขการสอบ', 'Vizsgaidőszak', 'Examen termijn', 'Term nito', 'Ujian Term', 'Sınav Terimi', 'Όρος Εξέτασης', 'شرایط آزمون', 'Tempoh Peperiksaan', 'పరీక్షా టర్మ్', 'தேர்வு கால', 'પરીક્ષાની મુદત', 'Okres egzaminacyjny', 'Термін екзамену', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ', 'Termen de examinare', 'စာမေးပွဲ Term', 'Ayewo Aago', 'Tambaya', NULL),
(56, 'suggestion', 'Suggestion', 'সাজেশন', 'Sugerencia', 'اقتراح', 'सुझाव', 'مشورہ', '建议', '提案', 'Sugestão', 'Предложение', 'Suggestion', '암시', 'Vorschlag', 'Suggerimento', 'ข้อเสนอแนะ', 'Javaslat', 'Suggestie', 'suggestion', 'Saran', 'Öneri', 'Πρόταση', 'پیشنهادی', 'Cadangan', 'సూచన', 'பரிந்துரை', 'સૂચન', 'Sugestia', 'Пропозиція', 'ਸੁਝਾਅ', 'Sugestie', 'အကြံပေးချက်', 'Abajade', 'Shawarwarin', NULL),
(57, 'exam_mark', 'Exam Mark', 'পরীক্ষা মার্ক', 'Marca de examen', 'علامة الامتحان', 'परीक्षा चिन्ह', 'امتحان مارک', '考试标志', '試験のマーク', 'Marca de exame', 'Экзамен Mark', 'Marque dexamen', '시험 마크', 'Prüfzeichen', 'Segno dellesame', 'เครื่องหมายการสอบ', 'Vizsga Mark', 'Examenmarkering', 'Mark nito', 'Tanda ujian', 'Sınav işareti', 'Εξετάσεων Εξετάσεων', 'علامت امتحان', 'Ujian Mark', 'పరీక్ష మార్క్', 'தேர்வு மார்க்', 'પરીક્ષા માર્ક', 'Znak egzaminu', 'Екзаменаційний знак', 'ਐਜੂਕੇਸ਼ਨ ਮਾਰਕ', 'Exam Mark', 'စာမေးပွဲမာကု', 'Aami ayẹwo', 'Alamar Duba', NULL),
(58, 'mark_sheet', 'Mark Sheet', 'নাম্বার শিট', 'Hoja de marca', 'علامة ورقة', 'अंक तालिका', 'مارک شیٹ', '标记表', 'マークシート', 'Marca Folha', 'Mark Sheet', 'Feuille de marque', '마크 시트', 'Markierungsblatt', 'Libretto universitario', 'ทำเครื่องหมายแผ่นงาน', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Lembar penilaian', 'Mark Levha', 'Φυλλάδιο απαντήσεων', 'برگه مارک', 'Mark Sheet', 'గణాంకాల పట్టి', 'மதிப்பீட்டு தாள்', 'માર્ક શીટ', 'Arkusz ocen', 'Марк Лист', 'ਮਾਰਕ ਸ਼ੀਟ', 'Marcați foaia', 'မာကုစာရွက်', 'Samisi iwe', 'Mark Sheet', NULL),
(59, 'exam_final_result', 'Exam Final Result', 'পরীক্ষার ফাইনাল ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان کے حتمی نتیجہ', '考试最终结果', '試験最終結果', 'Resultado Final do Exame', 'Экзамен Окончательный результат', 'Résultat final de lexamen', '시험 최종 결과', 'Abschluss der Prüfung', 'Esame Risultato finale', 'ผลสอบปลายภาค', 'Vizsga végeredmény', 'Examen Eindresultaat', 'Nito captorum eventus superae', 'Hasil Ujian Akhir Ujian', 'Sınav Sonucu', 'Τελικό αποτέλεσμα εξέτασης', 'نتیجه نهایی آزمون', 'Keputusan Akhir Peperiksaan', 'పరీక్ష ఫలితం', 'தேர்வு இறுதி முடிவு', 'પરીક્ષા અંતિમ પરિણામ', 'Egzamin Wynik końcowy', 'Останній результат іспиту', 'ਪ੍ਰੀਖਿਆ ਅੰਤਿਮ ਨਤੀਜੇ', 'Examen Rezultat final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ipari ikẹhin', 'Binciken Ƙarshe na Ƙarshe', NULL),
(60, 'result', 'Result', 'পরীক্ষার ফলাফল', 'Resultado', 'نتيجة', 'परिणाम', 'نتیجہ', '结果', '結果', 'Resultado', 'результат', 'Résultat', '결과', 'Ergebnis', 'Risultato', 'ผล', 'Eredmény', 'Resultaat', 'exitum', 'Hasil', 'Sonuç', 'Αποτέλεσμα', 'نتیجه', 'Keputusan', 'ఫలితం', 'விளைவாக', 'પરિણામ', 'Wynik', 'Результат', 'ਨਤੀਜਾ', 'Rezultat', 'ရလဒ်', 'Esi', 'Sakamako', NULL),
(61, 'mark_send_by_sms', 'Mark send by SMS', 'মার্ক পাঠান এসএমএস দিয়ে', 'Marca enviar por SMS', 'علامة إرسال عن طريق الرسائل القصيرة', 'एसएमएस द्वारा भेजें भेजें', 'ایس ایم ایس کے ذریعہ بھیجیں', '标记通过短信发送', 'SMSでマークする', 'Marcar enviar por SMS', 'Отметить отправку по SMS', 'Mark envoyer par SMS', 'SMS로 보내기 표시', 'Markiere per SMS', 'Mark invia tramite SMS', 'ทำเครื่องหมายว่าส่งทาง SMS', 'Jelölje be SMS-ben', 'Markeer per sms', 'Mark a mittere SMS', 'Tandai kirim melalui SMS', 'SMS ile gönderiyi işaretle', 'Σημειώστε την αποστολή μέσω SMS', 'علامت گذاری به عنوان خوانده شده توسط SMS', 'Tandakan hantar melalui SMS', 'SMS ద్వారా మార్క్ పంపండి', 'SMS மூலம் அனுப்பவும்', 'એસએમએસ દ્વારા મોકલો માર્ક કરો', 'Oznacz, wyślij przez SMS', 'Марк відправити SMS', 'ਐਸਐਮਐਸ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcare trimite prin SMS', 'မာကုကို SMS ဖွငျ့ပေးပို့', 'Samisi firanṣẹ nipasẹ SMS', 'Alama aika ta SMS', NULL),
(62, 'mark_send_by_email', 'Mark send by Email', 'মার্ক পাঠান ইমেইল দিয়ে', 'Marcar enviar por correo electrónico', 'علامة إرسال عن طريق البريد الإلكتروني', 'ईमेल द्वारा भेजें मार्क', 'ایس ایم ایس کے ذریعہ بھیجیں', '用电子邮件标记发送', '電子メールで送信する', 'Marcar enviar por e-mail', 'Марк отправить по электронной почте', 'Mark envoyer par Email', '전자 메일로 보내기 표시', 'Markiere per Email', 'Mark invia tramite e-mail', 'มาร์คส่งทางอีเมล', 'A feliratkozás e-mailben történik', 'Markeer per e-mail', 'Email a Mark mittere', 'Tandai kirim melalui Email', 'E-postayla gönderi işaretle', 'Σημειώστε στείλτε με Email', 'علامت گذاری به عنوان ارسال از طریق ایمیل', 'Tandakan hantar melalui E-mel', 'ఇమెయిల్ ద్వారా మార్క్ పంపండి', 'மின்னஞ்சல் மூலம் அனுப்பவும்', 'ઇમેઇલ દ્વારા મોકલો માર્ક કરો', 'Zaznacz Wyślij przez e-mail', 'Позначити відправити по електронній пошті', 'ਈਮੇਲ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcați trimiteți prin e-mail', 'မာကုအီးမေးလ်ပေးပို့', 'Samisi firanṣẹ nipasẹ Imeeli', 'Alama aika ta Imel', NULL),
(63, 'promotion', 'Promotion', 'প্রমোশন', 'Promoción', 'ترقية وظيفية', 'पदोन्नति', 'فروغ', '提升', 'プロモーション', 'Promoção', 'Продвижение', 'Promotion', '승진', 'Beförderung', 'Promozione', 'การส่งเสริม', 'promóció', 'Bevordering', 'promotio', 'Promosi', 'tanıtım', 'Προβολή', 'ترفیع', 'Promosi', 'ప్రమోషన్', 'பதவி உயர்வு', 'પ્રોત્સાહન', 'Awans', 'Просування', 'ਪ੍ਰੋਮੋਸ਼ਨ', 'Promovare', 'ရာထူးတိုးမြှင့်ပေးခြင်း', 'Igbega', 'Shawarwarin', NULL),
(64, 'library', 'Library', 'গ্রন্থাগার', 'Biblioteca', 'مكتبة', 'पुस्तकालय', 'لائبریری', '图书馆', 'としょうかん', 'Biblioteca', 'Библиотека', 'Bibliothèque', '도서관', 'Bibliothek', 'Biblioteca', 'ห้องสมุด', 'Könyvtár', 'Bibliotheek', 'Bibliotheca', 'Perpustakaan', 'Kütüphane', 'Βιβλιοθήκη', 'کتابخانه', 'Perpustakaan', 'లైబ్రరీ', 'நூலகம்', 'પુસ્તકાલય', 'Biblioteka', 'Бібліотека', 'ਲਾਇਬ੍ਰੇਰੀ', 'Bibliotecă', 'စာကြည့်တိုက်', 'Iwadi', 'Library', NULL),
(65, 'book', 'Book', 'বই', 'Libro', 'كتاب', 'किताब', 'کتاب', '书', '本', 'Livro', 'Книга', 'Livre', '도서', 'Buch', 'Libro', 'หนังสือ', 'Könyv', 'Boek', 'liber', 'Book', 'Kitap', 'Βιβλίο', 'کتاب', 'Buku', 'పుస్తకం', 'புத்தக', 'પુસ્તક', 'Książka', 'Книга', 'ਬੁੱਕ', 'Carte', 'စာအုပ်', 'Iwe', 'Littafin', NULL),
(66, 'member', 'Member', 'সদস্য', 'Miembro', 'عضو', 'सदस्य', 'رکن', '会员', 'メンバー', 'Membro', 'член', 'Membre', '회원', 'Mitglied', 'Membro', 'สมาชิก', 'Tag', 'Lid', 'socius', 'Anggota', 'üye', 'Μέλος', 'عضو', 'Ahli', 'సభ్యుడు', 'உறுப்பினர்', 'સભ્ય', 'Członek', 'Член', 'ਸਦੱਸ', 'Membru', 'အဖှဲ့ဝငျ', 'Ẹgbẹ', 'Memba', NULL),
(67, 'issue_and_return', 'Issue & Return', 'ইস্যু এবং রিটার্ন', 'Emisión y devolución', 'الإصدار والعودة', 'अंक और वापसी', 'مسئلہ اور واپسی', '问题和回报', '問題とリターン', 'Problema e retorno', 'Проблема и возврат', 'Emission et retour', '이슈와 리턴', 'Problem und Rückgabe', 'Problema e ritorno', 'การออกและการคืนสินค้า', 'Kiadás és visszatérés', 'Probleem en terugkeer', 'Et exitus Redi', 'Isu dan Kembali', 'Sayı ve İade', 'Έκδοση και επιστροφή', 'مسئله و بازگشت', 'Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్', 'வெளியீடு மற்றும் திரும்ப', 'ઇશ્યૂ અને રીટર્ન', 'Wydanie i zwrot', 'Проблема та повернення', 'ਇਸ਼ੂ ਅਤੇ ਵਾਪਸੀ', 'Eliberare și returnare', 'ပြဿနာများနှင့်ပြန်သွား', 'Oro ati Pada', 'Isar da Komawa', NULL),
(68, 'issue', 'Issue', 'ইস্যু', 'Emisión y devolución...', 'القضية', 'मुद्दा', 'مسئلہ', '问题', '問題', 'Questão', 'вопрос', 'Problème', '발행물', 'Problem', 'Problema', 'ปัญหา', 'Probléma', 'Kwestie', 'exitus', 'Isu', 'Konu', 'Θέμα', 'موضوع', 'Isu', 'సమస్య', 'பிரச்சினை', 'મુદ્દો', 'Kwestia', 'Проблема', 'ਮੁੱਦੇ', 'Problema', 'ထုတ်ပြန်သည်', 'Oro naa', 'Matsalar', NULL),
(69, 'return', 'Return', 'রিটার্ন করা হয়েছে', 'Regreso', 'إرجاع', 'वापसी', 'واپس لو', '返回', '戻る', 'Retorna', 'Вернуть', 'Revenir', '반환', 'Rückkehr', 'Ritorno', 'กลับ', 'Visszatérés', 'terugkeer', 'Redi', 'Kembali', 'Dönüş', 'ΕΠΙΣΤΡΟΦΗ', 'برگشت', 'Kembali', 'రిటర్న్', 'திரும்ப', 'પાછા આવો', 'Powrót', 'Повернення', 'ਵਾਪਸੀ', 'Întoarcere', 'ပြန်လာ', 'Pada', 'Komawa', NULL),
(70, 'issue_date', 'Issue Date', 'ইস্যু তারিখ', 'Fecha de asunto', 'تاريخ الاصدار', 'जारी करने की तिथि', 'تاریخ اجراء', '发行日期', '発行日', 'Data de emissão', 'Дата выпуска', 'Date démission', '발행일', 'Ausgabedatum', 'Data di rilascio', 'วันที่ออก', 'Kiadás dátuma', 'Datum van publicatie', 'exitus Date', 'Tanggal pembuatan', 'Veriliş tarihi', 'Ημερομηνία έκδοσης', 'تاریخ انتشار', 'Tarikh Keluaran', 'జారి చేయు తేది', 'வெளியீட்டு தேதி', 'અંક તારીખ', 'Data wydania', 'Дата випуску', 'ਜਾਰੀ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data emiterii', 'ထုတ်ပြန်ရက်စွဲ', 'Ọjọ itẹjade', 'Isowar ranar', NULL),
(71, 'due_date', 'Due Date', 'নির্দিষ্ট তারিখ', 'Fecha de vencimiento', 'تاريخ الاستحقاق', 'नियत तारीख', 'اخری تاریخ', '截止日期', '期日', 'Data de Vencimento', 'Срок', 'Date déchéance', '마감일', 'Geburtstermin', 'Scadenza', 'Due Date', 'Esedékesség', 'Opleveringsdatum', 'ob Date', 'Batas tanggal terakhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ تحویل', 'Tarikh Gagal', 'గడువు తేది', 'தேதி தேதி', 'નિયત તારીખ', 'Termin płatności', 'Термін сплати', 'ਅਦਾਇਗੀ ਤਾਰੀਖ', 'Data scadentă', 'နောက်ဆုံးရက်', 'Asiko to ba to', 'Kwanan wata', NULL),
(72, 'return_date', 'Return Date', 'রিটার্ন তারিখ', 'Fecha de regreso', 'تاريخ العودة', 'वापसी की तिथि', 'واپسی کی تاریخ', '归期', '返却日', 'Data de retorno', 'Дата возврата', 'Date de retour', '반환 기일', 'Rückflugdatum', 'Data di ritorno', 'วันที่กลับ', 'Visszatérítési dátum', 'Retourdatum', 'Redi Date', 'Tanggal pengembalian', 'Dönüş tarihi', 'Ημερομηνία επιστροφής', 'تاریخ بازگشت', 'Tarikh Pulang', 'తిరిగి వచ్చు తేదీ', 'திரும்ப தேதி', 'રીટર્ન તારીખ', 'Data powrotu', 'Дата повернення', 'ਵਾਪਸੀ ਦੀ ਤਾਰੀਖ', 'Data retur', 'သို့ပြန်သွားသည်နေ့စွဲ', 'Ọjọ pada', 'Ranar Koma', NULL),
(73, 'new_issue', 'New Issue', 'নতুন ইস্যু', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا مسئلہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', 'ฉบับใหม่', 'Új probléma', 'Nieuw probleem', 'New issue', 'Isu Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'مسئله جدید', 'Isu Baru', 'కొత్త సంచిక', 'புதிய வெளியீடு', 'નવું અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮਸਲਾ', 'Problemă nouă', 'နယူး Issue', 'Oro tuntun', 'Sabon Tambaya', NULL),
(74, 'transport', 'Transport', 'পরিবহন', 'Transporte', 'المواصلات', 'ट्रांसपोर्ट', 'نقل و حمل', '运输', '輸送', 'Transporte', 'Транспорт', 'Transport', '수송', 'Transport', 'Trasporto', 'ขนส่ง', 'Szállítás', 'Vervoer', 'onerariis', 'Mengangkut', 'taşıma', 'Μεταφορά', 'حمل و نقل', 'Pengangkutan', 'రవాణా', 'போக்குவரத்து', 'પરિવહન', 'Transport', 'Транспорт', 'ਟ੍ਰਾਂਸਪੋਰਟ', 'Transport', 'တင်ဆောင်', 'Ọkọ', 'Mota', NULL),
(75, 'vehicle', 'Vehicle', 'গাড়ী', 'Transporte...', 'مركبة', 'वाहन', 'گاڑی', '车辆', '車両', 'Veículo', 'Средство передвижения', 'Véhicule', '차량', 'Fahrzeug', 'Veicolo', 'พาหนะ', 'Jármű', 'Voertuig', 'vehiculum', 'Kendaraan', 'araç', 'Οχημα', 'وسیله نقلیه', 'Kenderaan', 'వాహనం', 'வாகன', 'વાહન', 'Pojazd', 'Автомобіль', 'ਵਾਹਨ', 'Vehicul', 'ယာဉ်', 'Ọkọ', 'Mota', NULL),
(76, 'transport_route', 'Transport Route', 'পরিবহন রাস্তা', 'Ruta de transporte', 'طريق النقل', 'परिवहन मार्ग', 'ٹرانسپورٹ کا راستہ', '运输路线', '輸送ルート', 'Rota dos transportes', 'Транспортный маршрут', 'Route de transport', '운송 경로', 'Transportweg', 'Itinerario di trasporto', 'เส้นทางคมนาคม', 'Szállítási útvonal', 'Transportroute', 'Iter itineris onerariam', 'Rute transportasi', 'Ulaşım Güzergahı', 'Διαδρομή μεταφοράς', 'مسیر حمل و نقل', 'Laluan Pengangkutan', 'రవాణా మార్గం', 'போக்குவரத்து பாதை', 'પરિવહન માર્ગ', 'Szlak transportowy', 'Транспортний маршрут', 'ਟ੍ਰਾਂਸਪੋਰਟ ਰੂਟ', 'Traseul de transport', 'ပို့ဆောင်ရေးလမ်းကြောင်း', 'Ọna itọsọna', 'Hanyar sufuri', NULL),
(77, 'hostel', 'Hostel', 'ছাত্রাবাস', 'Hostal', 'نزل', 'छात्रावास', 'ہاسٹل', '宿舍', 'ホステル', 'Hostel', 'Хостел', 'Hôtel', '호스텔', 'Herberge', 'Ostello', 'ที่พัก', 'Diákszálló', 'Herberg', 'Hostel', 'Asrama', 'Pansiyon', 'Ξενοδοχείο', 'خوابگاه', 'Asrama', 'వసతిగృహం', 'விடுதி', 'છાત્રાલય', 'Schronisko', 'Хостел', 'ਹੋਸਟਲ', 'Hostel', 'ဘော်ဒါဆောင်', 'Agbegbe', 'Dakunan kwanan dalibai', NULL),
(78, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo', NULL),
(79, 'mail_and_sms', 'Mail & SMS', 'ইমেইল ও এসএমএস', 'Correo y SMS', 'البريد والرسائل القصيرة', 'मेल और एसएमएस', 'میل اور ایس ایم ایس', '邮件和短信', 'メールとSMS', 'Correio e SMS', 'Почта и SMS', 'Mail et SMS', '메일 및 SMS', 'Mail & SMS', 'Mail e SMS', 'อีเมลและ SMS', 'Mail & SMS', 'Mail & SMS', 'Mail SMS &', 'Mail & SMS', 'Posta ve SMS', 'Mail και SMS', 'ایمیل و اس ام اس', 'Mail & SMS', 'మెయిల్ & SMS', 'அஞ்சல் & SMS', 'મેઇલ અને એસએમએસ', 'Poczta i SMS', 'Пошта та SMS', 'ਮੇਲ ਅਤੇ ਐਸਐਮਐਸ', 'Mail și SMS', 'မေးလ် & SMS ကို', 'Mail & SMS', 'Mail & SMS', NULL),
(80, 'email', 'Email', 'ইমেইল', 'Email', 'البريد الإلكتروني', 'ईमेल', 'ای میل', '电子邮件', 'Eメール', 'O email', 'Эл. адрес', 'Email', '이메일', 'Email', 'E-mail', 'อีเมล์', 'Email', 'E-mail', 'Email', 'E-mail', 'E-posta', 'ΗΛΕΚΤΡΟΝΙΚΗ ΔΙΕΥΘΥΝΣΗ', 'پست الکترونیک', 'E-mel', 'ఇమెయిల్', 'மின்னஞ்சல்', 'ઇમેઇલ', 'E-mail', 'Електронна пошта', 'ਈ - ਮੇਲ', 'E-mail', 'အီးမေးလ်ပို့ရန်', 'Imeeli', 'Imel', NULL),
(81, 'sms', 'SMS', 'এসএমএস', 'SMS', 'رسالة قصيرة', 'एसएमएस', 'پیغام', '短信', 'SMS', 'SMS', 'смс', 'SMS', 'SMS', 'SMS', 'sms', 'ข้อความ', 'SMS', 'sms', 'SMS', 'SMS', 'SMS', 'γραπτό μήνυμα', 'پیامک', 'SMS', 'SMS', 'எஸ்எம்எஸ்', 'એસએમએસ', 'SMS', 'СМС', 'SMS', 'mesaj', 'စာတို', 'SMS', 'SMS', NULL),
(82, 'announcement', 'Announcement', 'ঘোষণা', 'Anuncio', 'إعلان', 'घोषणा', 'اعلان', '公告', '発表', 'Anúncio', 'Объявление', 'Annonce', '발표', 'Ankündigung', 'Annuncio', 'การประกาศ', 'Közlemény', 'Aankondiging', 'denuntiatio', 'Pengumuman', 'duyuru', 'Ανακοίνωση', 'اطلاعیه', 'Pengumuman', 'ప్రకటన', 'அறிவிப்பு', 'જાહેરાત', 'Ogłoszenie', 'Оголошення', 'ਘੋਸ਼ਣਾ', 'Anunţ', 'ကြေညာချက်', 'Ikede', 'Sanarwa', NULL),
(83, 'notice', 'Notice', 'বিজ্ঞপ্তি', 'darse cuenta', 'تنويه', 'नोटिस', 'نوٹس', '注意', '通知', 'Aviso prévio', 'уведомление', 'Remarquer', '주의', 'Beachten', 'Avviso', 'แจ้งให้ทราบ', 'Értesítés', 'Merk op', 'notitia', 'Melihat', 'ihbar', 'Ειδοποίηση', 'اطلاع', 'Notis', 'నోటీసు', 'அறிவிப்பு', 'નોટિસ', 'Ogłoszenie', 'Зверніть увагу', 'ਨੋਟਿਸ', 'Înștiințare', 'အသိပေးစာ', 'Akiyesi', 'Lura', NULL),
(84, 'news', 'News', 'সংবাদ', 'Noticias', 'أخبار', 'समाचार', 'خبریں', '新闻', 'ニュース', 'Notícia', 'Новости', 'Nouvelles', '뉴스', 'Nachrichten', 'notizia', 'ข่าว', 'hírek', 'Nieuws', 'News', 'Berita', 'Haber', 'Νέα', 'اخبار', 'Berita', 'న్యూస్', 'செய்திகள்', 'સમાચાર', 'Aktualności', 'Новини', 'ਨਿਊਜ਼', 'Știri', 'သတင်း', 'Awọn iroyin', 'News', NULL),
(85, 'holiday', 'Holiday', 'ছুটির দিন', 'Fiesta', 'يوم الاجازة', 'छुट्टी का दिन', 'چھٹیوں', '假日', '休日', 'Feriado', 'День отдыха', 'Vacances', '휴일', 'Urlaub', 'Vacanza', 'วันหยุด', 'Ünnep', 'Holiday', 'ferias', 'Liburan', 'Tatil', 'Αργία', 'تعطیلات', 'Percutian', 'హాలిడే', 'விடுமுறை', 'રજા', 'Święto', 'Свято', 'ਛੁੱਟੀਆਂ', 'Vacanţă', 'အားလပ်ရက်များ', 'Isinmi', 'Holiday', NULL),
(86, 'event', 'Event', 'ইভেন্ট', 'Evento', 'هدف', 'घटना', 'تقریب', '事件', 'イベント', 'Evento', 'Мероприятие', 'un événement', '행사', 'Veranstaltung', 'Evento', 'เหตุการณ์', 'Esemény', 'Evenement', 'res', 'Peristiwa', 'Etkinlik', 'Εκδήλωση', 'رویداد', 'Acara', 'ఈవెంట్', 'நிகழ்வு', 'ઇવેન્ટ', 'Zdarzenie', 'Подія', 'ਘਟਨਾ', 'Eveniment', 'အဖြစ်အပျက်', 'Iṣẹ iṣe', 'Event', NULL),
(87, 'visitor_info', 'Visitor Info', 'আগন্তুক তথ্য', 'Información del visitante', 'معلومات الزائر', 'आगंतुक जानकारी', 'وزیٹر کی معلومات', '访客信息', '訪問者の情報', 'Informação do visitante', 'Информация для посетителей', 'Infos visiteurs', '방문자 정보', 'Besucherinfo', 'Informazioni per i visitatori', 'ข้อมูลผู้เยี่ยมชม', 'Látogatóinformációk', 'Bezoekersinformatie', 'visitor Info', 'Info Pengunjung', 'Ziyaretçi Bilgisi', 'Πληροφορίες επισκεπτών', 'اطلاعات بازدید کننده', 'Maklumat Pelawat', 'సందర్శకుల సమాచారం', 'பார்வையாளர் தகவல்', 'મુલાકાતી માહિતી', 'Informacje dla odwiedzających', 'Інформація про відвідувачів', 'ਵਿਜ਼ਟਰ ਜਾਣਕਾਰੀ', 'Informații despre vizitatori', 'ဧည့်သည်အင်ဖို', 'Alaye Alejo', 'Bayar da Bayani', NULL),
(88, 'accounting', 'Accounting', 'হিসাবরক্ষণ', 'Contabilidad', 'محاسبة', 'लेखांकन', 'اکاؤنٹنگ', '会计', '会計', 'Contabilidade', 'бухгалтерский учет', 'Comptabilité', '회계', 'Buchhaltung', 'Contabilità', 'การบัญชี', 'Számvitel', 'Accounting', 'ratio', 'Akuntansi', 'Muhasebe', 'Λογιστική', 'حسابداری', 'Perakaunan', 'అకౌంటింగ్', 'கணக்கியல்', 'નામું', 'Rachunkowość', 'Бухгалтерський облік', 'ਲੇਿਾਕਾਰੀ', 'Contabilitate', 'စာရင်းကိုင်', 'Iṣiro', 'Ƙididdiga', NULL),
(89, 'fee_type', 'Fee Type', 'ফি টাইপ', 'Tipo de tarifa', 'نوع الرسوم', 'शुल्क प्रकार', 'فیس قسم', '费用类型', '料金タイプ', 'Tipo de taxa', 'Тип платы', 'Type de frais', '수수료 유형', 'Gebührenart', 'Tipo di commissione', 'ประเภทค่าธรรมเนียม', 'Díj típusa', 'Vergoedingstype', 'feodo Type', 'Jenis Biaya', 'Ücret Türü', 'Τύπος τέλους', 'نوع هزینه', 'Jenis Bayaran', 'ఫీజు రకం', 'கட்டணம் வகை', 'ફી પ્રકાર', 'Rodzaj opłaty', 'Плата типу', 'ਫੀਸ ਕਿਸਮ', 'Tip de taxă', 'အခကြေးငွေအမျိုးအစား', 'Iru Ẹri', 'Fee Type', NULL),
(90, 'type', 'Type', 'প্রকার', 'Tipo', 'اكتب', 'प्रकार', 'ٹائپ کریں', '类型', 'タイプ', 'Tipo', 'Тип', 'Type', '유형', 'Art', 'genere', 'ชนิด', 'típus', 'Type', 'genus', 'Mengetik', 'tip', 'Τύπος', 'تایپ کنید', 'Taipkan', 'రకం', 'வகை', 'પ્રકાર', 'Rodzaj', 'Тип', 'ਟਾਈਪ ਕਰੋ', 'Tip', 'ပုံစံ', 'Iru', 'Rubuta', NULL),
(91, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'बीजक', 'انوائس', '发票', '請求書', 'Fatura', 'Выставленный счет', 'Facture dachat', '송장', 'Rechnung', 'Fattura', 'ใบแจ้งหนี้', 'Számla', 'Factuur', 'cautionem', 'Faktur', 'Fatura', 'Τιμολόγιο', 'صورتحساب', 'Invois', 'వాయిస్', 'விலைப்பட்டியல்', 'ભરતિયું', 'Faktura', 'Рахунок-фактура', 'ਇਨਵੌਇਸ', 'Factura fiscala', 'ဝယ်ကုန်စာရင်း', 'Ifiweranṣẹ', 'Invoice', NULL),
(92, 'create', 'Create', 'তৈরী কর', 'Crear', 'خلق', 'सर्जन करना', 'بنانا', '创建', '作成する', 'Crio', 'Создайте', 'Créer', '몹시 떠들어 대다', 'Erstellen', 'Creare', 'สร้าง', 'Teremt', 'creëren', 'Create', 'Membuat', 'yaratmak', 'Δημιουργώ', 'ايجاد كردن', 'Buat', 'సృష్టించు', 'உருவாக்கவும்', 'બનાવો', 'Stwórz', 'Створити', 'ਬਣਾਓ', 'Crea', 'ဖန်တီး', 'Ṣẹda', 'Ƙirƙiri', NULL),
(93, 'due_invoice', 'Due Invoice', 'বাকি চালান', 'Factura debida', 'الفاتورة المستحقة', 'कारण चालान', 'وجہ انوائس', '到期发票', '支払請求書', 'Fatura devida', 'Счет-фактура', 'Due Facture', '송장', 'Fällige Rechnung', 'Fattura dovuta', 'ใบแจ้งหนี้ที่ครบกำหนด', 'Esedékes számla', 'Doorlopende factuur', 'ob cautionem', 'Karena Faktur', 'Fatura Faturası', 'Οφειλόμενο τιμολόγιο', 'فاکتور موقت', 'Invois yang Dikehendaki', 'ఇన్వాయిస్ కారణంగా', 'காரணமாக விலைப்பட்டியல்', 'કારણે ભરતિયું', 'Due Faktura', 'Належний рахунок-фактура', 'ਬਕਾਇਆ ਇਨਵੌਇਸ', 'Datorită facturii', 'ကြောင့်ငွေတောင်းခံလွှာ', 'Fun Iroyin', 'Saboda Bayani', NULL),
(94, 'expenditure', 'Expenditure', 'ব্যয়', 'Gasto', 'المصروفات', 'व्यय', 'خرچ', '支出', '支出', 'Despesa', 'Расход', 'Dépense', '지출', 'Ausgaben', 'Spesa', 'รายจ่าย', 'Kiadás', 'Uitgaven', 'Custus', 'Pengeluaran', 'harcama', 'Δαπάνη', 'هزینه ها', 'Perbelanjaan', 'ఎక్స్పెండిచర్', 'செலவினம்', 'ખર્ચ', 'Wydatek', 'Витрати', 'ਖਰਚੇ', 'Cheltuieli', 'သုံးငှေ', 'Isanwo', 'Sakamako', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(95, 'expenditure_head', 'Expenditure Head', 'ব্যয় হেড', 'Jefe de gastos', 'رئيس النفقات', 'व्यय हेड', 'خرچ سر', '支出负责人', '支出ヘッド', 'Chefe de despesas', 'Руководитель отдела расходов', 'Chef des dépenses', '지출 헤드', 'Ausgabenleiter', 'Capo spese', 'หัวหน้าค่าใช้จ่าย', 'Kiadási vezető', 'Uitgaven Hoofd', 'caput capitis expensi,', 'Kepala Pengeluaran', 'Harcama Kafası', 'Επικεφαλής δαπανών', 'سر هزینه', 'Ketua Perbelanjaan', 'ఎక్స్పెండిచర్ హెడ్', 'செலவுத் தலை', 'ખર્ચ હેડ', 'Wydatki Kierownik', 'Голова витрат', 'ਖਰਚਾ ਸਿਰ', 'Șef de cheltuieli', 'အသုံးစရိတ်ဌာနမှူး', 'Oriiye Gbese', 'Shugaban Kuɗi', NULL),
(96, 'income', 'Income', 'আয়', 'Ingresos', 'الإيرادات', 'आय', 'آمدنی', '收入', '所得', 'Renda', 'доход', 'le revenu', '수입', 'Einkommen', 'Reddito', 'เงินได้', 'Jövedelem', 'Inkomen', 'reditus', 'Pendapatan', 'Gelir', 'Εισόδημα', 'درآمد', 'Pendapatan', 'ఆదాయపు', 'வருமான', 'આવક', 'Dochód', 'Дохід', 'ਆਮਦਨੀ', 'Sursa de venit', 'ဝငျငှေ', 'Owo oya', 'Kudin shiga', NULL),
(97, 'income_head', 'Income Head', 'আয় হেড', 'Jefe de ingresos', 'رئيس الدخل', 'आय हेड', 'آمدنی کے سربراہ', '收入负责人', '所得の頭部', 'Chefe de renda', 'Головной доход', 'Tête de revenu', '소득 헤드', 'Einkommen Kopf', 'Capo reddito', 'หัวหน้ารายได้', 'Jövedelemvezető', 'Inkomenskop', 'caput capitis reditus', 'Kepala Penghasilan', 'Gelir Kafası', 'Κεφάλαιο Εισοδήματος', 'سر درآمد', 'Ketua Pendapatan', 'ఆదాయం హెడ్', 'வருமானத் தலைவர்', 'આવક હેડ', 'Głowa dochodów', 'Голова доходів', 'ਇਨਕਮ ਹੈੱਡ', 'Cap de venit', 'ဝင်ငွေခွန်ဌာနမှူး', 'owo oya Head', 'Shugaban Asusun', NULL),
(98, 'report', 'Report', 'প্রতিবেদন', 'Informe', 'أبلغ عن', 'रिपोर्ट', 'رپورٹ', '报告', '報告する', 'Relatório', 'отчет', 'rapport', '보고서', 'Bericht', 'rapporto', 'รายงาน', 'Jelentés', 'Verslag doen van', 'Report', 'Melaporkan', 'Rapor', 'Κανω ΑΝΑΦΟΡΑ', 'گزارش', 'Laporan', 'నివేదిక', 'அறிக்கை', 'અહેવાલ', 'Raport', 'Звіт', 'ਰਿਪੋਰਟ ਕਰੋ', 'Raport', 'အစီရင်ခံစာ', 'Iroyin', 'Rahoton', NULL),
(99, 'balance', 'Balance', 'হিসাবনিকাশ', 'Equilibrar', 'توازن', 'संतुलन', 'بقیہ', '平衡', 'バランス', 'Equilibrar', 'Баланс', 'Équilibre', '밸런스', 'Balance', 'Equilibrio', 'สมดุล', 'Egyensúly', 'Balans', 'Libra', 'Keseimbangan', 'Denge', 'Ισορροπία', 'تعادل', 'Seimbang', 'సంతులనం', 'இருப்பு', 'બેલેન્સ', 'Saldo', 'Баланс', 'ਬਕਾਇਆ', 'Echilibru', 'ချိန်ခွင်လျှာ', 'Iwontunws.funfun', 'Balance', NULL),
(100, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'प्रोफाइल', 'پروفائل', '轮廓', 'プロフィール', 'Perfil', 'Профиль', 'Profil', '윤곽', 'Profil', 'Profilo', 'ข้อมูลส่วนตัว', 'Profil', 'Profiel', 'Profile', 'Profil', 'Profil', 'Προφίλ', 'مشخصات', 'Profil', 'ప్రొఫైల్', 'விவரம்', 'પ્રોફાઇલ', 'Profil', 'Профіль', 'ਪ੍ਰੋਫਾਈਲ', 'Profil', 'ပရိုဖိုင်းကို', 'Profaili', 'Profile', NULL),
(101, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi perfil', 'ملفي', 'मेरी प्रोफाइल', 'میری پروفائل', '我的简历', '私のプロフィール', 'Meu perfil', 'Мой профайл', 'Mon profil', '내 프로필', 'Mein Profil', 'Il mio profilo', 'ประวัติของฉัน', 'A profilom', 'Mijn profiel', 'mea Profile', 'Profil saya', 'Benim profilim', 'Το ΠΡΟΦΙΛ μου', 'پروفایل من', 'Profil saya', 'నా జీవన వివరణ', 'என் சுயவிவரம்', 'મારી પ્રોફાઈલ', 'Mój profil', 'Мій профіль', 'ਮੇਰੀ ਪ੍ਰੋਫਾਈਲ', 'Profilul meu', 'အကြှနျုပျ၏ကိုယ်ရေးဖိုင်', 'Profaili mi', 'My Profile', NULL),
(102, 'logout', 'Log Out', 'প্রস্থান', 'Cerrar sesión', 'الخروج', 'लोग आउट', 'لاگ آوٹ', '登出', 'ログアウト', 'Sair', 'Выйти', 'Connectez - Out', '로그 아웃', 'Ausloggen', 'Disconnettersi', 'ออกจากระบบ', 'Kijelentkezés', 'Uitloggen', 'Ex Log', 'Keluar', 'Çıkış Yap', 'Αποσυνδέση', 'خروج', 'Log keluar', 'లాగ్ అవుట్', 'வெளியேறு', 'લૉગ આઉટ', 'Wyloguj', 'Вийти', 'ਲਾੱਗ ਆਊਟ, ਬਾਹਰ ਆਉਣਾ', 'Deconectați-vă', 'အထဲက Log', 'Jade kuro', 'An fita', NULL),
(103, 'login', 'Log In', 'লগইন', 'Iniciar sesión', 'تسجيل الدخول', 'लॉग इन करें', 'میں لاگ ان کریں', '登录', 'ログイン', 'Entrar', 'Авторизоваться', 'Sidentifier', '로그인', 'Einloggen', 'Accesso', 'เข้าสู่ระบบ', 'Belépés', 'Log in', 'Log In', 'Masuk', 'Oturum aç', 'Σύνδεση', 'ورود', 'Log masuk', 'లాగ్ ఇన్', 'உள் நுழை', 'લૉગ ઇન કરો', 'Zaloguj Się', 'Увійти', 'ਲਾਗਿਨ', 'Logare', 'လော့ဂ်အင်', 'Wo ile', 'Shiga', NULL),
(104, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছি', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'पासवर्ड भूल गए', 'پاسورڈ بھول گے', '忘记密码', 'パスワードをお忘れですか', 'Esqueceu a senha', 'Забыли пароль', 'Forgot Password', '비밀번호를 잊으 셨나요', 'Passwort vergessen', 'Ha dimenticato la password', 'ลืมรหัสผ่าน', 'Elfelejtett jelszó', 'Wachtwoord vergeten', 'Forgot Password', 'Lupa kata sandi', 'Parolanızı mı unuttunuz', 'Ξεχάσατε τον κωδικό', 'رمز عبور را فراموش کرده اید', 'Lupa kata laluan', 'పాస్వర్డ్ మర్చిపోయారా', 'கடவுச்சொல்லை மறந்துவிட்டீர்களா', 'પાસવર્ડ ભૂલી ગયા છો', 'Zapomniałeś hasła', 'Забули пароль', 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ', 'Aţi uitat parola', 'စကားဝှက်ကိုမေ့နေပါသလား', 'Gbagbe ọrọ aṣina bi', 'Kalmar sirri da aka manta', NULL),
(105, 'school', 'School', 'বিদ্যালয়', 'Colegio', 'مدرسة', 'स्कूल', 'اسکول', '学校', '学校', 'Escola', 'Школа', 'École', '학교', 'Schule', 'Scuola', 'โรงเรียน', 'Iskola', 'School', 'School', 'Sekolah', 'Okul', 'Σχολείο', 'مدرسه', 'Sekolah', 'స్కూల్', 'பள்ளி', 'શાળા', 'Szkoła', 'Школа', 'ਸਕੂਲ', 'Şcoală', 'ကြောငျး', 'Ile-iwe', 'Makarantar', NULL),
(106, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'नाम', 'نام', '名称', '名', 'Nome', 'имя', 'prénom', '이름', 'Name', 'Nome', 'ชื่อ', 'Név', 'Naam', 'nomine', 'Nama', 'isim', 'Ονομα', 'نام', 'Nama', 'పేరు', 'பெயர்', 'નામ', 'Nazwa', 'Імя', 'ਨਾਮ', 'Nume', 'အမည်', 'Oruko', 'Sunan', NULL),
(107, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'पता', 'ایڈریس', '地址', '住所', 'Endereço', 'Адрес', 'Adresse', '주소', 'Adresse', 'Indirizzo', 'ที่อยู่', 'Cím', 'Adres', 'oratio', 'Alamat', 'Adres', 'Διεύθυνση', 'نشانی', 'Alamat', 'చిరునామా', 'முகவரி', 'સરનામું', 'Adres', 'Адреса', 'ਪਤਾ', 'Adresa', 'လိပ်စာ', 'Adirẹsi', 'Adireshin', NULL),
(108, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'फ़ोन', 'فون', '电话', '電話', 'telefone', 'Телефон', 'Phone', '전화', 'Telefon', 'Telefono', 'โทรศัพท์', 'Telefon', 'Telefoon', 'Phone', 'Telepon', 'Telefon', 'Τηλέφωνο', 'تلفن', 'Telefon', 'ఫోన్', 'தொலைபேசி', 'ફોન', 'Telefon', 'Телефон', 'ਫੋਨ', 'Telefon', 'ဖုန်းနံပါတ်', 'Foonu', 'Waya', NULL),
(109, 'footer', 'Footer', 'ওয়েবসাইট ফুটার', 'Pie de página', 'تذييل', 'फ़ुटबाल', 'فوٹر', '页脚', 'フッター', 'Rodapé', 'нижний колонтитул', 'Bas de page', '보행인', 'Fußzeile', 'footer', 'ฟุตบอล', 'Lábjegyzet', 'footer', 'footer', 'Footer', 'Alt Bilgi', 'Υποσέλιδο', 'پاورقی', 'Footer', 'ఫుటర్', 'அடிக்குறிப்பு', 'ફૂટર', 'Stopka', 'Нижній колонтитул', 'ਪਦਲੇਰ', 'Subsol', 'အောက်ခြေ', 'Ẹlẹsẹ', 'Hanya', NULL),
(110, 'title', 'Title', 'শিরোনাম', 'Título', 'عنوان', 'शीर्षक', 'عنوان', '标题', 'タイトル', 'Título', 'заглавие', 'Titre', '표제', 'Titel', 'Titolo', 'หัวข้อ', 'Cím', 'Titel', 'titulus', 'Judul', 'Başlık', 'Τίτλος', 'عنوان', 'Tajuk', 'శీర్షిక', 'தலைப்பு', 'શીર્ષક', 'Tytuł', 'Назва', 'ਟਾਈਟਲ', 'Titlu', 'ခေါင်းစဥ်', 'Akọle', 'Title', NULL),
(111, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'कुल', 'کل', '总', '合計', 'Total', 'Всего', 'Total', '합계', 'Gesamt', 'Totale', 'ทั้งหมด', 'Teljes', 'Totaal', 'summa', 'Total', 'Genel Toplam', 'Σύνολο', 'جمع', 'Jumlah', 'మొత్తం', 'மொத்த', 'કુલ', 'Całkowity', 'Всього', 'ਕੁੱਲ', 'Total', 'စုစုပေါငျး', 'Lapapọ', 'Jimlar', NULL),
(112, 'calendar', 'Calendar', 'পঞ্জিকা', 'Calendario', 'التقويم', 'कैलेंडर', 'کیلنڈر', '日历', 'カレンダー', 'Calendário', 'Календарь', 'Calendrier', '달력', 'Kalender', 'Calendario', 'ปฏิทิน', 'Naptár', 'Kalender', 'Calendar', 'Kalender', 'Takvim', 'Ημερολόγιο', 'تقویم', 'Kalendar', 'క్యాలెండర్', 'நாட்காட்டி', 'કૅલેન્ડર', 'Kalendarz', 'Календар', 'ਕੈਲੰਡਰ', 'Calendar', 'ပြက္ခဒိန်', 'Kalẹnda', 'Kalanda', NULL),
(113, 'latest', 'Latest', 'সর্বশেষ', 'Último', 'آخر', 'नवीनतम', 'تازہ ترین', '最新', '最新', 'Mais recentes', 'Последний', 'Dernier', '최근', 'Neueste', 'Più recente', 'ล่าสุด', 'Legújabb', 'Laatste', 'latest', 'Terbaru', 'son', 'Αργότερο', 'آخرین', 'Terkini', 'తాజా', 'சமீபத்திய', 'તાજેતરની', 'Najnowszy', 'Останні', 'ਨਵੀਨਤਮ', 'Cele mai recente', 'နောက်ဆုံး', 'Titun', 'Bugawa', NULL),
(114, 'currency', 'Currency', 'মুদ্রা', 'Moneda', 'دقة', 'मुद्रा', 'کرنسی', '货币', '通貨', 'Moeda', 'валюта', 'Devise', '통화', 'Währung', 'Moneta', 'เงินตรา', 'Valuta', 'Valuta', 'monetæ', 'Mata uang', 'Para birimi', 'Νόμισμα', 'واحد پول', 'Mata wang', 'కరెన్సీ', 'நாணய', 'ચલણ', 'Waluta', 'Валюта', 'ਮੁਦਰਾ', 'Valută', 'ငွေကြေးစနစ်', 'Owo', 'Kudin', NULL),
(115, 'currency_symbol', 'Currency Symbol', 'মুদ্রা চিহ্ন', 'Símbolo de moneda', 'رمز العملة', 'मुद्रा चिन्ह', 'کرنسی علامت', '货币符号', '通貨記号', 'Símbolo monetário', 'Символ валюты', 'Symbole de la monnaie', '통화 기호', 'Währungszeichen', 'Simbolo di valuta', 'สัญลักษณ์สกุลเงิน', 'Pénznem szimbólum', 'Symbool van munteenheid', 'monetæ Symbol', 'Simbol mata uang', 'Para Birimi Sembolü', 'Σύμβολο νομίσματος', 'نماد ارز', 'Simbol mata wang', 'కరెన్సీ చిహ్నం', 'நாணய சின்னம்', 'કરન્સી પ્રતીક', 'Symbol waluty', 'Символ валюти', 'ਕਰੰਸੀ ਨਿਸ਼ਾਨ', 'Simbolul valutei', 'ငွေကြေးသင်္ကေတ', 'Aami Owo', 'Alamar Kudin', NULL),
(116, 'note', 'Note', 'মন্তব্য', 'Nota', 'ملحوظة', 'ध्यान दें', 'نوٹ', '注意', '注意', 'Nota', 'Заметка', 'Remarque', '노트', 'Hinweis', 'Nota', 'บันทึก', 'jegyzet', 'Notitie', 'nota', 'Catatan', 'Not', 'Σημείωση', 'توجه داشته باشید', 'Nota', 'గమనిక', 'குறிப்பு', 'નૉૅધ', 'Uwaga', 'Примітка', 'ਨੋਟ', 'Notă', 'မှတ်စု', 'Akiyesi', 'Lura', NULL),
(117, 'is_running', 'Is Running?', 'চলছে?', '¿Esta corriendo?', 'يجري؟', 'दौड रहा है?', 'بھاگ رہا ہے؟', '在跑？', 'が走っています？', 'Está correndo?', 'Бежит?', 'Est en cours dexécution?', '달리기?', 'Läuft?', 'È in esecuzione?', 'กำลังวิ่ง?', 'Fut?', 'Is aan het rennen?', 'Is Cursor?', 'Sedang berlari?', 'Çalışıyor?', 'Τρέχει?', 'در حال اجراست؟', 'Adalah berlari?', 'పరిగెత్తుతున్నాడు?', 'இயங்குகிறது?', 'ચાલી રહ્યું છે?', 'Biegnie?', 'Біжить?', 'ਚੱਲ ਰਿਹਾ ਹੈ?', 'Rulează?', 'ကို run သလဲ?', 'Nṣiṣẹ?', 'Yana gudana?', NULL),
(118, 'running_year', 'Running Year', 'চলমান বছর', 'Año de ejecución', 'تشغيل السنة', 'वर्ष चल रहा है', 'چل رہا ہے سال', '运行年', 'ランニング・イヤー', 'Ano corrente', 'Бегущий год', 'Année de fonctionnement', '러닝 연도', 'Laufendes Jahr', 'Anno in corso', 'ปีที่ดำเนินการ', 'Futóév', 'Lopend jaar', 'anno currit', 'Tahun berjalan', 'Koşu Yılı', 'Τρέχον έτος', 'در حال اجرا سال', 'Tahun Berjalan', 'రన్నింగ్ ఇయర్', 'இயங்கும் வருடம்', 'વર્ષ ચાલી રહ્યું છે', 'Rok bieżący', 'Біг Рік', 'ਰਨਿੰਗ ਯੀਅਰ', 'Anul de funcționare', 'အပြေးတစ်နှစ်တာ', 'Nṣiṣẹ Ọdun', 'Gudun Shekara', NULL),
(119, 'is_demo', 'Is Demo?', 'ডেমো কি?', 'Es Demo?', 'هل تجريبي؟', 'डेमो है?', 'ڈیمو ہے؟', '是演示？', 'デモですか？', 'Demo?', 'Есть демо?', 'Est-ce que Demo?', '데모입니까?', 'Ist Demo?', 'È Demo?', 'Demo?', 'A demo?', 'Is demo?', 'Demo est?', 'Apakah demo', 'Demo var mı?', 'Είναι επίδειξη;', 'آیا نسخه ی نمایشی است؟', 'Adakah Demo?', 'డెమోనా?', 'டெமோ?', 'ડેમો છે?', 'Czy to demo?', 'Демо?', 'ਡੈਮੋ ਹੈ?', 'Este Demo?', 'Demo လား?', 'Ṣe Demo?', 'Shin Demo?', NULL),
(120, 'is_active', 'Is Active?', 'একটিভ?', '¿Está activo?', 'هل نشط؟', 'सक्रिय है?', 'فعال ہے؟', '活跃？', 'アクティブです？', 'Está ativo?', 'Активен?', 'Cest actif?', '활성?', 'Ist aktiv?', 'È attivo?', 'มีการใช้งานอยู่หรือไม่?', 'Aktív?', 'Is actief?', 'Active est?', 'Aktif?', 'Aktif?', 'Είναι ενεργό?', 'فعال است؟', 'Adalah aktif?', 'సక్రియంగా ఉందా?', 'செயலில் இருக்கிறதா?', 'સક્રિય છે?', 'Jest aktywny?', 'Активний?', 'ਸਰਗਰਮ ਹੈ?', 'Este activ?', 'Active ကိုလား?', 'Ṣe Iroyin?', 'Yana aiki?', NULL),
(121, 'active', 'Active', 'সক্রিয়', 'Activo', 'نشيط', 'सक्रिय', 'فعال', '活性', 'アクティブ', 'Ativo', 'активный', 'actif', '유효한', 'Aktiv', 'Attivo', 'คล่องแคล่ว', 'Aktív', 'Actief', 'Active', 'Aktif', 'Aktif', 'Ενεργός', 'فعال', 'Aktif', 'క్రియాశీల', 'செயலில்', 'સક્રિય', 'Aktywny', 'Активний', 'ਕਿਰਿਆਸ਼ੀਲ', 'Activ', 'တက်ကြွ', 'Iroyin', 'Aiki', NULL),
(122, 'api_key', 'Api Key', 'এপিআই কী', 'Clave API', 'مفتاح API', 'एपीआई कुंजी', 'اےپی کی کلی', 'Api Key', 'Api Key', 'Chave API', 'Api Key', 'Clé de feu', 'API 키', 'API-Schlüssel', 'Chiave Api', 'คีย์ Api', 'Api Key', 'API sleutel', 'API key', 'Kunci API', 'Api Key', 'Api Key', 'کلید ای پی ای', 'Api Utama', 'అపి కీ', 'அப் கீ', 'API કી', 'Klucz API', 'Api Key', 'ਅਪੀ ਕੁੰਜੀ', 'Api Key', 'api Key ကို', 'Bọtini Api', 'Api Key', NULL),
(123, 'key_salt', 'Key Salt', 'কী সল্ট', 'Key Salt', 'مفتاح الملح', 'कुंजी नमक', 'کلیدی نمک', '关键盐', 'キーソルト', 'Sal chave', 'Основная соль', 'Sel principal', '키 솔트', 'Schlüsselsalz', 'Key Salt', 'เกลือแกง', 'Fő só', 'Key Salt', 'Key salis', 'Garam utama', 'Anahtar Tuz', 'Βασικό αλάτι', 'نمک کلیدی', 'Garam utama', 'కీ ఉప్పు', 'முக்கிய உப்பு', 'કી સોલ્ટ', 'Kluczowa sól', 'Ключові солі', 'ਕੀ ਸਲੌਲ', 'Sare cheie', 'Key ကိုဆား', 'iyọ bọtini', 'Key Salt', NULL),
(124, 'username', 'Username', 'ব্যবহারকারীর নাম', 'Nombre de usuario', 'اسم المستخدم', 'उपयोगकर्ता नाम', 'صارف کا نام', '用户名', 'ユーザー名', 'Nome de usuário', 'имя пользователя', 'Nom dutilisateur', '사용자 이름', 'Nutzername', 'Nome utente', 'ชื่อผู้ใช้', 'Felhasználónév', 'Gebruikersnaam', 'nomen usoris', 'Nama pengguna', 'Kullanıcı adı', 'Όνομα χρήστη', 'نام کاربری', 'Nama pengguna', 'యూజర్ పేరు', 'பயனர்பெயர்', 'વપરાશકર્તા નામ', 'Nazwa Użytkownika', 'Імя користувача', 'ਯੂਜ਼ਰਨਾਮ', 'Nume de utilizator', 'အသုံးပြုသူအမည်', 'Orukọ olumulo', 'Sunan mai amfani', NULL),
(125, 'account_sid', 'Account SID', 'একাউন্ট এসআইডি', 'SID de la cuenta', 'حساب سيد', 'अकाउंट एसआईडी', 'اکاؤنٹ SID', '帐户SID', 'アカウントSID', 'SID da conta', 'SID учетной записи', 'Compte SID', '계정 SID', 'Konto SID', 'SID dellaccount', 'บัญชี SID', 'Fiók SID', 'Account SID', 'ratio SID', 'Akun SID', 'Hesap SID', 'Λογαριασμός SID', 'SID حساب', 'SID Akaun', 'SID ఖాతా', 'கணக்கு SID', 'એકાઉન્ટ SID', 'Identyfikator konta SID', 'Ідентифікатор облікового запису', 'ਖਾਤਾ SID', 'Cont SID', 'အကောင့် SID', 'SID iroyin', 'Asusun SID', NULL),
(126, 'auth_token', 'Auth Token', 'অথ টোকেন', 'Token de autenticación', 'الرمز المميز للمصادقة', 'औथ टोकन', 'مصنف ٹوکن', '验证令牌', '認証トークン', 'Token Auth', 'Auth Token', 'Jeton dauthentification', '인증 토큰', 'Auth Token', 'Token di autenticazione', 'Auth Token', 'Hitel Token', 'Auth Token', 'auth Thochen', 'Token Auth', 'Auth Token', 'Auth Token', 'Auth Token', 'Token Auth', 'ప్రామాణీకరణ టోకెన్', 'அங்கீகார டோக்கன்', 'ઑથ ટોકન', 'token autoryzacji', 'Авт токен', 'Auth ਟੋਕਨ', 'Auth Token', 'auth တိုကင်', 'auth aami', 'Auth Token', NULL),
(127, 'auth_key', 'Auth Key', 'অথ কী', 'Clave de autenticación', 'مفتاح المصادقة', 'प्रमाणन कुंजी', 'مصنف کلیدی', '授权键', '認証キー', 'Chave de autenticação', 'Auth Key', 'Clé dauthentification', '인증 키', 'Authentifizierungsschlüssel', 'Chiave dautenticazione', 'คีย์การตรวจสอบ', 'Autentikációs kulcs', 'Inlogcode', 'Key auth', 'Kunci otomatis', 'Auth Key', 'Auth Key', 'کلید تایید', 'Auth Key', 'ప్రామాణీకరణ కీ', 'அங்கீகார விசை', 'ઑથ કી', 'Klucz autoryzujący', 'Автх ключ', 'ਔਥ ਕੀ', 'Auth Key', 'auth Key ကို', 'Bọtini Auth', 'A Key Key', NULL),
(128, 'auth_id', 'Auth ID', 'অথ আইডি', 'ID de autenticación', 'معرف المصادقة', 'ऑथ आईडी', 'مصنف ID', '身份验证ID', '認証ID', 'ID de Autenticação', 'Auth ID', 'Authentification', '인증 ID', 'Authentifizierungs-ID', 'Auth ID', 'รหัสผู้ใช้', 'Hitelazonosító', 'Auth ID', 'id auth', 'ID Auth', 'Kimliği kimliği', 'Auth ID', 'ID Auth', 'ID pengarang', 'ప్రామాణీకరణ ID', 'அங்கீகார ஐடி', 'ઑથ ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'auth ID ကို', 'Auth ID', 'ID ID', NULL),
(129, 'from_number', 'From Number', 'ফ্রম নম্বর', 'Desde el número', 'من العدد', 'संख्या से', 'نمبر سے', '从数字', '番号から', 'Do número', 'От номера', 'À partir du numéro', '발신 번호', 'Von Nummer', 'Dal numero', 'จากจำนวน', 'A számtól', 'Van nummer', 'Ex Number', 'Dari nomor', 'Numaradan', 'Από τον αριθμό', 'از شماره', 'Daripada Nombor', 'సంఖ్య నుండి', 'எண் இருந்து', 'સંખ્યા પ્રતિ', 'Z numeru', 'З числа', 'ਨੰਬਰ ਤੋਂ', 'Din numărul', 'နံပါတ် မှစ.', 'Lati Nọmba', 'Daga Lambar', NULL),
(130, 'sender_id', 'Sender ID', 'প্রেরকের আইডি', 'identificación del remitente', 'هوية المرسل', 'प्रेषक आईडी', 'بھیجنے والے کی شناخت', '发件人ID', '送信者ID', 'ID do remetente', 'Удостоверение личности отправителя', 'Identifiant dexpéditeur', '보낸 사람 ID', 'Absenderidentität', 'identità del mittente', 'ID ผู้ส่ง', 'Sender ID', 'zender ID', 'id mittens', 'ID pengirim', 'Gönderen Kimliği', 'ταυτότητα αποστολέα', 'شناسه فرستنده', 'ID penghantar', 'పంపినవారు ID', 'அனுப்பியவர் ஐடி', 'પ્રેષક ID', 'Identyfikator nadawcy', 'Ідентифікатор відправника', 'ਭੇਜਣ ਵਾਲਾ ID', 'ID-ul expeditorului', 'ပေးပို့သူ ID', 'Olu ID', 'Mai aikawa ID', NULL),
(131, 'activate', 'Activate', 'সক্রিয় করুন', 'Activar', 'تفعيل', 'सक्रिय', 'چالو کریں', '启用', 'アクティブ化する', 'Ativar', 'активировать', 'Activer', '활성화', 'aktivieren Sie', 'Attivare', 'กระตุ้น', 'Aktiválja', 'Activeren', 'strenuus', 'Mengaktifkan', 'etkinleştirmek', 'Θέτω εις ενέργειαν', 'فعالسازی', 'Aktifkan', 'సక్రియం', 'செயல்படுத்த', 'સક્રિય કરો', 'Aktywuj', 'Активувати', 'ਸਰਗਰਮ ਕਰੋ', 'Activati', 'ကိုသက်ဝင်', 'Muu ṣiṣẹ', 'Kunna', NULL),
(132, 'session_year', 'Session Year', 'সেশন বছর', 'Año de la sesión', 'سنة الدورة', 'सत्र वर्ष', 'اجلاس کا سال', '会议年', 'セッション年', 'Ano da sessão', 'Сезонность', 'Année de la session', '세션 연도', 'Sitzungsjahr', 'Anno di sessione', 'ปีการศึกษา', 'Session Year', 'Sessiejaar', 'Anno Sessio', 'Sesi Tahun', 'Oturum Yılı', 'Έτος συνεδρίας', 'سال نشست', 'Tahun Sesi', 'సెషన్ ఇయర్', 'அமர்வு ஆண்டு', 'સત્ર વર્ષ', 'Rok sesji', 'Сесія року', 'ਸੈਸ਼ਨ ਸਾਲ', 'Anul Sesiunii', 'session တစ်နှစ်တာ', 'Akoko Odun', 'Zama Na Zama', NULL),
(133, 'is_default', 'Is Default?', 'ডিফল্ট কি?', 'Es predeterminado?', 'هل الافتراضي؟', 'डिफ़ॉल्ट है?', 'پہلے سے طے شدہ ہے؟', '是默认的？', 'デフォルトですか？', 'O padrão é?', 'По умолчанию?', 'Est par défaut?', '디폴트인가?', 'Ist Standard?', 'È predefinito?', 'เป็นค่าเริ่มต้นหรือไม่?', 'Alapértelmezés?', 'Is standaard?', 'Default est?', 'Apakah Default?', 'Varsayılan mı?', 'Είναι προεπιλογή;', 'پیش فرض', 'Adakah Default?', 'డిఫాల్ట్?', 'இயல்புநிலையா?', 'ડિફૉલ્ટ છે?', 'Czy domyślne?', 'За замовчуванням?', 'ਕੀ ਡਿਫਾਲਟ ਹੈ?', 'Este implicit?', 'ပုံမှန်ဖြစ်သနည်း', 'Ni aiyipada?', 'Shin Default?', NULL),
(134, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'डाउनलोड', 'ڈاؤن لوڈ کریں', '下载', 'ダウンロード', 'Download', 'Скачать', 'Télécharger', '다운로드', 'Herunterladen', 'Scaricare', 'ดาวน์โหลด', 'Letöltés', 'Download', 'download', 'Download', 'İndir', 'Κατεβάστε', 'دانلود', 'Muat turun', 'డౌన్లోడ్', 'பதிவிறக்க', 'ડાઉનલોડ કરો', 'Pobieranie', 'Завантажити', 'ਡਾਊਨਲੋਡ ਕਰੋ', 'Descarca', 'ဒေါင်းလုပ်', 'Gba lati ayelujara', 'Saukewa', NULL),
(135, 'join_date', 'Joining Date', 'যোগদান তারিখ', 'Dia de ingreso', 'تاريخ الانضمام', 'कार्यग्रहण तिथि', 'شامل ہونے کی تاریخ', '入职日期', '参加日', 'Data de ingresso', 'Дата вступления', 'Date dinscription', '가입 날짜', 'Beitrittsdatum', 'Data di adesione', 'วันที่เข้าร่วม', 'Csatlakozási dátum', 'Lid worden van datum', 'Adhaeret Date', 'Tanggal Bergabung', 'Birleştirme Tarihi', 'Ημερομηνία σύνδεσης', 'تاریخ عضویت', 'Menyertai Tarikh', 'తేదీ చేరడం', 'சேரும் தேதி', 'તારીખ જોડાયા', 'Data przyłączenia', 'Дата приєднання', 'ਦਾਖਲ ਹੋਣ ਦੀ ਤਾਰੀਖ', 'Data îmbinării', 'နေ့စွဲလာရောက်ပူးပေါင်း', 'Ọjọ Ajọpọ', 'Ranar Jiki', NULL),
(136, 'gender', 'Gender', 'লিঙ্গ', 'Género', 'جنس', 'लिंग', 'صنف', '性别', '性別', 'Gênero', 'Пол', 'Le genre', '성별', 'Geschlecht', 'Genere', 'เพศ', 'nem', 'Geslacht', 'genus', 'Jenis kelamin', 'Cinsiyet', 'Γένος', 'جنسيت', 'Jantina', 'జెండర్', 'பாலினம்', 'જાતિ', 'Płeć', 'Стать', 'ਲਿੰਗ', 'Gen', 'ကျား, မ', 'Iwa', 'Gender', NULL),
(137, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ', 'Grupo sanguíneo', 'فصيلة الدم', 'रक्त समूह', 'خون گروپ', '血型', '血液型', 'Grupo sanguíneo', 'Группа крови', 'Groupe sanguin', '혈액형', 'Blutgruppe', 'Gruppo sanguigno', 'กรุ๊ปเลือด', 'Vércsoport', 'Bloedgroep', 'Sanguine coetus', 'Golongan darah', 'Kan grubu', 'Ομάδα αίματος', 'گروه خونی', 'Kumpulan darah', 'రక్తపు గ్రూపు', 'இரத்த வகை', 'બ્લડ ગ્રુપ', 'Grupa krwi', 'Група крові', 'ਬਲੱਡ ਗਰੁੱਪ', 'Grupa sanguină', 'သွေးအုပ်စု', 'Ẹgbẹ Ẹjẹ', 'Kungiyar Blood', NULL),
(138, 'group', 'Group', 'গ্রুপ', 'Grupo', 'مجموعة', 'समूह', 'گروپ', '组', 'グループ', 'Grupo', 'группа', 'Groupe', '그룹', 'Gruppe', 'Gruppo', 'กลุ่ม', 'Csoport', 'Groep', 'Group', 'Kelompok', 'grup', 'Ομάδα', 'گروه', 'Kumpulan', 'గ్రూప్', 'குழு', 'ગ્રુપ', 'Grupa', 'Група', 'ਗਰੁੱਪ', 'grup', 'Group မှ', 'Ẹgbẹ', 'Rukuni', NULL),
(139, 'religion', 'Religion', 'ধর্ম', 'Religión', 'دين', 'धर्म', 'مذہب', '宗教', '宗教', 'Religião', 'религия', 'Religion', '종교', 'Religion', 'Religione', 'ศาสนา', 'Vallás', 'Religie', 'religio', 'Agama', 'Din', 'Θρησκεία', 'دین', 'Agama', 'మతం', 'மதம்', 'ધર્મ', 'Religia', 'Релігія', 'ਧਰਮ', 'Religie', 'ဘာသာ', 'Esin', 'Addini', NULL),
(140, 'birth_date', 'Birth Date', 'জন্ম তারিখ', 'Fecha de nacimiento', 'تاريخ الميلاد', 'जन्म दिन', 'تاریخ پیدائش', '生日', '誕生日', 'Data de nascimento', 'Дата рождения', 'Date de naissance', '생일', 'Geburtsdatum', 'Data di nascita', 'วันที่เกิด', 'Születési dátum', 'Geboortedatum', 'Dies natalis, diei natalis, m', 'Tanggal lahir', 'Doğum günü', 'Ημερομηνία γέννησης', 'تاریخ تولد', 'Tarikh lahir', 'పుట్టిన తేదీ', 'பிறந்த தேதி', 'જન્મતારીખ', 'Data urodzenia', 'Дата народження', 'ਜਨਮ ਮਿਤੀ', 'Data nasterii', 'မွေးရက်', 'Ojo ibi', 'Ranar haifuwa', NULL),
(141, 'resume', 'Resume', 'জীবনবৃত্তান্ত', 'Currículum', 'استئنف', 'बायोडाटा', 'دوبارہ شروع کریں', '恢复', '履歴書', 'Currículo', 'Продолжить', 'CV', '이력서', 'Fortsetzen', 'Curriculum vitae', 'ประวัติย่อ', 'Önéletrajz', 'Hervat', 'Proin', 'Lanjut', 'Devam et', 'ΒΙΟΓΡΑΦΙΚΟ', 'خلاصه', 'Teruskan', 'పునఃప్రారంభం', 'தற்குறிப்பு', 'ફરી શરુ કરવું', 'Wznawianie', 'Резюме', 'ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ', 'Relua', 'ပြန်စသည်', 'Tun pada', 'Tsayawa', NULL),
(142, 'other_info', 'Other Info', 'অন্যান্য তথ্য', 'Otra información', 'معلومات اخرى', 'अन्य सूचना', 'دیگر معلومات', '其他信息', '他の情報', 'Outras informações', 'Дополнительная информация', 'Autre info', '기타 정보', 'Andere Information', 'Altre informazioni', 'ข้อมูลอื่น ๆ', 'Más információ', 'Andere informatie', 'alii Info', 'Info lain', 'Diğer Bilgiler', 'Άλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat Lain', 'ఇతర సమాచారం', 'மற்ற தகவல்', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', 'အခြားအအင်ဖို', 'Alaye miiran', 'Sauran Bayanan', NULL),
(143, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'लेखक', 'مصنف', '作者', '著者', 'Autor', 'автор', 'Auteur', '저자', 'Autor', 'Autore', 'ผู้เขียน', 'Szerző', 'Auteur', 'auctor', 'Penulis', 'Yazar', 'Συγγραφέας', 'نویسنده', 'Pengarang', 'రచయిత', 'ஆசிரியர்', 'લેખક', 'Autor', 'Автор', 'ਲੇਖਕ', 'Autor', 'စာရေးသူ', 'Onkọwe', 'Mawallafin', NULL),
(144, 'day', 'Day', 'দিন', 'Día', 'يوم', 'दिन', 'دن', '天', '日', 'Dia', 'День', 'Dayjournée', '일', 'Tag', 'Giorno', 'วัน', 'Nap', 'Dag', 'Dies', 'Hari', 'Gün', 'Ημέρα', 'روز', 'Hari', 'డే', 'தினம்', 'દિવસ', 'Dzień', 'День', 'ਦਿਨ', 'Zi', 'နေ့', 'Ọjọ', 'Ranar', NULL),
(145, 'start_time', 'Start Time', 'সময় শুরু', 'Hora de inicio', 'وقت البدء', 'समय शुरू', 'وقت آغاز', '开始时间', '始まる時間', 'Hora de início', 'Время начала', 'Heure de début', '시작 시간', 'Startzeit', 'Ora di inizio', 'เวลาเริ่มต้น', 'Kezdési idő', 'Starttijd', 'Satus tempus', 'Waktu mulai', 'Başlama zamanı', 'Ωρα έναρξης', 'زمان شروع', 'Masa mula', 'సమయం ప్రారంభించండి', 'ஆரம்பிக்கும் நேரம்', 'પ્રારંભ સમય', 'Czas rozpoczęcia', 'Час початку', 'ਸ਼ੁਰੂਆਤੀ ਸਮਾਂ', 'Timpul de începere', 'start ကိုအချိန်', 'Aago Ibẹrẹ', 'Fara lokaci', NULL),
(146, 'end_time', 'End Time', 'শেষ সময়', 'Hora de finalización', 'وقت النهاية', 'अंतिम समय', 'آخر وقت', '时间结束', '終了時間', 'Fim do tempo', 'Время окончания', 'Heure de fin', '종료 시간', 'Endzeit', 'Fine del tempo', 'เวลาสิ้นสุด', 'Idő vége', 'Eindtijd', 'finis Tempus', 'Akhir waktu', 'Bitiş zamanı', 'Τέλος χρόνου', 'زمان پایان', 'Masa tamat', 'ముగింపు సమయం', 'முடிவு நேரம்', 'સમાપ્તિ સમય', 'Koniec czasu', 'Кінець часу', 'ਅੰਤ ਸਮਾਂ', 'Ora de terminare', 'အဆုံးအချိန်', 'Aago ipari', 'Ƙarshen lokaci', NULL),
(147, 'start_date', 'Start Date', 'শুরুর তারিখ', 'Fecha de inicio', 'تاريخ البدء', 'आरंभ करने की तिथि', 'شروع کرنے کی تاریخ', '开始日期', '開始日', 'Data de início', 'Дата начала', 'Date de début', '시작 날짜', 'Anfangsdatum', 'Data dinizio', 'วันที่เริ่มต้น', 'Kezdő dátum', 'Begin datum', 'Date incipere', 'Mulai tanggal', 'Başlangıç tarihi', 'Ημερομηνία έναρξης', 'تاریخ شروع', 'Tarikh mula', 'ప్రారంబపు తేది', 'தொடக்க தேதி', 'પ્રારંભ તારીખ', 'Data rozpoczęcia', 'Дата початку', 'ਤਾਰੀਖ ਸ਼ੁਰੂ', 'Data de început', 'စတင်သည့်ရက်စွဲ', 'Ọjọ Bẹrẹ', 'Fara Farawa', NULL),
(148, 'end_date', 'End Date', 'শেষ তারিখ', 'Fecha final', 'تاريخ الانتهاء', 'अंतिम तिथि', 'آخری تاریخ', '结束日期', '終了日', 'Data final', 'Дата окончания', 'Date de fin', '종료일', 'Endtermin', 'Data di fine', 'วันที่สิ้นสุด', 'Befejezés dátuma', 'Einddatum', 'finis Date', 'Tanggal akhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ پایان', 'Tarikh tamat', 'ఆఖరి తేది', 'கடைசி தேதி', 'અંતિમ તારીખ', 'Data końcowa', 'Дата закінчення', 'ਅੰਤ ਦੀ ਮਿਤੀ', 'Data de încheiere', 'အဆုံးနေ့စွဲ', 'Ọjọ ipari', 'Ƙarshe Ranar', NULL),
(149, 'profession', 'Profession', 'পেশা', 'Profesión', 'مهنة', 'व्यवसाय', 'پیشہ', '职业', '職業', 'Profissão', 'профессия', 'Métier', '직업', 'Beruf', 'Professione', 'อาชีพ', 'Szakma', 'Beroep', 'professionis', 'Profesi', 'Meslek', 'Επάγγελμα', 'حرفه', 'Profesion', 'వృత్తి', 'தொழில்', 'વ્યવસાય', 'Zawód', 'Професія', 'ਪੇਸ਼ਾ', 'Profesie', 'အလုပ်အကိုင်', 'Oṣiṣẹ', 'Zama', NULL),
(150, 'roll_no', 'Roll No', 'ক্রমিক নাম্বার', 'Rollo No', 'رول نو', 'अनुक्रमांक', 'رول نمبر نہیں', '卷号', 'ロールNo', 'Roll No', 'Нет', 'Rouler Non', '롤 아니요', 'Rolle Nr', 'Rotolo n', 'ฉบับที่ไม่มี', 'Roll No', 'Roll No', 'Nulla volvunt', 'Roll No', 'Rulo Hayır', 'ρολό αριθ', 'رول نه', 'Roll No', 'రోల్ నం', 'ரோல் இல்லை', 'રોલ નં', 'Rzuć nr', 'ролл немає', 'ਰੋਲ ਨੰਬਰ ਨਹੀਂ', 'Rola numărul', 'အဘယ်သူမျှမလှိမ့်ပုံ', 'Roll Bẹẹkọ', 'Roll Babu', NULL),
(151, 'registration_no', 'Registration No', 'নিবন্ধন নম্বর', 'Número de registro', 'رقم التسجيل', 'पंजीकरण क्रमांक', 'رجسٹریشن نمبر', '注册号', '登録番号', 'número de registro', 'номер регистрации', 'N ° denregistrement', '등록 번호', 'Registrierungsnr', 'Registrazione N', 'หมายเลขทะเบียน', 'regisztrációs szám', 'Registratienummer', 'No registration', 'Pendaftaran No', 'kayıt numarası', 'αριθμός καταχώρησης', 'شماره ثبت نام', 'Nombor pendaftaran', 'నమోదు సంఖ్య', 'பதிவு எண்', 'નોંધણી નં', 'Numer rejestracyjny', 'Номер реєстрації', 'ਰਜਿਸਟਰੇਸ਼ਨ ਨੰਬਰ', 'nr. de inregistrare', 'မှတ်ပုံတင်ခြင်းအဘယ်သူမျှမ', 'Iforukọ silẹ Ko si', 'Lambar rajista', NULL),
(152, 'present_all', 'Present All', 'উপস্থিত সকল', 'Presente todo', 'الحالي الكل', 'सभी को प्रस्तुत करें', 'سب پیش', '现在所有', 'すべてを表示', 'Presente tudo', 'Представить все', 'Présenter tout', '모두 선물하기', 'Alle präsentieren', 'Presente tutto', 'นำเสนอทั้งหมด', 'Jelenleg mindet', 'Presenteer alles', 'nunc omnes', 'Hadir Semua', 'Hepsini Sunun', 'Παρουσιάστε όλα', 'در حال حاضر همه', 'Hadir Semua', 'అందరికీ అందించండి', 'அனைவருக்கும் வழங்கவும்', 'બધા હાજર', 'Przedstaw wszystko', 'Подаруй все', 'ਸਭ ਪੇਸ਼ ਕਰੋ', 'Prezentați-vă pe toți', 'ပစ္စုပ္ပန်အားလုံး', 'Paa Gbogbo', 'Duk Dukkan', NULL),
(153, 'late_all', 'Late All', 'বিলম্বিত সকল', 'Late All', 'أواخر الكل', 'स्वर्गीय सभी', 'دیر سے', '所有的晚', '後期', 'Late All', 'Поздно все', 'Tard tout', '늦게 모두', 'Spät alle', 'Tutto in ritardo', 'ปลายทั้งหมด', 'Késő minden', 'Laat alles', 'late omnes', 'Terlambat semua', 'Hep Geç', 'Αργά Όλα', 'اواخر همه', 'Akhir semua', 'లేట్ అన్నీ', 'அனைவருக்கும்', 'લેટ ઓલ', 'Późno wszystkim', 'Пізно все', 'ਦੇਰ ਸਾਰੇ', 'Totul târziu', 'နှောင်းပိုင်းတွင်အားလုံး', 'Paa Gbogbo', 'Late Duk', NULL),
(154, 'absent_all', 'Absent All', 'অনুপস্থিত সকল', 'Ausente todo', 'غائب الجميع', 'सभी अनुपस्थित', 'سب کو مطمئن', '缺席全部', 'すべてが不在', 'Absent All', 'Отсутствует все', 'Absent Tous', '모두 없슴', 'Alles fehlt', 'Assente tutti', 'ขาดทั้งหมด', 'Mindenki hiányzik', 'Afwezig allemaal', 'aberant aegrae', 'Tidak ada', 'Herkesten Yoksun', 'Απουσία όλων', 'همه وجود ندارند', 'Absent All', 'అబ్సెంట్ అన్నీ', 'எல்லாவற்றையும் விட', 'બધા ગેરહાજર', 'Nieobecny', 'Немає всіх', 'ਸਾਰੀ ਗੈਰਹਾਜ਼ਰੀ', 'Absent Toate', 'ပျက်ကွက်အားလုံး', 'Ti ko ni Gbogbo', 'Bazuwa Duk', NULL),
(155, 'deadline', 'Deadline', 'শেষ তারিখ', 'Fecha tope', 'الموعد النهائي', 'समयसीमा', 'ڈیڈ لائن', '截止日期', '締め切り', 'Data limite', 'Крайний срок', 'Date limite', '마감 시간', 'Frist', 'Scadenza', 'วันกำหนดส่ง', 'Határidő', 'Deadline', 'deadline', 'Batas waktu', 'Son tarih', 'Προθεσμία', 'ضرب الاجل', 'Tarikh akhir', 'గడువు', 'காலக்கெடுவை', 'અન્તિમ રેખા', 'Ostateczny termin', 'Термін дії', 'ਡੈੱਡਲਾਈਨ', 'Termen limita', 'သတ်မှတ်နောက်ဆုံးအချိန်', 'Ọjọ ipari', 'Kwanan lokaci', NULL),
(156, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট', 'Punto de Grado', 'تراكمي', 'मूल्यांकन', 'گریڈ پوائنٹ', '成绩点', 'グレードポイント', 'Ponto de classificação', 'Точка оценки', 'Grade Point', '학점', 'Notenpunkt', 'Grado', 'Grade Point', 'Grade Point', 'Grade punt', 'gradus punctum', 'Indeks Prestasi', 'Grade Point', 'Σημείο βαθμού', 'نقطه درجه', 'Gred Point', 'గ్రేడ్ పాయింట్', 'கிரேடு புள்ளி', 'ગ્રેડ પોઇન્ટ', 'Punkt Grade', 'Градуйова точка', 'ਗਰੇਡ ਪੁਆਇੰਟ', 'Punct de punctaj', 'တန်း Point သို့', 'Iwe Ipele', 'Alamar Jagora', NULL),
(157, 'mark_from', 'Mark From', 'মার্ক থেকে', 'Marcar de', 'علامة من', 'मार्क से', 'سے نشان زد کریں', '马克从', 'マークする', 'Mark From', 'Отметить от', 'Mark From', '마크부터', 'Mark von', 'Mark From', 'ทำเครื่องหมายจาก', 'Mark From', 'Markeer van', 'Mark ex', 'Mark dari', 'İşaretle', 'Σημειώστε από', 'مارک از', 'Tanda dari', 'నుండి మార్క్', 'இருந்து மார்க்', 'માર્ક ફ્રોમ', 'Mark From', 'Позначка з', 'ਮਾਰਕ ਤੋ', 'Marchează din', 'မှစ. , Mark', 'Samisi Lati', 'Alama Daga', NULL),
(158, 'mark_to', 'Mark To', 'মার্ক পর্যন্ত', 'Marcar a', 'مارك تو', 'मार्क टू', 'نشان زد کریں', '标记为', 'マークする', 'Mark To', 'Отметить', 'Mark To', '표시 대상', 'Zu markieren', 'Mark To', 'ทำเครื่องหมายว่าต้องการ', 'Jelölje meg', 'Mark To', 'Mark Ad', 'Mark To', 'Mark To', 'Mark To', 'علامت گذاری به عنوان', 'Mark To', 'మార్క్ టు', 'மார்க் டூ', 'માર્ક ટુ', 'Mark To', 'Позначити до', 'ਮਾਰਕ ਕਰਨ ਲਈ', 'Marchează la', 'မာကုရန်', 'Samisi Lati', 'Alama Don', NULL),
(159, 'room_no', 'Room No', 'কক্ষ নম্বর', 'Habitación no', 'غرفة رقم', 'कमरा क्रमांक', 'کمرہ نمبر', '房间号', '部屋番号', 'Quarto Não', 'Комната нет', 'Chambre numéro', '객실 번호', 'Raum Nummer', 'Stanza No', 'เบอร์ห้อง', 'Szobaszám', 'Kamer nummer', 'nullus locus', 'Kamar no', 'Oda numarası', 'Αριθμός δωματίου', 'شماره اتاق', 'Nombor bilik', 'గది సంఖ్య', 'அறை இல்லை', 'રૂમ નં', 'Pokój numer', 'Кімната №', 'ਕਮਰਾ ਨੰਬਰ', 'Cameră nr', 'ROOM တွင်အဘယ်သူမျှမ', 'Yara Bẹẹkọ', 'Room Babu', NULL),
(160, 'attend_all', 'Attend All', 'উপস্থিত সকল', 'Asistir a todos', 'حضور الجميع', 'सभी में शामिल हों', 'Attend All', '全部参加', 'すべてに出席する', 'Participe de todos', 'Все участники', 'Assister à tous', '모두 참석', 'An allen teilnehmen', 'Partecipare a tutti', 'เข้าร่วมทั้งหมด', 'Vegyen részt mindenben', 'Woon iedereen bij', 'adtende omnes', 'Menghadiri Semua', 'Herkese Katıl', 'Παρακολουθήστε όλους', 'حضور در همه', 'Hadiri Semua', 'అన్ని హాజరు', 'எல்லாவற்றிலும் கலந்துகொள்ளுங்கள்', 'બધા હાજરી', 'Weź udział w wszystkim', 'Відвідати все', 'ਸਾਰੇ ਹਾਜ਼ਰ ਹੋਵੋ', 'Participați la toate', 'အားလုံးတက်ရောက်ရန်', 'Lọ gbogbo', 'Ku halarci Duk', NULL),
(161, 'remark', 'Remark', 'মন্তব্য', 'Observación', 'تعليق', 'टिप्पणी', 'تبصرہ', '备注', 'リマーク', 'Observação', 'замечание', 'Remarque', '말', 'Anmerkung', 'osservazione', 'ข้อสังเกต', 'Megjegyzés', 'Opmerking', 'Attende', 'Ucapan', 'düşünce', 'Παρατήρηση', 'یادداشت', 'Catatan', 'వ్యాఖ్య', 'கருத்து', 'રીમાર્ક', 'Uwaga', 'Зауваження', 'ਟਿੱਪਣੀ', 'Remarcă', 'ပွောဆို', 'Atokasi', 'Alamar', NULL),
(162, 'running_session', 'Running Session', 'চলমান সেশন', 'Sesión en ejecución', 'تشغيل الدورة', 'चल रहा सत्र', 'چل رہا ہے اجلاس', '运行会话', 'ランニングセッション', 'Sessão de corrida', 'Запуск сеанса', 'Session en cours', '러닝 세션', 'Sitzung wird ausgeführt', 'Esecuzione della sessione', 'การเรียกใช้เซสชัน', 'Futtatás', 'Sessie uitvoeren', 'currens Sessio', 'Menjalankan sesi', 'Oturum Devam Ediyor', 'Εκτέλεση συνόδου', 'در حال اجرا', 'Sesi Berjalan', 'సెషన్ రన్నింగ్', 'அமர்வு இயக்குதல்', 'સત્ર ચાલી રહ્યું છે', 'Prowadzenie sesji', 'Запуск сесії', 'ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ', 'Sesiunea de desfășurare', 'အပြေးတွေ့ဆုံဆွေးနွေးပွဲ', 'Ipade Nṣiṣẹ', 'Zangon Zama', NULL),
(163, 'promote_to_session', 'Promote to Session', 'উন্নীতকরণ  সেশন', 'Promover a la sesión', 'الترقية إلى الجلسة', 'सत्र को बढ़ावा देना', 'اجلاس میں فروغ دیں', '促进会议', 'セッションに昇進', 'Promover a Sessão', 'Поощрять сессию', 'Promouvoir à la session', '세션으로 승격', 'Zu einer Sitzung hochstufen', 'Promuovi alla sessione', 'โปรโมตเซสชัน', 'Előmozdítása a munkamenethez', 'Promoten naar sessie', 'Sessio autem Promovere', 'Promosikan untuk Sesi', 'Oturuma Teşvik Et', 'Προωθήστε στη σύνοδο', 'ارتقا به جلسه', 'Menggalakkan Sesi', 'సెషన్కు ప్రచారం చేయండి', 'அமர்வுக்கு ஊக்குவிக்கவும்', 'સત્રમાં પ્રમોટ કરો', 'Promuj do sesji', 'Реклама на сеанс', 'ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ', 'Promovați la sesiune', 'တွေ့ဆုံဆွေးနွေးပွဲမှမြှင့်တင်', 'Igbelaruge si Ipade', 'Ƙaddamar zuwa Zama', NULL),
(164, 'current_class', 'Current Class', 'বর্তমান শ্রেণী', 'Clase actual', 'الفئة الحالية', 'वर्तमान कक्षा', 'موجودہ کلاس', '当前类', '現在のクラス', 'Classe atual', 'Текущий класс', 'Classe actuelle', '현재 수업', 'Aktuelle Klasse', 'Classe corrente', 'ระดับปัจจุบัน', 'Jelenlegi osztály', 'Huidige klasse', 'Current Paleonemertea Class', 'Kelas sekarang', 'Mevcut Sınıf', 'Τρέχουσα κλάση', 'کلاس کنونی', 'Kelas Semasa', 'ప్రస్తుత క్లాస్', 'தற்போதைய வகுப்பு', 'વર્તમાન વર્ગ', 'Aktualna klasa', 'Поточний клас', 'ਮੌਜੂਦਾ ਕਲਾਸ', 'Clasa curentă', 'လက်ရှိအတန်းအစား', 'Akoko lọwọlọwọ', 'Kwanan Yanzu', NULL),
(165, 'promote_to_class', 'Promote To Class', 'উন্নীতকরণ  শ্রেণী', 'Promover a clase', 'الترقية إلى الفصل', 'कक्षा को बढ़ावा देना', 'کلاس میں فروغ دیں', '促进上课', 'クラスに昇格', 'Promover para a classe', 'Повысить класс', 'Promouvoir en classe', '클래스로 승격', 'In die Klasse hochstufen', 'Promuovi in classe', 'โปรโมตในชั้นเรียน', 'Promóció az osztályba', 'Promoot Class', 'Promovere Ad Paleonemertea Class', 'Promosikan ke Kelas', 'Sınıfı Tanıyalım', 'Προωθήστε στην κλάση', 'ارتقا به کلاس', 'Menggalakkan Ke Kelas', 'క్లాస్కి ప్రచారం చేయండి', 'வகுப்புக்கு ஊக்குவிக்கவும்', 'વર્ગ માટે પ્રોત્સાહન', 'Promuj do klasy', 'Реклама в класі', 'ਕਲਾਸ ਨੂੰ ਵਧਾਓ', 'Promovați la clasă', 'အတန်းအစားစေရန်မြှင့်တင်ရန်', 'Igbelaruge Lati Kilasi', 'Ƙaddamar da Ƙungiya', NULL),
(166, 'next_roll_no', 'Next Roll No', 'পরবর্তী রোল', 'Siguiente rollo No', 'التالي لفة لا', 'अगला रोल नंबर', 'اگلے رول نمبر', '下一卷No', '次のロール番号', 'Next Roll No', 'Следующий ролл Нет', 'Prochain rouleau No', '다음 롤 없음', 'Nächste Rolle Nr', 'Next Roll No', 'ฉบับต่อไป No', 'Következő Roll No.', 'Volgende rol Nee', 'Next Roll No', 'Gulungan Berikutnya No', 'Sonraki Rulo Hayır', 'Επόμενος αριθμός ρόλου', 'بعدی رول نه', 'Rol seterusnya No', 'తదుపరి రోల్ సంఖ్య', 'அடுத்த ரோல் இல்லை', 'આગામી રોલ નં', 'Następna rolka nr', 'Наступний рулон немає', 'ਅਗਲਾ ਰੋਲ ਕੋਈ ਨਹੀਂ', 'Următorul Roll Nu', 'Next ကို Roll အဘယ်သူမျှမ', 'Eerun Oke No', 'Nemi na gaba Babu', NULL),
(167, 'promote', 'Promote', 'উন্নীত করা', 'Promover', 'تروج  يشجع  يعزز  ينمى  يطور', 'को बढ़ावा देना', 'فروغ دیں', '促进', 'プロモーション', 'Promover', 'содействовать', 'Promouvoir', '홍보', 'Fördern', 'Promuovere', 'ส่งเสริม', 'Népszerűsít', 'Promoten', 'Promovere', 'Memajukan', 'Desteklemek', 'Προάγω', 'ترویج', 'Menggalakkan', 'ప్రమోట్', 'ஊக்குவிக்க', 'પ્રમોટ કરો', 'Promować', 'Рекламувати', 'ਵਧਾਓ', 'Promova', 'မြှင့်တင်ရန်', 'Igbelaruge', 'Ƙara', NULL),
(168, 'book_id', 'Book ID', 'বই আইডি', 'ID de libro', 'معرف الكتاب', 'बुक आईडी', 'کتاب کی شناخت', '图书ID', '書籍ID', 'ID do livro', 'Книжный идентификатор', 'ID de livre', '도서 ID', 'Buch-ID', 'ID del libro', 'รหัสหนังสือ', 'Könyvazonosító', 'Boek-ID', 'id libri', 'ID buku', 'Kitap kimliği', 'Αναγνωριστικό βιβλίου', 'شناسه کتاب', 'ID Buku', 'బుక్ ID', 'புத்தக ஐடி', 'બુક ID', 'Identyfikator książki', 'Ідентифікатор книги', 'ਬੁੱਕ ID', 'Carte de identitate', 'စာအုပ် ID ကို', 'Iwe iD', 'ID ID', NULL),
(169, 'isbn_no', 'ISBN No', 'আইএসবিএন নম্বর', 'ISBN No', 'رقم إيسبن لا', 'आईएसबीएन नहीं', 'ISBN نمبر', '书号', 'ISBNいいえ', 'Número ISBN', 'ISBN Нет', 'ISBN Non', 'ISBN 아니오', 'ISBN Nr', 'ISBN n', 'เลข ISBN', 'ISBN szám', 'ISBN nr', 'ISBN No', 'ISBN No', 'ISBN Hayır', 'Αριθμός ISBN', 'ISBN شماره', 'ISBN No', 'ISBN సంఖ్య', 'ISBN இல்லை', 'આઇએસબીએન નં', 'Numer ISBN', 'Номер ISBN', 'ISBN ਨਹੀਂ', 'ISBN nr', 'ISBN အဘယ်သူမျှမ', 'ISBN Bẹẹkọ', 'ISBN Babu', NULL),
(170, 'book_cover', 'Book Cover', 'বইয়ের কভার', 'Tapa del libro', 'غلاف الكتاب', 'पुस्तक आवरण', 'کتاب کاپوشش، کتاب کی جلد', '封面', 'ブックカバー', 'Capa de livro', 'Книжная обложка', 'Couverture de livre', '책 표지', 'Buchumschlag', 'Copertina del libro', 'ปกหนังสือ', 'Könyvborító', 'Boekomslag', 'Libro Cover', 'Sampul buku', 'Kitap kapağı', 'Εξώφυλλο βιβλίου', 'جلد کتاب', 'Kulit buku', 'పుస్తకపు అట్ట', 'புத்தக உறை', 'પુસ્તક કવર', 'Okładka książki', 'Обкладинка книги', 'ਬੁੱਕ ਕਵਰ', 'Coperta cărții', 'စာအုပ်အဖုံး', 'Iwe Ideri iwe', 'Rufin Shafin', NULL),
(171, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'मूल्य', 'قیمت', '价钱', '価格', 'Preço', 'Цена', 'Prix', '가격', 'Preis', 'Prezzo', 'ราคา', 'Ár', 'Prijs', 'pretium', 'Harga', 'Fiyat', 'Τιμή', 'قیمت', 'Harga', 'ధర', 'விலை', 'કિંમત', 'Cena £', 'Ціна', 'ਕੀਮਤ', 'Preț', 'စျေးနှုန်း', 'Iye owo', 'Farashin', NULL),
(172, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'मात्रा', 'مقدار', '数量', '量', 'Quantidade', 'Количество', 'Quantité', '수량', 'Menge', 'Quantità', 'ปริมาณ', 'Mennyiség', 'Aantal stuks', 'quantitas', 'Kuantitas', 'miktar', 'Ποσότητα', 'مقدار', 'Kuantiti', 'మొత్తము', 'அளவு', 'જથ્થો', 'Ilość', 'Кількість', 'ਗਿਣਤੀ', 'Cantitate', 'အရေအတွက်', 'Opolopo', 'Yawan', NULL),
(173, 'edition', 'Edition', 'সংস্করণ', 'Edición', 'الإصدار', 'संस्करण', 'ایڈیشن', '版', '版', 'Edição', 'Издание', 'Édition', '판', 'Auflage', 'Edizione', 'ฉบับ', 'Kiadás', 'Editie', 'edition', 'Edisi', 'Baskı', 'Εκδοση', 'نسخه', 'Edisi', 'ఎడిషన్', 'பதிப்பு', 'આવૃત્તિ', 'Wydanie', 'Видання', 'ਐਡੀਸ਼ਨ', 'Ediție', 'Edition ကို', 'Itọsọna', 'Edition', NULL),
(174, 'almira_rack', 'Almira No', 'আলমারি নম্বর', 'Almira No', 'ألميرا نو', 'अलमिरा नो', 'الامرا نمبر', 'Almira No', 'Almira No', 'Almira Não', 'Альмира Нет', 'Almira Non', 'Almira No', 'Almira Nein', 'Almira no', 'Almira No', 'Almira No', 'Almira Nee', 'Non Almira', 'Almira No', 'Almira Hayır', 'Αλμίρα Όχι', 'آلمیرا نه', 'Almira No', 'అల్మిరా నం', 'அல்மிரா இல்லை', 'અલમરા ના', 'Almira Nie', 'Альміра №', 'ਅਲਮਾਮਾ ਨੰ', 'Almira nr', 'Almira အဘယ်သူမျှမ', 'Almira Bẹẹkọ', 'Almira Babu', NULL),
(175, 'yes', 'Yes', 'হাঁ', 'Sí', 'نعم فعلا', 'हाँ', 'جی ہاں', '是', 'はい', 'sim', 'да', 'Oui', '예', 'Ja', 'sì', 'ใช่', 'Igen', 'Ja', 'Ita', 'iya nih', 'Evet', 'Ναί', 'بله', 'Ya', 'అవును', 'ஆம்', 'હા', 'tak', 'Так', 'ਹਾਂ', 'da', 'ဟုတ်ကဲ့', 'Bẹẹni', 'Ee', NULL),
(176, 'no', 'No', 'না', 'No', 'لا', 'नहीं', 'نہیں', '没有', 'いいえ', 'Não', 'нет', 'Non', '아니', 'Nein', 'No', 'ไม่', 'Nem', 'Nee', 'nullum', 'Tidak', 'Yok hayır', 'Οχι', 'نه', 'Tidak', 'తోబుట్టువుల', 'இல்லை', 'ના', 'Nie', 'Немає', 'ਨਹੀਂ', 'Nu', 'အဘယ်သူမျှမ', 'Rara', 'Aa', NULL),
(177, 'library_id', 'Library ID', 'গ্রন্থাগার আইডি', 'ID de biblioteca', 'معرف المكتبة', 'लाइब्रेरी आईडी', 'لائبریری کی شناخت', '库ID', 'ライブラリID', 'ID da biblioteca', 'ИД библиотеки', 'ID de la bibliothèque', '도서관 ID', 'Bibliotheks-ID', 'ID della biblioteca', 'ID ห้องสมุด', 'Könyvtár azonosítója', 'Bibliotheek-ID', 'id bibliothecam', 'ID Perpustakaan', 'Kütüphane kimliği', 'Αναγνωριστικό βιβλιοθήκης', 'شناسه کتابخانه', 'ID Perpustakaan', 'లైబ్రరీ ID', 'நூலக ஐடி', 'લાઇબ્રેરી ID', 'Identyfikator biblioteki', 'Ідентифікатор бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਆਈਡੀ', 'ID-ul bibliotecii', 'စာကြည့်တိုက် ID ကို', 'ID ibi ipamọ', 'ID ID', NULL),
(178, 'return_this', 'Return This', 'রিটার্ন করুন', 'Devuelve esto', 'عودة هذا', 'यह वापसी करें', 'واپس لو', '返回这个', 'これを返す', 'Retornar isso', 'Возвращение', 'Retournez ceci', '반환이', 'Gib das zurück', 'Restituire questo', 'กลับนี้', 'Vissza', 'Keer dit terug', 'return haec', 'Kembalikan ini', 'Geri dön', 'Επιστρέψτε αυτό', 'بازگشت این', 'Pulangkan ini', 'ఈ రిటర్న్', 'இந்த திரும்பு', 'આ આવો', 'Wróć to', 'Поверніть це', 'ਇਸ ਨੂੰ ਵਾਪਸ ਕਰੋ', 'Întoarce-te', 'ဤသည်ပြန်သွားသည်', 'Da eyi pada', 'Koma wannan', NULL),
(179, 'vehicle_model', 'Vehicle Model', 'গাড়ী মডেল', 'Modelo de vehículo', 'نموذج المركبة', 'वाहन मॉडल', 'گاڑی کا ماڈل', '车辆模型', '車両モデル', 'Modelo do veículo', 'Модель транспортного средства', 'Modèle de véhicule', '차량 모델', 'Fahrzeugmodell', 'Modello di veicolo', 'โมเดลรถ', 'Járműmodell', 'Voertuigmodel', 'vehiculum Model', 'Model Kendaraan', 'Araç modeli', 'Μοντέλο οχήματος', 'مدل خودرو', 'Model Kenderaan', 'వాహన నమూనా', 'வாகன மாதிரி', 'વાહન મોડેલ', 'model maszyny', 'Модель автомобіля', 'ਵਾਹਨ ਮਾਡਲ', 'Modelul vehiculului', 'ယာဉ်မော်ဒယ်', 'Apẹẹrẹ ọkọ ayọkẹlẹ', 'Vehicle Model', NULL),
(180, 'driver', 'Driver', 'চালক', 'Conductor', 'سائق', 'चालक', 'ڈرائیور', '司机', 'ドライバ', 'Motorista', 'Водитель', 'Chauffeur', '운전사', 'Treiber', 'autista', 'คนขับรถ', 'Sofőr', 'Bestuurder', 'agitator', 'Sopir', 'sürücü', 'Οδηγός', 'راننده', 'Pemandu', 'డ్రైవర్', 'இயக்கி', 'ડ્રાઈવર', 'Kierowca', 'Водій', 'ਡਰਾਇਵਰ', 'Conducător auto', 'မောင်းသူ', 'Awako', 'Driver', NULL),
(181, 'vehicle_license', 'Vehicle License', 'গাড়ী লাইসেন্স', 'Licencia del vehículo', 'رخصة السيارة', 'वाहन लाइसेंस', 'گاڑیاں لائسنس', '车辆牌照', '車両ライセンス', 'Licença de veículo', 'Лицензия на автомобиль', 'Licence de véhicule', '차량 면허', 'Fahrzeuglizenz', 'Licenza del veicolo', 'ใบขับขี่', 'Gépjármű-engedély', 'Voertuig licentie', 'vehiculum License', 'Lisensi Kendaraan', 'Araç Lisansı', 'Άδεια οχήματος', 'مجوز خودرو', 'Lesen Kenderaan', 'వాహన లైసెన్సు', 'வாகன உரிமம்', 'વાહન લાઇસન્સ', 'Licencja pojazdu', 'Ліцензія на автомобіль', 'ਵਾਹਨ ਲਾਇਸੈਂਸ', 'Licența vehiculului', 'ယာဉ်လိုင်စင်', 'Iwe-aṣẹ ọkọ ayọkẹlẹ', 'Takardar Lasin Jirgin', NULL),
(182, 'vehicle_contact', 'Vehicle Contact', 'গাড়ী যোগাযোগ', 'Contacto del vehículo', 'الاتصال مركبة', 'वाहन संपर्क', 'گاڑی سے رابطہ', '车辆接触', '車両の連絡先', 'Contato com o veículo', 'Контакт с автомобилем', 'Contact du véhicule', '차량 연락처', 'Fahrzeugkontakt', 'Contatto del veicolo', 'ติดต่อยานพาหนะ', 'Jármű kapcsolattartó', 'Contactpersoon voor voertuigen', 'Contact vehiculum', 'Kontak Kendaraan', 'Araç Teması', 'Επικοινωνία με το όχημα', 'تماس با خودرو', 'Kenalan Kenderaan', 'వాహన సంప్రదించండి', 'வாகன தொடர்பு', 'વાહન સંપર્ક', 'Kontakt z pojazdem', 'Контакт з транспортним засобом', 'ਵਾਹਨ ਸੰਪਰਕ', 'Contactul vehiculului', 'ယာဉ်ဆက်သွယ်ပါ', 'Ọkọ ọkọ ayọkẹlẹ', 'Sadarwar mota', NULL),
(183, 'route_start', 'Route Start', 'রাস্তা শুরু', 'Ruta de inicio', 'بداية الطريق', 'रूट प्रारंभ करें', 'روٹ شروع', '路线开始', 'ルートスタート', 'Começo da rota', 'Начало маршрута', 'Début de litinéraire', '경로 시작', 'Route starten', 'Route Start', 'เริ่มต้นเส้นทาง', 'Útvonal indítása', 'Route Start', 'Satus route', 'Mulai rute', 'Yol Başlat', 'Έναρξη διαδρομής', 'شروع مسیر', 'Jalankan Permulaan', 'రూట్ ప్రారంభం', 'வழி தொடக்கம்', 'રૂટ પ્રારંભ', 'Rozpocznij trasę', 'Початок маршруту', 'ਰੂਟ ਸਟਾਰਟ', 'Urmați traseul', 'လမ်းကြောင်း Start ကို', 'Ibẹrẹ ọna', 'Fara hanya', NULL),
(184, 'route_end', 'Route End', 'রাস্তা শেষ', 'Ruta final', 'نهاية الطريق', 'मार्ग समाप्ति', 'روٹ اختتام', '路线结束', 'ルートエンド', 'Fim da rota', 'Маршрутный конец', 'Fin de la route', '국도 끝', 'Routenende', 'Route End', 'Route End', 'Útvonal vége', 'Route einde', 'iter itineris finis', 'Akhir rute', 'Güzergah sonu', 'Διαδρομή διαδρομής', 'پایان مسیر', 'Laluan Akhir', 'మార్గం ఎండ్', 'முடிவடையும்', 'રૂટ એન્ડ', 'Koniec trasy', 'Кінець маршруту', 'ਰੂਟ ਐਂਡ', 'Traseul final', 'လမ်းကြောင်းအဆုံး', 'Ipari Ipa', 'Ƙare Ƙare', NULL),
(185, 'vehicle_for_route', 'Vehicle for Route', 'রুট যানবাহন', 'Vehículo para la ruta', 'مركبة للطريق', 'मार्ग के लिए वाहन', 'روٹ کے لئے گاڑی', '路线车辆', 'ルートの車両', 'Veículo para rota', 'Автомобиль для маршрута', 'Véhicule pour Route', '국도 용 차량', 'Fahrzeug für die Route', 'Veicolo per il percorso', 'ยานพาหนะสำหรับเส้นทาง', 'Jármű az útvonalhoz', 'Voertuig voor route', 'Vehiculum itineris', 'Kendaraan untuk Rute', 'Güzergah için araç', 'Οχήματος για τη διαδρομή', 'وسیله نقلیه برای مسیر', 'Kenderaan untuk Laluan', 'మార్గం కోసం వాహనం', 'பாதைக்கான வாகனம்', 'રૂટ માટે વાહન', 'Pojazd dla trasy', 'Автомобіль для маршруту', 'ਰੂਟ ਲਈ ਵਾਹਨ', 'Vehicul pentru traseu', 'လမ်းကြောင်းများအတွက်ယာဉ်', 'Ọkọ ayọkẹlẹ fun Itọsọna', 'Mota don Hanyar', NULL),
(186, 'stop_name', 'Stop Name', 'স্টপ নাম', 'Nombre de parada', 'اسم التوقف', 'नाम बंद करो', 'نام بند کرو', '停止名称', '停止名', 'Parar Nome', 'Остановить имя', 'Arrêter le nom', '이름 중지', 'Stoppen Sie den Namen', 'Arresta il nome', 'ชื่อหยุด', 'Nevezzen meg nevet', 'Stop Naam', 'nomen subsisto', 'Hentikan Nama', 'Adı Durdur', 'Διακοπή ονόματος', 'نام توقف', 'Hentikan Nama', 'పేరు ఆపండి', 'பெயர் நிறுத்து', 'નામ રોકો', 'Zatrzymaj nazwę', 'Зупинити імя', 'ਨਾਂ ਰੋਕੋ', 'Opriți numele', 'အမည်ရပ်တန့်', 'Duro Orukọ', 'Tsaya sunan', NULL),
(187, 'stop_km', 'Stop KM', 'স্টপ কে এম', 'Detener KM', 'وقف كم', 'केएम बंद करो', 'KM بند کرو', '停止KM', 'KMを停止', 'Pare KM', 'Стоп КМ', 'Arrêtez KM', 'KM 중지', 'Stoppen Sie KM', 'Stop KM', 'หยุด KM', 'Stop KM', 'Stop KM', 'nolite KM', 'Hentikan KM', 'KM durdur', 'Διακοπή KM', 'توقف KM', 'Hentikan KM', 'KM ఆపు', 'KM ஐ நிறுத்தவும்', 'KM રોકો', 'Zatrzymaj KM', 'Зупинити КМ', 'KM ਰੋਕੋ', 'Opriți KM', 'KM ရပ်တန့်', 'Duro KM', 'Tsaya KM', NULL),
(188, 'stop_fare', 'Stop Fare', 'স্টপ ভাড়া', 'Detener la tarifa', 'وقف الأجرة', 'किराया बंद करो', 'کرایہ بند کرو', '停止票价', '運賃を停止する', 'Parar tarifa', 'Остановить тариф', 'Arrêter le tarif', '운임 할인', 'Stop Fare', 'Stop Fare', 'หยุดค่าโดยสาร', 'Stop Fare', 'Stop tarief', 'Bene subsisto', 'Hentikan Tarif', 'Ücreti Durdur', 'Σταματήστε το Φόρεμα', 'کرایه را متوقف کنید', 'Hentikan tambang', 'ఫేర్ ఆపివేయి', 'ஃபேர் நிறுத்து', 'ભાડું રોકો', 'Stop Fare', 'Зупинити вартість проїзду', 'ਫਾਰ ਰੋਕੋ', 'Opriți tariful', 'stop လက်မှတ်ခများ', 'Duro Iduro', 'Dakatar da Fare', NULL),
(189, 'add_more', 'Add More', 'আরো যোগ করো', 'Añadir más', 'أضف المزيد', 'अधिक जोड़ें', 'مزید شامل کریں', '添加更多', 'さらに追加', 'Adicione mais', 'Добавить больше', 'Ajouter plus', '더 추가', 'Mehr hinzufügen', 'Aggiungere altro', 'เพิ่มอีก', 'Adj hozzá többet', 'Voeg meer toe', 'Add More', 'Tambahkan Lebih Banyak', 'Daha ekle', 'Πρόσθεσε περισσότερα', 'اضافه کردن بیشتر', 'Tambah lebih banyak', 'మరిన్ని జోడించండి', 'மேலும் சேர்க்கவும்', 'વધુ ઉમેરો', 'Dodaj więcej', 'Додати більше', 'ਹੋਰ ਜੋੜੋ', 'Adăuga mai mult', 'နောက်ထပ် Add', 'Fi Die e sii', 'Ƙara Ƙari', NULL),
(190, 'route_stop_fare', 'Route Stop Fare', 'রুট স্টপ ভাড়া', 'Ruta detener tarifa', 'Route Stop Fare', 'मार्ग बंद किराया', 'روٹ سٹاپ کرایہ', '路线止损票价', 'ルートストップ運賃', 'Tarifa de parada de rota', 'Маршрутная остановка', 'Itinéraire Tarif darrêt', '노선 정지 요금', 'Route Stop Tarif', 'Route Stop Fare', 'หยุดการเดินทาง', 'Útvonal leállítása', 'Route stop tarief', 'Bene nolite route', 'Route Stop Fare', 'Rota Durdurma Ücreti', 'Διακοπή διαδρομής', 'هزینه توقف مسیر', 'Bayaran Henti Laluan', 'రూట్ స్టాప్ ఫేర్', 'வழி நிறுத்து கட்டணம்', 'રૂટ સ્ટોપ ફેર', 'Cena przejazdu trasy', 'Вартість зупинки маршруту', 'ਰੂਟ ਸਟਾਪ ਫਰਾਈ', 'Traseul opri tariful', 'လမ်းကြောင်း Stop လက်မှတ်ခများ', 'Ilana Duro Itọsọna', 'fitar da Tsaya Tsaya', NULL),
(191, 'hostel_type', 'Hostel Type', 'ছাত্রাবাস ধরন', 'Tipo de Hostal', 'نوع نزل', 'छात्रावास का प्रकार', 'ہاسٹل کی قسم', '旅馆类型', 'ホステルタイプ', 'Tipo de albergue', 'Тип хостела', 'Type dauberge', '호스텔 유형', 'Herbergsart', 'Tipo di ostello', 'ประเภท Hostel', 'Szálló típusa', 'Hostel type', 'Type Hostel', 'Tipe asrama', 'Pansiyon Türü', 'Τύπος Hostel', 'نوع خوابگاه', 'Jenis Hostel', 'హాస్టల్ పద్ధతి', 'விடுதி வகை', 'છાત્રાલયનો પ્રકાર', 'Typ hostelu', 'Тип хостелу', 'ਹੋਸਟਲ ਦੀ ਕਿਸਮ', 'Tipul de hostel', 'ဘော်ဒါဆောင်အမျိုးအစား', 'Agbegbe Iru', 'Dakunan kwanan dalibai', NULL),
(192, 'seat_total', 'Seat Total', 'আসন মোট', 'Asiento total', 'المقعد الكلي', 'सीट कुल', 'سیٹ کل', '座位总数', 'シート合計', 'Total do assento', 'Общее количество сидячих мест', 'Siège Total', '좌석 합계', 'Sitzplatz gesamt', 'Totale del sedile', 'ที่นั่งรวม', 'Seat Total', 'Seat Total', 'sede Summa', 'Kursi Total', 'Koltuk Toplam', 'Θέση Σύνολο', 'صندلی مجموع', 'Jumlah tempat duduk', 'సీట్ మొత్తం', 'மொத்த எண்ணிக்கை', 'બેઠક કુલ', 'Seat Total', 'Загальна кількість сидінь', 'ਸੀਟ ਕੁੱਲ', 'Seat Total', 'ထိုင်ခုံစုစုပေါင်း', 'Okun apapọ', 'Tsawon kuɗi', NULL),
(193, 'cost_per_seat', 'Cost per Seat', 'আসন প্রতি খরচ', 'Costo por asiento', 'التكلفة لكل مقعد', 'सीट प्रति सीट', 'فی سیٹ لاگت', '每个座位的成本', '1シートあたりのコスト', 'Custo por assento', 'Стоимость за место', 'Coût par siège', '좌석 당 비용', 'Kosten pro Sitzplatz', 'Costo per posto', 'ต้นทุนต่อที่นั่ง', 'Tartózkodási költség', 'Kosten per stoel', 'Sumptus per propitiatorium,', 'Biaya per Kursi', 'Koltuk Başına Maliyet', 'Κόστος ανά Θέση', 'هزینه هر صندلی', 'Kos setiap Tempat Duduk', 'సీట్కు ఖర్చు', 'உட்கட்டமைப்புக்கான செலவு', 'સીટ દીઠ ખર્ચ', 'Koszt za miejsce', 'Вартість за місце', 'ਪ੍ਰਤੀ ਸੀਟ ਦੀ ਲਾਗਤ', 'Cost pe scaun', 'ထိုင်ခုံနှုန်းကုန်ကျစရိတ်', 'Iye owo fun ijoko', 'Kudin da Seat', NULL),
(194, 'compose', 'Compose', 'লিখা', 'Componer', 'مؤلف موسيقى', 'लिखना', 'تحریر کریں', '撰写', '作成する', 'Compor', 'компоновать', 'Composer', '짓다', 'Komponieren', 'Comporre', 'แต่ง', 'Összeállít', 'Componeren', 'Componere epistolas', 'Menyusun', 'oluşturmak', 'Συνθέτω', 'ساختن', 'Tuliskan', 'కంపోజ్', 'எழுது', 'લખો', 'Komponować', 'Скласти', 'ਲਿਖੋ', 'Compune', 'compose', 'Ṣajọ', 'Shirya', NULL),
(195, 'folder', 'Folder', 'ফোল্ডার', 'Carpeta', 'مجلد', 'फ़ोल्डर', 'فولڈر', '夹', 'フォルダ', 'Pasta', 'скоросшиватель', 'Dossier', '폴더', 'Mappe', 'Cartella', 'โฟลเดอร์', 'Folder', 'Map', 'folder', 'Map', 'Klasör', 'Ντοσιέ', 'پوشه', 'Folder', 'ఫోల్డర్', 'அடைவு', 'ફોલ્ડર', 'Teczka', 'Папка', 'ਫੋਲਡਰ', 'Pliant', 'ဖိုငျတှဲ', 'Folda', 'Jaka', NULL),
(196, 'inbox', 'Inbox', 'ইনবক্স', 'Bandeja de entrada', 'صندوق الوارد', 'इनबॉक्स', 'ان باکس', '收件箱', '受信トレイ', 'Caixa de entrada', 'входящие', 'Boîte de réception', '받은 편지함', 'Posteingang', 'Posta in arrivo', 'กล่องขาเข้า', 'Bejövő', 'Postvak IN', 'inbuxo', 'Kotak masuk', 'Gelen kutusu', 'Inbox', 'صندوق ورودی', 'Peti masuk', 'ఇన్బాక్స్', 'உட்பெட்டி', 'ઇનબૉક્સ', 'W pudełku', 'Вхідні', 'ਇਨਬਾਕਸ', 'Inbox', 'inbox ထဲမှာ', 'Apo-iwọle', 'Inbox', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(197, 'draft', 'Draft', 'ড্রাফ্ট্', 'Borrador', 'مشروع', 'प्रारूप', 'ڈرافٹ', '草案', 'ドラフト', 'Esboço, projeto', 'Проект', 'Brouillon', '초안', 'Entwurf', 'Bozza', 'ร่าง', 'vázlat', 'Droogte', 'capturam', 'Konsep', 'taslak', 'Προσχέδιο', 'پیش نویس', 'Draf', 'డ్రాఫ్ట్', 'வரைவு', 'ડ્રાફ્ટ', 'Wersja robocza', 'Чернетка', 'ਡਰਾਫਟ', 'Proiect', 'မူကြမ်း', 'Ifaworanhan', 'Shafin', NULL),
(198, 'trash', 'Trash', 'ট্র্যাশ', 'Basura', 'قمامة، يدمر، يهدم', 'कचरा', 'ردی کی ٹوکری', '垃圾', 'ごみ', 'Lixo', 'дрянь', 'Poubelle', '폐물', 'Müll', 'Spazzatura', 'ขยะ', 'Szemét', 'uitschot', 'quisquiliae', 'Sampah', 'Çöp', 'Σκουπίδια', 'زباله ها', 'Sampah', 'ట్రాష్', 'குப்பைக்கு', 'ટ્રૅશ', 'Śmieci', 'Сміття', 'ਟ੍ਰੈਸ਼', 'Gunoi', 'အသုံးမရသောအရာ', 'Idọti', 'Shara', NULL),
(199, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo', NULL),
(200, 'discard', 'Discard', 'বাতিল', 'Descarte', 'تجاهل', 'छोड़ना', 'رکھو', '丢弃', '破棄', 'Descartar', 'отбрасывать', 'Jeter', '포기', 'Verwerfen', 'Scartare', 'ทิ้ง', 'Dobja', 'afdanken', 'Relinquere', 'Membuang', 'ıskarta', 'Απορρίπτω', 'نادیده گرفتن', 'Buang', 'విస్మరించు', 'நிராகரி', 'કાઢી નાખો', 'Odrzucać', 'Відхилити', 'ਬਰਖਾਸਤ ਕਰੋ', 'decarta', 'စွန့်ပစ်', 'Ṣabọ', 'Zubar da', NULL),
(201, 'receiver_type', 'Receiver Type', 'প্রাপক প্রকার', 'Tipo de receptor', 'نوع جهاز الاستقبال', 'प्राप्तकर्ता प्रकार', 'رسیور کی قسم', '接收器类型', '受信機タイプ', 'Tipo de receptor', 'Тип приемника', 'Type de récepteur', '수신기 유형', 'Empfängertyp', 'Tipo di ricevitore', 'ประเภทตัวรับสัญญาณ', 'Vevőtípus', 'Ontvanger Type', 'Type receptorem', 'Jenis Penerima', 'Alıcı Türü', 'Τύπος δέκτη', 'نوع گیرنده', 'Jenis Penerima', 'స్వీకర్త పద్ధతి', 'பெறுநர் வகை', 'રીસીવર પ્રકાર', 'Typ odbiornika', 'Тип приймача', 'ਪ੍ਰਾਪਤਕਰਤਾ ਕਿਸਮ', 'Tip receptor', 'receiver အမျိုးအစား', 'Gbigba Iru', 'Mai karɓa iri', NULL),
(202, 'receiver', 'Receiver', 'প্রাপক', 'Receptor', 'المتلقي', 'रिसीवर', 'وصول کنندہ', '接收器', '受信機', 'Receptor', 'Получатель', 'Destinataire', '리시버', 'Empfänger', 'Ricevitore', 'ผู้รับ', 'Receiver', 'Ontvanger', 'receptor', 'Penerima', 'Alıcı', 'Δέκτης', 'گیرنده', 'Penerima', 'స్వీకర్త', 'ரிசீவர்', 'રીસીવર', 'Odbiorca', 'Приймач', 'ਪ੍ਰਾਪਤਕਰਤਾ', 'Receptor', 'လက်ခံ', 'olugba', 'Mai karɓar', NULL),
(203, 'time', 'Time', 'সময়', 'Hora', 'زمن', 'पहर', 'وقت', '时间', '時間', 'Tempo', 'Время', 'Temps', '시각', 'Zeit', 'Tempo', 'เวลา', 'Idő', 'Tijd', 'Tempus', 'Waktu', 'Zaman', 'χρόνος', 'زمان', 'Masa', 'సమయం', 'நேரம்', 'સમય', 'Czas', 'Час', 'ਸਮਾਂ', 'Timp', 'အချိန်', 'Aago', 'Lokaci', NULL),
(204, 'read_message', 'Read Message', 'বার্তা পড়ুন', 'Leer el mensaje', 'اقرأ الرساله', 'संदेश पढ़ना', 'پیغام پڑھیں', '阅读消息', 'メッセージを読む', 'Leia a mensagem', 'Читать сообщение', 'Lire le message', '메시지 읽기', 'Lies die Nachricht', 'Leggi il messaggio', 'อ่านข้อความ', 'Üzenet olvasása', 'Lees bericht', 'Read Nuntius', 'Baca pesan', 'Mesajı oku', 'Διαβάστε το μήνυμα', 'خواندن پیام', 'Baca Mesej', 'సందేశం చదవండి', 'செய்தி வாசிக்கவும்', 'સંદેશ વાંચો', 'Czytać wiadomość', 'Читати повідомлення', 'ਸੁਨੇਹਾ ਪੜ੍ਹੋ', 'Citiți mesajul', 'ကို Message ကိုဖတ်ပါ', 'Ka Ifiranṣẹ', 'Karanta Saƙo', NULL),
(205, 'reply', 'Reply', 'উত্তর', 'Respuesta', 'الرد', 'जवाब दे दो', 'جواب دیں', '回复', '応答', 'Resposta', 'Ответить', 'Répondre', '댓글', 'Antworten', 'rispondere', 'ตอบ', 'Válasz', 'Antwoord', 'Respondeo', 'Balasan', 'cevap', 'Απάντηση', 'پاسخ', 'Balas', 'ప్రత్యుత్తరం', 'பதில்', 'જવાબ આપો', 'Odpowiadać', 'Відповідь', 'ਜਵਾਬ ਦਿਉ', 'Răspuns', 'ပြန်ကြားချက်', 'Idahun', 'Amsa', NULL),
(206, 'attachment', 'Attachment', 'সংযুক্তি', 'Adjunto archivo', 'المرفق', 'आसक्ति', 'منسلکہ', '附件', 'アタッチメント', 'Anexo', 'прикрепление', 'Attachement', '부착', 'Befestigung', 'attaccamento', 'ความผูกพัน', 'Attachment', 'gehechtheid', 'affectum', 'Lampiran', 'Ek dosya', 'Συνημμένο', 'ضمیمه', 'Lampiran', 'జోడింపు', 'இணைப்பு', 'જોડાણ', 'Załącznik', 'Вкладення', 'ਅਟੈਚਮੈਂਟ', 'Atașament', 'ပူးတွဲမှု', 'Asopọ', 'Abin haɗi', NULL),
(207, 'dynamic_tag', 'Dynamic Tag', 'ডায়নামিক ট্যাগ', 'Etiqueta dinámica', 'علامة ديناميكية', 'डायनेमिक टैग', 'متحرک ٹیگ', '动态标签', '動的タグ', 'Tag dinâmico', 'Динамический тег', 'Balise dynamique', '동적 태그', 'Dynamische Markierung', 'Tag dinamico', 'แท็กแบบไดนามิก', 'Dinamikus címke', 'Dynamische tag', 'dynamic Omega', 'Tag Dinamis', 'Dinamik Etiket', 'Δυναμική ετικέτα', 'برچسب پویا', 'Tag Dinamik', 'డైనమిక్ ట్యాగ్', 'டைனமிக் டேக்', 'ડાયનેમિક ટૅગ', 'Tag dynamiczny', 'Динамічний тег', 'ਡਾਇਨਾਮਿਕ ਟੈਗ', 'Etichetă dinamică', 'dynamic Tag ကို', 'Atilẹyin Ayika', 'Dynamic Tag', NULL),
(208, 'gateway', 'Gateway', 'গেটওয়ে', 'Puerta', 'بوابة', 'द्वार', 'گیٹ وے', '网关', 'ゲートウェイ', 'Gateway', 'шлюз', 'passerelle', '게이트웨이', 'Tor', 'porta', 'ประตู', 'Gateway', 'poort', 'porta', 'pintu gerbang', 'geçit', 'πύλη', 'دروازه', 'Gateway', 'గేట్వే', 'நுழைவாயில்', 'ગેટવે', 'Przejście', 'Шлюз', 'ਗੇਟਵੇ', 'portal', 'တံခါးပေါက်', 'Ẹnu-ọna', 'Ƙofar waje', NULL),
(209, 'email_body', 'Email Body', 'ইমেইল বডি', 'Cuerpo del correo electronico', 'هيئة البريد الإلكتروني', 'ईमेल बॉडी', 'ای میل جسم', '电子邮件正文', 'メール本文', 'Corpo do e-mail', 'Тело письма', 'Corps de le-mail', '이메일 본문', 'Nachrichtentext', 'Email Corpo', 'Email Body', 'Email Body', 'E-mail body', 'Email Corpus', 'Email Tubuh', 'E-posta Gövdesi', 'Σώμα ηλεκτρονικού ταχυδρομείου', 'بدن ایمیل', 'Badan E-mel', 'ఇమెయిల్ బాడీ', 'மின்னஞ்சல் உடல்', 'ઇમેઇલ શારીરિક', 'Treść e-maila', 'Email Body', 'ਈਮੇਲ ਬਾਡੀ', 'Organismul de e-mail', 'အီးမေးလ်ပို့ရန်ခန္ဓာကိုယ်', 'Imeeli Ara', 'Jikin Jiki', NULL),
(210, 'notice_for', 'Notice for', 'নোটিশ ফর', 'Aviso para', 'إشعار ل', 'के लिए सूचना', 'نوٹس', '通知', 'お知らせ', 'Aviso para', 'Уведомление для', 'Avis pour', '공지 사항', 'Hinweis für', 'Avviso per', 'แจ้งให้ทราบ', 'Figyelmeztetés', 'Kennisgeving voor', 'notitia est', 'Pemberitahuan untuk', 'Için bildirim', 'Ειδοποίηση για', 'برای', 'Notis untuk', 'గమనించండి', 'கவனிக்கவும்', 'માટે નોટિસ', 'Powiadomienie dla', 'Зверніть увагу на', 'ਲਈ ਨੋਟਿਸ', 'Notă pentru', 'မှုအတွက်အသိပေးစာ', 'Akiyesi fun', 'Lura don', NULL),
(211, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'तारीख', 'تاریخ', '日期', '日付', 'Encontro', 'Дата', 'Rendez-vous amoureux', '날짜', 'Datum', 'Data', 'วันที่', 'Dátum', 'Datum', 'Date', 'Tanggal', 'tarih', 'Ημερομηνία', 'تاریخ', 'Tarikh', 'తేదీ', 'தேதி', 'તારીખ', 'Data', 'Дата', 'ਤਾਰੀਖ', 'Data', 'နေ့စှဲ', 'Ọjọ', 'Kwanan wata', NULL),
(212, 'from_date', 'From Date', 'তারিখ হইতে', 'Partir de la fecha', 'من التاريخ', 'तारीख से', 'اس تاریخ سے', '从日期', '日付から', 'Da data', 'С даты', 'Partir de la date', '날짜부터', 'Ab Datum', 'Dalla data', 'จากวันที่', 'Dátumtól', 'Van datum', 'Ex Date', 'Dari tanggal', 'İtibaren', 'Από την ημερομηνία', 'از تاریخ', 'Dari tarikh', 'తేదీ నుంచి', 'தேதி முதல்', 'તારીખથી', 'Od daty', 'Від дати', 'ਮਿਤੀ ਤੋਂ', 'Din data', 'နေ့စွဲကနေ', 'Lati Ọjọ', 'Daga Kwanan wata', NULL),
(213, 'to_date', 'To Date', 'তারিখ পর্যন্ত', 'Hasta la fecha', 'ان يذهب في موعد', 'तारीख तक', 'تاریخ تک', '至今', '現在まで', 'Até a presente data', 'Встретиться1', 'À ce jour', '오늘까지', 'Miteinander ausgehen', 'Ad oggi', 'ถึงวันที่', 'Randizni', 'Daten', 'Ad Date', 'Saat ini', 'Bugüne kadar', 'Μέχρι σήμερα', 'به روز', 'Untuk Tarikh', 'తేదీ వరకు', 'தேதி', 'આજ સુધી', 'Spotykać się z kimś', 'До дати', 'ਮਿਤੀ ਤੱਕ', 'La zi', 'ယနေ့အထိ', 'Titi di akoko yi', 'Don Kwanan wata', NULL),
(214, 'image', 'Image', 'ইমেজ', 'Imagen', 'صورة', 'छवि', 'تصویر', '图片', '画像', 'Imagem', 'Образ', 'Image', '영상', 'Bild', 'Immagine', 'ภาพ', 'Kép', 'Beeld', 'Image', 'Gambar', 'görüntü', 'Εικόνα', 'تصویر', 'Gambar', 'చిత్రం', 'பட', 'છબી', 'Obraz', 'Зображення', 'ਚਿੱਤਰ', 'Imagine', 'image ကို', 'Aworan', 'Hoton hoto', NULL),
(215, 'event_for', 'Event for', 'ইভেন্ট ফর', 'Evento para', 'حدث ل', 'के लिए घटना', 'کے لئے واقعہ', '事件', 'イベント', 'Evento para', 'Событие для', 'Événement pour', '이벤트', 'Ereignis für', 'Evento per', 'กิจกรรมสำหรับ', 'Esemény', 'Evenement voor', 'res enim', 'Acara untuk', 'Için Etkinlik', 'Εκδήλωση για', 'رویداد برای', 'Acara untuk', 'ఈవెంట్ కోసం', 'நிகழ்வு', 'માટે ઇવેન્ટ', 'Wydarzenie dla', 'Подія для', 'ਲਈ ਇਵੈਂਟ', 'Eveniment pentru', 'များအတွက်အဖြစ်အပျက်', 'Iṣẹlẹ fun', 'Aukuwa don', NULL),
(216, 'event_place', 'Event Place', 'ইভেন্ট স্থান', 'Lugar del evento', 'مكان الحدث', 'इवेंट प्लेस', 'واقعہ کی جگہ', '活动地点', 'イベント会場', 'Lugar do Evento', 'Место проведения мероприятия', 'Lieu de lévénement', '행사 장소', 'Veranstaltungsort', 'Luogo dellevento', 'สถานที่จัดงาน', 'Rendezvényhelyszín', 'Evenementplaats', 'res Locus Iste', 'Tempat acara', 'Etkinlik Yeri', 'Τόπος εκδήλωσης', 'محل برگزاری', 'Tempat Acara', 'ఈవెంట్ ప్లేస్', 'நிகழ்வு இடம்', 'ઇવેન્ટ પ્લેસ', 'Miejsce zdarzenia', 'Місце проведення', 'ਇਵੈਂਟ ਸਥਾਨ', 'Locul evenimentului', 'အဖြစ်အပျက်နေရာ', 'Ibi ti o ṣe', 'Tarihin Lura', NULL),
(217, 'to_meet', 'To Meet', 'যার সাথে দেখা করবে', 'Conocer', 'لكي نلتقي', 'मीलऩा', 'ملنے کے لئے', '见面', '会う', 'Encontrar', 'Встречаться', 'Rencontrer', '만나다', 'Treffen', 'Incontrare', 'พบ', 'Találkozni', 'Ontmoeten', 'Convenire', 'Bertemu', 'Tanışmak', 'Να συναντησω', 'برای دیدار با', 'Berjumpa', 'కలవడం', 'சந்திக்க', 'મળવા', 'Spotkać', 'Зустріти', 'ਮਿਲਣ ਲਈ', 'A întâlni', 'တွေ့ဖို့', 'Lati pade', 'Don saduwa', NULL),
(218, 'check_in', 'Check In', 'চেক ইন', 'Registrarse', 'تحقق في', 'चेक इन', 'چیک کریں', '报到', 'チェックイン', 'Check-in', 'Регистрироваться', 'Enregistrement', '체크인', 'Check-In', 'Registrare', 'เช็คอิน', 'Becsekkolás', 'Check in', 'Reprehendo in', 'Mendaftar', 'Giriş', 'Παραδίδω αποσκευές', 'چک کردن', 'Daftar masuk', 'చెక్ ఇన్ చేయండి', 'சரிபார்க்கவும்', 'ચેક ઇન કરો', 'Zameldować się', 'Перевірь', 'ਚੈੱਕ ਇਨ ਕਰੋ', 'Verifica', 'ရောက်ရှိကြောင်းစာရင်းသွင်းခြင်း', 'Wole sinu', 'Rajistan shiga', NULL),
(219, 'check_out', 'Check Out', 'চেক আউট', 'Revisa', 'الدفع', 'चेक आउट', 'اس کو دیکھو', '查看', 'チェックアウト', 'Confira', 'Проверять, выписываться', 'Check-out', '체크 아웃', 'Auschecken', 'Check-out', 'เช็คเอาท์', 'Kijelentkezés', 'Uitchecken', 'reprehendo de', 'Periksa', 'Çıkış yapmak', 'Ολοκλήρωση αγοράς', 'وارسی', 'Semak Keluar', 'తనిఖీ చేయండి', 'பாருங்கள்', 'તપાસો', 'Sprawdzić', 'Перевірити', 'ਕਮਰਾ ਛੱਡ ਦਿਓ', 'Verifică', 'ထွက်ခွာသည်', 'Ṣayẹwo', 'Duba Out', NULL),
(220, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'रकम', 'رقم', '量', '量', 'Montante', 'Количество', 'Montant', '양', 'Menge', 'Quantità', 'จำนวน', 'Összeg', 'Bedrag', 'tantum', 'Jumlah', 'Miktar', 'Ποσό', 'میزان', 'Jumlah', 'మొత్తం', 'தொகை', 'રકમ', 'Ilość', 'Сума', 'ਦੀ ਰਕਮ', 'Cantitate', 'ငွေပမာဏ', 'Iye', 'Adadin', NULL),
(221, 'discount', 'Discount', 'ছাড়', 'Descuento', 'خصم', 'छूट', 'ڈسکاؤنٹ', '折扣', 'ディスカウント', 'Desconto', 'скидка', 'Discount', '할인', 'Rabatt', 'Sconto', 'ส่วนลด', 'Kedvezmény', 'Korting', 'Buy', 'Diskon', 'İndirim', 'Εκπτωση', 'تخفیف', 'Diskaun', 'డిస్కౌంట్', 'தள்ளுபடி', 'ડિસ્કાઉન્ટ', 'Zniżka', 'Знижка', 'ਛੂਟ', 'Reducere', 'လျှော့စျေး', 'iye owo', 'Dama', NULL),
(222, 'print', 'Print', 'প্রিন্ট', 'Impresión', 'طباعة', 'छाप', 'پرنٹ کریں', '打印', '印刷', 'Impressão', 'Распечатать', 'Impression', '인쇄', 'Drucken', 'Stampare', 'พิมพ์', 'Nyomtatás', 'Afdrukken', 'Print', 'Mencetak', 'baskı', 'Τυπώνω', 'چاپ', 'Cetak', 'ప్రింట్', 'அச்சு', 'છાપો', 'Wydrukować', 'Друк', 'ਛਾਪੋ', 'Imprimare', 'ပုံနှိပ်', 'Tẹjade', 'Buga', NULL),
(223, 'paid', 'Paid', 'পরিশোদ', 'Pagado', 'دفع', 'भुगतान किया है', 'ادا کیا', '付费', '有料', 'Pago', 'оплаченный', 'Payé', '유료', 'Bezahlt', 'Pagato', 'ต้องจ่าย', 'Fizetett', 'Betaald', 'pretium', 'Dibayar', 'ödenmiş', 'επί πληρωμή', 'پرداخت شده', 'Dibayar', 'చెల్లింపు', 'பணம்', 'ચૂકવેલ', 'Płatny', 'Оплачений', 'ਦਾ ਭੁਗਤਾਨ', 'Plătit', 'paid', 'San', 'An biya', NULL),
(224, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'उप-योग', 'ذیلی کل', '小计', '小計', 'Subtotal', 'Промежуточный итог', 'Total', '소계', 'Zwischensumme', 'totale parziale', 'ไม่ทั้งหมด', 'Részösszeg', 'Subtotaal', 'Subtotal', 'Subtotal', 'ara toplam', 'ΜΕΡΙΚΟ ΣΥΝΟΛΟ', 'کل حجم', 'jumlah kecil', 'పూర్తికాని', 'கூட்டுத்தொகை', 'પેટાસરવાળો', 'Suma częściowa', 'Сумарно', 'ਉਪ-ਕੁੱਲ', 'Subtotal', 'စုစုပေါင်း', 'Atokun', 'Subtotal', NULL),
(225, 'remain', 'Remain', 'অবশিষ্ট', 'Permanecer', 'يبقى', 'रहना', 'رہنا', '留', '残っている', 'Permanecer', 'оставаться', 'Rester', '남아있는', 'Bleiben übrig', 'rimanere', 'ยังคง', 'Marad', 'Blijven', 'manent', 'Tetap', 'Kalmak', 'Παραμένει', 'ماندن', 'Kekal', 'ఉంటాయి', 'இருக்கும்', 'રહો', 'Pozostawać', 'Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Rămâne', 'ကျန်ရစ်', 'Duro', 'Ku tsaya', NULL),
(226, 'month', 'Month', 'মাস', 'Mes', 'شهر', 'महीना', 'مہینہ', '月', '月', 'Mês', 'Месяц', 'Mois', '달', 'Monat', 'Mese', 'เดือน', 'Hónap', 'Maand', 'mense', 'Bulan', 'Ay', 'Μήνας', 'ماه', 'Bulan', 'నెల', 'மாதம்', 'માસ', 'Miesiąc', 'Місяць', 'ਮਹੀਨਾ', 'Lună', 'လ', 'Oṣu', 'Watan', NULL),
(227, 'a_positive', 'A+', 'এ পজিটিভ', 'A +', 'A +', 'A+', 'A+', 'A+', 'A+', 'A+', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', NULL),
(228, 'a_negative', 'A-', 'এ নেগেটিভ', 'UN-', 'ا-', 'ए-', 'A-', '一个-', 'A-', 'UMA-', 'A-', 'A-', '에이-', 'EIN-', 'UN-', 'A-', 'A-', 'EEN-', 'A-', 'SEBUAH-', 'A-', 'ΕΝΑ-', 'A-', 'A-', 'ఒక-', 'ஏ', 'એ-', 'ZA-', 'A-', 'ਏ-', 'A-', 'A-', 'A-', 'A-', NULL),
(229, 'b_positive', 'B+', 'বি পজিটিভ', 'B +', 'B +', 'बी +', 'B+', 'B+', 'B+', 'B+', 'B +', 'B+', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'பி', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', NULL),
(230, 'b_negative', 'B-', 'বি নেগেটিভ', 'SEGUNDO-', 'ب-', 'बी', 'B-', 'B-', 'B-', 'B-', 'B-', 'B-', '비-', 'B-', 'B-', 'B-', 'B-', 'B-', 'Sed placerat scelerisque', 'B-', 'B-', 'ΣΙ-', 'B-', 'B-', 'B-', 'பி-', 'બી-', 'B-', 'B-', 'ਬੀ-', 'B-', 'ပါဘူးရှငျ', 'B-', 'B-', NULL),
(231, 'o_positive', 'O+', 'ও পজিটিভ', 'O +', 'O +', 'O+', 'اے +', 'O+', 'O+', 'O+', 'O +', 'O+', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'Domine +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'အို +', 'O +', 'O +', NULL),
(232, 'o_negative', 'O-', 'ও নেগেটিভ', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', '영형-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'HAI-', 'O-', 'Ο-', 'O-', 'O-', 'O-', 'O-', 'ઓ-', 'O-', 'O-', 'ਓ-', 'O-', 'O-', 'O-', 'O-', NULL),
(233, 'ab_positive', 'AB+', 'এবি পজিটিভ', 'AB +', 'AB +', 'एबी +', 'AB+', 'AB+', 'AB+', 'AB+', 'AB +', 'AB+', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'એબી +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', NULL),
(234, 'ab_negative', 'AB-', 'এবি নেগেটিভ', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB', 'AB-', 'AB-', 'ΑΒ-', 'AB-', 'AB-', 'AB-', 'மோலின்', 'એબી-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', NULL),
(235, 'interview', 'Interview', 'সাক্ষাত্কার', 'Entrevista', 'مقابلة', 'साक्षात्कार', 'انٹرویو', '访问', 'インタビュー', 'Entrevista', 'Интервью', 'Entretien', '회견', 'Interview', 'Colloquio', 'สัมภาษณ์', 'Interjú', 'Interview', 'colloquium', 'Wawancara', 'Röportaj', 'Συνέντευξη', 'مصاحبه', 'Temu bual', 'ఇంటర్వ్యూ', 'பேட்டி', 'મુલાકાત', 'Wywiad', 'Інтервю', 'ਇੰਟਰਵਿਊ', 'Interviu', 'အင်တာဗျူး', 'Ibarawe', 'Tambayar', NULL),
(236, 'mandatory', 'Mandatory', 'বাধ্যতামূলক', 'Obligatorio', 'إلزامي', 'अनिवार्य', 'لازمی', '强制性', '必須', 'Obrigatório', 'Обязательное', 'Obligatoire', '필수', 'Verpflichtend', 'Obbligatorio', 'จำเป็น', 'Kötelező', 'Verplicht', 'amet', 'Wajib', 'Zorunlu', 'Επιτακτικός', 'اجباری', 'Mandatori', 'తప్పనిసరి', 'கட்டாயமாகும்', 'ફરજિયાત', 'Obowiązkowy', 'Обовязковий', 'ਲਾਜ਼ਮੀ', 'Obligatoriu', 'အတင်းအကျပ်ဖြစ်သော', 'Dandan', 'M', NULL),
(237, 'optional', 'Optional', 'ঐচ্ছিক', 'Opcional', 'اختياري', 'ऐच्छिक', 'اختیاری', '可选的', 'オプション', 'Opcional', 'Необязательный', 'Optionnel', '선택 과목', 'Wahlweise', 'Opzionale', 'ไม่จำเป็น', 'Választható', 'facultatief', 'libitum', 'Pilihan', 'İsteğe bağlı', 'Προαιρετικός', 'اختیاری', 'Pilihan', 'ఐచ్ఛికము', 'விருப்ப', 'વૈકલ્પિક', 'Opcjonalny', 'Необовязково', 'ਵਿਕਲਪਿਕ', 'facultativ', 'optional', 'Aṣayan', 'Zabin', NULL),
(238, 'science', 'Science', 'বিজ্ঞান', 'Ciencia', 'علم', 'विज्ञान', 'سائنس', '科学', '科学', 'Ciência', 'Наука', 'Science', '과학', 'Wissenschaft', 'Scienza', 'วิทยาศาสตร์', 'Tudomány', 'Wetenschap', 'scientia', 'Ilmu', 'Bilim', 'Επιστήμη', 'علوم پایه', 'Sains', 'సైన్స్', 'அறிவியல்', 'વિજ્ઞાન', 'Nauka', 'Наука', 'ਵਿਗਿਆਨ', 'Ştiinţă', 'သိပ္ပံ', 'Imọ', 'Kimiyya', NULL),
(239, 'arts', 'Arts', 'কলা', 'Letras', 'فنون', 'कला', 'آرٹس', '艺术', '芸術', 'Artes', 'искусства', 'Arts', '기예', 'Kunst', 'Arts', 'ศิลปะ', 'Arts', 'Arts', 'artium', 'Seni', 'Sanat', 'Τέχνες', 'هنرها', 'Seni', 'ఆర్ట్స్', 'கலை', 'આર્ટસ', 'Sztuka', 'Мистецтво', 'ਆਰਟਸ', 'Arte', 'ဝိဇ္ဇာ', 'Ọgbọn', 'Arts', NULL),
(240, 'commerce', 'Commerce', 'বাণিজ্য', 'Comercio', 'تجارة', 'व्यापार', 'کامرس', '商业', 'コマース', 'Comércio', 'коммерция', 'Commerce', '상업', 'Handel', 'Commercio', 'พาณิชย์', 'kereskedelem', 'Handel', 'Commerce', 'Perdagangan', 'Ticaret', 'Εμπόριο', 'بازرگانی', 'Perdagangan', 'కామర్స్', 'வர்த்தக', 'વાણિજ્ય', 'Handel', 'Торгівля', 'ਵਣਜ', 'Comerţ', 'ရောင်းဝယ်ဖေါက်ကားခြင်း', 'Okoowo', 'Kasuwanci', NULL),
(241, 'saturday', 'Saturday', 'শনিবার', 'sábado', 'يوم السبت', 'शनिवार', 'ہفتہ', '星期六', '土曜日', 'sábado', 'суббота', 'samedi', '토요일', 'Samstag', 'Sabato', 'วันเสาร์', 'szombat', 'zaterdag', 'Saturni', 'Sabtu', 'Cumartesi', 'Σάββατο', 'شنبه', 'Sabtu', 'శనివారం', 'சனிக்கிழமை', 'શનિવાર', 'sobota', 'Субота', 'ਸ਼ਨੀਵਾਰ', 'sâmbătă', 'စနေနေ့', 'Ọjọ Satidee', 'Asabar', NULL),
(242, 'sunday', 'Sunday', 'রবিবার', 'domingo', 'الأحد', 'रविवार', 'اتوار', '星期日', '日曜日', 'domingo', 'Воскресенье', 'dimanche', '일요일', 'Sonntag', 'Domenica', 'วันอาทิตย์', 'vasárnap', 'zondag', 'Solis', 'Minggu', 'Pazar', 'Κυριακή', 'یکشنبه', 'Ahad', 'ఆదివారం', 'ஞாயிறு', 'રવિવાર', 'niedziela', 'Неділя', 'ਐਤਵਾਰ', 'duminică', 'တနင်္ဂနွေ', 'Sunday', 'Lahadi', NULL),
(243, 'monday', 'Monday', 'সোমবার', 'lunes', 'الإثنين', 'सोमवार', 'سوموار', '星期一', '月曜', 'Segunda-feira', 'понедельник', 'Lundi', '월요일', 'Montag', 'Lunedi', 'วันจันทร์', 'hétfő', 'maandag', 'dies Lunae', 'Senin', 'Pazartesi', 'Δευτέρα', 'دوشنبه', 'Isnin', 'సోమవారం', 'திங்கட்கிழமை', 'સોમવાર', 'poniedziałek', 'Понеділок', 'ਸੋਮਵਾਰ', 'luni', 'တနင်္လာနေ့', 'Awọn aarọ', 'Litinin', NULL),
(244, 'tuesday', 'Tuesday', 'মঙ্গলবার', 'martes', 'الثلاثاء', 'मंगलवार', 'منگل', '星期二', '火曜日', 'terça', 'вторник', 'Mardi', '화요일', 'Dienstag', 'martedì', 'วันอังคาร', 'kedd', 'dinsdag', 'Martis', 'Selasa', 'Salı', 'Τρίτη', 'سهشنبه', 'Selasa', 'మంగళవారం', 'செவ்வாய்க்கிழமை', 'મંગળવારે', 'wtorek', 'Вівторок', 'ਮੰਗਲਵਾਰ', 'marţi', 'အင်္ဂါနေ့', 'Ojoba', 'Talata', NULL),
(245, 'wednesday', 'Wednesday', 'বুধবার', 'miércoles', 'الأربعاء', 'बुधवार', 'بدھ', '星期三', '水曜日', 'Quarta-feira', 'среда', 'Mercredi', '수요일', 'Mittwoch', 'mercoledì', 'วันพุธ', 'szerda', 'woensdag', 'Mercurii', 'Rabu', 'Çarşamba', 'Τετάρτη', 'چهار شنبه', 'Rabu', 'బుధవారం', 'புதன்கிழமை', 'બુધવાર', 'środa', 'Середа', 'ਬੁੱਧਵਾਰ', 'miercuri', 'ဗုဒ္ဓဟူးနေ့', 'Ọjọrú', 'Laraba', NULL),
(246, 'thursday', 'Thursday', 'বৃহস্পতিবার', 'jueves', 'الخميس', 'गुरूवार', 'جمعرات', '星期四', '木曜日', 'Quinta-feira', 'Четверг', 'Jeudi', '목요일', 'Donnerstag', 'giovedi', 'วันพฤหัสบดี', 'csütörtök', 'donderdag', 'Iovis', 'Kamis', 'Perşembe', 'Πέμπτη', 'پنج شنبه', 'Khamis', 'గురువారం', 'வியாழக்கிழமை', 'ગુરુવાર', 'czwartek', 'Четвер', 'ਵੀਰਵਾਰ', 'joi', 'ကြာသပတေးနေ့', 'Ojobo', 'Alhamis', NULL),
(247, 'friday', 'Friday', 'শুক্রবার', 'viernes', 'يوم الجمعة', 'शुक्रवार', 'جمعہ', '星期五', '金曜日', 'Sexta-feira', 'пятница', 'Vendredi', '금요일', 'Freitag', 'Venerdì', 'วันศุกร์', 'péntek', 'vrijdag', 'Veneris', 'Jumat', 'Cuma', 'Παρασκευή', 'جمعه', 'Jumaat', 'శుక్రవారం', 'வெள்ளி', 'શુક્રવાર', 'piątek', 'Пятниця', 'ਸ਼ੁੱਕਰਵਾਰ', 'vineri', 'သောကြာနေ့', 'Ọjọ Ẹtì', 'Jummaa', NULL),
(248, 'january', 'January', 'জানুয়ারী', 'enero', 'كانون الثاني', 'जनवरी', 'جنوری', '一月', '1月', 'janeiro', 'январь', 'janvier', '일월', 'Januar', 'gennaio', 'มกราคม', 'január', 'januari-', 'Ianuarii', 'Januari', 'Ocak', 'Ιανουάριος', 'ژانویه', 'Januari', 'జనవరి', 'ஜனவரி', 'જાન્યુઆરી', 'styczeń', 'Січень', 'ਜਨਵਰੀ', 'ianuarie', 'ဇန္နဝါရီလ', 'Oṣù', 'Janairu', NULL),
(249, 'february', 'February', 'ফেব্রুয়ারি', 'febrero', 'شهر فبراير', 'फरवरी', 'فروری', '二月', '2月', 'fevereiro', 'февраль', 'février', '이월', 'Februar', 'febbraio', 'กุมภาพันธ์', 'február', 'februari', 'Februarius', 'Februari', 'Şubat', 'Φεβρουάριος', 'فوریه', 'Februari', 'ఫిబ్రవరి', 'பிப்ரவரி', 'ફેબ્રુઆરી', 'luty', 'Лютий', 'ਫਰਵਰੀ', 'februarie', 'ဖေဖေါ်ဝါရီလ', 'Kínní', 'Fabrairu', NULL),
(250, 'march', 'March', 'মার্চ', 'marzo', 'مارس', 'मार्च', 'مارچ', '游行', '行進', 'marcha', 'Март', 'Mars', '행진', 'März', 'marzo', 'มีนาคม', 'március', 'maart', 'Martii', 'Maret', 'Mart', 'Μάρτιος', 'مارس', 'Mac', 'మార్చి', 'மார்ச்', 'કુચ', 'Marsz', 'Березень', 'ਮਾਰਚ', 'Martie', 'မတ်လ', 'Oṣù', 'Maris', NULL),
(251, 'april', 'April', 'এপ্রিল', 'abril', 'أبريل', 'अप्रैल', 'اپریل', '四月', '4月', 'abril', 'апрель', 'avril', '4 월', 'April', 'aprile', 'เมษายน', 'április', 'april', 'Aprilis', 'April', 'Nisan', 'Απρίλιος', 'آوریل', 'April', 'ఏప్రిల్', 'ஏப்ரல்', 'એપ્રિલ', 'kwiecień', 'Квітень', 'ਅਪ੍ਰੈਲ', 'Aprilie', 'ဧပြီလ', 'Kẹrin', 'Afrilu', NULL),
(252, 'may', 'May', 'মে', 'Mayo', 'قد', 'मई', 'مئی', '可能', '5月', 'Pode', 'май', 'mai', '할 수있다', 'Kann', 'potrebbe', 'อาจ', 'Lehet', 'mei', 'May', 'Mungkin', 'Mayıs ayı', 'Ενδέχεται', 'ممکن است', 'Mungkin', 'మే', 'மே', 'મે', 'Może', 'Може', 'ਮਈ', 'Mai', 'မေ', 'Ṣe', 'Mayu', NULL),
(253, 'june', 'June', 'জুন', 'junio', 'يونيو', 'जून', 'جون', '六月', '六月', 'Junho', 'июнь', 'juin', '유월', 'Juni', 'giugno', 'มิถุนายน', 'június', 'juni-', 'June', 'Juni', 'Haziran', 'Ιούνιος', 'ژوئن', 'Jun', 'జూన్', 'ஜூன்', 'જૂન', 'czerwiec', 'Червень', 'ਜੂਨ', 'iunie', 'ဇွန်လ', 'Okudu', 'Yuni', NULL),
(254, 'july', 'July', 'জুলাই', 'julio', 'يوليو', 'जुलाई', 'جولائی', '七月', '7月', 'Julho', 'июль', 'juillet', '칠월', 'Juli', 'luglio', 'กรกฎาคม', 'július', 'juli-', 'Iulii', 'Juli', 'Temmuz', 'Ιούλιος', 'جولای', 'Julai', 'జూలై', 'ஜூலை', 'જુલાઈ', 'lipiec', 'Липень', 'ਜੁਲਾਈ', 'iulie', 'ဇူလိုင်လ', 'Keje', 'Yuli', NULL),
(255, 'august', 'August', 'অগাস্ট', 'agosto', 'أغسطس', 'अगस्त', 'اگست', '八月', '8月', 'agosto', 'августейший', 'août', '팔월', 'August', 'agosto', 'สิงหาคม', 'augusztus', 'augustus', 'August', 'Agustus', 'Ağustos', 'Αύγουστος', 'آگوست', 'Ogos', 'ఆగస్టు', 'ஆகஸ்ட்', 'ઓગસ્ટ', 'sierpień', 'Серпень', 'ਅਗਸਤ', 'August', 'သြဂုတ်လ', 'Oṣù Kẹjọ', 'Agusta', NULL),
(256, 'september', 'September', 'সেপ্টেম্বর', 'septiembre', 'سبتمبر', 'सितंबर', 'ستمبر', '九月', '9月', 'setembro', 'сентябрь', 'septembre', '구월', 'September', 'settembre', 'กันยายน', 'szeptember', 'september', 'September', 'September', 'Eylül', 'Σεπτέμβριος', 'سپتامبر', 'September', 'సెప్టెంబర్', 'செப்டம்பர்', 'સપ્ટેમ્બર', 'wrzesień', 'Вересень', 'ਸਿਤੰਬਰ', 'Septembrie', 'စက်တင်ဘာလ', 'Oṣu Kẹsan', 'Satumba', NULL),
(257, 'october', 'October', 'অক্টোবর', 'octubre', 'شهر اكتوبر', 'अक्टूबर', 'اکتوبر', '十月', '10月', 'Outubro', 'октября', 'octobre', '십월', 'Oktober', 'ottobre', 'ตุลาคม', 'október', 'oktober', 'Octobris', 'Oktober', 'Ekim', 'Οκτώβριος', 'اکتبر', 'Oktober', 'అక్టోబర్', 'அக்டோபர்', 'ઓક્ટોબર', 'październik', 'Жовтень', 'ਅਕਤੂਬਰ', 'octombrie', 'အောက်တိုဘာလ', 'Oṣu Kẹwa', 'Oktoba', NULL),
(258, 'november', 'November', 'নভেম্বর', 'noviembre', 'شهر نوفمبر', 'नवंबर', 'نومبر', '十一月', '11月', 'novembro', 'ноябрь', 'novembre', '십일월', 'November', 'novembre', 'พฤศจิกายน', 'november', 'november', 'November', 'November', 'Kasım', 'Νοέμβριος', 'نوامبر', 'November', 'నవంబర్', 'நவம்பர்', 'નવેમ્બર', 'listopad', 'Листопад', 'ਨਵੰਬਰ', 'noiembrie', 'နိုဝင်ဘာလ', 'Kọkànlá Oṣù', 'Nuwamba', NULL),
(259, 'december', 'December', 'ডিসেম্বর', 'diciembre', 'ديسمبر', 'दिसंबर', 'دسمبر', '十二月', '12月', 'dezembro', 'Декабрь', 'décembre', '12 월', 'Dezember', 'dicembre', 'ธันวาคม', 'december', 'december', 'December', 'Desember', 'Aralık', 'Δεκέμβριος', 'دسامبر', 'Disember', 'డిసెంబర్', 'டிசம்பர்', 'ડિસેમ્બર', 'grudzień', 'Грудень', 'ਦਸੰਬਰ', 'decembrie', 'ဒီဇင်ဘာလ', 'Oṣù Kejìlá', 'Disamba', NULL),
(260, 'boys', 'Boy', 'ছেলে', 'Chico', 'صبي', 'लड़का', 'لڑکا', '男孩', '男の子', 'Garoto', 'мальчик', 'Garçon', '소년', 'Junge', 'Ragazzo', 'เด็กผู้ชาย', 'Fiú', 'Jongen', 'Puer', 'Anak laki-laki', 'Oğlan', 'Αγόρι', 'پسر', 'Budak lelaki', 'బాయ్', 'சிறுவன்', 'બોય', 'Chłopak', 'Хлопчик', 'ਮੁੰਡਾ', 'Băiat', 'ယောက်ျားလေး', 'Ọmọkunrin', 'Yaro', NULL),
(261, 'girls', 'Girl', 'মেয়ে', 'Niña', 'فتاة', 'लड़की', 'لڑکی', '女孩', '女の子', 'Menina', 'девушка', 'Fille', '소녀', 'Mädchen', 'Ragazza', 'สาว', 'Lány', 'Meisje', 'puella', 'Gadis', 'Kız', 'Κορίτσι', 'دختر', 'Gadis', 'గర్ల్', 'பெண்', 'ગર્લ', 'Dziewczyna', 'Дівчина', 'ਕੁੜੀ', 'Fată', 'မိန်းကလေး', 'Ọdọmọbìnrin', 'Yarinya ', NULL),
(262, 'combine', 'Combine', 'যৌথ', 'Combinar', 'دمج', 'जोड़ना', 'یکجا', '结合', '結合する', 'Combinar', 'скомбинировать', 'Combiner', '콤바인', 'Kombinieren', 'combinare', 'รวมกัน', 'Kombájn', 'Combineren', 'miscere', 'Menggabungkan', 'birleştirmek', 'Συνδυασμός', 'ترکیب کردن', 'Gabung', 'మిళితం', 'இணைக்க', 'ભેગું કરો', 'Połączyć', 'Комбінувати', 'ਜੁੜੋ', 'Combina', 'ပေါင်းစပ်', 'Darapọ', 'Haɗa', NULL),
(263, 'ac', 'AC', 'এসি', 'C.A.', 'AC', 'एसी', 'AC', 'AC', '交流', 'AC', 'переменный ток', 'AC', '교류', 'Wechselstrom', 'AC', 'ไฟฟ้ากระแสสลับ', 'AC', 'AC', 'n:', 'AC', 'AC', 'ΜΕΤΑ ΧΡΙΣΤΟΝ', 'AC', 'AC', 'AC', 'ஏசி', 'એસી', 'AC', 'AC', 'AC', 'AC', 'AC အ', 'AC', 'AC', NULL),
(264, 'non_ac', 'Non AC', 'নন এসি', 'No AC', 'غير أس', 'गैर एसी', 'غیر AC', '非交流', '非AC', 'Não AC', 'Non AC', 'Pas ca', '비 AC', 'Nicht Wechselstrom', 'Non AC', 'ไม่ใช่ AC', 'Nem AC', 'Niet AC', 'non Passage', 'Non AC', 'AC olmayan', 'Μη AC', 'غیر AC', 'Bukan AC', 'నాన్ AC', 'அல்லாத ஏசி', 'બિન એસી', 'Bez klimatyzacji', 'Не AC', 'ਗੈਰ ਏਸੀ', 'Non AC', 'non AC အ', 'Ko si AC', 'Ba AC', NULL),
(265, 'male', 'Male', 'পুরুষ', 'Masculino', 'الذكر', 'नर', 'مرد', '男', '男性', 'Masculino', 'мужчина', 'Mâle', '남성', 'Männlich', 'Maschio', 'ชาย', 'Férfi', 'Mannetje', 'Masculum', 'Pria', 'Erkek', 'Αρσενικός', 'نر', 'Lelaki', 'మగ', 'ஆண்', 'પુરૂષ', 'Męski', 'Чоловік', 'ਮਰਦ', 'Masculin', 'အထီး', 'Okunrin', 'Namiji', NULL),
(266, 'female', 'Female', 'মহিলা', 'Hembra', 'إناثا', 'महिला', 'عورت', '女', '女性', 'Fêmea', 'женский', 'Femelle', '여자', 'Weiblich', 'Femmina', 'หญิง', 'Női', 'Vrouw', 'feminam', 'Wanita', 'Kadın', 'Θηλυκός', 'زن', 'Perempuan', 'మహిళ', 'பெண்', 'સ્ત્રી', 'Płeć żeńska', 'Жінка', 'ਔਰਤ', 'Femeie', 'အမြိုးသမီး', 'Obinrin', 'Mace', NULL),
(267, 'unpaid', 'Unpaid', 'অপরিশোধিত', 'No pagado', 'غير مدفوع', 'अवैतनिक', 'نام نہاد', '未付', '未払い', 'Não remunerado', 'неоплаченный', 'Non payé', '지불되지 않은', 'Unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'Kifizetetlen', 'onbetaald', 'insolutis', 'Tidak dibayar', 'ödenmemiş', 'Απλήρωτος', 'بدون پرداخت هزینه', 'Tidak dibayar', 'చెల్లించని', 'செலுத்தப்படாத', 'અવેતન', 'Nie zapłacony', 'Несплачені', 'ਅਵੇਤਨਕ', 'neplătit', 'မရတဲ့', 'Aisanwo', 'Ba a biya', NULL),
(268, 'partial', 'Partial', 'আংশিক', 'Parcial', 'جزئي', 'आंशिक', 'جزوی', '局部', '部分', 'Parcial', 'частичный', 'Partiel', '부분', 'Teilweise', 'Parziale', 'เป็นบางส่วน', 'Részleges', 'partieel', 'sive partiales', 'Sebagian', 'Kısmi', 'Μερικός', 'جزئي', 'Separa', 'పాక్షికం', 'பகுதி', 'આંશિક', 'Częściowy', 'Частково', 'ਅਧੂਰਾ', 'Parțial', 'တစိတ်တဒေသဖြစ်သော', 'Apa kan', 'M', NULL),
(269, 'father', 'Father', 'পিতা', 'Padre', 'الآب', 'पिता', 'باپ', '父亲', 'お父さん', 'Pai', 'Отец', 'Père', '아버지', 'Father', 'Padre', 'พ่อ', 'Apa', 'Vader', 'Pater', 'Ayah', 'baba', 'Πατέρας', 'پدر', 'Bapa', 'తండ్రి', 'அப்பா', 'પિતા', 'Ojciec', 'Батько', 'ਪਿਤਾ ਜੀ', 'Tată', 'ဖခင်', 'Baba', 'Uba', NULL),
(270, 'mother', 'Mother', 'মাতা', 'Madre', 'أم', 'मां', 'ماں', '母亲', '母', 'Mãe', 'Мама', 'Mère', '어머니', 'Mutter', 'Madre', 'แม่', 'Anya', 'Moeder', 'Mater', 'Ibu', 'anne', 'Μητέρα', 'مادر', 'Ibu', 'తల్లి', 'தாய்', 'મધર', 'Mama', 'Мама', 'ਮਾਤਾ ਜੀ', 'Mamă', 'မိခင်', 'Iya', 'Uwar', NULL),
(271, 'sister', 'Sister', 'বোন', 'Hermana', 'أخت', 'बहन', 'دیدی', '妹妹', 'シスター', 'Irmã', 'Сестра', 'sœur', '여자 형제', 'Schwester', 'Sorella', 'น้องสาว', 'lánytestvér', 'Zus', 'Soror', 'Saudara', 'Kız kardeş', 'Αδελφή', 'خواهر', 'Kakak', 'సోదరి', 'சகோதரி', 'બહેન', 'Siostra', 'Сестра', 'ਭੈਣ', 'soră', 'အစ်မ', 'Arabinrin', 'yaruwa', NULL),
(272, 'brother', 'Brother', 'ভাই', 'Hermano', 'شقيق', 'भाई', 'بھائی', '哥哥', '兄', 'Irmão', 'Брат', 'frère', '동료', 'Bruder', 'Fratello', 'พี่ชาย', 'fiú testvér', 'Broer', 'Frater', 'Saudara', 'Erkek kardeş', 'Αδελφός', 'برادر', 'adik', 'బ్రదర్', 'சகோதரன்', 'ભાઈ', 'Brat', 'Брат', 'ਭਰਾ', 'Frate', 'အစ်ကို', 'Arakunrin', 'ɗanuwana', NULL),
(273, 'uncle', 'Uncle', 'চাচা', 'Tío', 'اخو الام', 'चाचा', 'چاچا', '叔叔', '叔父', 'Tio', 'Дядя', 'Oncle', '삼촌', 'Onkel', 'Zio', 'ลุง', 'Nagybácsi', 'Oom', 'avunculus', 'Paman', 'Amca dayı', 'Θείος', 'دایی', 'Paman', 'అంకుల్', 'மாமா', 'અંકલ', 'Wujek', 'Дядько', 'ਅੰਕਲ', 'unchi', 'ဘကြီး', 'aburo', 'kawuna', NULL),
(274, 'maternal_uncle', 'Maternal Uncle', 'মামা', 'Tío materno', 'الخال', 'मा मा', 'ماموں', '舅', '母方の叔父', 'Tio materno', 'Дядя по матери', 'Oncle maternel', '임산부 삼촌', 'Onkel mütterlicherseits', 'Zio materno', 'คุณแม่ลุง', 'Anyai nagybátyja', 'Moeder oom', 'AVONCULUS', 'Paman ibu', 'Annelik Amca', 'Ο μητρικός θείος', 'دایی', 'Bapa saudara', 'మేనమామ', 'தாய் மாமா', 'માતૃત્વ અંકલ', 'Wujek od strony matki', 'Материнський дядько', 'ਮਾਵਾਂ ਦਾ ਅੰਕਲ', 'Unchiul matern', 'မိခင်ဦးလေး', 'obi aburo', 'Mahaifiyar uwa', NULL),
(275, 'other_relative', 'Other Relative', 'অন্যান্য আত্মীয়', 'Otro pariente', 'قريب اخر', 'अन्य रिश्तेदार', 'دوسرے رشتے دار', '其他亲属', 'その他の相対', 'Outro parente', 'Другой родственник', 'Autre Relatif', '다른 친척', 'Anderer Verwandter', 'Altro parente', 'ญาติอื่น ๆ', 'Másik rokon', 'Ander familielid', 'aliud Relativum', 'Relatif lainnya', 'Diğer akraba', 'Αλλος συγγενης', 'خویشاوند دیگر', 'Saudara lain', 'మరొక బంధువు', 'மற்ற உறவினர்', 'અન્ય સંબંધી', 'Inne względne', 'Інший родич', 'ਹੋਰ ਰਿਸ਼ਤੇਦਾਰ', 'Altă rudă', 'ဆွေမျိုးကတခြား', 'Ebi miiran', 'Wasu dangi', NULL),
(276, 'cash', 'Cash', 'নগদ', 'Efectivo', 'السيولة النقدية', 'कैश', 'نقد', '现金', '現金', 'Dinheiro', 'Денежные средства', 'En espèces', '현금', 'Kasse', 'Contanti', 'เงินสด', 'Készpénz', 'Contant geld', 'Cash', 'Kas', 'Nakit', 'Μετρητά', 'نقدی', 'Tunai', 'క్యాష్', 'பணம்', 'કેશ', 'Gotówka', 'Готівка', 'ਨਕਦ', 'Bani gheata', 'ငွေသား', 'Owo owo', 'tsabar kudi', NULL),
(277, 'cheque', 'Cheque', 'চেক', 'Comprobar', 'التحقق من', 'चेक', 'چیک کریں', '检查', 'チェック', 'Verifica', 'Проверить', 'Vérifier', '검사', 'Prüfen', 'Dai unocchiata', 'ตรวจสอบ', 'Jelölje be', 'Controleren', 'represserat', 'Memeriksa', 'Kontrol', 'Ελεγχος', 'بررسی', 'Semak', 'తనిఖీ', 'சரிபார்க்கவும்', 'તપાસો', 'Czek', 'Перевірте', 'ਚੈਕ', 'Verifica', 'စစ်ဆေးခြင်း', 'Ṣayẹwo', 'Duba', NULL),
(278, 'paypal', 'Paypal', 'পেপ্যাল', 'Paypal', 'باي بال', 'Paypal', 'پے پال', '贝宝', 'Paypal', 'Paypal', 'Paypal', 'Pay Pal', '페이팔', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Coin Paypal', 'Paypal', 'Paypal', 'Paypal', 'پی پال', 'Paypal', 'Paypal', 'பேபால்', 'પેપલ', 'Paypal', 'Paypal', 'ਪੇਪਾਲ', 'Paypal', 'paypal', 'PayPal', 'Paypal', NULL),
(279, 'stripe', 'Stripe', 'এস্ট্রিপ', 'Raya', 'شريط', 'पट्टी', 'پٹی', '条纹', 'ストライプ', 'Listra', 'нашивка', 'Bande', '줄무늬', 'Streifen', 'Banda', 'ริ้ว', 'Csík', 'Streep', 'clavo', 'Garis', 'Şerit', 'Ταινία', 'خط خطی', 'Stripe', 'గీత', 'கோடுகள்', 'ગેરુનો', 'Naszywka', 'Смуга', 'ਧੱਬਾ', 'Dunga', 'အစင်း', 'adikala', 'Stripe', NULL),
(280, 'payumoney', 'PayUMoney', 'পে ইউ মানি', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'પેયમની', 'PayUMoney', 'PayUMoney', 'ਪੈਰਾਮਮਨੀ', 'PayUMoney', 'PayUMoney', 'PayIMEMB', 'PayPony', NULL),
(281, 'clicktell', 'Clicktell', 'ক্লিকটেল', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', '클릭', 'Klicken', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'کلیک کنید', 'Clicktell', 'Clicktell', 'Clicktell', 'ક્લિકટેલ', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'TẹTẹ', 'Clicktell', NULL),
(282, 'twilio', 'Twilio', 'টুইলিও', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'ટ્વીલો', 'Twilio', 'Твіліо', 'ਟਵਿਲੀਓ', 'Twilio', 'Twilio', 'Twilio', 'Twilio', NULL),
(283, 'bulk', 'Bulk', 'বাল্ক', 'Abultar', 'حجم', 'थोक', 'بلک', '块', 'バルク', 'Massa', 'насыпной', 'masse', '대부분', 'Bulk', 'Massa', 'ขนาดใหญ่', 'tömeg', 'massa', 'mole', 'Jumlah besar', 'yığın', 'Ογκος', 'فله', 'Pukal', 'బల్క్', 'மொத்த', 'બલ્ક', 'Objętość', 'Масова частка', 'ਬਲਕ', 'masă', 'ထုထည်', 'olopobobo', 'Girma', NULL),
(284, 'msg91', 'MSG91', 'এমএসজি 91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', NULL),
(285, 'plivo', 'Plivo', 'প্লিবও', 'Plivo', 'Plivo', 'Plivo', 'پلیو', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Pliva', '플라 보', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Πλίβο', 'پلویو', 'Plivo', 'Plivo', 'Plivo', 'પ્લિવો', 'Plivo', 'Пліво', 'ਪਲਵਾ', 'Plivo', 'Plivo', 'Plivo', 'Plivo', NULL),
(286, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمه السر', 'पारण शब्द', 'پاس ورڈ', '密码', 'パスワード', 'Senha', 'пароль', 'Mot de passe', '암호', 'Passwort', 'Parola dordine', 'รหัสผ่าน', 'Jelszó', 'Wachtwoord', 'Password', 'Kata sandi', 'Parola', 'Κωδικός πρόσβασης', 'کلمه عبور', 'Kata laluan', 'పాస్వర్డ్', 'கடவுச்சொல்', 'પાસવર્ડ', 'Hasło', 'Пароль', 'ਪਾਸਵਰਡ', 'Parola', 'Password ကို', 'Ọrọigbaniwọle', 'Kalmar sirri', NULL),
(287, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'థీమ్ను నిర్వహించండి', 'தீம் நிர்வகி', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'အဓိကအကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Akori', 'Sarrafa Jigo', NULL),
(288, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'థీమ్ను నిర్వహించండి', 'தீம் நிர்வகி', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'အဓိကအကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Akori', 'Sarrafa Jigo', NULL),
(289, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা করুন', 'Administrar el lenguaje', 'إدارة اللغة', 'भाषा प्रबंधित करें', 'زبان کا نظم کریں', '管理语言', '言語の管理', 'Gerenciar Idioma', 'Управление языком', 'Gérer la langue', '언어 관리', 'Sprache verwalten', 'Gestisci la lingua', 'จัดการภาษา', 'A nyelv kezelése', 'Taal beheren', 'Lingua curo', 'Kelola Bahasa', 'Dili Yönet', 'Διαχείριση γλώσσας', 'مدیریت زبان', 'Uruskan Bahasa', 'భాషను నిర్వహించండి', 'மொழி நிர்வகி', 'ભાષા મેનેજ કરો', 'Zarządzaj językiem', 'Управління мовою', 'ਭਾਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați limba', 'ဘာသာစကားများကိုစီမံခန့်ခွဲ', 'Ṣakoso Ede', 'Sarrafa Harshe', NULL),
(290, 'manage_academic_year', 'Manage Academic Year', 'একাডেমিক বছর পরিচালনা করুন', 'Administrar el año académico', 'إدارة السنة الدراسية', 'अकादमिक वर्ष का प्रबंधन करें', 'تعلیمی سال کا نظم کریں', '管理学年', 'アカデミックイヤーを管理する', 'Gerenciar o Ano Acadêmico', 'Управление учебным годом', 'Gérer lannée académique', '학습 연도 관리', 'Akademisches Jahr verwalten', 'Gestisci lanno accademico', 'จัดการปีการศึกษา', 'Tanulmányi év kezelése', 'Academisch jaar beheren', 'Curo Academic Year', 'Mengelola Tahun Akademik', 'Akademik Yılı Yönet', 'Διαχειριστείτε το ακαδημαϊκό έτος', 'مدیریت سال تحصیلی', 'Urus Tahun Akademik', 'విద్యా సంవత్సరం నిర్వహించండి', 'கல்வி ஆண்டு நிர்வகி', 'શૈક્ષણિક વર્ષનું સંચાલન કરો', 'Zarządzaj Rokiem akademickim', 'Управління навчальним року', 'ਅਕਾਦਮਿਕ ਸਾਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați anul academic', 'ပညာရေးဆိုင်ရာတစ်နှစ်တာစီမံခန့်ခွဲရန်', 'Ṣakoso ọdun ẹkọ', 'Sarrafa Shekarar Kwalejin', NULL),
(291, 'manage_user', 'Manage User', 'ব্যবহারকারী পরিচালনা করুন', 'Administrar usuario', 'إدارة المستخدم', 'उपयोगकर्ता को प्रबंधित करें', 'صارف کا نظم کریں', '管理用户', 'ユーザーを管理する', 'Gerenciar Usuário', 'Управление пользователями', 'Manage User', '사용자 관리', 'Benutzer verwalten', 'Gestisci utente', 'จัดการผู้ใช้', 'Felhasználó kezelése', 'Beheer gebruiker', 'usorum regere', 'Kelola Pengguna', 'Kullanıcıyı Yönet', 'Διαχείριση χρήστη', 'مدیریت کاربر', 'Urus Pengguna', 'వినియోగదారుని నిర్వహించండి', 'பயனர் நிர்வகி', 'વપરાશકર્તાને મેનેજ કરો', 'Zarządzaj Użytkownikiem', 'Керувати користувачем', 'ਯੂਜ਼ਰ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați utilizatorul', 'အသုံးပြုသူကိုစီမံခန့်ခွဲ', 'Ṣakoso olumulo', 'Sarrafa Mai amfani', NULL),
(292, 'manage_designation', 'Manage Designation', 'পদবী পরিচালনা করুন', 'Administrar Designación', 'إدارة التعيين', 'पदनाम प्रबंधित करें', 'عہدہ کا انتظام کریں', '管理指定', '指定管理', 'Gerenciar Designação', 'Управление обозначением', 'Gérer la désignation', '지정 관리', 'Benennung verwalten', 'Gestire la designazione', 'จัดการการกำหนด', 'A kijelölés kezelése', 'Aanwijzing beheren', 'curo VOCABULUM', 'Kelola Penunjukan', 'Tanımlamayı Yönetin', 'Διαχείριση ονομασίας', 'مدیریت تعیین', 'Urus Jawatan', 'హోదాను నిర్వహించండి', 'நிர்வகித்தலை நிர்வகி', 'હોદ્દો મેનેજ કરો', 'Zarządzaj oznaczeniem', 'Керування позначенням', 'ਡਿਜ਼ਾਈਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați desemnarea', 'သတ်မှတ်ပေးထားခြင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Apẹrẹ', 'Sarrafa Zama', NULL),
(293, 'manage_employee', 'Manage Employee', 'কর্মচারী পরিচালনা করুন', 'Administrar Empleado', 'إدارة الموظف', 'कर्मचारी को प्रबंधित करें', 'ملازم کا انتظام کریں', '管理员工', '従業員を管理する', 'Gerenciar Empregado', 'Управление сотрудниками', 'Gérer lemployé', '직원 관리', 'Mitarbeiter verwalten', 'Gestisci dipendente', 'จัดการพนักงาน', 'Alkalmazottak kezelése', 'Beheer werknemer', 'Aliquam curo', 'Mengelola Karyawan', 'Çalışanı Yönet', 'Διαχειριστείτε τον υπάλληλο', 'مدیریت کارمند', 'Urus Pekerja', 'ఉద్యోగిని నిర్వహించండి', 'பணியாளரை நிர்வகி', 'કર્મચારીનું સંચાલન કરો', 'Zarządzaj pracownikiem', 'Управління працівником', 'ਕਰਮਚਾਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați angajatul', 'ထမ်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Abáni', 'Sarrafa Maaikata', NULL),
(294, 'manage_teacher', 'Manage Teacher', 'শিক্ষক পরিচালনা করুন', 'Administra al maestro', 'إدارة المعلم', 'शिक्षक का प्रबंधन करें', 'ٹیچر کا نظم کریں', '管理教师', '教師を管理する', 'Gerenciar professor', 'Управление учителем', 'Gérer lenseignant', '교사 관리', 'Lehrer verwalten', 'Gestisci insegnante', 'จัดการครู', 'Tanár kezelése', 'Beheer de docent', 'curo Teacher', 'Kelola Guru', 'Öğretmen Yönet', 'Διαχειριστείτε τον Δάσκαλο', 'مدیریت معلم', 'Menguruskan Guru', 'టీచర్ని నిర్వహించండి ', 'ஆசிரியர் நிர்வகி', 'શિક્ષકનું સંચાલન કરો', 'Zarządzaj nauczycielem', 'Управління вчителем', 'ਅਧਿਆਪਕ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați învățătorul', 'အရှင်ဘုရားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Olukọni', 'Sarrafa Malam', NULL),
(295, 'manage_class', 'Manage Class', 'ক্লাস পরিচালনা করুন', 'Administrar clase', 'إدارة الفئة', 'क्लास को प्रबंधित करें', 'کلاس کا نظم کریں', '管理班级', 'クラスを管理する', 'Gerenciar Classe', 'Управление классом', 'Gérer la classe', '수업 관리', 'Klasse verwalten', 'Gestisci classe', 'จัดการ Class', 'Osztály kezelése', 'Beheer klasse', 'curo Paleonemertea Class', 'Kelola Kelas', 'Sınıfı Yönet', 'Διαχείριση της κλάσης', 'مدیریت کلاس', 'Urus Kelas', 'క్లాస్ని నిర్వహించండి', 'வகுப்பை நிர்வகி', 'ક્લાસ મેનેજ કરો', 'Zarządzaj klasą', 'Управління класом', 'ਕਲਾਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați clasa', 'Class ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso Kilasi', 'Sarrafa Kundin', NULL),
(296, 'manage_section', 'Manage Section', 'শাখা পরিচালনা করুন', 'Administrar la Sección', 'إدارة القسم', 'अनुभाग प्रबंधित करें', 'سیکشن کا نظم کریں', '管理部分', 'セクションを管理する', 'Gerenciar Seção', 'Управление разделами', 'Gérer la section', '섹션 관리', 'Abschnitt verwalten', 'Gestisci sezione', 'จัดการส่วน', 'Szekció kezelése', 'Beheer sectie', 'curo sect', 'Kelola Bagian', 'Bölümü Yönet', 'Διαχείριση της ενότητας', 'مدیریت بخش', 'Urus Seksyen', 'విభాగం నిర్వహించండి', 'பிரிவு நிர்வகி', 'વિભાગ મેનેજ કરો', 'Zarządzaj sekcją', 'Управління розділом', 'ਸੈਕਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați secțiunea', 'ပုဒ်မစီမံခန့်ခွဲရန်', 'Ṣakoso Apakan', 'Sarrafa Sashe', NULL),
(297, 'manage_subject', 'Manage Subject', 'বিষয় পরিচালনা করুন', 'Administrar Asunto', 'إدارة الموضوع', 'विषय प्रबंधित करें', 'موضوع کا نظم کریں', '管理主题', '件名を管理する', 'Gerenciar Assunto', 'Управление предметами', 'Gérer le sujet', '주제 관리', 'Betreff verwalten', 'Gestisci soggetto', 'จัดการหัวเรื่อง', 'Subject kezelése', 'Beheer het onderwerp', 'curo Subject', 'Kelola Subjek', 'Konuyu Yönet', 'Διαχείριση θέματος', 'مدیریت موضوع', 'Uruskan Subjek', 'విషయాన్ని నిర్వహించండి', 'தலைப்பு நிர்வகி', 'વિષય સંચાલિત કરો', 'Zarządzaj tematem', 'Керувати темою', 'ਵਿਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați subiectul', 'အကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Koko-ọrọ', 'Sarrafa Takardar', NULL),
(298, 'manage_syllabus', 'Manage Syllabus', 'সিলেবাস পরিচালনা করুন', 'Administrar plan de estudios', 'إدارة المنهج', 'विषय प्रबंधित करें', 'Syllabus کو منظم کریں', '管理教学大纲', 'シラバスを管理する', 'Gerenciar o Syllabus', 'Управлять программой', 'Gérer le syllabus', '강의 계획서 관리', 'Syllabus verwalten', 'Gestisci il Sillabo', 'จัดการ Syllabus', 'A tanterv kezelése', 'Syllabus beheren', 'curo Syllabus', 'Mengelola Silabus', 'Ders Planını Yönet', 'Διαχείριση της διδακτέας ύλης', 'مدیریت برنامه درسی', 'Uruskan Sukatan pelajaran', 'సిలబస్ని నిర్వహించండి', 'பாடத்திட்டத்தை நிர்வகி', 'અભ્યાસક્રમ મેનેજ કરો', 'Zarządzaj programem Syllabus', 'Управління навчальним планом', 'ਸਿਲੇਬਸ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programa', 'သင်ရိုးမာတိကာများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Syllabus', 'Sarrafa Syllabus', NULL),
(299, 'manage_routine', 'Manage Routine', 'রূটিন পরিচালনা করুন', 'Administrar la rutina', 'إدارة الروتينية', 'नियमित रूप से प्रबंधित करें', 'روٹین کا نظم کریں', '管理例程', 'ルーチンを管理する', 'Gerenciar rotina', 'Управление регулярностью', 'Gérer les routines', '루틴 관리', 'Routine verwalten', 'Gestisci routine', 'จัดการประจำ', 'Rutinkezelés', 'Beheer routine', 'curo DEFUNCTORIUS', 'Kelola Rutin', 'Rutini Yönet', 'Διαχείριση της ρουτίνας', 'مدیریت معمول', 'Urus Rutin', 'రొటీన్ నిర్వహించండి', 'வழக்கமான நிர்வகி', 'નિયમિત રૂપે મેનેજ કરો', 'Zarządzaj procedurą', 'Управління звичайним', 'ਰੁਟੀਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rutina', 'ပုံမှန်စီမံခန့်ခွဲရန်', 'Ṣakoso Iṣakoso', 'Sarrafa Gyara', NULL),
(300, 'manage_guardian', 'Manage Guardian', 'অভিভাবক পরিচালনা করুন', 'Administrar Guardian', 'إدارة الجارديان', 'संरक्षक प्रबंधन करें', 'گارڈین کا انتظام کریں', '管理监护人', 'Guardianを管理する', 'Manage Guardian', 'Управление опекуном', 'Manage Guardian', 'Guardian 관리', 'Wächter verwalten', 'Gestisci il guardiano', 'จัดการ Guardian', 'Guardian kezelése', 'Beheer Guardian', 'curo Custodes', 'Mengelola wali', 'Koruyucuyu yönet', 'Διαχειριστείτε τον Κηδεμόνα', 'مدیریت نگهبان', 'Urus Guardian', 'గార్డియన్ను నిర్వహించండి', 'கார்டியன் நிர்வகி', 'ગાર્ડિયન મેનેજ કરો', 'Zarządzaj opiekunem', 'Управління охоронцем', 'ਗਾਰਡੀਅਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Gardianul', 'ဂါးဒီးယန်းသတင်းစာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iṣakoso', 'Sarrafa Guardian', NULL),
(301, 'manage_student', 'Manage Student', 'ছাত্র পরিচালনা করুন', 'Administrar estudiante', 'دارة الطالب', 'छात्र को प्रबंधित करें', 'طالب علم کا انتظام کریں', '管理学生', '学生を管理する', 'Gerenciar aluno', 'Управление Студентом', 'Gérer létudiant', '학생 관리', 'Schüler verwalten', 'Gestisci studente', 'จัดการนักเรียน', 'Diák kezelése', 'Beheer de student', 'Discipulus curo', 'Kelola Siswa', 'Öğrenciyi Yönet', 'Διαχείριση Φοιτητών', 'مدیریت دانش آموز', 'Uruskan Pelajar', 'విద్యార్థిని నిర్వహించండి', 'மாணவர் நிர்வகி', 'વિદ્યાર્થીનું સંચાલન કરો', 'Zarządzaj uczniem', 'Управління студентом', 'ਵਿਦਿਆਰਥੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați elevul', 'ကျောင်းသားစီမံခန့်ခွဲရန်', 'Ṣakoso awọn ọmọ-iwe', 'Sarrafa dalibi', NULL),
(302, 'manage_assignment', 'Manage Assignment', 'অ্যাসাইনমেন্ট পরিচালনা করুন', 'Administrar la asignación', 'إدارة التعيين', 'असाइनमेंट प्रबंधित करें', 'اہتمام کا نظم کریں', '管理作业', '割り当てを管理する', 'Gerenciar Atribuição', 'Управление назначением', 'Gérer laffectation', '배정 관리', 'Zuordnung verwalten', 'Gestire lincarico', 'จัดการการมอบหมาย', 'Hozzárendelés kezelése', 'Toewijzing beheren', 'curo adsignatione', 'Kelola Penugasan', 'Ödev Yönetimi', 'Διαχείριση της εκχώρησης', 'تخصیص مدیریت', 'Urus Tugasan', 'అప్పగింతని నిర్వహించండి', 'பணியை நிர்வகி', 'સોંપણીનું સંચાલન કરો', 'Zarządzaj przypisaniem', 'Управління завданням', 'ਨਿਰਧਾਰਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați asignarea', 'တာဝန်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn iṣẹ', 'Sarrafa Ayyukan', NULL),
(303, 'manage_grade', 'Manage Grade', 'গ্রেড পরিচালনা করুন', 'Administrar Grado', 'إدارة الصف', 'ग्रेड प्रबंधित करें', 'گریڈ کا انتظام کریں', '管理成绩', 'グレード管理', 'Gerenciar classificação', 'Управление классом', 'Gérer la note', '학년 관리', 'Klasse verwalten', 'Gestisci Grado', 'จัดการระดับ', 'Kezelje a fokozatot', 'Beheer Grade', 'curo Romani', 'Kelola Grade', 'Sınıfı Yönet', 'Διαχείριση βαθμού', 'مدیریت درجه', 'Urus Gred', 'గ్రేడ్ నిర్వహించండి', 'தரம் நிர்வகி', 'ગ્રેડ મેનેજ કરો', 'Zarządzaj oceną', 'Управління оцінкою', 'ਗਰੇਡ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați gradul', 'အဆင့်စီမံခန့်ခွဲရန်', 'Ṣakoso Iwọn', 'Sarrafa sauti', NULL),
(304, 'manage_exam_term', 'Manage Exam Term', 'পরীক্ষার টার্ম পরিচালনা করুন', 'Administrar el término del examen', 'إدارة مدة الامتحان', 'परीक्षा अवधि का प्रबंधन करें', 'امتحان کی اصطلاح کا انتظام کریں', '管理考试期限', '試験期間を管理する', 'Termo de gerenciamento de exames', 'Управление сроком рассмотрения', 'Gérer le terme dexamen', '시험 기간 관리', 'Prüfungsbedingung verwalten', 'Gestisci il termine dellesame', 'จัดการระยะสอบ', 'Vizsgaidőszak kezelése', 'Beheer examenperiode', 'Curo termino IV', 'Mengelola Ujian Term', 'Sınav Süresini Yönet', 'Διαχειριστείτε τον όρο εξέτασης', 'مدیریت دوره امتحان', 'Mengurus Terma Ujian', 'పరీక్షా టర్మ్ నిర్వహించండి', 'தேர்வு கால நிர்வகி', 'પરીક્ષા મુદતની વ્યવસ્થા કરો', 'Zarządzaj egzaminem', 'Управління терміном іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați termenul de examinare', 'စာမေးပွဲကာလစီမံခန့်ခွဲရန်', 'Ṣakoso akoko Aawo', 'Sarrafa Jarrabawa', NULL),
(305, 'manage_exam_schedule', 'Manage Exam Schedule', 'পরীক্ষার শিডিউল পরিচালনা করুন', 'Administrar el horario del examen', 'إدارة جدول الامتحانات', 'परीक्षा अनुसूची का प्रबंधन करें', 'امتحان شیڈول کا نظم کریں', '管理考试时间表', '試験スケジュールを管理する', 'Manejar o horário do Exame', 'Управление расписанием экзаменов', 'Gérer le calendrier des examens', '시험 일정 관리', 'Prüfungsablauf verwalten', 'Gestisci il calendario degli esami', 'จัดการกำหนดการสอบ', 'A vizsgaütemezés kezelése', 'Beheer examenschema', 'Curo Test Morbi rhoncus', 'Kelola Jadwal Ujian', 'Sınav Takvimini Yönet', 'Διαχειριστείτε το πρόγραμμα εξετάσεων', 'مدیریت برنامه امتحانات', 'Mengurus Jadual Peperiksaan', 'పరీక్షా షెడ్యూల్ నిర్వహించండి', 'தேர்வு அட்டவணை நிர்வகி', 'પરીક્ષાનું શેડ્યૂલ મેનેજ કરો', 'Zarządzaj harmonogramem egzaminu', 'Управління розкладом іспитів', 'ਪ੍ਰੀਖਿਆ ਅਨੁਸੂਚੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programul de examen', 'စီမံခန့်ခွဲရန်စာမေးပွဲအချိန်ဇယား', 'Ṣakoso Akadii Akadọ', 'Sarrafa Jirgin Nazarin', NULL),
(306, 'manage_suggestion', 'Manage Suggestion', 'সাজেশন পরিচালনা করুন', 'Administrar sugerencia', 'إدارة الاقتراح', 'सुझाव प्रबंधित करें', 'تجویز کا انتظام کریں', '管理建议', '提案を管理する', 'Gerenciar sugestão', 'Управление предложением', 'Gérer la suggestion', '제안 관리', 'Vorschläge verwalten', 'Gestire suggerimenti', 'จัดการคำแนะนำ', 'Javaslat kezelése', 'Suggestie beheren', 'curo Suggestion', 'Kelola Saran', 'Öneriyi Yönet', 'Διαχείριση της πρότασης', 'مدیریت پیشنهادی', 'Uruskan Cadangan', 'సూచన నిర్వహించండి', 'பரிந்துரை நிர்வகி', 'સૂચન મેનેજ કરો', 'Zarządzaj sugestią', 'Керувати пропозицією', 'ਸੁਝਾਅ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați sugestiile', 'အကြံပြုချက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ọrọ', 'Sarrafa Bayani', NULL),
(307, 'manage_exam_attendance', 'Manage Exam Attendance', 'পরীক্ষার উপস্থিতি পরিচালনা করুন', 'Administrar la asistencia al examen', 'إدارة امتحان الحضور', 'परीक्षा उपस्थिति का प्रबंधन करें', 'امتحان کی حاضری کا نظم کریں', '管理考试考勤', '試験出席を管理する', 'Gerenciar atendimento ao exame', 'Управление экзаменом', 'Gérer la présence aux examens', '시험 출석 관리', 'Prüfungsbesuch verwalten', 'Gestisci la frequenza degli esami', 'จัดการการเข้าร่วมการสอบ', 'Vizsgálati részvétel kezelése', 'Beheer examen aanwezigheid', 'Curo IV Attendance', 'Mengelola Kehadiran Ujian', 'Sınav Katılımını Yönet', 'Διαχείριση συμμετοχής στις εξετάσεις', 'مدیریت حضور در آزمون', 'Menguruskan Kehadiran Peperiksaan', 'పరీక్షా హాజరు నిర్వహించండి', 'தேர்வுப் பணிகளை நிர்வகி', 'પરીક્ષા એટેન્ડન્સ મેનેજ કરો', 'Zarządzaj uczestnictwem w egzaminie', 'Керування відвідуванням іспитів', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați participarea la examene', 'စာမေးပွဲတက်ရောက်စီမံခန့်ခွဲရန်', 'Ṣakoso akoko isinwo', 'Sarrafa Harkokin Binciken', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(308, 'manage_mark', 'Manage Mark', 'মার্ক পরিচালনা করুন', 'Administrar marca', 'إدارة مارك', 'मार्क को प्रबंधित करें', 'مارک کا نظم کریں', '管理标记', 'マークを管理する', 'Gerenciar marca', 'Управление меткой', 'Gérer la marque', '마크 관리', 'Mark verwalten', 'Gestisci Marco', 'จัดการ Mark', 'Mark kezelése', 'Beheer Mark', 'Mark curo', 'Kelola Mark', 'Markı Yönet', 'Διαχείριση σήματος', 'مدیریت علامت گذاری', 'Urus Mark', 'మార్క్ని నిర్వహించండి', 'மார்க் நிர்வகி', 'માર્ક મેનેજ કરો', 'Zarządzaj Markem', 'Керувати знаком', 'ਮਾਰਕ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați marca', 'မာကုကိုစီမံခန့်ခွဲ', 'Ṣakoso Samisi', 'Sarrafa Alama', NULL),
(309, 'manage_mark_sheet', 'Manage Mark Sheet', 'মার্ক শীট পরিচালনা করুন', 'Administrar la hoja de marca', 'إدارة علامة ورقة', 'मार्क शीट को प्रबंधित करें', 'مارک شیٹ کا انتظام کریں', '管理标记表', 'マークシートを管理する', 'Manage Mark Sheet', 'Управление меткой', 'Gérer la feuille de marque', '마크 시트 관리', 'Mark Sheet verwalten', 'Gestisci Mark Sheet', 'จัดการแผ่นมาร์ค', 'Márkajelzés kezelése', 'Markeringsblad beheren', 'Curo Mark Sheet', 'Kelola Lembar Mark', 'Marka Sayfasını Yönet', 'Διαχείριση φύλλου σημείων', 'مدیریت برگه علامت گذاری', 'Urus Mark Sheet', 'మార్క్ షీట్ని నిర్వహించండి', 'மார்க் தாளை நிர்வகி', 'માર્કશીટ મેનેજ કરો', 'Zarządzaj arkuszem markerów', 'Керування таблицею маркування', 'ਮਾਰਕ ਸ਼ੀਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați foaia de marcă', 'မာကုစာရွက်စီမံခန့်ခွဲရန်', 'Ṣakoso Ṣiṣisi Marisi', 'Sarrafa Takardar Market', NULL),
(310, 'manage_exam_result', 'Manage Exam Result', 'পরীক্ষার ফলাফল পরিচালনা করুন', 'Administrar el resultado del examen', 'إدارة نتيجة الامتحان', 'परीक्षा परिणाम प्रबंधित करें', 'امتحان کے نتائج کا نظم کریں', '管理考试结果', '試験結果を管理する', 'Gerenciar Resultado do Exame', 'Управлять результатом экзамена', 'Gérer le résultat dexamen', '시험 결과 관리', 'Prüfungsergebnis verwalten', 'Gestisci risultato esame', 'จัดการผลลัพธ์การสอบ', 'Vizsgálati eredmény kezelése', 'Beheer examenresultaat', 'Curo Test Result', 'Mengelola Hasil Ujian', 'Sınav Sonuçlarını Yönet', 'Διαχείριση Αποτέλεσμα Εξετάσεων', 'مدیریت نتیجه آزمون', 'Urus Keputusan Peperiksaan', 'పరీక్ష ఫలితం నిర్వహించండి', 'தேர்வு முடிவு நிர்வகி', 'પરીક્ષાનું પરિણામ મેનેજ કરો', 'Zarządzaj wynikami egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul examenului', 'စာမေးပွဲရလဒ်စီမံခန့်ခွဲရန်', 'Ṣakoso abajade abajade', 'Sarrafa sakamakon binciken', NULL),
(311, 'manage_promotion', 'Manage Promotion', 'পদোন্নতি পরিচালনা করুন', 'Administrar promoción', 'إدارة الترويج', 'पदोन्नति प्रबंधित करें', 'فروغ کا انتظام کریں', '管理推广', 'プロモーションの管理', 'Gerenciar Promoção', 'Управление продвижением', 'Gérer la promotion', '프로모션 관리', 'Werbung verwalten', 'Gestisci la promozione', 'จัดการโปรโมชัน', 'A promóció kezelése', 'Promotie beheren', 'curo Promotio', 'Kelola Promosi', 'Promosyonu Yönetin', 'Διαχείριση προώθησης', 'مدیریت تبلیغ', 'Uruskan Promosi', 'ప్రచారం నిర్వహించండి', 'விளம்பரத்தை நிர்வகி', 'પ્રમોશન મેનેજ કરો', 'Zarządzaj promocją', 'Керування просуванням', 'ਤਰੱਕੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați promovarea', 'မြှင့်တင်ရေးစီမံခန့်ခွဲရန်', 'Ṣakoso Ipolowo', 'Sarrafa gabatarwa', NULL),
(312, 'manage_book', 'Manage Book', 'বই পরিচালনা করুন', 'Administrar libro', 'إدارة الكتاب', 'पुस्तक को प्रबंधित करें', 'کتاب کا نظم کریں', '管理书籍', '書籍を管理する', 'Manage Book', 'Управление книгой', 'Gérer le livre', '도서 관리', 'Buch verwalten', 'Gestisci il libro', 'จัดการหนังสือ', 'Könyv kezelése', 'Beheer het boek', 'curo Books', 'Kelola Buku', 'Kitabı Yönet', 'Διαχείριση Βιβλίου', 'مدیریت کتاب', 'Urus Buku', 'బుక్ని నిర్వహించండి', 'புத்தகத்தை நிர்வகி', 'બુક મેનેજ કરો', 'Zarządzaj książką', 'Керувати книгою', 'ਬੁੱਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cartea', 'စာအုပ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Iwe', 'Sarrafa Littafin', NULL),
(313, 'manage_library_member', 'Manage Library Member', 'লাইব্রেরি সদস্য পরিচালনা করুন', 'Administrar miembro de la biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य को प्रबंधित करें', 'لائبریری اراکین کو منظم کریں', '管理图书馆成员', '図書館員を管理する', 'Gerenciar Membro da Biblioteca', 'Управление членом библиотеки', 'Gérer un membre de bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'จัดการสมาชิกห้องสมุด', 'A könyvtári tagok kezelése', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους μέλους βιβλιοθήκης', 'مدیریت عضو کتابخانه', 'Urus Ahli Perpustakaan', 'లైబ్రరీ సభ్యుడిని నిర్వహించండి', 'நூலக உறுப்பினர் நிர்வகி', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Керування членом бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați membrul bibliotecii', 'စာကြည့်တိုက်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ìkàwé Ẹgbẹ', 'Sarrafa Library Member', NULL),
(314, 'manage_issue_and_return', 'Manage Issue & Return', 'ইস্যু এবং রিটার্ন পরিচালনা করুন', 'Administrar problema y devolución', 'إدارة المشكلة والعودة', 'अंक और वापसी का प्रबंधन करें', 'مسئلہ اور واپسی کا انتظام کریں', '管理问题和退货', '問題とリターンを管理する', 'Gerenciar Problema e Retorno', 'Управление выпуском и возвратом', 'Gérer le problème et le retour', '문제 및 반환 관리', 'Problem und Rückgabe verwalten', 'Gestisci problema e ritorno', 'จัดการปัญหาและการส่งคืน', 'A kibocsátás és a visszatérés kezelése', 'Beheer kwestie en terugkeer', 'Curo Part et Redi', 'Kelola Masalah dan Kembali', 'Sayı ve İadeyi Yönetin', 'Διαχείριση της έκδοσης και της επιστροφής', 'مدیریت مسئله و بازگشت', 'Menguruskan Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్ని నిర్వహించండి', 'Issue & Return ஐ நிர்வகி', 'અંક અને રીટર્ન મેનેજ કરો', 'Zarządzaj problemem i zwrotem', 'Управління проблемою та поверненням', 'ਸਮੱਸਿਆ ਅਤੇ ਵਾਪਸੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați emisiunea și returnarea', 'စီမံခန့်ခွဲ Issue & ပြန်သွား', 'Ṣakoso oro & Pada', 'Sarrafa Fitawa & Komawa', NULL),
(315, 'manage_vehicle', 'Manage Vehicle', 'যানবাহন পরিচালনা করুন', 'Administrar vehículo', 'إدارة المركبات', 'वाहन को प्रबंधित करें', 'گاڑی کا نظم کریں', '管理车辆', '車両を管理する', 'Gerenciar veículo', 'Управление транспортным средством', 'Gérer le véhicule', '차량 관리', 'Fahrzeug verwalten', 'Gestisci veicolo', 'จัดการยานพาหนะ', 'Jármű kezelése', 'Beheer voertuig', 'curo vehiculum', 'Kelola Kendaraan', 'Aracı Yönet', 'Διαχειριστείτε το όχημα', 'مدیریت خودرو', 'Menguruskan Kenderaan', 'వాహనాన్ని నిర్వహించండి', 'வாகனத்தை நிர்வகி', 'વાહનનું સંચાલન કરો', 'Zarządzaj pojazdem', 'Управління транспортним засобом', 'ਵਾਹਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vehiculul', 'ယာဉ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso ọkọ', 'Sarrafa abin hawa', NULL),
(316, 'manage_route', 'Manage Route', 'রুট পরিচালনা করুন', 'Administrar ruta', 'إدارة الطريق', 'रूट प्रबंधित करें', 'روٹ کا نظم کریں', '管理路线', 'ルートを管理する', 'Gerencie a rota', 'Управление маршрутом', 'Gérer la route', '경로 관리', 'Route verwalten', 'Gestisci percorso', 'จัดการเส้นทาง', 'Útvonal kezelése', 'Beheer route', 'curo itineris', 'Kelola Rute', 'Güzergahı Yönet', 'Διαχείριση διαδρομής', 'مدیریت مسیر', 'Urus Laluan', 'మార్గాన్ని నిర్వహించండి', 'வழி நிர்வகி', 'રૂટનું સંચાલન કરો', 'Zarządzaj trasą', 'Керувати маршрутом', 'ਰੂਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați rută', 'လမ်းကြောင်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso Itọsọna', 'Sarrafa Hanya', NULL),
(317, 'manage_transport_member', 'Manage Transport Member', 'পরিবহন সদস্য পরিচালনা করুন', 'Administrar miembro de transporte', 'إدارة عضو النقل', 'परिवहन सदस्य को प्रबंधित करें', 'ٹرانسپورٹ اراکین کا انتظام کریں', '管理交通会员', '移送メンバーの管理', 'Gerenciar o Membro do Transporte', 'Управление транспортом', 'Manage Transport Member', '전송 구성원 관리', 'Transportmitglied verwalten', 'Gestisci membro di trasporto', 'จัดการสมาชิกการขนส่ง', 'A közlekedési képviselő kezelése', 'Beheer transportlid', 'Curo onerariam Member', 'Kelola Anggota Transport', 'Taşıyıcı Üyeyi Yönet', 'Διαχειριστείτε το μέλος μεταφοράς', 'مدیریت حمل و نقل', 'Urus Ahli Pengangkutan', 'రవాణా సభ్యునిని నిర్వహించండి', 'போக்குவரத்து உறுப்பினர் நிர்வகி', 'પરિવહન સભ્યને મેનેજ કરો', 'Zarządzaj członkiem transportu', 'Керувати членом транспорту', 'ਟਰਾਂਸਪੋਰਟ ਮੈਂਬਰ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați transportul membru', 'ပို့ဆောင်ရေးအဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ọkọ-ajo', 'Sarrafa Sanya Manyan', NULL),
(318, 'manage_hostel', 'Manage Hostel', 'ছাত্রাবাস পরিচালনা করুন', 'Administrar Hostel', 'إدارة نزل', 'होस्टल को प्रबंधित करें', 'ہالینڈ کا نظم کریں', '管理旅馆', 'ホステルを管理する', 'Manage Hostel', 'Управление хостелом', 'Gérer lauberge', '호스텔 관리', 'Hostel verwalten', 'Gestisci lostello', 'จัดการ Hostel', 'Kezelheti a Hostelet', 'Beheer Hostel', 'curo Hostel', 'Kelola Hostel', 'Pansiyon Yönet', 'Διαχειριστείτε τον ξενώνα', 'مدیریت خوابگاه', 'Urus Asrama', 'హాస్టల్ను నిర్వహించండి', 'Hostel நிர்வகி', 'છાત્રાલયનું સંચાલન કરો', 'Zarządzaj Hostelem', 'Управління хостел', 'ਹੋਸਟਲ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Pensiune', 'ဘော်ဒါဆောင်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn ile ayagbe', 'Sarrafa dakunan kwanan dalibai', NULL),
(319, 'manage_room', 'Manage Room', 'কক্ষ পরিচালনা করুন', 'Administrar habitación', 'إدارة الغرفة', 'कक्ष को प्रबंधित करें', 'کمرے کا نظم کریں', '管理室', '部屋を管理する', 'Manage Room', 'Управление комнатой', 'Gérer la pièce', '방 관리', 'Raum verwalten', 'Gestisci stanza', 'จัดการห้อง', 'A szoba kezelése', 'Beheer kamer', 'curo volutpat', 'Kelola Ruang', 'Oda Yönet', 'Διαχείριση δωματίου', 'مدیریت اتاق', 'Urus Bilik', 'గదిని నిర్వహించండి', 'அறை நிர்வகி', 'રૂમ મેનેજ કરો', 'Zarządzaj pokojem', 'Управління кімнатою', 'ਕਮਰਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați camera', 'အခန်းကိုစီမံခန့်ခွဲ', 'Ṣakoso yara', 'Sarrafa dakin', NULL),
(320, 'manage_hostel_member', 'Manage Hostel Member', 'ছাত্রাবাস  সদস্য পরিচালনা করুন', 'Manage Hostel Member', 'إدارة عضو في هوستيل', 'छात्रावास का सदस्य प्रबंधित करें', 'ہالینڈ کے رکن کا انتظام کریں', '管理旅馆会员', 'ホステルメンバーの管理', 'Manage Hostel Member', 'Управление хостелом', 'Gérer le membre dauberge', '호스텔 회원 관리', 'Hostel-Mitglied verwalten', 'Gestisci membro dellostello', 'จัดการสมาชิก Hostel', 'Kezelőtagok kezelése', 'Beheer Hostel Lid', 'Curo Member Hostel', 'Kelola anggota asrama', 'Yönetici Hostel Üyeliği', 'Διαχειριστείτε το μέλος του ξενώνα', 'مدیریت اشتراکی', 'Menguruskan Ahli Asrama', 'హాస్టల్ సభ్యునిని నిర్వహించండి', 'Hostel உறுப்பினர் நிர்வகி', 'છાત્રાલય સભ્યને મેનેજ કરો', 'Zarządzaj Hostelem', 'Керувати членом гуртом', 'ਹੋਸਟਲ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați un membru al căminului', 'ဘော်ဒါဆောင်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn ọmọ ẹgbẹ ile-ogun', 'Sarrafa Dakunan kwanan dalibai Member', NULL),
(321, 'manage_message', 'Manage Message', 'বার্তা পরিচালনা করুন', 'Administrar mensaje', 'إدارة الرسالة', 'संदेश प्रबंधित करें', 'پیغام کا نظم کریں', '管理消息', 'メッセージを管理する', 'Gerenciar Mensagem', 'Управление сообщением', 'Gérer le message', '메시지 관리', 'Nachricht verwalten', 'Gestisci il messaggio', 'จัดการข้อความ', 'Üzenet kezelése', 'Beheer bericht', 'curo Nuntius', 'Kelola pesan', 'İletiyi Yönet', 'Διαχείριση μηνυμάτων', 'مدیریت پیام', 'Uruskan Mesej', 'సందేశాన్ని నిర్వహించండి', 'செய்தியை நிர்வகிக்கவும்', 'સંદેશ મેનેજ કરો', 'Zarządzaj wiadomością', 'Управління повідомленням', 'ਸੁਨੇਹਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați mesajul', 'ကို Message များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ifiranṣẹ', 'Sarrafa Saƙo', NULL),
(322, 'manage_email', 'Manage Email', 'ইমেল পরিচালনা করুন', 'Administrar correo electrónico', 'إدارة البريد الإلكتروني', 'ईमेल प्रबंधित करें', 'ای میل کا انتظام کریں', '管理邮件', 'メールを管理する', 'Gerenciar Email', 'Управление электронной почтой', 'Gérer lemail', '이메일 관리', 'E-Mail verwalten', 'Gestisci email', 'จัดการอีเมล', 'E-mail kezelése', 'Beheer e-mail', 'curo Email', 'Kelola Email', 'E-postayı Yönet', 'Διαχείριση μηνυμάτων ηλεκτρονικού ταχυδρομείου', 'مدیریت ایمیل', 'Urus E-mel', 'ఇమెయిల్ను నిర్వహించండి', 'மின்னஞ்சல் நிர்வகி', 'ઇમેઇલ સંચાલિત કરો', 'Zarządzaj pocztą e-mail', 'Керувати електронною поштою', 'ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul', 'အီးမေးလ်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Imeeli', 'Sarrafa Imel', NULL),
(323, 'manage_sms', 'Manage SMS', 'এসএমএস পরিচালনা করুন', 'Administrar SMS', 'إدارة سمز', 'एसएमएस प्रबंधित करें', 'ایس ایم ایس کا نظم کریں', '管理短信', 'SMSの管理', 'Gerenciar SMS', 'Управление SMS', 'Gérer les SMS', 'SMS 관리', 'SMS verwalten', 'Gestisci SMS', 'จัดการ SMS', 'SMS kezelése', 'Beheer SMS', 'curo SMS', 'Kelola SMS', 'SMSi Yönet', 'Διαχείριση SMS', 'مدیریت اس ام اس', 'Uruskan SMS', 'SMS ను నిర్వహించండి', 'SMS ஐ நிர்வகி', 'એસએમએસ મેનેજ કરો', 'Zarządzaj SMS-em', 'Управління SMS', 'SMS ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați SMS-ul', 'SMS ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso SMS', 'Sarrafa SMS', NULL),
(324, 'manage_notice', 'Manage Notice', 'বিজ্ঞপ্তি পরিচালনা করুন', 'Administrar aviso', 'إدارة الإشعار', 'नोटिस प्रबंधित करें', 'نوٹس کا نظم کریں', '管理通知', '通知の管理', 'Gerenciar Aviso', 'Управление уведомлением', 'Gérer lavis', '공지 관리', 'Benachrichtigung verwalten', 'Gestisci avviso', 'จัดการประกาศ', 'Értesítés kezelése', 'Beheer Kennisgeving', 'curo Notitia', 'Mengelola Pemberitahuan', 'Bildirimi Yönet', 'Διαχειριστείτε την ειδοποίηση', 'مدیریت اطلاعیه', 'Urus Notis', 'నోటీసుని నిర్వహించండి', 'அறிவிப்பை நிர்வகி', 'નોટિસ મેનેજ કરો', 'Zarządzaj zawiadomieniem', 'Керувати повідомленням', 'ਨੋਟਿਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați notificarea', 'သတိပြုပါစီမံခန့်ခွဲရန်', 'Ṣakoso Akiyesi', 'Sarrafa sanarwa', NULL),
(325, 'manage_news', 'Manage News', 'সংবাদ পরিচালনা করুন', 'Administrar noticias', 'إدارة الأخبار', 'समाचार प्रबंधित करें', 'خبریں انتظام کریں', '管理新闻', 'ニュースを管理する', 'Gerenciar Notícias', 'Управление новостями', 'Gérer les actualités', '뉴스 관리', 'Nachrichten verwalten', 'Gestisci notizie', 'จัดการข่าวสาร', 'Hírek kezelése', 'Beheer nieuws', 'curo News', 'Kelola Berita', 'Haberleri Yönet', 'Διαχείριση ειδήσεων', 'مدیریت اخبار', 'Urus Berita', 'వార్తలను నిర్వహించండి', 'செய்திகள் நிர்வகி', 'સમાચાર મેનેજ કરો', 'Zarządzaj wiadomościami', 'Керувати новинами', 'ਖ਼ਬਰਾਂ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați știrile', 'သတင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Iroyin', 'Sarrafa labarai', NULL),
(326, 'manage_holiday', 'Manage Holiday', 'ছুটি পরিচালনা করুন', 'Administrar vacaciones', 'إدارة عطلة', 'छुट्टी का प्रबंधन करें', 'چھٹیوں کا نظم کریں', '管理假期', '休日を管理する', 'Gerenciar férias', 'Управление отдыхом', 'Gérer les vacances', '휴일 관리', 'Feiertage verwalten', 'Gestisci le vacanze', 'จัดการวันหยุด', 'Nyaralás kezelése', 'Vakantie beheren', 'curo Holiday', 'Kelola Liburan', 'Tatili Yönet', 'Διαχείριση Διακοπών', 'مدیریت تعطیلات', 'Urus Percutian', 'హాలిడే నిర్వహించండి', 'விடுமுறை நிர்வகி', 'હોલિડે મેનેજ કરો', 'Zarządzaj wakacjami', 'Управління відпочинком', 'ਹਾਲੀਆ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați sărbătorile', 'အားလပ်ရက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Isinmi', 'Sarrafa hutu', NULL),
(327, 'manage_event', 'Manage Event', 'ইভেন্ট পরিচালনা করুন', 'Administrar evento', 'إدارة الحدث', 'ईवेंट प्रबंधित करें', 'ایونٹ کا نظم کریں', '管理事件', 'イベントを管理する', 'Gerenciar Evento', 'Управление событием', 'Gérer lévénement', '이벤트 관리', 'Ereignis verwalten', 'Gestisci evento', 'จัดการกิจกรรม', 'Esemény kezelése', 'Beheer evenement', 'curo Vicis', 'Kelola Acara', 'Etkinliği Yönet', 'Διαχείριση του συμβάντος', 'مدیریت رویداد', 'Uruskan Acara', 'ఈవెంట్ను నిర్వహించండి', 'நிகழ்வு நிர்வகி', 'ઇવેન્ટ મેનેજ કરો', 'Zarządzaj wydarzeniem', 'Управління подією', 'ਇਵੈਂਟ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați evenimentul', 'Event ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ti oyan', 'Sarrafa Ayyukan', NULL),
(328, 'manage_visitor', 'Manage Visitor', 'আগন্তুক তথ্য পরিচালনা করুন', 'Administrar visitante', 'إدارة الزائر', 'विज़िटर को प्रबंधित करें', 'وزیٹر کا نظم کریں', '管理访问者', '訪問者を管理する', 'Gerenciar visitantes', 'Управление посетителем', 'Gérer le visiteur', '방문자 관리', 'Besucher verwalten', 'Gestisci visitatore', 'จัดการผู้เข้าชม', 'A látogató kezelése', 'Beheer bezoeker', 'curo Visitor', 'Kelola Pengunjung', 'Ziyaretçiyi Yönet', 'Διαχείριση επισκεπτών', 'مدیریت بازدید کننده', 'Urus Pelawat', 'సందర్శకులని నిర్వహించండి', 'பார்வையாளர் நிர்வகி', 'મુલાકાતીને મેનેજ કરો', 'Zarządzaj odwiedzającym', 'Керувати відвідувачем', 'ਵਿਜ਼ਿਟਰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vizitatorul', 'ဧည့်သည်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Alejo', 'Sarrafa baƙo', NULL),
(329, 'manage_fee_type', 'Manage Fee Type', 'ফি টাইপ পরিচালনা করুন', 'Administrar tipo de tarifa', 'إدارة نوع الرسوم', 'शुल्क प्रकार का प्रबंधन करें', 'فیس قسم کا انتظام کریں', '管理费用类型', '手数料タイプの管理', 'Gerenciar Tipo de Taxa', 'Управление платежом', 'Gérer le type de frais', '수수료 유형 관리', 'Gebührenart verwalten', 'Gestisci tipo di tariffa', 'จัดการประเภทค่าธรรมเนียม', 'Kezelési díj kezelése', 'Beheer Fee Type', 'Curo Save Type', 'Mengelola Jenis Biaya', 'Ücret Tipini Yönetin', 'Διαχείριση τύπου αμοιβής', 'مدیریت نوع هزینه', 'Urus Jenis Bayaran', 'ఫీజు రకం నిర్వహించండి', 'கட்டணம் வகை நிர்வகி', 'ફી પ્રકારનું સંચાલન કરો', 'Zarządzaj typem opłaty', 'Управління формами оплати', 'ਫੀਸ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de taxă', 'ကြေးအမျိုးအစားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn iru owo sisan', 'Sarrafa Nauin Farashin', NULL),
(330, 'manage_invoice', 'Manage Invoice', 'চালান পরিচালনা করুন', 'Administrar Factura', 'إدارة الفاتورة', 'चालान प्रबंधित करें', 'انوائس کا انتظام کریں', '管理发票', '請求書の管理', 'Gerenciar Fatura', 'Управление счетом', 'Gérer la facture', '송장 관리', 'Rechnung verwalten', 'Gestisci la fattura', 'จัดการใบแจ้งหนี้', 'Számla kezelése', 'Factuur beheren', 'curo cautionem', 'Kelola Faktur', 'Fatura Yönetimi', 'Διαχείριση τιμολογίου', 'مدیریت فاکتور', 'Urus Invois', 'వాయిస్ని నిర్వహించండి', 'விலைப்பட்டியல் நிர்வகி', 'ઇન્વૉઇસ મેનેજ કરો', 'Zarządzaj fakturą', 'Керувати рахунком-фактурою', 'ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura', 'ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo', 'Sarrafa daftari', NULL),
(331, 'manage_due_invoice', 'Manage Due Invoice', 'বাকি চালান পরিচালনা করুন', 'Administrar la factura adeudada', 'إدارة الفاتورة المستحقة', 'नियत चालान प्रबंधित करें', 'ذمہ داری انوائس کا نظم کریں', '管理到期发票', '支払請求の管理', '`Gerenciar a Fatura devida', 'Управление счет-фактурой', 'Gérer la facture due', '송장 처리', 'Fällige Rechnung verwalten', 'Gestire la dovuta fattura', 'จัดการใบแจ้งหนี้ที่ครบกำหนด', 'Betöltési számla kezelése', 'Beheer de verschuldigde factuur', 'Ob cautionem Curo', 'Kelola Tagihan Karena', 'Ödenen Fatura Yönetimi', 'Διαχείριση του οφειλόμενου τιμολογίου', 'مدیریت حساب فوری', 'Urus Invois yang Dikehendaki', 'వాయిస్ వాయిస్ని నిర్వహించండి', 'காரணமாக விலைப்பட்டியல் நிர்வகி', 'કારણે ભરતિયું મેનેજ કરો', 'Zarządzaj niezobowiązującą fakturą', 'Керувати належним рахунком-фактурою', 'ਬਾਹਰੀ ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura datorată', 'ကြောင့်ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo Ibẹrẹ', 'Sarrafa Ƙari Bayarwa', NULL),
(332, 'manage_expenditure_head', 'Manage Expenditure Head', 'ব্যয় হেড পরিচালনা করুন', 'Administrar Jefe de Gastos', 'إدارة النفقات رئيس', 'व्यय प्रमुख का प्रबंधन करें', 'اخراجات کا انتظام کریں', '管理支出主管', '支出頭を管理する', 'Gerenciar Cabeça de Despesas', 'Управление руководителем расходов', 'Gérer le chef des dépenses', '지출 헤드 관리', 'Ausgabenleiter verwalten', 'Gestisci il capo delle spese', 'จัดการหัวหน้าค่าใช้จ่าย', 'Kezelési költség kezelése', 'Beheer uitgavenhoofd', 'Curo capite sis crustum', 'Mengelola Kepala Biaya', 'Harcama Kafasını Yönet', 'Διαχείριση επικεφαλής δαπανών', 'مدیریت سر هزینه', 'Menguruskan Ketua Perbelanjaan', 'వ్యయ హెడ్ని నిర్వహించండి', 'செலவுத் தலைப்பை நிர்வகி', 'ખર્ચ હેડનું સંચાલન કરો', 'Zarządzaj głową wydatków', 'Управління витратами голови', 'ਖ਼ਰਚੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați șeful cheltuielilor', 'အသုံးစရိတ်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso ori oṣuwọn', 'Sarrafa Shugaban Kuɗi', NULL),
(333, 'manage_expenditure', 'Manage Expenditure', 'ব্যয় পরিচালনা করুন', 'Administrar el gasto', 'إدارة النفقات', 'व्यय प्रबंधित करें', 'اخراجات کا انتظام کریں', '管理支出', '支出の管理', 'Gerenciar Despesas', 'Управление расходами', 'Gérer les dépenses', '지출 관리', 'Ausgaben verwalten', 'Gestisci le spese', 'จัดการค่าใช้จ่าย', 'A kiadások kezelése', 'Uitgaven beheren', 'curo Custus', 'Mengelola Pengeluaran', 'Harcamaları Yönetin', 'Διαχείριση των δαπανών', 'مدیریت هزینه ها', 'Urus Perbelanjaan', 'వ్యయాలను నిర్వహించండి', 'செலவுகளை நிர்வகி', 'ખર્ચ મેનેજ કરો', 'Zarządzaj wydatkami', 'Управління витратами', 'ਖਰਚ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cheltuielile', 'အသုံးစရိတ်စီမံခန့်ခွဲရန်', 'Ṣakoso owo sisan', 'Sarrafa Kuɗi', NULL),
(334, 'manage_income_head', 'Manage Income Head', 'আয় হেড পরিচালনা করুন', 'Administrar cabeza de ingresos', 'إدارة رأس الدخل', 'आय हेड प्रबंधन करें', 'انکم سر کا انتظام کریں', '管理收入负责人', '所得管理をする', 'Gerencie o Chefe de Renda', 'Управление доходом', 'Gérer le revenu', '소득 헤드 관리', 'Einkommenskopf verwalten', 'Gestisci il reddito', 'จัดการหัวหน้ารายได้', 'A jövedelemfej kezelése', 'Beheer inkomstenstroom', 'Reditus in caput Curo', 'Mengelola Kepala Pendapatan', 'Gelir Kafasını Yönetin', 'Διαχείριση κεφαλής εισοδήματος', 'مدیریت درآمد سر', 'Urus Ketua Pendapatan', 'ఆదాయం హెడ్ని నిర్వహించండి', 'வருமானத் தலைப்பை நிர்வகி', 'ઇન્કમ હેડ મેનેજ કરો', 'Zarządzaj głową przychodów', 'Управління головою доходів', 'ਇਨਕਮ ਹੈਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați capul venitului', 'ဝင်ငွေခွန်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso Ori-ori Owo Oya', 'Sarrafa Shugaban Asusun', NULL),
(335, 'manage_income', 'Manage Income', 'আয় পরিচালনা করুন', 'Administrar ingresos', 'إدارة الدخل', 'आय प्रबंधित करें', 'آمدنی کا انتظام کریں', '管理收入', '収入を管理する', 'Gerar Renda', 'Управление доходом', 'Gérer le revenu', '소득 관리', 'Einkommen verwalten', 'Gestire il reddito', 'จัดการรายได้', 'Kezelje a jövedelmet', 'Beheer het inkomen', 'curo Reditus', 'Mengelola Penghasilan', 'Geliri Yönet', 'Διαχείριση εσόδων', 'مدیریت درآمد', 'Urus Pendapatan', 'ఆదాయాన్ని నిర్వహించండి', 'வருமானத்தை நிர்வகி', 'આવકનું સંચાલન કરો', 'Zarządzaj dochodem', 'Управління доходом', 'ਆਮਦਨੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Venitul', 'ဝင်ငွေခွန်များကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Owo-ori', 'Sarrafa samun kudin shiga', NULL),
(336, 'manage_leave_type', 'Manage Leave Type', 'ছুটির প্রকার পরিচালনা করুন', 'Gestionar tipo de licencia', 'إدارة نوع الإجازة', 'लीव टाइप मैनेज करें', 'چھٹی کی قسم کا انتظام کریں', '管理请假类型', '休暇タイプの管理', 'Gerenciar tipo de licença', 'Управление типом отпуска', 'Gérer le type de congé', '휴가 유형 관리', 'Urlaubstyp verwalten', 'Gestisci tipo di congedo', '', 'Kezelje a szabadság típusát', 'Beheer verloftype', 'Curo discede Type', 'Kelola Tipe Cuti', 'İzin Türünü Yönet', 'Διαχείριση τύπου άδειας', 'مدیریت نوع Type را مدیریت کنید', 'Urus Jenis Cuti', '', '', 'રજા પ્રકાર મેનેજ કરો', 'Zarządzaj typem urlopu', 'Керуйте типом відпустки', 'ਛੁੱਟੀ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de concediu', '', 'Ṣakoso Iru Firanṣẹ', 'Gudanar da nau\'in Hutu', NULL),
(337, 'manage_leave', 'Manage Leave', 'ছুটি পরিচালনা করুন', 'Gestionar licencia', 'إدارة الإجازة', 'अवकाश प्रबंधित करें', 'رخصت کا انتظام کریں', '管理休假', '休暇の管理', 'Gerenciar licença', 'Управление Отпуск', 'Gérer les congés', '휴가 관리', 'Urlaub verwalten', 'Gestisci congedo', '', 'Kezelje a szabadságot', 'Verlof beheren', 'curo discede', 'Kelola Cuti', 'İzni Yönet', 'Διαχείριση άδειας', 'مدیریت Leave', 'Urus Cuti', '', '', 'રજા મેનેજ કરો', 'Zarządzaj urlopem', 'Управління відпусткою', 'ਛੁੱਟੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionează concediul', '', 'Ṣakoso Fi silẹ', 'Sarrafa iznin', NULL),
(338, 'manage_leave_application', 'Manage Leave Application', 'ছুটির আবেদন পরিচালনা করুন', 'Administrar solicitud de licencia', 'إدارة طلب الإجازة', 'लीव एप्लिकेशन को प्रबंधित करें', 'رخصت کی درخواست کا انتظام کریں', '管理请假申请', '休暇申請の管理', 'Gerenciar licença de aplicação', 'Управление заявкой на выход', 'Gérer la demande de congé', '휴가 신청 관리', 'Urlaubsantrag verwalten', 'Gestisci lasciare l\'applicazione', '', 'Kezelje a Leave Application alkalmazást', 'Beheer verlofaanvraag', 'Curo discede Application', 'Kelola Aplikasi Cuti', 'İzin Başvurusunu Yönet', 'Διαχείριση αίτησης άδειας', 'برنامه ترک برنامه را مدیریت کنید', 'Urus Permohonan Cuti', '', '', 'રજા એપ્લિકેશન મેનેજ કરો', 'Zarządzaj urlopem', 'Управління відпусткою програми', 'ਲੀਵ ਐਪਲੀਕੇਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați cererea de concediu', '', 'Ṣakoso ohun elo Fi silẹ', 'Gudanar da Aikace-aikacen barin aiki', NULL),
(339, 'manage_approved_application', 'Manage Approved Application', 'অনুমোদিত অ্যাপ্লিকেশন পরিচালনা করুন', 'Gestionar solicitud aprobada', 'إدارة التطبيق المعتمد', 'स्वीकृत आवेदन का प्रबंधन करें', 'منظور شدہ درخواست کا نظم کریں', '管理批准的申请', '承認済みアプリケーションを管理', 'Gerenciar aplicativo aprovado', 'Управление утвержденной заявкой', 'Gérer la demande approuvée', '승인 된 응용 프로그램 관리', 'Genehmigte Anwendung verwalten', 'Gestisci applicazione approvata', '', 'A jóváhagyott alkalmazás kezelése', 'Goedgekeurde applicatie beheren', 'Curo probatus Application', 'Kelola Aplikasi yang Disetujui', 'Onaylı Uygulamayı Yönet', 'Διαχείριση εγκεκριμένης εφαρμογής', 'برنامه تأیید شده را مدیریت کنید', 'Urus Permohonan yang Diluluskan', '', '', 'માન્ય એપ્લિકેશનનું સંચાલન કરો', 'Zarządzaj zatwierdzoną aplikacją', 'Керуйте затвердженою програмою', 'ਮਨਜੂਰ ਐਪਲੀਕੇਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația aprobată', '', 'Ṣakoso ohun elo Ti a fọwọsi', 'Sarrafa aikace-aikacen da aka yarda', NULL),
(340, 'manage_decline_application', 'Manage Decline Application', 'অস্বীকার অ্যাপ্লিকেশন পরিচালনা করুন', 'Gestionar solicitud de rechazo', 'إدارة تطبيق رفض', 'Decline Application को Manage करें', 'رد درخواست کا انتظام کریں', '管理拒绝申请', '辞退申請の管理', 'Gerenciar Recusar Aplicativo', 'Управление отклонением заявки', 'Gérer l\'application refusée', '거절 신청 관리', 'Ablehnungsanwendung verwalten', 'Gestisci Rifiuta applicazione', '', 'Kezelje elutasítási kérelmet', 'Beheer weigeringstoepassing', 'Curo Application De Declinatione', 'Kelola Aplikasi Tolak', 'Reddetme Uygulamasını Yönet', 'Διαχείριση αίτησης απόρριψης', 'مدیریت برنامه کاهش را مدیریت کنید', 'Urus Tolak Permohonan', '', '', 'ઇનકાર એપ્લિકેશન મેનેજ કરો', 'Zarządzaj odrzuceniem aplikacji', 'Управління програмою відхилення', 'ਅਸਵੀਕਾਰ ਕਾਰਜ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația de declin', '', 'Ṣakoso elo Ohun elo idinku', 'Gudanar da Aikace-aikacen ƙi', NULL),
(341, 'manage_waiting_application', 'Manage Waiting Application', 'অপেক্ষার আবেদন পরিচালনা করুন', 'Gestionar solicitud de espera', 'إدارة تطبيق الانتظار', 'प्रतीक्षा आवेदन का प्रबंधन करें', 'انتظار کی درخواست کا نظم کریں', '管理等待中的申请', '待機中のアプリケーションを管理', 'Gerenciar aplicativo em espera', 'Управление ожидающим заявлением', 'Gérer l\'application en attente', '대기중인 응용 프로그램 관리', 'Wartende Anwendung verwalten', 'Gestisci l\'applicazione in attesa', '', 'Várakozó alkalmazás kezelése', 'Wachtende applicatie beheren', 'Curo Application Notes', 'Kelola Aplikasi yang Menunggu', 'Bekleme Uygulamasını Yönet', 'Διαχείριση εφαρμογής αναμονής', 'برنامه انتظار را مدیریت کنید', 'Uruskan Permohonan Menunggu', '', '', 'પ્રતીક્ષા એપ્લિકેશન મેનેજ કરો', 'Zarządzaj aplikacją oczekującą', 'Управління програмою очікування', 'ਉਡੀਕ ਕਾਰਜ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația în așteptare', '', 'Ṣakoso ohun elo Idaduro', 'Sarrafa aikace-aikacen jira', NULL),
(342, 'manage_email_setting', 'Manage Email Setting', 'ইমেল সেটিং পরিচালনা করুন', 'Administrar configuración de correo electrónico', 'إدارة إعداد البريد الإلكتروني', 'ईमेल सेटिंग प्रबंधित करें', 'ای میل کی ترتیب کا انتظام کریں', '管理电子邮件设置', 'メール設定の管理', 'Gerenciar configuração de email', 'Управление настройками электронной почты', 'Gérer les paramètres de messagerie', '이메일 설정 관리', 'E-Mail-Einstellungen verwalten', 'Gestisci impostazioni e-mail', '', 'Az e-mail beállítások kezelése', 'E-mailinstellingen beheren', 'Email Occasum Curo', 'Kelola Pengaturan Email', 'E-posta Ayarını Yönet', 'Διαχείριση ρύθμισης email', 'تنظیم تنظیم ایمیل', 'Urus Tetapan E-mel', '', '', 'ઇમેઇલ સેટિંગ મેનેજ કરો', 'Zarządzaj ustawieniami e-mail', 'Керування налаштуваннями електронної пошти', 'ਈਮੇਲ ਸੈਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați setarea prin e-mail', '', 'Ṣakoso eto Imeeli', 'Gudanar da Tsarin Imel', NULL),
(343, 'manage_email_template', 'Manage Email Template', 'ইমেল টেম্পলেট পরিচালনা করুন', 'Administrar plantilla de correo electrónico', 'إدارة قالب البريد الإلكتروني', 'ईमेल टेम्पलेट प्रबंधित करें', 'ای میل ٹیمپلیٹ کا نظم کریں', '管理电子邮件模板', 'メールテンプレートの管理', 'Gerenciar modelo de email', 'Управление шаблоном электронной почты', 'Gérer le modèle d\'e-mail', '이메일 템플릿 관리', 'E-Mail-Vorlage verwalten', 'Gestisci modello e-mail', '', 'Kezelje az e-mail sablont', 'E-mailsjabloon beheren', 'Formula Manage Email', 'Kelola Template Email', 'E-posta Şablonunu Yönet', 'Διαχείριση προτύπου ηλεκτρονικού ταχυδρομείου', 'مدیریت الگوی ایمیل', 'Urus Templat E-mel', '', '', 'ઇમેઇલ Templateાંચો મેનેજ કરો', 'Zarządzaj szablonem e-maila', 'Керуйте шаблоном електронної пошти', 'ਈਮੇਲ ਟੈਪਲੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați șablonul de e-mail', '', 'Ṣakoso Imeeli Awoṣe', 'Gudanar da Shafin imel', NULL),
(344, 'manage_sms_template', 'Manage SMS Template', 'এসএমএস টেম্পলেট পরিচালনা করুন', 'Administrar plantilla de SMS', 'إدارة قالب SMS', 'SMS टेम्पलेट प्रबंधित करें', 'ایس ایم ایس ٹیمپلیٹ کا نظم کریں', '管理短信模板', 'SMSテンプレートを管理', 'Gerenciar modelo de SMS', 'Управление шаблоном SMS', 'Gérer le modèle SMS', 'SMS 템플릿 관리', 'SMS-Vorlage verwalten', 'Gestisci modello SMS', '', 'Kezelje az SMS sablont', 'SMS-sjabloon beheren', 'Curo Formula SMS', 'Kelola Template SMS', 'SMS Şablonunu Yönet', 'Διαχείριση προτύπου SMS', 'مدیریت الگوی پیام کوتاه', 'Urus Templat SMS', '', '', 'એસએમએસ Templateાંચો મેનેજ કરો', 'Zarządzaj szablonem SMS', 'Управління шаблоном SMS', 'ਐਸਐਮਐਸ ਟੈਂਪਲੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați șablonul SMS', '', 'Ṣakoso SMS Awoṣe', 'Gudanar da Shafin SMS', NULL),
(345, 'manage_due_fee_email', 'Manage Due Fee Email', 'বাকি ফি ইমেল পরিচালনা করুন', 'Administrar correo electrónico de tarifa debida', 'إدارة البريد الإلكتروني لرسوم الاستحقاق', 'देय शुल्क ईमेल का प्रबंधन करें', 'واجب الادا ای میل کا نظم کریں', '管理到期费用电子邮件', '会費メールの管理', 'Gerenciar e-mail da taxa de vencimento', 'Управление электронной почтой', 'Gérer les e-mails dus', '납부 수수료 이메일 관리', 'E-Mail mit fälliger Gebühr verwalten', 'Gestisci e-mail dovuta', '', 'Kezelje esedékes e-mail címet', 'Beheer verschuldigde e-mail', 'Curo Ob pretium Email', 'Kelola Email Biaya Hutang', 'Ödenmesi Gereken Ücret E-postasını Yönet', 'Διαχείριση ηλεκτρονικού ταχυδρομείου οφειλόμενης προμήθειας', 'ایمیل پرداخت هزینه را مدیریت کنید', 'Urus E-mel Bayaran Hutang', '', '', 'ફી ફી ઇમેઇલ મેનેજ કરો', 'Zarządzaj e-mailem z należną opłatą', 'Управління належною комісією електронної пошти', 'ਬਕਾਇਆ ਫੀਸ ਈਮੇਲ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați e-mail-uri cu taxă', '', 'Ṣakoso Imeeli isanwo to Daju', 'Gudanar da Lalacewar Biyan Layi', NULL),
(346, 'manage_due_fee_sms', 'Manage Due Fee SMS', 'বাকি ফি এসএমএস পরিচালনা করুন', 'Administrar SMS de tarifa debida', 'إدارة رسوم الرسوم المستحقة', 'देय शुल्क एसएमएस का प्रबंधन करें', 'واجب الادا ایس ایم ایس کا نظم کریں', '管理应付费用短信', '会費SMSの管理', 'Gerenciar SMS de taxa devida', 'Управлять платным SMS', 'Gérer les SMS dus', '납부 수수료 SMS 관리', 'SMS mit fälliger Gebühr verwalten', 'Gestisci SMS a pagamento', '', 'Kezelje esedékes SMS-t', 'Beheer SMS met verschuldigde vergoeding', 'Curo Ob pretium SMS', 'Kelola SMS Biaya Jatuh Tempo', 'Ödenmesi Gereken SMS\'i Yönet', 'Διαχείριση SMS οφειλόμενης προμήθειας', 'پیام کوتاه هزینه پرداخت را مدیریت کنید', 'Urus SMS Bayaran Hutang', '', '', 'ફી ફી એસએમએસ મેનેજ કરો', 'Zarządzaj należnymi opłatami SMS', 'Управління SMS з належною комісією', 'ਬਕਾਇਆ ਫੀਸ ਐਸਐਮਐਸ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionarea SMS-urilor cu taxă', '', 'Ṣakoso Awọn idiyele Fee SMS', 'Gudanar da Sakamakon Ladi na SMS', NULL),
(347, 'manage_absent_email', 'Manage Absent Email', 'অনুপস্থিত ইমেল পরিচালনা করুন', 'Administrar correo electrónico ausente', 'إدارة البريد الإلكتروني الغائب', 'अनुपस्थित ईमेल का प्रबंधन करें', 'غیر حاضر ای میل کا نظم کریں', '管理缺席电子邮件', '不在メールを管理する', 'Gerenciar email ausente', 'Управление отсутствующей электронной почтой', 'Gérer les e-mails absents', '부재 이메일 관리', 'Abwesende E-Mails verwalten', 'Gestisci email assente', '', 'Kezeli a hiányzó e-maileket', 'Beheer afwezige e-mail', 'Curo abero Email', 'Kelola Email Yang Tidak Ada', 'Eksik E-postayı Yönet', 'Διαχείριση απουσίας email', 'ایمیل غیابی را مدیریت کنید', 'Urus E-mel Tidak Ada', '', '', 'ગેરહાજર ઇમેઇલ મેનેજ કરો', 'Zarządzaj nieobecnym adresem e-mail', 'Управління відсутнім електронною поштою', 'ਗੈਰਹਾਜ਼ਰ ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailuri absente', '', 'Ṣakoso Imeeli Imeeli', 'Gudanar da Wasikar Imel', NULL),
(348, 'manage_absent_sms', 'Manage Absent SMS', 'অনুপস্থিত এসএমএস পরিচালনা করুন', 'Administrar SMS ausentes', 'إدارة SMS الغائب', 'अनुपस्थित एसएमएस का प्रबंधन करें', 'غیر حاضر ایس ایم ایس کا نظم کریں', '管理缺席短信', '不在のSMSを管理する', 'Gerenciar SMS ausente', 'Управление отсутствующими СМС', 'Gérer les SMS absents', '부재중 SMS 관리', 'Abwesende SMS verwalten', 'Gestisci SMS assenti', '', 'Kezelje a hiányzó SMS-eket', 'Beheer afwezige sms', 'Curo abero SMS', 'Kelola SMS Absen', 'Yok SMS\'i Yönet', 'Διαχείριση απουσίας SMS', 'اس ام اس غایب را مدیریت کنید', 'Urus SMS Tidak Ada', '', '', 'ગેરહાજર એસએમએસ મેનેજ કરો', 'Zarządzaj nieobecnymi SMS-ami', 'Управління відсутніми SMS-повідомленнями', 'ਗੈਰਹਾਜ਼ਰ ਐਸ ਐਮ ਐਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați SMS-urile absente', '', 'Ṣakoso SMS asan', 'Sarrafa SMS ba ya nan', NULL),
(349, 'manage_sms_setting', 'Manage SMS Setting', 'এসএমএস সেটিং পরিচালনা করুন', 'Administrar configuración de SMS', 'إدارة إعداد SMS', 'SMS सेटिंग प्रबंधित करें', 'ایس ایم ایس کی ترتیب کا انتظام کریں', '管理短信设置', 'SMS設定の管理', 'Gerenciar configuração de SMS', 'Управление настройкой SMS', 'Gérer les paramètres SMS', 'SMS 설정 관리', 'SMS-Einstellungen verwalten', 'Gestisci impostazioni SMS', '', 'Kezelje az SMS beállításokat', 'Beheer SMS-instellingen', 'Occasum Curo SMS', 'Kelola Pengaturan SMS', 'SMS Ayarını Yönet', 'Διαχείριση ρύθμισης SMS', 'تنظیم پیام کوتاه را مدیریت کنید', 'Urus Tetapan SMS', '', '', 'એસએમએસ સેટિંગ મેનેજ કરો', 'Zarządzaj ustawieniami SMS', 'Керування налаштуваннями SMS', 'ਐਸਐਮਐਸ ਸੈਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionare setare SMS', '', 'Ṣakoso eto Eto SMS', 'Gudanar da Saita SMS', NULL),
(350, 'manage_result_email', 'Manage Result Email', 'ফলাফল ইমেল পরিচালনা করুন', 'Gestionar correo electrónico de resultados', 'إدارة البريد الإلكتروني للنتائج', 'परिणाम ईमेल प्रबंधित करें', 'نتیجہ ای میل کا انتظام کریں', '管理结果电子邮件', '結果メールの管理', 'Gerenciar email de resultado', 'Управление электронной почтой результатов', 'Gérer l\'e-mail des résultats', '결과 이메일 관리', 'Ergebnis-E-Mail verwalten', 'Gestisci email risultato', '', 'Kezelje az E-mail címet', 'Beheer resultaat-e-mail', 'Curo Ex Email', 'Kelola Email Hasil', 'Sonuç E-postasını Yönet', 'Διαχείριση email αποτελεσμάτων', 'مدیریت ایمیل نتیجه', 'Urus E-mel Keputusan', '', '', 'પરિણામ ઇમેઇલ મેનેજ કરો', 'Zarządzaj wynikami e-mail', 'Управління результатом електронної пошти', 'ਨਤੀਜਾ ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul rezultat', '', 'Ṣakoso Imeeli Esi', 'Gudanar da sakamakon Imel', NULL),
(351, 'manage_result_sms', 'Manage Result SMS', 'ফলাফল এসএমএস পরিচালনা করুন', 'Gestionar SMS de resultados', 'إدارة نتائج الرسائل القصيرة', 'परिणाम एसएमएस का प्रबंधन करें', 'نتیجہ ایس ایم ایس کا نظم کریں', '管理结果短信', '結果SMSを管理', 'Gerenciar SMS de resultado', 'Управление результатом SMS', 'Gérer les SMS de résultat', '결과 SMS 관리', 'Ergebnis-SMS verwalten', 'Gestisci SMS risultato', '', 'Kezelje az eredmény SMS-t', 'Beheer resultaat-sms', 'Curo Ex SMS', 'Kelola SMS Hasil', 'Sonuç SMS\'ini Yönet', 'Διαχείριση αποτελεσμάτων SMS', 'پیام کوتاه مدیریت کنید', 'Urus SMS Hasil', '', '', 'પરિણામ એસએમએસ મેનેજ કરો', 'Zarządzaj wynikami SMS', 'Управління результатом SMS', 'ਨਤੀਜਾ ਐਸਐਮਐਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatele SMS-urilor', '', 'Ṣakoso awọn Esi Esi', 'Gudanar da Sakamakon Sakamakon sakamako', NULL),
(352, 'manage_study_material', 'Manage Study Material', 'অধ্যয়নের উপাদান পরিচালনা করুন', 'Administrar material de estudio', 'إدارة المواد الدراسية', 'अध्ययन सामग्री का प्रबंधन करें', 'مطالعہ کے مواد کا نظم کریں', '管理学习资料', '学習資料の管理', 'Gerenciar material de estudo', 'Управление учебным материалом', 'Gérer le matériel d\'étude', '학습 자료 관리', 'Studienmaterial verwalten', 'Gestire il materiale di studio', '', 'Kezelje tananyag', 'Studiemateriaal beheren', 'Curo Study Material', 'Kelola Bahan Belajar', 'Çalışma Materyallerini Yönet', 'Διαχείριση Υλικού Μελέτης', 'مدیریت مطالب مطالعه', 'Menguruskan Bahan Kajian', '', '', 'અભ્યાસ સામગ્રીનું સંચાલન કરો', 'Zarządzaj materiałem do nauki', 'Управління навчальним матеріалом', 'ਅਧਿਐਨ ਸਮੱਗਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați materialul de studiu', '', 'Ṣakoso ohun elo Ikẹkọ', 'Gudanar da Abubuwan Nazari', NULL),
(353, 'manage_call_log', 'Manage Call Log', 'কল লগ পরিচালনা করুন', 'Administrar registro de llamadas', 'إدارة سجل المكالمات', 'कॉल लॉग प्रबंधित करें', 'کال لاگ کا انتظام کریں', '管理通话记录', '通話履歴の管理', 'Gerenciar registro de chamadas', 'Управление журналом вызовов', 'Gérer le journal des appels', '통화 기록 관리', 'Anrufliste verwalten', 'Gestisci registro chiamate', '', 'Kezelje a hívásnaplót', 'Beheer oproeplog', 'Curo Call Log', 'Kelola Log Panggilan', 'Çağrı Kaydını Yönet', 'Διαχείριση αρχείου καταγραφής κλήσεων', 'ورود به سیستم تماس را مدیریت کنید', 'Urus Log Panggilan', '', '', 'ક Callલ લ Manageગ મેનેજ કરો', 'Zarządzaj dziennikiem połączeń', 'Управління журналом викликів', 'ਕਾਲ ਲੌਗ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați jurnalul de apeluri', '', 'Ṣakoso Wọle Ipe', 'Gudanar da Kira log', NULL),
(354, 'manage_visitor_purpose', 'Manage Visitor Purpose', 'দর্শনার্থীর উদ্দেশ্য পরিচালনা করুন', 'Gestionar el propósito del visitante', 'إدارة الغرض من الزائر', 'आगंतुक उद्देश्य प्रबंधित करें', 'وزیٹر مقصد کا نظم کریں', '管理访客目的', '訪問者の目的を管理する', 'Gerenciar o objetivo do visitante', 'Управление целью посетителя', 'Gérer l\'objectif du visiteur', '방문자 관리 목적', 'Besucherzweck verwalten', 'Gestisci lo scopo del visitatore', '', 'Látogatói cél kezelése', 'Beheer bezoekersdoel', 'Curo Visitor Propositum', 'Kelola Tujuan Pengunjung', 'Ziyaretçi Amacını Yönet', 'Διαχείριση σκοπού επισκέπτη', 'هدف بازدید کننده را مدیریت کنید', 'Urus Tujuan Pelawat', '', '', 'વિઝિટર હેતુ મેનેજ કરો', 'Zarządzaj celem gościa', 'Управління метою відвідувачів', 'ਵਿਜ਼ਟਰ ਦੇ ਉਦੇਸ਼ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați scopul vizitatorului', '', 'Ṣakoso Idi Idi Alejo', 'Gudanar da Dalilin Baƙi', NULL),
(355, 'manage_postal_dispatch', 'Manage Postal Dispatch', 'ডাক প্রেরণ পরিচালনা করুন', 'Gestionar envío postal', 'إدارة الإرسال البريدي', 'पोस्टल डिस्पैच का प्रबंधन करें', 'پوسٹل ڈسپیچ کو منظم کریں', '管理邮政派遣', '郵便発送の管理', 'Gerenciar expedição postal', 'Управление почтовой рассылкой', 'Gérer l\'envoi postal', '우편 발송 관리', 'Postversand verwalten', 'Gestire la spedizione postale', '', 'Kezelje a postai feladást', 'Beheer postverzending', 'Curo Zip Expedite', 'Kelola Pengiriman Pos', 'Posta Dağıtımını Yönetme', 'Διαχείριση ταχυδρομικής αποστολής', 'مدیریت اعزام پستی', 'Urus Penghantaran Pos', '', '', 'પોસ્ટલ ડિસ્પેચ મેનેજ કરો', 'Zarządzaj wysyłką pocztową', 'Управління поштовим відправленням', 'ਡਾਕ ਭੇਜਣ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați expedierea poștală', '', 'Ṣakoso Dispatch ifiweranṣẹ', 'Gudanar da Sanarwar Haraji', NULL),
(356, 'manage_postal_receive', 'Manage Postal Receive', 'ডাক প্রাপ্তি পরিচালনা করুন', 'Administrar recepción postal', 'إدارة الاستلام البريدي', 'पोस्टल रिसीव करें', 'پوسٹل رسید کا انتظام کریں', '管理邮政收据', '郵便受取の管理', 'Gerenciar recebimento postal', 'Управление почтовым получением', 'Gérer la réception postale', '우편 수신 관리', 'Posteingang verwalten', 'Gestisci ricezione postale', '', 'Kezelje a Postai Fogadást', 'Beheer postontvangst', 'Curo Zip Accipite', 'Kelola Penerimaan Pos', 'Posta Alımını Yönet', 'Διαχείριση ταχυδρομικής λήψης', 'دریافت پستی را مدیریت کنید', 'Urus Terima Pos', '', '', 'ટપાલ પ્રાપ્ત કરવાનું મેનેજ કરો', 'Zarządzaj odbiorem pocztowym', 'Управління поштовою квитанцією', 'ਡਾਕ ਪ੍ਰਾਪਤੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați primirea poștală', '', 'Ṣakoso Gbigba ifiweranṣẹ', 'Gudanar da karɓar Adireshin', NULL),
(357, 'manage_student_type', 'Manage Student Type', 'ছাত্র প্রকার পরিচালনা করুন', 'Administrar tipo de estudiante', 'إدارة نوع الطالب', 'छात्र प्रकार का प्रबंधन करें', 'طلباء کی قسم کا نظم کریں', '管理学生类型', '学生タイプの管理', 'Gerenciar tipo de aluno', 'Управление типом студента', 'Gérer le type d\'élève', '학생 유형 관리', 'Schülertyp verwalten', 'Gestisci il tipo di studente', '', 'Kezelje a hallgatótípust', 'Leerlingtype beheren', 'Discipulus Curo Type', 'Kelola Jenis Siswa', 'Öğrenci Türünü Yönet', 'Διαχείριση τύπου μαθητή', 'نوع دانشجویی را مدیریت کنید', 'Urus Jenis Pelajar', '', '', 'વિદ્યાર્થી પ્રકાર મેનેજ કરો', 'Zarządzaj typem ucznia', 'Управління типом студента', 'ਵਿਦਿਆਰਥੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de student', '', 'Ṣakoso Iru Ọmọ-iwe', 'Sarrafa Nau\'in Dalibi', NULL),
(358, 'manage_bulk_admission', 'Manage Bulk Admission', 'বাল্ক ভর্তি পরিচালনা করুন', 'Administrar la admisión masiva', 'إدارة القبول الجماعي', 'थोक प्रवेश का प्रबंधन करें', 'بلک داخلہ کا انتظام کریں', '管理批量入场', '一括受付を管理する', 'Gerenciar admissão em massa', 'Управление массовым приемом', 'Gérer l\'admission en masse', '대량 입학 관리', 'Masseneintritt verwalten', 'Gestisci ammissione in blocco', '', 'Kezelje a tömeges belépést', 'Beheer bulktoegang', 'Curo mole Praesent', 'Kelola Penerimaan Massal', 'Toplu Kabulü Yönetme', 'Διαχείριση μαζικής εισαγωγής', 'مدیریت پذیرش انبوه', 'Urus Kemasukan Pukal', '', '', 'બલ્ક પ્રવેશનું સંચાલન કરો', 'Zarządzaj wstępem masowym', 'Управління масовим доступом', 'ਬਲਕ ਦਾਖਲੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați admiterea în vrac', '', 'Ṣakoso Gbigba Gbigba', 'Gudanar da Izinin shigowa', NULL),
(359, 'manage_online_admission', 'Manage Online Admission', 'অনলাইন ভর্তি পরিচালনা করুন', 'Administrar la admisión en línea', 'إدارة القبول عبر الإنترنت', 'ऑनलाइन एडमिशन का प्रबंध करें', 'آن لائن داخلے کا انتظام کریں', '管理在线入学', 'オンライン入場を管理する', 'Gerenciar Admissão Online', 'Управление онлайн-входом', 'Gérer l\'admission en ligne', '온라인 입학 관리', 'Online-Zulassung verwalten', 'Gestisci l\'ammissione online', '', 'Kezelje az online belépést', 'Beheer online toegang', 'Curo Online De admissione', 'Kelola Penerimaan Online', 'Çevrimiçi Kabulü Yönet', 'Διαχείριση διαδικτυακής εισαγωγής', 'پذیرش آنلاین را مدیریت کنید', 'Urus Kemasukan Dalam Talian', '', '', 'ઓનલાઇન પ્રવેશ મેનેજ કરો', 'Zarządzaj wstępem online', 'Управління вступом в Інтернет', 'Adਨਲਾਈਨ ਦਾਖਲੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați admiterea online', '', 'Ṣakoso Gbigbawọle Ayelujara', 'Gudanar da Izinin shiga Yanar gizo', NULL),
(360, 'manage_library_member', 'Manage Library Member', 'গ্রন্থাগার সদস্য পরিচালনা করুন', 'Administrar miembro de biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य प्रबंधित करें', 'لائبریری ممبر کا نظم کریں', '管理图书馆会员', 'ライブラリメンバーの管理', 'Gerenciar membro da biblioteca', 'Управление членом библиотеки', 'Gérer un membre de la bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', '', 'Kezelje a könyvtártagot', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους βιβλιοθήκης', 'عضو کتابخانه را مدیریت کنید', 'Urus Ahli Perpustakaan', '', '', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Управління учасником бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਸਦੱਸ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați membrul bibliotecii', '', 'Ṣakoso Ẹgbẹ Ile-ikawe', 'Gudanar da Member Library', NULL),
(361, 'manage_merit_list', 'Manage Merit List', 'মেধা তালিকা পরিচালনা করুন', 'Gestionar lista de méritos', 'إدارة قائمة الجدارة', 'मेरिट लिस्ट को मैनेज करें', 'میرٹ لسٹ کا نظم کریں', '管理功绩清单', 'メリットリストの管理', 'Gerenciar lista de mérito', 'Управление списком заслуг', 'Gérer la liste de mérite', '장점 목록 관리', 'Verdienstliste verwalten', 'Gestisci elenco di merito', '', 'Kezelje az érdemlistát', 'Beheer verdienstenlijst', 'Curo quod mereri List', 'Kelola Daftar Jasa', 'Başarı Listesini Yönet', 'Διαχείριση λίστας αξιών', 'مدیریت لیست شایستگی', 'Urus Senarai Nilai', '', '', 'મેરિટ સૂચિ મેનેજ કરો', 'Zarządzaj listą zasług', 'Управління списком заслуг', 'ਗੁਣ ਸੂਚੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați lista de merite', '', 'Ṣakoso akojọ Akojọ', 'Gudanar da Jerin Lissafi', NULL),
(362, 'manage_result_card', 'Manage Result Card', 'ফলাফল কার্ড পরিচালনা করুন', 'Administrar tarjeta de resultados', 'إدارة بطاقة النتيجة', 'परिणाम कार्ड प्रबंधित करें', 'نتیجہ کارڈ کا نظم کریں', '管理结果卡', '結果カードの管理', 'Gerenciar cartão de resultados', 'Управление картой результатов', 'Gérer la carte des résultats', '결과 카드 관리', 'Ergebniskarte verwalten', 'Gestisci scheda risultati', '', 'Kezelje az eredménykártyát', 'Resultaatkaart beheren', 'Result Card Manage', 'Kelola Kartu Hasil', 'Sonuç Kartını Yönet', 'Διαχείριση κάρτας αποτελεσμάτων', 'مدیریت کارت نتیجه', 'Urus Kad Hasil', '', '', 'પરિણામ કાર્ડ મેનેજ કરો', 'Zarządzaj kartą wyników', 'Управління карткою результатів', 'ਨਤੀਜਾ ਕਾਰਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cardul de rezultate', '', 'Ṣakoso kaadi Esi', 'Gudanar da Sakamakon Sakamako', NULL),
(363, 'manage_exam_term_result', 'Manage Exam Term Result', 'পরীক্ষার টার্ম রেজাল্ট পরিচালনা করুন', 'Gestionar resultado del examen', 'إدارة نتيجة مصطلح الامتحان', 'परीक्षा परिणाम का प्रबंधन करें', 'امتحان کی مدت کے نتائج کا نظم کریں', '管理考试学期成绩', '試験期間結果の管理', 'Gerenciar o Resultado do Termo do Exame', 'Управление экзаменом Срок Результат', 'Gérer les résultats des examens', '시험 기간 결과 관리', 'Ergebnis des Prüfungszeitraums verwalten', 'Gestisci risultato termine esame', '', 'Kezelje a vizsgaidő eredményét', 'Examentermijnresultaat beheren', 'Curo termino Test Result', 'Kelola Hasil Jangka Ujian', 'Sınav Dönemi Sonucunu Yönet', 'Διαχείριση αποτελεσμάτων όρων εξετάσεων', 'نتیجه آزمون آزمون را مدیریت کنید', 'Uruskan Keputusan Jangka Masa Peperiksaan', '', '', 'પરીક્ષાનું ટર્મ પરિણામ મેનેજ કરો', 'Zarządzaj wynikiem semestru egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦੇ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul termenului examenului', '', 'Ṣakoso esi Akoko Idanwo', 'Gudanar da Sakamakon Gwajin gwaji', NULL),
(364, 'manage_exam_final_result', 'Manage Exam Final Result', 'পরীক্ষার চূড়ান্ত ফলাফল পরিচালনা করুন', 'Gestionar resultado final del examen', 'إدارة النتيجة النهائية للامتحان', 'परीक्षा का अंतिम परिणाम प्रबंधित करें', 'امتحان کے آخری نتائج کا نظم کریں', '管理考试最终结果', '試験の最終結果を管理する', 'Gerenciar o resultado final do exame', 'Управляйте окончательным результатом экзамена', 'Gérer le résultat final de l\'examen', '시험 최종 결과 관리', 'Endergebnis der Prüfung verwalten', 'Gestisci il risultato finale dell\'esame', '', 'Kezelje a vizsga végleges eredményét', 'Eindresultaat van examen beheren', 'Curo IV captorum eventus superae', 'Kelola Hasil Akhir Ujian', 'Sınav Son Sonucunu Yönet', 'Διαχείριση τελικού αποτελέσματος εξετάσεων', 'نتیجه نهایی آزمون را مدیریت کنید', 'Uruskan Keputusan Akhir Peperiksaan', '', '', 'પરીક્ષાનું અંતિમ પરિણામ મેનેજ કરો', 'Zarządzaj końcowym wynikiem egzaminu', 'Управління кінцевим результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਦੇ ਅੰਤਮ ਨਤੀਜੇ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați rezultatul final al examenului', '', 'Ṣakoso Esi Ikẹhin Idanwo', 'Gudanar da Sakamakon Gwaji na Karshe', NULL),
(365, 'manage_all_result_card', 'Manage All Result Card', 'সমস্ত ফলাফল কার্ড পরিচালনা করুন', 'Administrar toda la tarjeta de resultados', 'إدارة جميع بطاقة النتائج', 'सभी परिणाम कार्ड प्रबंधित करें', 'تمام نتائج کارڈ کا نظم کریں', '管理所有结果卡', 'すべての結果カードを管理', 'Gerenciar cartão de todos os resultados', 'Управление всеми картами результатов', 'Gérer toutes les cartes de résultats', '모든 결과 카드 관리', 'Alle Ergebniskarten verwalten', 'Gestisci tutta la scheda risultato', '', 'Kezelje az összes eredménykártyát', 'Beheer alle resultatenkaart', 'Curo Omnia Ex Card', 'Kelola Semua Kartu Hasil', 'Tüm Sonuç Kartını Yönet', 'Διαχείριση όλων των καρτών αποτελεσμάτων', 'تمام کارت نتیجه را مدیریت کنید', 'Urus Semua Keputusan Kad', '', '', 'બધા પરિણામ કાર્ડ મેનેજ કરો', 'Zarządzaj wszystkimi kartami wyników', 'Керуйте усіма картками результатів', 'ਸਾਰੇ ਨਤੀਜੇ ਕਾਰਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați toate cardurile de rezultate', '', 'Ṣakoso Gbogbo Kaadi Esi', 'Sarrafa Duk Sakamakon sakamako', NULL),
(366, 'manage_complain_type', 'Manage Complain Type', 'অভিযোগের ধরণ পরিচালনা করুন', 'Gestionar tipo de queja', 'إدارة نوع الشكوى', 'शिकायत प्रकार प्रबंधित करें', 'شکایت کی قسم کا نظم کریں', '管理投诉类型', '苦情タイプの管理', 'Gerenciar tipo de reclamação', 'Управление типом жалобы', 'Gérer le type de plainte', '불만 유형 관리', 'Beschwerde-Typ verwalten', 'Gestisci il tipo di reclamo', '', 'Kezelje a panasz típusát', 'Klachttype beheren', 'Queri administrare Type', 'Kelola Jenis Keluhan', 'Şikayet Türünü Yönet', 'Διαχείριση τύπου παραπόνου', 'مدیریت نوع شکایت', 'Urus Jenis Aduan', '', '', 'ફરિયાદ પ્રકાર મેનેજ કરો', 'Zarządzaj typem skargi', 'Керуйте типом скарги', 'ਸ਼ਿਕਾਇਤ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați tipul de reclamație', '', 'Ṣakoso Iru Complain', 'Gudanar da Nau\'in Kira', NULL),
(367, 'manage_complain', 'Manage Complain', 'অভিযোগ পরিচালনা করুন', 'Gestionar Quejarse', 'إدارة الشكوى', 'शिकायत का प्रबंधन करें', 'شکایت کا انتظام کریں', '管理投诉', '苦情を管理する', 'Gerenciar Reclamação', 'Управление Пожаловаться', 'Gérer les plaintes', '불만 관리', 'Beschwerde verwalten', 'Gestisci Reclami', '', 'Kezelje Panasz', 'Klacht beheren', 'Queri administrare', 'Kelola Keluhan', 'Şikayeti Yönet', 'Διαχείριση παραπόνων', 'مدیریت شکایت', 'Uruskan Aduan', '', '', 'ફરિયાદ મેનેજ કરો', 'Zarządzaj reklamacją', 'Керуйте скаргою', 'ਸ਼ਿਕਾਇਤ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați plângerea', '', 'Ṣakoso Ẹdun', 'Gudanar da Kara', NULL),
(368, 'manage_discount', 'Manage Discount', 'ডিসকাউন্ট পরিচালনা করুন', 'Gestionar descuento', 'إدارة الخصم', 'डिस्काउंट प्रबंधित करें', 'ڈسکاؤنٹ کا انتظام کریں', '管理折扣', '割引を管理', 'Gerenciar desconto', 'Управление скидкой', 'Gérer la remise', '할인 관리', 'Rabatt verwalten', 'Gestisci sconto', '', 'Kedvezmény kezelése', 'Korting beheren', 'curo Price', 'Kelola Diskon', 'İndirimi Yönet', 'Διαχείριση έκπτωσης', 'مدیریت تخفیف', 'Urus Diskaun', '', '', 'ડિસ્કાઉન્ટ મેનેજ કરો', 'Zarządzaj zniżką', 'Управління знижкою', 'ਛੂਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați reducerea', '', 'Ṣakoso ẹdinwo', 'Gudanar da Ragewa', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(369, 'manage_payment_setting', 'Manage Payment Setting', 'পেমেন্ট সেটিং পরিচালনা করুন', 'Administrar configuración de pago', 'إدارة إعداد الدفع', 'भुगतान सेटिंग प्रबंधित करें', 'ادائیگی کی ترتیب کا انتظام کریں', '管理付款设置', '支払い設定の管理', 'Gerenciar configurações de pagamento', 'Управление настройками оплаты', 'Gérer les paramètres de paiement', '결제 설정 관리', 'Zahlungseinstellung verwalten', 'Gestisci impostazioni di pagamento', '', 'Kezelje a fizetési beállításokat', 'Betalingsinstellingen beheren', 'Occasum Curo Payment', 'Kelola Pengaturan Pembayaran', 'Ödeme Ayarını Yönet', 'Διαχείριση ρύθμισης πληρωμής', 'تنظیم تنظیم پرداخت', 'Urus Tetapan Pembayaran', '', '', 'ચુકવણી સેટિંગ મેનેજ કરો', 'Zarządzaj ustawieniami płatności', 'Керування налаштуваннями оплати', 'ਭੁਗਤਾਨ ਸੈਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați setarea de plată', '', 'Ṣakoso eto Eto isanwo', 'Gudanar da Tsarin Biyan Kuɗi', NULL),
(370, 'manage_admit_card_setting', 'Manage Admit Card Setting', 'প্রবেশপত্রের সেটিং পরিচালনা করুন', 'Administrar la configuración de la tarjeta de admisión', 'إدارة إعداد بطاقة القبول', 'एडमिट कार्ड सेटिंग को मैनेज करें', 'ایڈمٹ کارڈ کی ترتیب کا انتظام کریں', '管理准入卡设置', '許可カード設定の管理', 'Gerenciar configuração de cartão de admissão', 'Управление настройкой Admit Card', 'Gérer les paramètres de carte d\'admission', '인정 카드 설정 관리', 'Zulassen der Karteneinstellung verwalten', 'Gestisci le impostazioni della scheda di ammissione', '', 'Kezelje az elfogadási kártya beállítását', 'Beheer de kaartinstelling toestaan', 'Occasum Curo ipse fatebere maius Card', 'Kelola Pengaturan Kartu Akui', 'Giriş Kartı Ayarını Yönet', 'Διαχείριση ρύθμισης κάρτας αποδοχής', 'تنظیم تنظیم کارت اعتراف کنید', 'Urus Tetapan Kad Admit', '', '', 'પ્રવેશ કાર્ડ સેટિંગ મેનેજ કરો', 'Zarządzaj ustawieniami karty przyznania', 'Керування налаштуваннями приймальної картки', 'ਐਡਮਿਟ ਕਾਰਡ ਸੈਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați setarea cardului de admitere', '', 'Ṣakoso Eto Eto Gbigbawọle', 'Gudanar da Tsarin Katin Adadin', NULL),
(371, 'manage_id_card_setting', 'Manage ID Card Setting', 'আইডি কার্ড সেটিং পরিচালনা করুন', 'Administrar la configuración de la tarjeta de identificación', 'إدارة إعداد بطاقة الهوية', 'ID कार्ड सेटिंग प्रबंधित करें', 'شناختی کارڈ کی ترتیب کا انتظام کریں', '管理身份证设置', 'IDカード設定の管理', 'Gerenciar configuração do cartão de identificação', 'Управление настройкой удостоверения личности', 'Gérer les paramètres de la carte d\'identité', 'ID 카드 설정 관리', 'ID-Karteneinstellung verwalten', 'Gestire le impostazioni della carta d\'identità', '', 'Kezelje az azonosító kártya beállítását', 'Beheer ID-kaartinstelling', 'Occasum Curo id Card', 'Kelola Pengaturan Kartu ID', 'Kimlik Kartı Ayarını Yönet', 'Διαχείριση ρύθμισης ταυτότητας', 'تنظیم تنظیم کارت شناسایی', 'Urus Tetapan Kad ID', '', '', 'આઈડી કાર્ડ સેટિંગ મેનેજ કરો', 'Zarządzaj ustawieniami dowodu osobistego', 'Керування налаштуваннями посвідчення особи', 'ਆਈਡੀ ਕਾਰਡ ਸੈਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionarea setării cărții de identitate', '', 'Ṣakoso eto Eto Kaadi ID', 'Gudanar da Saitin Katin ID', NULL),
(372, 'manage_super_admin', 'Manage Super Admin', 'সুপার অ্যাডমিন পরিচালনা করুন', 'Manage Super Admin', 'إدارة المشرف المتميز', 'सुपर एडमिन का प्रबंधन करें', 'سپر ایڈمن کا نظم کریں', '管理超级管理员', '特権管理者を管理する', 'Gerenciar Superadministrador', 'Управление Супер Админом', 'Gérer le super administrateur', '최고 관리자 관리', 'Super Admin verwalten', 'Gestisci Super Admin', '', 'Kezelje a szuper adminisztrátorokat', 'Beheer Super Admin', 'Curo Super Admin', 'Kelola Admin Super', 'Süper Yöneticisi Yönetme', 'Διαχείριση Super Admin', 'مدیریت فوق العاده مدیریت کنید', 'Urus Pentadbir Super', '', '', 'સુપર એડમિન મેનેજ કરો', 'Zarządzaj Super Admin', 'Управління Super Admin', 'ਸੁਪਰ ਐਡਮਿਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Super Admin', '', 'Ṣakoso abojuto Super', 'Sarrafa Super Admin', NULL),
(373, 'manage_user_credential', 'Manage User Credential', 'ব্যবহারকারী ক্রীডেন্শাল পরিচালনা করুন', 'Administrar credencial de usuario', 'إدارة بيانات اعتماد المستخدم', 'उपयोगकर्ता क्रेडेंशियल प्रबंधित करें', 'صارف کے اسناد کا نظم کریں', '管理用户凭证', 'ユーザー資格情報の管理', 'Gerenciar credenciais do usuário', 'Управление учетными данными пользователя', 'Gérer les informations d\'identification de l\'utilisateur', '사용자 자격 증명 관리', 'Benutzeranmeldeinformationen verwalten', 'Gestisci credenziali utente', '', 'Kezelje a felhasználói hitelesítő adatokat', 'Beheer gebruikersgegevens', 'Curo User Credential', 'Kelola Kredensial Pengguna', 'Kullanıcı Kimlik Bilgilerini Yönet', 'Διαχείριση διαπιστευτηρίων χρήστη', 'اعتبار کاربر را مدیریت کنید', 'Urus Kelayakan Pengguna', '', '', 'વપરાશકર્તા ઓળખપત્ર મેનેજ કરો', 'Zarządzaj poświadczeniami użytkowników', 'Керуйте обліковим записом користувача', 'ਉਪਭੋਗਤਾ ਪ੍ਰਮਾਣੀਕਰਣ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionează acreditarea utilizatorului', '', 'Ṣakoso ijẹrisi Olumulo', 'Gudanar da Shaidar Shaida', NULL),
(374, 'manage_activity_log', 'Manage Activity Log', 'কার্যকলাপ লগ পরিচালনা করুন', 'Administrar registro de actividad', 'إدارة سجل النشاط', 'गतिविधि लॉग प्रबंधित करें', 'سرگرمی لاگ کا انتظام کریں', '管理活动日志', 'アクティビティログの管理', 'Gerenciar log de atividades', 'Управление журналом активности', 'Gérer le journal d\'activité', '활동 로그 관리', 'Aktivitätsprotokoll verwalten', 'Gestisci registro attività', '', 'Tevékenységi napló kezelése', 'Activiteitenlogboek beheren', 'Curo Acta confundendi', 'Kelola Log Aktivitas', 'Etkinlik Günlüğünü Yönet', 'Διαχείριση καταγραφής δραστηριότητας', 'مدیریت فعالیت را مدیریت کنید', 'Urus Log Aktiviti', '', '', 'પ્રવૃત્તિ લ Manageગ મેનેજ કરો', 'Zarządzaj dziennikiem aktywności', 'Управління журналом активності', 'ਗਤੀਵਿਧੀ ਲੌਗ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați jurnalul de activități', '', 'Ṣakoso Wọle ṣiṣe', 'Gudanar da Lissafin Aiki', NULL),
(375, 'manage_feedback', 'Manage Feedback', 'প্রতিক্রিয়া পরিচালনা করুন', 'Gestionar Comentarios', 'ادارة الردود', 'प्रतिक्रिया प्रबंधित करें', 'آراء کا نظم کریں', '管理反馈', 'フィードバックの管理', 'Gerenciar comentários', 'Управление обратной связью', 'Gérer les commentaires', '피드백 관리', 'Bewertungen verwalten', 'Gestire feedback', '', 'visszajelzés kezelése', 'Feedback beheren', 'curo videre', 'Kelola Umpan Balik', 'Geri Bildirimi Yönetin', 'Διαχείριση σχολίων', 'مدیریت بازخورد', 'Urus Maklum Balas', '', '', 'પ્રતિસાદ મેનેજ કરો', 'zarządzać informacją zwrotną', 'Управління зворотним зв\'язком', 'ਫੀਡਬੈਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'gestionați feedback', '', 'Ṣakoso Esi', 'Gudanar da Ra\'ayin', NULL),
(376, 'manage_user_role', 'Manage User Role', 'ব্যবহারকারীর ভূমিকা পরিচালনা করুন', 'Administrar rol de usuario', 'إدارة دور المستخدم', 'उपयोगकर्ता भूमिका प्रबंधित करें', 'صارف کے کردار کا نظم کریں', '管理用户角色', 'ユーザー役割の管理', 'Gerenciar função do usuário', 'Управление ролью пользователя', 'Gérer le rôle utilisateur', '사용자 역할 관리', 'Benutzerrolle verwalten', 'Gestisci ruolo utente', '', 'Kezelje a felhasználói szerepet', 'Gebruikersrol beheren', 'Partes quas usorum regere', 'Kelola Peran Pengguna', 'Kullanıcı Rolünü Yönet', 'Διαχείριση ρόλου χρήστη', 'نقش کاربر را مدیریت کنید', 'Urus Peranan Pengguna', '', '', 'વપરાશકર્તાની ભૂમિકા મેનેજ કરો', 'Zarządzaj rolą użytkownika', 'Управління роллю користувача', 'ਉਪਭੋਗਤਾ ਦੀ ਭੂਮਿਕਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați rolul utilizatorului', '', 'Ṣakoso ipa olumulo', 'Gudanar da Matsayin Mai amfani', NULL),
(377, 'manage_role_permission', 'Manage Role Permission', 'ভূমিকা অনুমতি পরিচালনা করুন', 'Administrar permisos de roles', 'إدارة إذن الدور', 'भूमिका अनुमति प्रबंधित करें', 'کردار کی اجازت کا انتظام کریں', '管理角色权限', '役割の権限を管理する', 'Gerenciar permissão de função', 'Управление разрешением ролей', 'Gérer les autorisations de rôle', '역할 권한 관리', 'Rollenberechtigung verwalten', 'Gestisci autorizzazione ruolo', '', 'Kezelje a szerepkör engedélyét', 'Rolrechten beheren', 'Curo munere licentiam', 'Kelola Izin Peran', 'Rol İznini Yönet', 'Διαχείριση άδειας ρόλου', 'مجوز نقش را مدیریت کنید', 'Urus Kebenaran Peranan', '', '', 'ભૂમિકા પરવાનગીનું સંચાલન કરો', 'Zarządzaj uprawnieniami roli', 'Управління дозволом на роль', 'ਭੂਮਿਕਾ ਅਨੁਮਤੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionarea permisiunii de rol', '', 'Ṣakoso igbanilaaye ipa', 'Gudanar da Izinin Matsayi', NULL),
(378, 'manage_receipt', 'Manage Receipt', 'রসিদ পরিচালনা করুন', 'Gestionar recibo', 'إدارة الإيصال', 'रसीद का प्रबंध करें', 'رسید کا انتظام کریں', '管理收据', '領収書を管理', 'Gerenciar recibo', 'Управление квитанцией', 'Gérer le reçu', '영수증 관리', 'Quittung verwalten', 'Gestisci ricevuta', '', 'Kezelje az átvételt', 'Beheer bon', 'curo Receptio', 'Kelola Tanda Terima', 'Makbuzu Yönet', 'Διαχείριση απόδειξης', 'رسید را مدیریت کنید', 'Urus Resit', '', '', 'રસીદ મેનેજ કરો', 'Zarządzaj pokwitowaniem', 'Управління квитанцією', 'ਰਸੀਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează primirea', '', 'Ṣakoso gbigba', 'Gudanar da Risa', NULL),
(379, 'manage_e_book', 'Manage E-Book', 'ই-বুক পরিচালনা করুন', 'Administrar libro electrónico', 'إدارة الكتاب الإلكتروني', 'ई-बुक की व्यवस्था करें', 'ای بک کا نظم کریں', '管理电子书', '電子書籍を管理', 'Gerenciar E-Book', 'Управление электронной книгой', 'Gérer le livre électronique', '전자 책 관리', 'E-Book verwalten', 'Gestisci e-book', '', 'Kezelje az E-könyvet', 'Beheer E-Book', 'Curo E-', 'Kelola E-Book', 'E-Kitabı Yönet', 'Διαχείριση E-Book', 'کتاب الکترونیکی را مدیریت کنید', 'Urus E-Book', '', '', 'ઇ-બુક મેનેજ કરો', 'Zarządzaj e-bookiem', 'Керуйте електронною книгою', 'ਈ-ਬੁੱਕ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați e-book', '', 'Ṣakoso E-Book', 'Gudanar da Littafin E-Book', NULL),
(380, 'manage_exam', 'Manage Exam', 'পরীক্ষা পরিচালনা করুন', 'Administrar examen', 'إدارة الامتحان', 'परीक्षा का प्रबंध करें', 'امتحان کا انتظام کریں', '管理考试', '試験を管理する', 'Gerenciar exame', 'Управление экзаменом', 'Gérer l\'examen', '시험 관리', 'Prüfung verwalten', 'Gestisci esame', '', 'Kezelje vizsga', 'Examen beheren', 'curo IV', 'Kelola Ujian', 'Sınavı Yönet', 'Διαχείριση εξετάσεων', 'مدیریت آزمون', 'Urus Peperiksaan', '', '', 'પરીક્ષાનું સંચાલન કરો', 'Zarządzaj egzaminem', 'Управління іспитом', 'ਪ੍ਰੀਖਿਆ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionează examenul', '', 'Ṣakoso idanwo', 'Gudanar da Exam', NULL),
(381, 'manage_school', 'Manage School', 'স্কুল পরিচালনা করুন', 'Administrar la escuela', 'إدارة المدرسة', 'स्कूल प्रबंधित करें', 'اسکول کا نظم کریں', '管理學校', '学校を管理する', 'Gerenciar Escola', 'Управление школой', 'Gérer l\'école', '학교 관리', 'Schule verwalten', 'Gestisci la scuola', 'จัดการโรงเรียน', 'Kezelje az iskolát', 'Beheer school', 'curo School', 'Kelola Sekolah', 'Okulu yönet', 'Διαχειριστείτε το σχολείο', 'مدیریت مدرسه', 'Uruskan Sekolah', 'స్కూల్ని నిర్వహించండి', 'பள்ளி நிர்வகி', 'શાળા મેનેજ કરો', 'Zarządzaj szkołą', 'Управління школою', 'ਸਕੂਲ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați școala', 'ကျောင်းစီမံခန့်ခွဲရန်', 'Ṣakoso Ile-iwe', 'Sarrafa Makaranta', NULL),
(382, 'manage_activity', 'Manage Activity', 'কার্যকলাপ পরিচালনা করুন', 'Administrar actividad', 'إدارة النشاط', 'गतिविधि प्रबंधित करें', 'سرگرمی کا نظم کریں', '管理活动', 'アクティビティの管理', 'Gerenciar atividade', 'Управление деятельностью', 'Gérer lactivité', '활동 관리', 'Aktivität verwalten', 'Gestisci attività', 'จัดการกิจกรรม', 'Tevékenység kezelése', 'Activiteit beheren', 'curo activitate', 'Kelola Aktivitas', 'Etkinliği Yönet', 'Διαχείριση της δραστηριότητας', 'مدیریت فعالیت', 'Urus Aktiviti', 'కార్యాచరణను నిర్వహించండి', 'செயல்பாட்டை நிர்வகி', 'પ્રવૃત્તિનું સંચાલન કરો', 'Zarządzaj aktywnością', 'Керування діяльністю', 'ਸਰਗਰਮੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați activitatea', 'Activity ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso Awọn aṣayan iṣẹ', 'Sarrafa Ayyukan', NULL),
(383, 'manage_result', 'Manage Result', 'ফলাফল পরিচালনা করুন', 'Administrar el resultado', 'إدارة النتيجة', 'परिणाम प्रबंधित करें', 'نتائج کا نظم کریں', '管理结果', '結果を管理する', 'Gerenciar resultado', 'Управление результатами', 'Gérer le résultat', '결과 관리', 'Ergebnis verwalten', 'Gestisci risultato', 'จัดการผลลัพธ์', 'Eredmény kezelése', 'Resultaat beheren', 'curo results', 'Kelola Hasil', 'Sonucu Yönet', 'Διαχείριση αποτελεσμάτων', 'مدیریت نتیجه', 'Uruskan Keputusan', 'ఫలితాన్ని నిర్వహించండి', 'முடிவு நிர்வகி', 'પરિણામ મેનેજ કરો', 'Zarządzaj wynikiem', 'Управління результатом', 'ਨਤੀਜਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul', 'ရလဒ်စီမံခန့်ခွဲရန်', 'Ṣiṣe Abajade', 'Sarrafa sakamakon', NULL),
(384, 'manage_payment', 'Manage Payment', 'পেমেন্ট পরিচালনা করুন', 'Administrar el pago', 'إدارة الدفع', 'भुगतान प्रबंधित करें', 'ادائیگی کا نظم کریں', '管理付款', 'お支払いの管理', 'Gerenciar Pagamento', 'Управление платежами', 'Gérer le paiement', '지불 관리', 'Zahlung verwalten', 'Gestisci il pagamento', 'จัดการการชำระเงิน', 'Fizetés kezelése', 'Beheer de betaling', 'curo Payment', 'Kelola Pembayaran', 'Ödemeyi Yönet', 'Διαχείριση της πληρωμής', 'مدیریت پرداخت', 'Urus Pembayaran', 'చెల్లింపుని నిర్వహించండి', 'கட்டணம் நிர்வகி', 'ચુકવણી મેનેજ કરો', 'Zarządzaj płatnością', 'Управління платежами', 'ਭੁਗਤਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați plata', 'ငွေပေးချေမှုရမည့်စီမံခန့်ခွဲရန်', 'Ṣakoso Isanwo', 'Sarrafa Biyan kuɗi', NULL),
(385, 'manage_slider', 'Manage Slider', 'স্লাইডার পরিচালনা করুন', 'Administrar control deslizante', 'إدارة المتزلج', 'स्लाइडर प्रबंधित करें', 'سلائیڈر کا نظم کریں', '管理滑块', 'スライダーの管理', 'Gerenciar Slider', 'Управление слайдером', 'Gérer le curseur', '슬라이더 관리', 'Schieberegler verwalten', 'Gestisci il dispositivo di scorrimento', 'จัดการ Slider', 'A csúszka kezelése', 'Beheer schuifregelaar', 'curo Slider', 'Kelola Slider', 'Kaydırıcıyı Yönet', 'Διαχειριστείτε το ρυθμιστικό', 'مدیریت لغزان', 'Urus Slider', 'స్లైడర్ని నిర్వహించండి', 'ஸ்லைடர் நிர்வகி', 'સ્લાઇડર મેનેજ કરો', 'Zarządzaj suwakiem', 'Керувати слайдером', 'ਸਲਾਈਡਰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați cursorul', 'Slider ကစီမံခန့်ခွဲရန်', 'Ṣakoso awọn igbasẹ', 'Sarrafa Slider', NULL),
(386, 'manage_salary_grade', 'Manage Salary Grade', 'বেতন গ্রেড পরিচালনা', 'Administrar grado de salario', 'إدارة درجة الراتب', 'वेतन ग्रेड को प्रबंधित करें', 'تنخواہ کا انتظام کریں', '管理薪金等级', '給与グレードを管理する', 'Gerenciar o salário', 'Управление зарплатой', 'Gérer le salaire', '급여 등급 관리', 'HistoryManage Gehaltsstufe', 'Gestire il livello di stipendio', 'จัดการระดับเงินเดือน', 'Fizetési fokozat kezelése', 'Beheer salarislijst', 'Curo MERCES Romani', 'Kelola Grade Gaji', 'Maaş Notunu Yönet', 'Διαχειριστείτε το βαθμό μισθοδοσίας', 'مدیریت حقوق و دستمزد', 'Menguruskan Gred Gaji', 'జీతం గ్రేడ్ నిర్వహించండి', 'சம்பள உயர்வை நிர்வகி', 'પગાર ગ્રેડ મેનેજ કરો', 'Zarządzaj poziomem wynagrodzeń', 'Управління класом зарплати', 'ਸੈਲਰੀ ਗ੍ਰੇਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați gradul de salarizare', 'လစာအဆင့်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn Ọya Salaye', 'Sarrafa Takardar Lissafin Kuɗi', NULL),
(387, 'manage_certificate', 'Manage Certificate', 'সার্টিফিকেট পরিচালনা করুন', 'Administrar Certificado', 'إدارة الشهادة', 'प्रमाण पत्र प्रबंधित करें', 'سرٹیفکیٹ کا نظم کریں', '管理证书', '証明書を管理する', 'Gerenciar certificado', 'Управление сертификатом', 'Gérer le certificat', '인증서 관리', 'Zertifikat verwalten', 'Gestisci certificato', 'จัดการใบรับรอง', 'Tanúsítvány kezelése', 'Beheer het certificaat', 'Quisque curo', 'Kelola Sertifikat', 'Sertifikayı Yönet', 'Διαχείριση του πιστοποιητικού', 'مدیریت گواهی', 'Urus Sijil', 'సర్టిఫికెట్ని నిర్వహించండి', 'சான்றிதழை நிர்வகி', 'પ્રમાણપત્રનું સંચાલન કરો', 'Zarządzaj certyfikatem', 'Управління сертифікатом', 'ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați certificatul', 'လက်မှတ်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Ijẹrisi', 'Sarrafa Takaddun shaida', NULL),
(388, 'manage_gallery', 'Manage Gallery', 'গ্যালারি পরিচালনা করুন', 'Administrar Galería', 'إدارة المعرض', 'गैलरी प्रबंधित करें', ' گیلری کا انتظام کریں', '管理图库', 'ギャラリーを管理する', 'Gerenciar galeria', 'Управление галереей', 'Gérer la galerie', '갤러리 관리', 'Galerie verwalten', 'Gestisci Galleria', 'จัดการแกลเลอรี', 'Galéria kezelése', 'Galerij beheren', 'curo Gallery', 'Kelola Galeri', 'Galeriyi yönet', 'Διαχείριση της Γκαλερί', 'مدیریت گالری', 'Urus Galeri', 'గ్యాలరీని నిర్వహించండి', 'தொகுப்பு நிர்வகி', 'ગેલેરી મેનેજ કરો', 'Zarządzaj galerią', 'Управління галереєю', 'ਗੈਲਰੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați galeria', 'ပြခန်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso Awọn Aworan', 'Sarrafa hotuna', NULL),
(389, 'manage_frontend_page', 'Manage Frontend Page', 'ফ্রন্টেন্ড পৃষ্ঠা পরিচালনা করুন', 'Administrar la página frontend', 'إدارة صفحة الواجهة الأمامية', 'फ्रंटएण्ड पेज प्रबंधित करें', 'فرنٹ اینڈ پیج کا انتظام کریں', '管理前端页面', 'フロントエンドの管理ページ', 'Gerenciar página front-end', 'Управление страницей Frontend', 'Gérer la page frontend', '프론트 엔드 페이지 관리', 'Frontend-Seite verwalten', 'Gestisci la pagina di frontend', 'จัดการหน้าส่วนหน้า', 'A Frontend oldal kezelése', 'Frontend-pagina beheren', 'Curo Frontend Page', 'Kelola Frontend Page', 'Ön Uç Sayfasını Yönet', 'Διαχείριση Σελίδας Frontend', 'مدیریت صفحه ظاهری', 'Urus Halaman Frontend', 'ఫ్రంటెండ్ పేజీని నిర్వహించండి', 'Frontend பக்கத்தை நிர்வகிக்கவும்', 'અગ્ર પેજમાં મેનેજ કરો', 'Zarządzaj stroną frontendową', 'Керування сторінкою інтерфейсу', 'ਫਰੰਟਐਂਡ ਪੰਨਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați pagina Frontend', 'Frontend စာမျက်နှာကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Iwaju oju-iwe', 'Sarrafa Shafin Farko', NULL),
(390, 'manage_gallery_image', 'Manage Gallery Image', 'গ্যালারি চিত্র পরিচালনা করুন', 'Administrar imagen de la galería', 'إدارة صورة المعرض', 'गैलरी छवि प्रबंधित करें', 'گالری کی تصویر کا انتظام', '管理图库图像', 'ギャラリー画像を管理する', 'Gerenciar a imagem da galeria', 'Управление изображением галереи', 'Gérer la galerie', '갤러리 이미지 관리', 'Galeriebild verwalten', 'Gestisci limmagine della galleria', 'จัดการภาพแกลลอรี่', 'Galéria kép kezelése', 'Galerijafbeelding beheren', 'Curo Image Gallery', 'Kelola Gambar Galeri', 'Galeri Resmi Yönet', 'Διαχείριση της εικόνας της γκαλερί', 'مدیریت تصویر گالری', 'Urus Imej Galeri', 'గ్యాలరీ చిత్రాన్ని నిర్వహించండి', 'தொகுப்பு பட நிர்வகி', 'ગેલેરી છબી મેનેજ કરો', 'Zarządzaj obrazem galerii', 'Керувати зображенням галереї', 'ਗੈਲਰੀ ਚਿੱਤਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați imaginea galeriei', 'စီမံခန့်ခွဲပြခန်းပုံရိပ်', 'Ṣakoso awọn Aworan Aworan', 'Sarrafa Hotuna Hotuna', NULL),
(391, 'manage_user_instruction', 'Please add Teacher, Employee, Student and Guardian before manage users.', 'ব্যবহারকারীদের পরিচালনা করার আগে শিক্ষক, কর্মচারী, ছাত্র এবং অভিভাবক যোগ করুন।', 'Agregue Maestro, Empleado, Estudiante y Tutor antes de administrar usuarios.', 'يرجى إضافة المعلم والموظف والطالب والجارديان قبل إدارة المستخدمين.', 'उपयोगकर्ताओं को प्रबंधित करने से पहले कृपया शिक्षक, कर्मचारी, छात्र और संरक्षक जोड़ें।', 'براہ کرم صارفین کو منظم کرنے سے قبل استاد، ملازم، طالب علم اور گارڈین شامل کریں.', '在管理用户之前，请添加教师，员工，学生和监护人。', 'ユーザーを管理する前に教師、従業員、学生、保護者を追加してください。', 'Por favor, adicione Professor, Empregado, Estudante e Guardião antes de administrar usuários.', 'Перед тем, как управлять пользователями, добавьте Учителя, Работника, Студента и Хранителя.', 'Veuillez ajouter un enseignant, un employé', '사용자를 관리하기 전에 교사, 직원, 학생 및 보호자를 추가하십시오.', 'Bitte fügen Sie Teacher, Employee, Student und Guardian hinzu, bevor Sie Benutzer verwalten.', 'Prima di gestire gli utenti, aggiungi Insegnante, Dipendente, Studente e Guardiano.', 'โปรดเพิ่ม Teacher, Employee, Student และ Guardian ก่อนที่จะจัดการผู้ใช้', 'Kérjük, add hozzá tanár, alkalmazott, tanuló és gondnok, mielőtt kezelné a felhasználókat.', 'Voeg docent, medewerker, student en bewaker toe voordat u gebruikers beheert.', 'Placere addere: Magister bone, Aliquam, antequam student et episcopum administrare users.', 'Tolong tambahkan Guru, Karyawan, Pelajar dan Wali sebelum mengelola pengguna.', 'Kullanıcıları yönetmeden önce lütfen Öğretmen, Çalışan, Öğrenci ve Koruyucuyu ekleyin.', 'Προσθέστε δάσκαλο, υπάλληλο, φοιτητή και φύλακα πριν διαχειριστείτε τους χρήστες.', 'قبل از مدیریت کاربران، لطفا معلم، کارمند، دانشجو و نگهبان را اضافه کنید.', 'Sila tambah Guru, Pekerja, Pelajar dan Penjaga sebelum mengurus pengguna.', 'దయచేసి వినియోగదారులను నిర్వహించడానికి ముందు Teacher, ఉద్యోగి, స్టూడెంట్ మరియు గార్డియన్లను జోడించండి.', 'பயனர்களை நிர்வகிக்க முன் ஆசிரியர், பணியாளர், மாணவர் மற்றும் கார்டியன் ஆகியோரைச் சேர்க்கவும்.', 'વપરાશકર્તાઓ મેનેજ કરો તે પહેલાં શિક્ષક, કર્મચારી, વિદ્યાર્થી અને વાલીઓ ઉમેરો.', 'Przed zarządzaniem użytkownikami dodaj Nauczyciela, Pracownika, Studenta i Opiekuna.', 'До того, як керувати користувачами, додайте ', 'ਉਪਭੋਗਤਾਵਾਂ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ, ਕਰਮਚਾਰੀ, ਵਿਦਿਆਰਥੀ ਅਤੇ ਗਾਰਡੀਅਨ ਜੋੜੋ', 'Adăugați profesor, angajat, student și gardian înainte de a administra utilizatorii.', 'အရှင်ဘုရား, ထမ်း, ကျောင်းသားနှင့်ဂါးဒီးယန်းမတိုင်မီအသုံးပြုသူများကိုစီမံခန့်ခွဲ add ပေးပါ။', 'Jọwọ fi Olukọ, Olukọni, Akeko ati Olutọju ṣaju Ṣakoso awọn olumulo.', 'Da fatan a ƙara malami, maaikaci, dalibi da kuma tsare kafin gudanar da masu amfani.', NULL),
(392, 'manage_certificate_type', 'Manage Certificate Type', 'সার্টিফিকেট প্রকার পরিচালনা করুন', 'Administrar tipo de certificado', 'إدارة نوع الشهادة', 'प्रमाणपत्र प्रकार प्रबंधित करें', 'سرٹیفکیٹ کی قسم کا انتظام کریں', '管理证书类型', '証明書タイプの管理', 'Gerenciar tipo de certificado', 'Управление типом сертификата', 'Gérer le type de certificat', '인증서 유형 관리', 'Verwalten Sie den Zertifikatstyp', 'Gestisci tipo di certificato', 'จัดการประเภทใบรับรอง', 'Tanúsítványtípus kezelése', 'Beheer het certificaattype', 'Quisque Curo Type', 'Kelola Jenis Sertifikat', 'Sertifika Türünü yönetin', 'Διαχείριση τύπου πιστοποιητικού', 'مدیریت نوع گواهی', 'Urus Jenis Sijil', 'సర్టిఫికెట్ రకం నిర్వహించండి', 'சான்றிதழ் வகை நிர்வகி', 'પ્રમાણપત્રનો પ્રકાર મેનેજ કરો', 'Zarządzaj typem certyfikatu', 'Управління типом сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul certificatului', 'လက်မှတ်အမျိုးအစားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ijẹrisi Iru', 'Sarrafa Takaddun shaida', NULL),
(393, 'responsibility', 'Responsibility', 'দায়িত্ব', 'Responsabilidad', 'المسئولية', 'ज़िम्मेदारी', 'ذمہ داری', '责任', '責任', 'Responsabilidade', 'Обязанность', 'Responsabilité', '책임', 'Verantwortung', 'Responsabilità', 'ความรับผิดชอบ', 'Felelősség', 'Verantwoordelijkheid', 'responsibility', 'Tanggung jawab', 'sorumluluk', 'Ευθύνη', 'مسئوليت', 'Tanggungjawab', 'బాధ్యత', 'பொறுப்பு', 'જવાબદારી', 'Odpowiedzialność', 'Відповідальність', 'ਜ਼ਿੰਮੇਵਾਰੀ', 'Responsabilitate', 'တာဝန်', 'Ojúṣe', 'alhakin', NULL),
(394, 'new', 'New', 'নতুন', 'Nuevo', 'الجديد', 'नया', 'نئی', '新', '新しい', 'Novo', 'новый', 'Nouveau', '새로운', 'Neu', 'Nuovo', 'ใหม่', 'Új', 'nieuwe', 'novus', 'Baru', 'Yeni', 'Νέος', 'جدید', 'Baru', 'న్యూ', 'புதிய', 'નવું', 'Nowy', 'Новий', 'ਨਵਾਂ', 'Nou', 'နယူး', 'Titun', 'sabon', NULL),
(395, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত বার্তা', 'Mensajería privada', 'الرسائل الخاصة', 'निजी मेसेजिंग', 'ذاتی پیغام رسانی', '私人消息', 'プライベートメッセージング', 'Mensagens privadas', 'Частные сообщения', 'Messagerie privée', '비공개 메시지', 'Private Nachrichten', 'Messaggistica privata', 'ข้อความส่วนตัว', 'Privát üzenetküldés', 'Privéberichten', 'Secretum Nuntius', 'Pesan Pribadi', 'Özel Mesajlaşma', 'Ιδιωτικά μηνύματα', 'پیام خصوصی', 'Mesej Persendirian', 'ప్రైవేట్ సందేశం', 'தனியார் செய்தி', 'ખાનગી મેસેજિંગ', 'Prywatne wiadomości', 'Приватні повідомлення', 'ਪ੍ਰਾਈਵੇਟ ਸੁਨੇਹਾ', 'Mesageria privată', 'ပုဂ္ဂလိက Messaging ကို', 'Fifiranṣẹ Aladani', 'Private Saƙo', NULL),
(396, 'activate_now', 'Activate Now', 'সক্রিয় করুন', 'Activar ahora', 'نشط الآن', 'अब सक्रिय करें', 'ابھی چالو کریں', '立即激活', '今すぐアクティブにする', 'Ative agora', 'Активировать сейчас', 'Activer maintenant', '지금 실행 시켜라', 'Jetzt aktivieren', 'Attivare ora', 'เปิดใช้งานเดี๋ยวนี้', 'Aktiváld most', 'Activeer nu', 'Nunc strenuus', 'Sekarang aktif', 'Şimdi aktifleştir', 'Ενεργοποίηση τώρα', 'هم اکنون فعال کن', 'Aktifkan sekarang', 'ఇప్పుడు సక్రియం చేయండి', 'இப்போது செயல்படுத்தவும்', 'હમણાં સક્રિય કરો', 'Aktywuj teraz', 'Активувати зараз', 'ਹੁਣ ਸਰਗਰਮ ਕਰੋ', 'Activeaza acum', 'အခုတော့ကိုသက်ဝင်', 'Muu Nisisiyi ṣiṣẹ', 'Kunna Yanzu', NULL),
(397, 'in_activate_now', 'Inactivate Now', 'নিষ্ক্রিয় করুন', 'Inactivate ahora', 'تعطيل الآن', 'अब निष्क्रिय करें', 'اب غیر فعال', '立即停用', '今すぐ非アクティブ化する', 'Inactive agora', 'Инактивировать сейчас', 'Désactiver maintenant', '지금 비활성화', 'Inaktivieren Sie jetzt', 'Inactivate Now', 'ยกเลิกการใช้งานเดี๋ยวนี้', 'Inaktiválás most', 'Inactiveren nu', 'Nunc inactivate', 'Nonaktifkan Sekarang', 'Şimdi devre dışı bırak', 'Απενεργοποιήστε τώρα', 'غیرفعال کن', 'Tidak aktif sekarang', 'ఇప్పుడే నిష్క్రియం చేయండి', 'இப்போது முடக்கு', 'હવે નિષ્ક્રિય કરો', 'Dezaktywuj teraz', 'Інактивувати зараз', 'ਹੁਣ ਅਯੋਗ ਕਰੋ', 'Dezactivați acum', 'အခုတော့ Inactivate', 'Inactivate Bayi', 'Ƙasashe Yanzu', NULL),
(398, 'non_member', 'Non Member', 'সদস্য নয়', 'No es miembro', 'غير الأعضاء', 'गैर - सदस्य', 'غیر رکن', '非会员', '非会員', 'Não membro', 'Не участник', 'Non membre', '비 멤버', 'Nicht-Mitglied', 'Non membro', 'ไม่ใช่สมาชิก', 'Nem tag', 'Geen lid', 'non Member', 'Bukan anggota', 'Üye olmayan', 'Μη μέλος', 'غیرعضو', 'Bukan Ahli', 'సభ్యుడు కాదు', 'உறுப்பினர் இல்லை', 'બિન સભ્ય', 'bez członka', 'Не учасник', 'ਗੈਰ ਮੈਂਬਰ', 'Nu e membru', 'non အဖွဲ့ဝင်', 'Ko omo', 'Ba Memba', NULL),
(399, 'sender', 'Sender', 'প্রেরক', 'Remitente', 'مرسل', 'प्रेषक', 'مرسل', '所有', '送信者', 'Remetente', 'отправитель', 'Expéditeur', '보내는 사람', 'Absender', 'Mittente', 'ผู้ส่ง', 'Feladó', 'Afzender', 'mittens', 'Pengirim', 'Gönderen', 'Αποστολέας', 'فرستنده', 'Pengirim', 'పంపినవారు', 'அனுப்புநர்', 'પ્રેષક', 'Nadawca', 'Відправник', 'ਭੇਜਣ ਵਾਲਾ', 'Expeditor', 'ပေးပို့သူ', 'Oluṣẹ', 'Mai aikawa', NULL),
(400, 'all', 'All', 'সকল', 'Todas', 'الكل', 'सब', 'سب', '所有', 'すべて', 'Todos', 'Все', 'Tout', '모든', 'Alle', 'Tutti', 'ทั้งหมด', 'Minden', 'Alle', 'Omnis', 'Semua', 'Herşey', 'Ολα', 'همه', 'Semua', 'అన్ని', 'அனைத்து', 'બધા', 'Wszystko', 'Все', 'ਸਭ', 'Toate', 'အားလုံး', 'Gbogbo', 'Duk', NULL),
(401, 'first_name', 'First Name', 'নামের প্রথম অংশ', 'Nombre de pila', 'الاسم الاول', 'पहला नाम', 'پہلا نام', '名字', 'ファーストネーム', 'Primeiro nome', 'Имя', 'Prénom', '이름', 'Vorname', 'Nome di battesimo', 'ชื่อจริง', 'Keresztnév', 'Voornaam', 'Praenomen', 'Nama depan', 'İsim', 'Ονομα', 'نام کوچک', 'Nama pertama', 'మొదటి పేరు', 'முதல் பெயர்', 'પ્રથમ નામ', 'Imię', 'Імя', 'ਪਹਿਲਾ ਨਾਂ', 'Nume', 'နာမည်', 'Orukọ kini', 'Sunan rana', NULL),
(402, 'expire', 'Expire', 'মেয়াদোত্তীর্ণ', 'Expirar', 'تنقضي', 'समय सीमा समाप्त', 'میعاد ختم', '到期', '失効', 'Expirar', 'истекать', 'Expirer', '내쉬다', 'Verfallen', 'scadere', 'หมดอายุ', 'Lejár', 'vervallen', 'exspirare', 'Berakhir', 'sona ermek', 'Εκπνέω', 'Expire', 'Tamat tempoh', 'గడువు', 'காலாவதி', 'સમાપ્તિ', 'Wygasać', 'Закінчується', 'ਮਿਆਦ ਖਤਮ', 'Expira', 'ထွက်သက်ရှူ', 'Ti pari', 'ya ƙare', NULL),
(403, 'card', 'Card', 'কার্ড', 'Tarjeta', 'بطاقة', 'कार्ड', 'کارڈ', '卡', 'カード', 'Cartão', 'Карта', 'Carte', '카드', 'Karte', 'Carta', 'บัตร', 'Kártya', 'Kaart', 'Card', 'Kartu', 'kart', 'Κάρτα', 'کارت', 'Kad', 'కార్డ్', 'அட்டை', 'કાર્ડ', 'Karta', 'Карта', 'ਕਾਰਡ', 'Card', 'ကဒ်', 'Kaadi', 'Katin', NULL),
(404, 'cvv', 'CVV', 'সিভিভি', 'CVV', 'CVV', 'सीवीवी', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'સીવીવી', 'CVV', 'CVV', 'ਸੀਵੀਵੀ', 'CVV', 'CVV', 'CVV', 'CVV', NULL),
(405, 'monthly', 'Monthly', 'মাসিক', 'Mensual', 'شهريا', 'महीने के', 'ماہانہ', '每月一次', '毎月', 'Por mês', 'ежемесячно', 'Mensuel', '월간 간행물', 'Monatlich', 'Mensile', 'รายเดือน', 'Havi', 'Maandelijks', 'Vestibulum', 'Bulanan', 'Aylık', 'Μηνιαίος', 'ماهانه', 'Bulanan', 'మంత్లీ', 'மாதாந்திர', 'માસિક', 'Miesięczny', 'Щомісяця', 'ਮਹੀਨਾਵਾਰ', 'Lunar', 'လစဉ်', 'Oṣooṣu', 'Kwanan wata', NULL),
(406, 'group_by_data', 'Group by Data', 'গ্রুপ বাই ডাটা', 'Agrupar por datos', 'المجموعة حسب البيانات', 'समूह द्वारा डेटा', 'ڈیٹا کی طرف سے گروپ', '按数据分组', 'データでグループ化する', 'Agrupar por Dados', 'Группа по данным', 'Grouper par données', '데이터로 그룹화', 'Nach Daten gruppieren', 'Raggruppa per dati', 'จัดกลุ่มตามข้อมูล', 'Csoport adatok szerint', 'Groeperen op gegevens', 'Ordina Data', 'Kelompokkan menurut Data', 'Veri Gruplama', 'Ομαδοποιήστε με Δεδομένα', 'گروه با داده ها', 'Kumpulan mengikut Data', 'డేటా ద్వారా సమూహం', 'தரவு மூலம் குழு', 'ડેટા દ્વારા ગ્રુપ', 'Grupuj według danych', 'Групувати за даними', 'ਡੈਟਾ ਦੁਆਰਾ ਸਮੂਹ', 'Grup după date', 'ဒေတာများသဖြင့် Group မှ', 'Agbegbe nipasẹ Data', 'Ƙungiya ta hanyar Data', NULL),
(407, 'resign_date', 'Resign Date', 'পদত্যাগ তারিখ', 'Fecha de renuncia', 'استقالة التاريخ', 'इस्तीफा तारीख', 'استعفی کی تاریخ', '辞职日期', '辞職日', 'Data de rescisão', 'Дата списания', 'Date de démission', '사임 날짜', 'Datum zurückgeben', 'Data di dimettersi', 'ลาออกวันที่', 'Lemondás dátuma', 'Ontslagdatum', 'Date abdicare', 'Tanggal pengunduran diri', 'Ayrılış Tarihi', 'Ημερομηνία παραίτησης', 'تاریخ استعفا', 'Tarikh Mengundurkan', 'తేదీని రాజీనామా చేయండి', 'தேதி விலக்கு', 'રાજીનામું તારીખ', 'Data rezygnacji', 'Дата відставки', 'ਦਾਨ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data renunțării', 'နေ့စွဲနုတ်ထွက်', 'Fi ọjọ silẹ', 'murabus Kwanan wata', NULL),
(408, 'invalid_login', 'Invalid username OR password.', 'ভুল  ব্যবহারকারীর নাম বা পাসওয়ার্ড', 'Usuario o contraseña invalido.', 'خطأ في اسم المستخدم أو كلمة مرور.', 'अमान्य उपयोगकर्ता नाम या पासवर्ड।', 'غلط صارف نام یا پاس ورڈ.', '用户名或密码无效。', 'ユーザー名かパスワードが無効。', 'Nome de usuário ou senha inválidos.', 'Неправильное имя пользователя или пароль.', 'Nom d\'utilisateur OU mot de passe invalide.', '잘못된 사용자 이름 또는 비밀번호입니다.', 'Ungültiger Benutzername oder Passwort.', 'Nome utente o password errati.', 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง.', 'Érvénytelen felhasználónév vagy jelszó.', 'Ongeldige gebruikersnaam of wachtwoord.', 'Nullam Username: Password.', 'Username dan password salah.', 'Geçersiz kullanıcı adı veya şifre.', 'Μη έγκυρο όνομα ή κωδικός.', 'نام کاربری یا کلمه عبور نامعتبر است', 'Nama pengguna atau kata laluan tidak sah.', 'తప్పుడు వాడుకరిపేరు లేదా సంకేతపదం.', 'தவறான பயனர் பெயர் அல்லது கடவுச்சொல்.', 'અમાન્ય વપરાશકર્તાનામ અથવા પાસવર્ડ.', 'Nieprawidłowa nazwa użytkownika lub hasło.', 'Неправильне ім\'я користувача або пароль.', 'ਅਵੈਧ ਉਪਯੋਗਕਰਤਾ ਨਾਂ ਜਾਂ ਪਾਸਵਰਡ', 'Nume de utilizator sau parola incorecte.', 'မှားနေသောအသုံးပြုသူအမည် OR password ကို။', 'Orukọ olumulo ailewu TABI ọrọigbaniwọle.', 'Sunan mai amfani mara amfani KO kalmar sirri.', NULL),
(409, 'lost_your_password', 'Lost your password?', 'আপনার পাসওয়ার্ড হারিয়েছেন?', '¿Perdiste tu contraseña?', 'فقدت كلمة المرور الخاصة بك؟', 'आपका पासवर्ड खो गया है?', 'اپنا پاس ورڈ بھول گئے؟', '忘记密码？', 'パスワードを忘れましたか？', 'Perdeu sua senha?', 'Забыли пароль?', 'Mot de passe perdu?', '비밀번호를 잊어 버렸습니까?', 'Passwort vergessen?', 'Hai perso la password?', 'ลืมรหัสผ่าน?', 'Elvesztetted a jelszavadat?', 'Wachtwoord vergeten?', 'Perdidit vestri password?', 'Kehilangan password?', 'Şifreni mi unuttun?', 'Έχασες τον κωδικό σου?', 'رمز عبور خود را فراموش کرده اید؟', 'Lupa kata kunci?', 'మీ పాస్వర్డ్ను కోల్పోయారా?', 'உங்கள் கடவுச்சொல்லை இழந்தீர்களா?', 'તમારો પાસવર્ડ ખોવાઈ ગયો?', 'Zgubiłeś hasło?', 'Забули свій пароль?', 'ਤੁਹਾਡਾ ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ ਹੋ?', 'Ti-ai pierdut parola?', 'သင့်ရဲ့စကားဝှက်ကိုဆုံးရှုံးခဲ့ရ?', 'Ti padanu ọrọ igbaniwọle rẹ?', 'Ka manta kalmarka ta sirri?', NULL),
(410, 'back_to_login', 'Back to Login', 'ব্যাক টু লগইন', 'Atrás para iniciar sesión', 'العودة إلى تسجيل الدخول', 'लॉगिन पर वापस जाएं', 'لاگ ان پر واپس', '回到登入', 'ログインに戻る', 'Volte ao login', 'Вернуться на страницу входа', 'Retour connexion', '로그인으로 돌아 가기', 'Zurück zur Anmeldung', 'Torna al login', 'กลับไปที่ล็อกอิน', 'Vissza a bejelentkezéshez', 'Terug naar Inloggen', 'Back to Login', 'Kembali untuk masuk', 'Giriş sayfasına dön', 'Επιστροφή στην σελίδα εισόδου', 'بازگشت به صفحه ورود', 'Kembali ke Log masuk', 'తిరిగి లాగిన్ అవ్వండి', 'மீண்டும் உள்நுழையவும்', 'લૉગિન પર પાછા જાઓ', 'Powrót do logowania', 'Повернутися до Login', 'ਲੌਗਿਨ ਤੇ ਵਾਪਸ', 'Înapoi la autentificare', 'နောက်ကျောဝင်မည်မှ', 'Pada si Wiwọle', 'Komawa zuwa shiga', NULL),
(411, 'instruction', 'Instruction', 'নির্দেশাবলী', 'Instrucción', 'تعليمات', 'अनुदेश', 'ہدایات', '指令', '命令', 'Instrução', 'инструкция', 'Instruction', '교수', 'Anweisung', 'istruzione', 'คำแนะนำ', 'Utasítás', 'Instructie', 'Disciplinam', 'Petunjuk', 'Talimat', 'Εντολή', 'دستورالعمل', 'Arahan', 'ఇన్స్ట్రక్షన్', 'வழிமுறை', 'સૂચના', 'Instrukcja', 'Інструкція', 'ਨਿਰਦੇਸ਼', 'instrucție', 'ညွှန်ကြားချက်', 'Ilana', 'Umarni', NULL),
(412, 'add_employee_instruction', 'Please add Designation before add Employee.', 'কর্মচারী যোগ করার আগে অনুগ্রহপূর্বক পদবী যোগ করুন', 'Agregue Designación antes de agregar Empleado.', 'يرجى إضافة تعيين قبل إضافة موظف.', 'कृपया कर्मचारी जोड़ें जोड़ने से पहले पदनाम जोड़ें।', 'ملازمت کو شامل کرنے سے قبل عہدہ شامل کریں.', '请在添加员工之前添加指定。', '従業員を追加する前に指定を追加してください。', 'Por favor, adicione Designação antes de adicionar Empregado.', 'Пожалуйста, добавьте Обозначение, прежде чем добавить Сотрудника.', 'Veuillez ajouter la désignation avant dajouter un employé.', 'Employee를 추가하기 전에 지정을 추가하십시오.', 'Bitte fügen Sie die Bezeichnung hinzu, bevor Sie Mitarbeiter hinzufügen.', 'Aggiungi la designazione prima di aggiungere un dipendente.', 'โปรดเพิ่มการกำหนดก่อนเพิ่ม Employee', 'Kérjük, add hozzá a jelölést, mielőtt hozzáadja a Munkavállalót.', 'Voeg een aanwijzing toe voordat u werknemer toevoegt.', 'Aliquam VOCABULUM addere placet in conspectu add.', 'Harap tambahkan Penunjukan sebelum menambahkan Karyawan.', 'Lütfen Çalışan eklemeden önce Adlandırma ekleyin.', 'Προσθέστε Προσδιορισμός πριν προσθέσετε Υπάλληλο.', 'قبل از افزودن کارمند لطفا نامگذاری را اضافه کنید.', 'Sila tambah Jawatan sebelum menambah Pekerja.', 'ఉద్యోగిని చేర్చడానికి ముందు హోదాను జత చేయండి.', 'பணியாளரை சேர்க்க முன் நியமனத்தைச் சேர்க்கவும்.', 'એમ્પ્લોયી ઉમેરો પહેલાં કૃપા કરીને હોદ્દો ઉમેરો.', 'Dodaj Oznaczenie przed dodaniem pracownika.', 'Будь ласка, додайте позначення, перш ніж додати співробітника.', 'ਕਰਮਚਾਰੀ ਨੂੰ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਸ਼ੰਸਾ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați o denumire înainte de a adăuga un angajat.', 'သတ်မှတ်ပေးထားခြင်းမတိုင်မီန်ထမ်းပေါင်းထည့်ပေါင်းထည့်ပေးပါ။', 'Jowo fi Ami silẹ ṣaaju ki o to fi Abáni ṣiṣẹ.', 'Da fatan a kara Zabin kafin ƙara maaikaci.', NULL),
(413, 'add_class_instruction', 'Please add Teacher before add Class.', 'ক্লাস যোগ করার আগে শিক্ষক যোগ করুন', 'Por favor agregue Maestro antes de agregar Clase.', 'الرجاء إضافة معلم قبل إضافة الفصل الدراسي.', 'कृपया कक्षा जोड़ें से पहले शिक्षक जोड़ें।', 'کلاس شامل کرنے سے قبل ٹیچر شامل کریں.', '请在添加课程之前添加教师', 'クラスを追加する前に教師を追加してください。', 'Adicione o professor antes de adicionar a classe.', 'Пожалуйста, добавьте Учителя перед добавлением класса.', 'Veuillez ajouter un enseignant avant dajouter une classe.', '수업을 추가하기 전에 선생님을 추가하십시오.', 'Bitte fügen Sie den Lehrer hinzu, bevor Sie die Klasse hinzufügen.', 'Aggiungi linsegnante prima di aggiungere la lezione.', 'โปรดเพิ่มครูก่อนเพิ่มระดับ', 'Add hozzá a Tanárt, mielőtt hozzáadná az osztályt.', 'Voeg docent toe voordat u lesgroep toevoegt.', 'Magister add addere placet in conspectu Ps.', 'Tolong tambahkan Guru sebelum menambahkan Kelas.', 'Sınıfı eklemeden önce lütfen Öğretmen ekleyin.', 'Παρακαλούμε προσθέστε Δάσκαλο πριν προσθέσετε την κατηγορία.', 'قبل از افزودن کلاس، لطفا معلم را اضافه کنید.', 'Sila tambahkan Guru sebelum menambah Kelas.', 'క్లాస్ ను జోడించుటకు ముందుగా టీచర్ని చేర్చుము.', 'வர்க்கம் சேர்க்க முன் ஆசிரியர் சேர்க்க.', 'ઍડ ક્લાસ પહેલાં શિક્ષક ઉમેરો.', 'Dodaj Nauczyciela przed dodaniem klasy.', 'Будь ласка, додайте Учителя перед додаванням Класу.', 'ਕਿਰਪਾ ਕਰਕੇ ਐਡ ਕਲਾਸ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați profesor înainte de a adăuga Clasa.', 'Class ကို add မတိုင်မီဆရာ add ပေးပါ။', 'Jọwọ fi Olukọ ṣaaju ki o to fi Kilasi sii.', 'Da fatan a kara Malam kafin ƙara Class.', NULL),
(414, 'add_section_instruction', 'Please add Teacher & Class before add Section.', 'বিভাগ যোগ করার আগে শিক্ষক ও শ্রেণী যোগ করুন', 'Por favor agregue Maestro y Clase antes de agregar la Sección.', 'يرجى إضافة معلم وفئة قبل إضافة قسم.', 'अनुभाग जोड़ने से पहले शिक्षक और कक्षा जोड़ें', 'سیکشن میں شامل کرنے سے قبل ٹیچر اور کلاس شامل کریں.', '在添加部分之前，请添加教师和班级。', 'セクションを追加する前に教師とクラスを追加してください。', 'Por favor, adicione professor e classe antes de adicionar seção.', 'Пожалуйста, добавьте Teacher & Class перед добавлением раздела.', 'Veuillez ajouter lenseignant et la classe avant dajouter la section.', '섹션을 추가하기 전에 교사와 수업을 추가하십시오.', 'Bitte fügen Sie Lehrer und Klasse hinzu, bevor Sie Abschnitt hinzufügen.', 'Aggiungi insegnante e classe prima di aggiungere la sezione.', 'โปรดเพิ่ม Teacher & Class ก่อนเพิ่มส่วน', 'Add add Teacher & Class hozzáadása előtt szekció.', 'Voeg docent en klas toe voordat u sectie toevoegt.', 'Genus: Magister add & sectionem addere velit ante.', 'Tolong tambahkan Guru & Kelas sebelum menambahkan Bagian.', 'Bölüm eklemeden önce lütfen Öğretmen ve Sınıf ekleyin.', 'Παρακαλούμε προσθέστε το δάσκαλο και την τάξη πριν προσθέσετε ενότητα.', 'لطفا قبل از افزودن بخش معلم و کلاس اضافه کنید', 'Sila tambah Guru & Kelas sebelum menambah Seksyen.', 'దయచేసి విభాగాన్ని జోడించే ముందు Teacher & Class జోడించండి.', 'பிரிவு சேர்வதற்கு முன்னர் ஆசிரியர் மற்றும் வகுப்பைச் சேர்க்கவும்.', 'વિભાગ ઉમેરો પહેલાં શિક્ષક અને વર્ગ ઉમેરો.', 'Dodaj nauczyciela i zajęcia, zanim dodasz sekcję.', 'Додайте розділ ', 'ਕਿਰਪਾ ਕਰਕੇ ਸੈਕਸ਼ਨ ਜੋੜਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਅਤੇ ਕਲਾਸ ਸ਼ਾਮਲ ਕਰੋ.', 'Vă rugăm să adăugați un profesor și o clasă înainte de a adăuga secțiunea.', 'add ပုဒ်မမတိုင်မီအရှင်ဘုရား & Class ကို add ပေးပါ။', 'Jọwọ fi Olukọ ati Kilasi ṣaaju ki o to fi Abala kan kun.', 'Da fatan a ƙara Malami da Class kafin ƙara Sashe.', NULL),
(415, 'class_add_alert', 'Please add Class', 'ক্লাস যোগ করুন', 'Por favor agrega Clase', 'يرجى إضافة فئة', 'कृपया कक्षा जोड़ें', 'براہ مہربانی کلاس شامل کریں', '请添加Class', 'クラスを追加してください', 'Por favor, adicione Classe', 'Пожалуйста, добавьте класс', 'Veuillez ajouter une classe', '수업을 추가하십시오.', 'Bitte fügen Sie Klasse hinzu', 'Per favore aggiungi Class', 'โปรดเพิ่ม Class', 'Add osztály', 'Voeg alstublieft Klasse toe', 'Placere addere Paleonemertea Class', 'Tolong tambahkan Kelas', 'Lütfen Sınıf ekle', 'Προσθέστε την κλάση', 'لطفا کلاس را اضافه کنید', 'Sila tambah Kelas', 'దయచేసి క్లాస్ను జోడించు', 'வகுப்பு சேர்க்கவும்', 'કૃપા કરીને વર્ગ ઉમેરો', 'Dodaj klasę', 'Будь ласка, додайте клас', 'ਕਲਾਸ ਸ਼ਾਮਿਲ ਕਰੋ ਜੀ', 'Adăugați Clasa', 'Class ကို add ပေးပါ', 'Jọwọ fi Kilasi sii', 'Da fatan a kara Class', NULL),
(416, 'add_student_instruction', 'Please add Guardian, Class & Section before add Student.', 'ছাত্র যোগ করার আগে অভিভাবক, ক্লাস এবং বিভাগ যোগ করুন', 'Agregue Guardián, Clase y Sección antes de agregar Estudiante.', 'يرجى إضافة الجارديان، فئة وقسم قبل إضافة طالب.', 'कृपया छात्र जोड़ने से पहले अभिभावक, कक्षा और अनुभाग जोड़ें।', 'برائے مہربانی طالب علم کو شامل کرنے سے پہلے گارڈین، کلاس اور سیکشن شامل کریں.', '添加学生前请添加监护人，课程和科室。', '生徒を追加する前にGuardian、Class＆Sectionを追加してください。', 'Por favor, adicione Guardian, Class & Section antes de adicionar Student.', 'Пожалуйста, добавьте Guardian, Class & Section перед добавлением Студента.', 'Veuillez ajouter Guardian, Class & Section avant dajouter Student.', '학생을 추가하기 전에 Guardian, Class & Section을 추가하십시오.', 'Bitte fügen Sie Guardian, Class & Section hinzu, bevor Sie Student hinzufügen.', 'Aggiungi Guardian, Class & Section prima di aggiungere Student.', 'กรุณาเพิ่ม Guardian, Class & Section ก่อนเพิ่ม Student', 'Add hozzá Guardian, Class & Section hozzáadása előtt Add Student.', 'Voeg Guardian, Class & Section toe voordat je Student toevoegt.', 'Adde sis custos, adde prius Discipulus Class sect.', 'Tolong tambahkan Guardian, Class & Section sebelum menambahkan Student.', 'Öğrenci eklemeden önce lütfen Guardian, Class & Sectionu ekleyin.', 'Παρακαλούμε προσθέστε Guardian, Class & Section πριν προσθέσετε Student.', 'قبل از افزودن دانش آموز، لطفا Guardian، Class & Section را اضافه کنید.', 'Sila tambah Guardian, Kelas & Seksyen sebelum menambah Pelajar.', 'దయచేసి విద్యార్థిని జోడించే ముందు గార్డియన్, క్లాస్ & సెక్షన్ని జోడించండి.', 'மாணவர் சேர்க்கும் முன்பு கார்டியன், வகுப்பு & பகுதி சேர்க்கவும்.', 'ઉમેરો વિદ્યાર્થી પહેલાં ગાર્ડિયન, વર્ગ અને વિભાગ ઉમેરો.', 'Przed dodaniem ucznia dodaj opiekuna, klasę i sekcję.', 'Перш ніж додати Студент, додайте Guardian, Class & Section.', 'ਕਿਰਪਾ ਕਰਕੇ ਵਿਦਿਆਰਥੀ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਗਾਰਡੀਅਨ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ ਸ਼ਾਮਿਲ ਕਰੋ.', 'Vă rugăm să adăugați Guardian, Class & Section înainte de a adăuga Student.', 'ဂါးဒီးယန်း, အတန်းအစား & ပုဒ်မမတိုင်မီကျောင်းသား add add ပေးပါ။', 'Jowo fi Olutọju, Kilasi & Abala šaaju ki o to fi ọmọ-iwe kun.', 'Da fatan a kara Guardian, Class & Sashe kafin ƙara Student.', NULL),
(417, 'add_assignment_instruction', 'Please add Class & Subject before add Assignment.', 'যোগদান যোগ করার আগে ক্লাস এবং বিষয় যোগ করুন', 'Agregue Clase y Asunto antes de agregar Asignación.', 'الرجاء إضافة الفئة والموضوع قبل إضافة التعيين.', 'कृपया असाइनमेंट जोड़ने से पहले कक्षा और विषय जोड़ें।', 'تفویض شامل کرنے سے پہلے کلاس اور مضمون شامل کریں.', '请在添加作业之前添加课程和主题。', '割り当てを追加する前にクラスと件名を追加してください。', 'Por favor, adicione Class & Subject antes de adicionar Atribuição.', 'Пожалуйста, добавьте Class & Subject перед добавлением Assignment.', 'Veuillez ajouter la classe et le sujet avant dajouter une affectation.', '과제를 추가하기 전에 수업 및 과제를 추가하십시오.', 'Bitte fügen Sie Klasse und Betreff hinzu, bevor Sie die Zuweisung hinzufügen.', 'Per favore aggiungi Class & Subject prima di aggiungere Assignment.', 'โปรดเพิ่ม Class & Subject ก่อนที่จะเพิ่ม Assignment', 'Add hozzá az Osztályt és a témát, mielőtt hozzárendelheti.', 'Voeg Klasse en Onderwerp toe voordat u Toewijzing toevoegt.', 'Class placet, adde prius adsignatione add.', 'Harap tambahkan Kelas & Subjek sebelum menambahkan Penugasan.', 'Ödev eklemek için lütfen Sınıf ve Konuyu ekleyin.', 'Προσθέστε την κλάση και το θέμα πριν προσθέσετε την επιλογή Αντιστοίχιση.', 'لطفا کلاس و موضوع را قبل از اضافه شدن اضافه کنید.', 'Sila tambah Kelas & Subjek sebelum menambah Tugasan.', 'దయచేసి అసైన్మెంట్ను జోడించే ముందు క్లాస్ & సబ్జెక్ట్ జోడించండి.', 'ஒதுக்கீட்டைச் சேர்க்கும் முன்பு வகுப்பு & தலைப்பு சேர்க்கவும்.', 'મહેરબાની કરીને ઉમેરતા પહેલા સભા અને વિષય ઉમેરો.', 'Przed dodaniem zadania dodaj klasę i temat.', 'Будь ласка, додайте клас і тему, перш ніж додати асигнування.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਸਾਈਨਮੈਂਟ ਤੋਂ ਪਹਿਲਾਂ ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Adăugați Clasă și Subiect înainte de a adăuga Atribuire.', 'add တာဝန်မတိုင်မီအတန်းအစား & အကြောင်းအရာ add ပေးပါ။', 'Jọwọ fi Kilasi & Koko ṣaaju ki o to fi iṣẹ-ṣiṣe kun.', 'Da fatan a kara Class & Rubutun kafin ƙara Matsayi.', NULL),
(418, 'add_exam_schedule_instruction', 'Please add Exam, Class & Subject before add Exm Schedule.', 'পরীক্ষার সময়সূচী যোগ করার আগে পরীক্ষা, শ্রেণী ও বস্তু যুক্ত করুন।', 'Agregue Examen, Clase y Objeto antes de agregar el Horario del Examen.', 'الرجاء إضافة امتحان، فئة & كائن قبل إضافة جدول الامتحان.', 'परीक्षा परीक्षा अनुसूची जोड़ें से पहले परीक्षा, कक्षा और वस्तु जोड़ें', 'امتحان شیڈول میں شامل کرنے سے پہلے، امتحان، کلاس اور آبجیکٹ شامل کریں.', '在添加考试时间表之前，请添加考试，课程和对象。', 'Exam Scheduleを追加する前に、Exam、Class＆Objectを追加してください。', 'Por favor, adicione o Exame, Classe e Objeto antes de adicionar o Programa de Exames.', 'Пожалуйста, добавьте Экзамен, Класс и Объект, прежде чем добавить График экзамена.', 'Veuillez ajouter lexamen, la classe et lobjet avant dajouter lhoraire dexamen.', 'Exam Schedule을 추가하기 전에 Exam, Class & Object를 추가하십시오.', 'Bitte fügen Sie Prüfung, Klasse und Objekt hinzu, bevor Sie den Prüfungsplan hinzufügen.', 'Aggiungi esame, classe e oggetto prima di aggiungere la pianificazione degli esami.', 'โปรดเพิ่มการสอบวิชา & วัตถุก่อนเพิ่มตารางการสอบ', 'Add Exam, Class & Object hozzáadása az Exam Schedule hozzáadásához.', 'Voeg Examen, Klasse & Object toe voordat u het Exam Schedule toevoegt.', 'Placere addere IV, addere IV Class Object coram arcu.', 'Harap tambahkan Ujian, Kelas & Objek sebelum menambahkan Jadwal Ujian.', 'Sınav Takvimi eklemeden önce lütfen Sınav, Sınıf ve Nesneyi ekleyin.', 'Παρακαλούμε προσθέστε Εξετάσεις, Τάξη & Αντικείμενο πριν προσθέσετε το Πρόγραμμα Εξετάσεων.', 'قبل از افزودن برنامه آزمون، لطفا امتحان، کلاس و شیء را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Objek sebelum menambah Jadual Peperiksaan.', 'పరీక్షా షెడ్యూల్ను జోడించే ముందు పరీక్ష, క్లాస్ & ఆబ్జెక్ట్ చేర్చండి.', 'தேர்வு அட்டவணை சேர்க்க முன் முன், வகுப்பு & பொருள் சேர்க்க தயவு செய்து.', 'પરીક્ષા શેડ્યૂલ ઉમેરો પહેલાં પરીક્ષાની, વર્ગ અને ઑબ્જેક્ટ ઉમેરો', 'Dodaj egzamin, klasę i obiekt przed dodaniem harmonogramu egzaminu.', 'Додайте іспит, клас і обєкт перед додаванням графіка іспиту.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ ਅਤੇ ਔਬਜੈਕਟ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați examen, clasă și obiect înainte de a adăuga programul de examinare.', 'အတန်းအစား & အရာဝတ္ထုမတိုင်မီစာမေးပွဲအချိန်ဇယားကိုထည့်သွင်း, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Ohun ṣaaju ki o to ṣayẹwo Akẹkọ Idaduro.', 'Da fatan a kara gwadawa, Class & Object kafin ƙara Nazarin Jarrabawa.', NULL),
(419, 'add_exam_suggestion_instruction', 'Please add Exam, Class & Subject before add Exam Suggestion.', 'পরীক্ষা পরামর্শ যোগ করার আগে পরীক্ষা, শ্রেণী এবং বিষয় যুক্ত করুন।', 'Agregue Examen, Clase y Asunto antes de agregar Exm Sugerencia.', 'يرجى إضافة امتحان، فئة & الموضوع قبل إضافة اقتراح إكسم.', 'Exm सुझाव जोड़ने से पहले परीक्षा, कक्षा और विषय जोड़ें।', 'اے ایم ایم تجاویز کو شامل کرنے سے قبل امتحان، کلاس اور مضمون شامل کریں.', '在添加Exm建议之前，请添加考试，课程和主题。', 'Exm提案を追加する前に、Exam、Class＆Subjectを追加してください。', 'Por favor, adicione Exame, Classe e Assunto antes de adicionar Exm Sugestão.', 'Пожалуйста, добавьте Экзамен, Класс и Тема, прежде чем добавить предложение Exm.', 'Sil vous plaît ajouter lexamen, la classe et le sujet avant dajouter la suggestion dExm.', 'Exm 제안을 추가하기 전에 Exam, Class & Subject를 추가하십시오.', 'Bitte fügen Sie Exam, Class & Subject hinzu, bevor Sie Exm Suggestion hinzufügen.', 'Aggiungi Exam, Class e Subject prima di aggiungere Exm Suggestion.', 'โปรดเพิ่มการสอบวิชา & หัวเรื่องก่อนเพิ่มคำแนะนำ Exm', 'Add Exam, Class & Subject hozzáadása az Exm Suggestion hozzáadásához', 'Voeg examen, klasse en onderwerp toe voordat u Exm-suggestie toevoegt.', 'IV addere placet, adde prius Class Exm Suggestion.', 'Harap tambahkan Ujian, Kelas & Subjek sebelum menambahkan Saran Muka.', 'Exm Öneri eklemeden önce lütfen Sınav, Sınıf ve Konuyu ekleyin.', 'Παρακαλούμε προσθέστε την εξέταση, την κλάση και το θέμα πριν προσθέσετε την πρόταση Exm.', 'لطفا قبل از افزودن پیشنهاد Exm، امتحان، کلاس و موضوع را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Subjek sebelum menambah Cadangan Exm.', 'దయచేసి Exm సూచనను జోడించే ముందు పరీక్ష, క్లాస్ & విషయం జోడించండి.', 'Exm பரிந்துரைகளை சேர்க்கும் முன் தேர், வகுப்பு & தலைப்பு சேர்க்கவும்.', 'Exm સૂચન ઉમેરતા પહેલાં પરીક્ષા, વર્ગ અને વિષય ઉમેરો.', 'Dodaj Exam, Class & Subject, zanim dodasz Exm Suggestion.', 'Додайте Exm Suggestion, додайте іспит, клас і тему.', 'ਐਕਸਮ ਸੁਝਾਅ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਐਗਜ਼ੁਖ, ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Vă rugăm să adăugați Exam, Class & Subject înainte de a adăuga Sugestie Exm.', 'အတန်းအစား & အကြောင်းအရာမတိုင်မီ Exm အကြံပြုချက်ထပ်ထည့်, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Koko ṣaaju ki o to fi Alaye pataki sii.', 'Da fatan a sake gwada jarrabawa, Class & Subject kafin ƙara Exm Shawarwari.', NULL),
(420, 'login_success', 'You have successfully logged In.', 'আপনি সফলভাবে লগ ইন করেছেন.', 'Has iniciado sesión correctamente.', 'لقد قمت بتسجيل الدخول بنجاح.', 'आप सफलता पूर्वक प्रवेश कर चुके हैं।', 'آپ نے کامیابی سے ان میں لاگ ان کیا ہے.', '您已成功登录。', 'あなたは正常にログインしました。', 'Você fez login com sucesso.', 'Вы успешно вошли в.', 'Vous avez réussi à vous connecter', '로그인했습니다.', 'Sie haben sich erfolgreich angemeldet.', 'Hai effettuato il log in con successo.', 'คุณเข้าสู่ระบบเรียบร้อยแล้ว', 'Sikeresen bejelentkezett.', 'Je bent succesvol ingelogd.', 'Et tu bene initium.', 'Anda berhasil masuk', 'Başarıyla giriş yaptınız.', 'Έχετε επιτυχώς συνδεθεί.', 'شما با موفقیت وارد شدید.', 'Anda berjaya melog masuk.', 'మీరు విజయవంతంగా లాగిన్ చేసారు.', 'நீங்கள் உள்நுழைந்துள்ளீர்கள்.', 'તમે સફળતાપૂર્વક લોગ ઇન કર્યું છે.', 'Logowanie zakończone powodzeniem.', 'Ви успішно ввійшли в систему.', 'ਤੁਸੀਂ ਸਫਲਤਾਪੂਰਵਕ ਲਾਗ ਇਨ ਕੀਤਾ ਹੈ.', 'Ați fost conectat (ă) cu succes.', 'သင့်အလယ်၌အောင်မြင်စွာ logged ပါပြီ။', 'O ti wọle Wole ni ilọsiwaju.', 'An samu nasarar shiga cikin.', NULL),
(421, 'unexpected_error', 'Unexpected error occured', 'অপ্রত্যাশিত ত্রুটি ঘটেছে', 'Ocurrió un error inesperado', 'حدث خطأ غير متوقع', 'अनपेक्षित त्रुटि हुई', 'غیر متوقع غلطی ہوئی', '意外的错误发生', '予期しないエラーが発生しました', 'Ocorreu um erro inesperado', 'Произошла непредвиденная ошибка', 'Une erreur inattendue sest produite', '예기치 않은 오류가 발생했습니다.', 'Unerwarteter Fehler ist aufgetreten', 'Si è verificato un errore imprevisto', 'เกิดข้อผิดพลาดที่ไม่คาดคิด', 'Váratlan hiba történt', 'Er is een onverwachte fout opgetreden', 'Error occurrit inopinatum', 'Terjadi kesalahan tak terduga', 'Beklenmedik bir hata oluştu', 'Παρουσιάστηκε μη αναμενόμενο σφάλμα', 'خطای غیرمنتظره رخ داده است', 'Ralat tidak dijangka berlaku', 'ఊహించని లోపం సంభవించింది', 'எதிர்பாராத பிழை ஏற்பட்டது', 'અનપેક્ષિત ભૂલ આવી', 'Pojawił się nieoczekiwany błąd', 'Несподівана помилка', 'ਅਚਾਨਕ ਤਰੁੱਟੀ ਉਤਪੰਨ ਹੋਈ', 'A apărut o eroare neașteptată', 'မမျှော်လင့်ဘဲအမှားဖြစ်ပွားခဲ့သည်', 'Aṣiṣe airotẹlẹ kan ṣẹlẹ', 'An sami kuskure marar kuskure', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(422, 'password_reset_error', 'Password length must be 6-12 Character and match with Confirm password', 'পাসওয়ার্ডের দৈর্ঘ্য 6-12 অক্ষর এবং নিশ্চিত পাসওয়ার্ডের সাথে মেলে', 'La longitud de la contraseña debe ser de 6-12 caracteres y coincide con Confirmar contraseña', 'يجب أن يكون طول كلمة المرور 6-12 حرف وتطابق مع تأكيد كلمة المرور', 'पासवर्ड की लंबाई 6-12 वर्ण और पासवर्ड की पुष्टि के साथ मैच होना चाहिए', 'پاس ورڈ کی لمبائی 6-12 ہونا ضروری ہے اور اس کی تصدیق کی پاس ورڈ کے ساتھ میچ ہونا چاہیے', '密码长度必须是6-12个字符并且与确认密码相匹配', 'パスワードの長さは6〜12文字で、パスワードの確認と一致する必要があります', 'O comprimento da senha deve ser de 6 a 12 caracteres e combinar com Confirmar senha', 'Длина пароля должна быть 6-12 символов и соответствовать паролю подтверждения.', 'la longueur du mot de passe doit être comprise entre 6 et 12 caractères et correspondre avec Confirmer le mot de passe', '비밀번호 길이는 6-12 자 여야하며 비밀번호 확인과 일치해야합니다.', 'Die Passwortlänge muss 6-12 Zeichen lang sein und mit Passwort bestätigen übereinstimmen', 'La lunghezza della password deve essere di 6-12 caratteri e corrisponde a Conferma password', 'รหัสผ่านต้องยาว 6-12 ตัวอักษรและตรงกับรหัสยืนยัน', 'A jelszó hosszúságának 6-12 karakterből kell állnia, és meg kell egyeznie a Jelszó megerősítésével', 'Wachtwoordlengte moet 6-12 tekens zijn en overeenkomen met Wachtwoord bevestigen', '6-12 longitudinem esse pares ignoro Character Confirm ignoro', 'Panjang kata sandi harus 6-12 Karakter dan cocok dengan Confirm password', 'Şifre uzunluğu 6-12 karakter olmalıdır ve Parolayı onayla ile eşleşmelidir.', 'Το μήκος του κωδικού πρόσβασης πρέπει να είναι 6-12 χαρακτήρες και να ταιριάζει με τον κωδικό επιβεβαίωσης', 'طول رمز عبور باید 6 تا 12 حرف باشد و با تایید رمز عبور مطابقت دارد', 'Panjang kata laluan mesti 6-12 Watak dan padan dengan Sahkan kata laluan', 'పాస్ వర్డ్ పొడవు 6-12 ఉండాలి', 'கடவுச்சொல் நீளம் இருக்க வேண்டும் 6-12 எழுத்து மற்றும் கடவுச்சொல்லை உறுதிப்படுத்தல் பொருந்தவில்லை', 'પાસવર્ડની લંબાઈ 6-12 અક્ષર હોવા જોઈએ અને પાસવર્ડની પુષ્ટિ કરો', 'Długość hasła musi wynosić 6-12 Znak i dopasowanie z Potwierdź hasło', 'Довжина пароля повинна бути 6-12 символів і відповідати з підтвердженням пароля', 'ਪਾਸਵਰਡ ਦੀ ਲੰਬਾਈ 6-12 ਅੱਖਰ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ ਅਤੇ ਪਾਸਵਰਡ ਨਾਲ ਪੁਸ਼ਟੀ ਕਰੋ', 'Lungimea parolei trebuie să fie 6-12 Caracter și să se potrivească cu Confirmare parolă', 'Password ကိုအရှည် Confirm password ကိုအတူ 6-12 အက္ခရာနှင့်ပွဲစဉ်ဖြစ်ရပါမည်', 'Ipari ipari ọrọigbaniwọle gbọdọ jẹ 6-12 Ti ohun kikọ ati baramu pẹlu Jẹrisi ọrọigbaniwọle', 'Dole ne kalmar wucewa ta kasance ta 6-12 Haɗi da wasa tare da Tabbatar da kalmar sirri', NULL),
(423, 'in_active', 'Inactive', 'নিষ্ক্রিয়', 'Inactivo', 'غير نشط', 'निष्क्रिय', 'غیر فعال', '待用', '非アクティブ', 'Inativo', 'Неактивный', 'Inactif', '비활성', 'Inaktiv', 'Inattivo', 'เฉื่อยชา', 'tétlen', 'Inactief', 'Ut ultrices vestibulum', 'Tidak aktif', 'etkisiz', 'Αδρανής', 'غیر فعال', 'Tidak aktif', 'క్రియారహిత', 'செயல்படா', 'નિષ્ક્રિય', 'Nieaktywny', 'Неактивний', 'ਨਿਸ਼ਕਿਰਿਆ', 'Inactiv', 'မလှုပ်ရှားတတ်သော', 'Inactive', 'Mai aiki', NULL),
(424, 'fill_out_all_data', 'Please fill up all field data', 'সমস্ত ক্ষেত্রের তথ্য পূরণ করুন দয়া করে', 'Complete todos los datos de campo', 'يرجى ملء جميع البيانات الميدانية', 'कृपया सभी फ़ील्ड डेटा भरें', 'براہ کرم تمام فیلڈ ڈیٹا کو بھریں', '请填写所有的现场数据', 'すべてのフィールドデータを入力してください', 'Complete todos os dados de campo', 'Пожалуйста, заполните все полевые данные', 'Sil vous plaît remplir toutes les données de terrain', '모든 필드 데이터를 입력하십시오.', 'Bitte füllen Sie alle Felddaten aus', 'Si prega di compilare tutti i dati del campo', 'โปรดกรอกข้อมูลฟิลด์ทั้งหมด', 'Kérjük, töltse ki az összes mezőadatot', 'Vul alle veldgegevens in', 'Obsecro, universi agri data fillup', 'Silahkan isi semua data lapangan', 'Lütfen tüm alan verilerini doldurun', 'Παρακαλούμε συμπληρώστε όλα τα δεδομένα πεδίου', 'لطفا تمام اطلاعات فیلد را پر کنید', 'Sila mengisi semua data medan', 'దయచేసి అన్ని క్షేత్ర డేటాను పూరించండి', 'அனைத்து புல தரவு நிரப்பவும்', 'કૃપા કરીને તમામ ફીલ્ડ ડેટા ભરો', 'Proszę odflukować wszystkie dane pola', 'Будь ласка, заповніть всі дані поля', 'ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਫੀਲਡ ਡਾਟਾ ਭਰ ਦਿਓ', 'Completați toate datele câmpului', 'အားလုံးလယ်ကွင်းဒေတာ fillup ကျေးဇူးပြု.', 'Jowo fi gbogbo data aaye kun', 'Da fatan a cika dukkan bayanan filin', NULL),
(425, 'email_send_failed', 'Email sent failed. Please try again.', 'ইমেল পাঠানো ব্যর্থ হয়েছে। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'El correo electrónico enviado falló. Inténtalo de nuevo.', 'أخفق إرسال البريد الإلكتروني. حاول مرة اخرى.', 'ईमेल भेजा विफल रहा। कृपया पुन: प्रयास करें।', 'ای میل بھیجا گیا. دوبارہ کوشش کریں.', '电子邮件发送失败 请再试一次。', '送信されたメールは失敗しました もう一度お試しください。', 'E-mail enviado falhou. Por favor, tente novamente.', 'Не удалось отправить сообщение по электронной почте. Пожалуйста, попробуйте еще раз.', 'Email envoyé a échoué. Veuillez réessayer.', '전송 된 이메일이 실패했습니다. 다시 시도하십시오.', 'E-Mail sendet fehlgeschlagen. Bitte versuchen Sie es.', 'Email inviata fallita. Per favore riprova.', 'อีเมลที่ส่งล้มเหลว กรุณาลองอีกครั้ง.', 'Az elküldött e-mail nem sikerült. Kérlek próbáld újra.', 'E-mail verzonden mislukt. Probeer het opnieuw.', 'Misimus defecit. Quaero, iterum conare.', 'Email terkirim gagal Silahkan coba lagi', 'E-posta gönderilemedi. Lütfen tekrar deneyin.', 'Το ηλεκτρονικό ταχυδρομείο που στάλθηκε απέτυχε ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'ایمیل ارسال نشد. لطفا دوباره تلاش کنید.', 'E-mel dihantar gagal. Sila cuba lagi.', 'ఇమెయిల్ పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'மின்னஞ்சல் அனுப்பப்பட்டது தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ઇમેઇલ મોકલવામાં નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Nie udało się wysłać e-maila. Proszę spróbuj ponownie.', 'Не вдалося надіслати електронне повідомлення. Будь ласка спробуйте ще раз.', 'ਭੇਜੀ ਗਈ ਈਮੇਲ ਫੇਲ੍ਹ ਹੋਈ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Emailul trimis a eșuat. Vă rugăm să încercați din nou.', 'အီးမေးလ်ပို့ရန်မအောင်မြင်စေလွှတ်ခဲ့သည်။ ထပ်ကြိုးစားပါ။', 'Ifiranṣẹ imeeli ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'An aika imel da aka aika ya kasa. Da fatan a sake gwadawa.', NULL),
(426, 'email_send_success', 'Email sent successfully', 'ইমেল সফলভাবে পাঠানো হয়েছে', 'Correo electrónico enviado con éxito', 'تم إرسال البريد الإلكتروني بنجاح', 'सफलतापूर्वक भेजा गया ईमेल', 'ای میل کامیابی سے بھیجا گیا', '电子邮件发送成功', '電子メールを正常に送信', 'E-mail enviado com sucesso', 'письмо успешно отправлено', 'E-mail envoyé avec succès', '이메일이 전송되었습니다.', 'Email wurde erfolgreich Versendet', 'email inviata correttamente', 'ส่งอีเมลเรียบร้อยแล้ว', 'Az e-mail sikeresen elküldve', 'E-mail met succes verzonden', 'Email ad bene', 'Email berhasil dikirim', 'e-posta başarıyla gönderildi', 'Το email στάλθηκε με επιτυχία', 'ایمیل با موفقیت ارسال شد', 'E-mel berjaya dihantar', 'ఇమెయిల్ విజయవంతంగా పంపబడింది', 'மின்னஞ்சல் வெற்றிகரமாக அனுப்பப்பட்டது', 'ઇમેઇલ સફળતાપૂર્વક મોકલ્યો', 'E-mail wysłany pomyślnie', 'Електронна пошта надійшла успішно', 'ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Email-ul a fost trimis cu succes', 'အောင်မြင်စွာကိုစလှေတျအီးမေးလ်ပို့ရန်', 'Imeeli firanṣẹ ni ifijišẹ', 'Imel da aka aika da nasarar', NULL),
(427, 'sms_send_failed', 'Sms send failed. Please try again', 'এসএমএস পাঠানো ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'SMS enviado fallido. Inténtalo de nuevo', 'أرسل الرسائل القصيرة سمز. حاول مرة اخرى', 'एसएमएस भेजना विफल हुआ कृपया पुन: प्रयास करें', 'ایس ایم ایس ناکام ہوگئے. دوبارہ کوشش کریں', '短信发送失败。 请再试一次', 'SMS送信に失敗しました。 もう一度お試しください', 'Sms send falhou. Por favor, tente novamente', 'Ошибка отправки sms не удалась. Пожалуйста, попробуйте еще раз', 'Lenvoi de sms a échoué. Veuillez réessayer', 'SMS 전송에 실패했습니다. 다시 시도하십시오.', 'SMS senden fehlgeschlagen. Bitte versuche es erneut', 'Invio SMS fallito. Per favore riprova', 'ส่ง sms ล้มเหลว กรุณาลองอีกครั้ง', 'A sms küldés nem sikerült. Kérlek próbáld újra', 'Sms verzenden mislukt. Probeer het opnieuw', 'Mittere SMS defecit. Quaero, iterum conare', 'Sms send gagal Silahkan coba lagi', 'SMS göndermek başarısız oldu. Lütfen tekrar deneyin', 'Η αποστολή SMS απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'پیامک ارسال نشد لطفا دوباره تلاش کنید', 'Hantar sms gagal. Sila cuba lagi', 'SMS పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'Sms அனுப்ப முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'એસએમએસ મોકલવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wysłać SMS-a. Proszę spróbuj ponownie', 'Не вдалося надіслати SMS-повідомлення. Будь ласка спробуйте ще раз', 'ਐਸਐਮਐਸ ਭੇਜਣਾ ਅਸਫਲ ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Sms-ul trimite nu a reușit. Vă rugăm să încercați din nou', 'sms ပျက်ကွက်ပေးပို့ပါ။ ထပ်ကြိုးစားပါ', 'Ifiranṣẹ Sms ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Sms aika ya kasa. Da fatan a sake gwadawa', NULL),
(428, 'sms_send_success', 'Sms sent successfully', 'এসএমএস সফলভাবে পাঠানো হয়েছে', 'SMS enviado satisfactoriamente', 'تم إرسال الرسائل القصيرة بنجاح', 'एसएमएस सफलतापूर्वक भेजा गया', 'ایس ایم ایس کامیابی سے بھیجے گئے', '短信发送成功', 'SMSが正常に送信されました', 'SMS enviado com êxito', 'Sms успешно отправлен', 'SMS envoyé avec succès', 'SMS가 성공적으로 보냈습니다.', 'SMS erfolgreich versendet', 'SMS inviato correttamente', 'ส่ง sms เรียบร้อยแล้ว', 'A sms sikeresen elküldve', 'SMS succesvol verzonden', 'SMS misit feliciter', 'Sms berhasil dikirim', 'SMS başarıyla gönderildi', 'Τα SMS αποστέλλονται με επιτυχία', 'اس ام اس با موفقیت ارسال شد', 'Sms dihantar berjaya', 'Sms విజయవంతంగా పంపబడింది', 'Sms வெற்றிகரமாக அனுப்பப்பட்டது', 'એસએમએસ સફળતાપૂર્વક મોકલ્યો છે', 'SMS wysłany z powodzeniem', 'СМС успішно відправлено', 'SMS ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Sms-urile au fost trimise cu succes', 'အောင်မြင်စွာကိုစလှေတျ sms', 'Sms rán ni ifijišẹ', 'Sms ya aika da nasarar', NULL),
(429, 'clickatell_mo_no', 'Mo Number', 'MO সংখ্যা', 'Número Mo', 'مو عدد', 'मो नंबर', 'مو نمبر', '莫数', 'Mo番号', 'Número Mo', 'Номер Mo', 'Mo Number', '모 번호', 'Mo Nummer', 'Numero Mo', 'จำนวนโม', 'Mo szám', 'Mo-nummer', 'Mo Number', 'Nomor Mo', 'Mo Numarası', 'Αριθμός Mo', 'شماره م', 'Nombor Mo', 'మో సంఖ్య', 'மோ எண்', 'મો સંખ્યા', 'Numer Mo', 'Номер Мо', 'ਮੋ ਨੰਬਰ', 'Numărul Mo', 'mo အရေအတွက်', 'Mo Number', 'Mo Number', NULL),
(430, 'setup_your_sms_gateway', 'Please set up your expected sms gateway correctly ', 'অনুগ্রহ করে আপনার প্রত্যাশিত এসএমএস গেটওয়ে সঠিকভাবে সেট আপ করুন', 'Configure su puerta de enlace de SMS esperado correctamente', 'يرجى إعداد بوابة الرسائل القصيرة المتوقعة بشكل صحيح', 'कृपया अपना अपेक्षित एसएमएस गेटवे सही ढंग से सेट करें', 'براہ مہربانی اپنے متوقع ایس ایم ایس گیٹ وے کو صحیح طریقے سے مقرر کریں', '请正确设置您的预期的短信网关', '予想されるSMSゲートウェイを正しく設定してください', 'Configure o seu esperado sms gateway corretamente', 'Правильно настройте свой ожидаемый sms-шлюз', 'Veuillez configurer votre passerelle SMS attendue correctement', '예상되는 SMS 게이트웨이를 올바르게 설정하십시오.', 'Bitte richten Sie Ihr erwartetes SMS-Gateway korrekt ein', 'Si prega di configurare il vostro gateway sms previsto correttamente', 'โปรดตั้งค่าเกตเวย์ sms ที่คุณต้องการโดยถูกต้อง', 'Kérjük, helyesen állítsa be az elvárt sms-átjárót', 'Stel uw verwachte sms-gateway correct in', 'SMS porta quaeso erigas bene sperandum', 'Harap siapkan gateway sms yang Anda harapkan dengan benar', 'Lütfen beklenen sms ağ geçidinizi doğru bir şekilde ayarlayın.', 'Ρυθμίστε σωστά την αναμενόμενη πύλη sms', 'لطفا دروازه مورد انتظار اس ام اس مورد نظر را درست تنظیم کنید', 'Sila buat gerbang sms yang diharapkan', 'దయచేసి మీ ఆశించిన SMS గేట్ సరిగ్గా అమర్చండి', 'உங்கள் எதிர்பார்க்கப்படும் எஸ்எம்எஸ் நுழைவாயை சரியாக அமைக்கவும்', 'કૃપા કરીને તમારા અપેક્ષિત એસએમએસ ગેટવેને યોગ્ય રીતે સેટ કરો', 'Proszę poprawnie skonfigurować oczekiwaną bramę sms', 'Будь ласка, правильно налаштуйте очікуваний шлюз sms', 'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਉਮੀਦਵਾਰ SMS ਗੇਟਵੇ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਸੈਟ ਅਪ ਕਰੋ', 'Vă rugăm să configurați corect poarta de așteptare pentru sms', 'မှန်မှန်ကန်ကန်သင့်ရဲ့မျှော်မှန်း sms ကိုတံခါးပေါက်ကို set up ကို ကျေးဇူးပြု.', 'Jowo gbe ọna ẹnu sms ti o ti ṣe yẹ rẹ silẹ tọ', 'Don Allah a kafa hanyar ƙoƙarin sms da ake tsammani a daidai', NULL),
(431, 'already_exist', 'This data already exists in database. Please try another one.', 'এই ডেটা ডাটাবেসে ইতিমধ্যে বিদ্যমান। অন্য একটি চেষ্টা করুন।', 'Esta información ya existe en la base de datos. Por favor prueba con otro.', 'هذه البيانات موجودة بالفعل في قاعدة البيانات. الرجاء محاولة تجربة أخرى.', 'डेटाबेस में यह डेटा पहले से मौजूद है कृपया कोई दूसरा प्रयास करें', 'ڈیٹا بیس میں یہ ڈیٹا پہلے ہی موجود ہے. براہ کرم ایک اور کوشش کریں.', '这个数据已经存在于数据库中。 请尝试另一个。', 'このデータはすでにデータベースに存在します。 別のものをお試しください。', 'Estes dados já existem no banco de dados. Por favor, tente outro.', 'Эти данные уже существуют в базе данных. Попробуйте еще один.', 'Ces données existent déjà dans la base de données. Sil vous plaît essayer un autre.', '이 데이터는 이미 데이터베이스에 있습니다. 다른 것을 시도하십시오.', 'Diese Daten existieren bereits in der Datenbank. Bitte versuchen Sie es mit einem anderen.', 'Questi dati esistono già nel database. Si prega di provare un altro.', 'ข้อมูลนี้มีอยู่แล้วในฐานข้อมูล โปรดลองอีกอันหนึ่ง', 'Ez az adat már létezik az adatbázisban. Próbálj ki egyet.', 'Deze gegevens bestaan al in de database. Probeer een andere.', 'Hoc etiam existit in database notitia. Aliquam alia.', 'Data ini sudah ada di database. Silakan coba yang lain.', 'Bu veriler zaten veritabanında mevcut. Lütfen başka bir tane deneyin.', 'Αυτά τα δεδομένα υπάρχουν ήδη στη βάση δεδομένων. Δοκιμάστε άλλο.', 'این اطلاعات قبلا در پایگاه داده وجود دارد. لطفا یکی دیگر را امتحان کنید', 'Data ini sudah wujud dalam pangkalan data. Sila cuba yang lain.', 'ఈ డేటా ఇప్పటికే డేటాబేస్లో ఉంది. దయచేసి మరొకదాన్ని ప్రయత్నించండి.', 'தரவு ஏற்கனவே தரவுத்தளத்தில் உள்ளது. தயவுசெய்து வேறொரு ஒன்றை முயற்சிக்கவும்.', 'ડેટા ડેટાબેઝમાં આ ડેટા પહેલેથી હાજર છે. કૃપા કરી બીજી કોઈનો પ્રયાસ કરો.', 'Te dane już istnieją w bazie danych. Proszę spróbować innego.', 'Ці дані вже існують у базі даних. Будь ласка, спробуйте інший.', 'ਇਹ ਡੇਟਾ ਡੇਟਾਬੇਸ ਵਿੱਚ ਮੌਜੂਦ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਹੋਰ ਕੋਈ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Aceste date există deja în baza de date. Încearcă altul.', 'ဒီ data ပြီးသားဒေတာဘေ့စရှိ။ အခြားတဦးတည်းကြိုးစားပါ။', 'Data yi tẹlẹ wa ni ibi ipamọ data. Jọwọ ṣe idanwo miiran.', 'Wannan bayanai sun riga sun kasance a cikin bayanai. Da fatan a gwada wani.', NULL),
(432, 'valid_file_format_doc', 'Document file format: .pdf, .doc/docx, .ppt/pptx  or .txt', 'ডকুমেন্ট ফাইল ফরমেট: পিডিএফ, .ডক, .ডোসিস ওর .টেক্সট', 'Formato de archivo de documento: pdf, .doc, .docx o .txt', 'تنسيق ملف المستند: بدف أو .doc أو .docx أو .txt', 'दस्तावेज़ फ़ाइल प्रारूप: पीडीएफ, .doc, .docx या .txt', 'دستاویز فائل کی شکل: پی ڈی ایف، .doc، .docx یا .txt', '文档文件格式：pdf，.doc，.docx或.txt', 'ドキュメントファイル形式：pdf、.doc、.docx、または.txt', 'Formato do arquivo de documento: pdf, .doc, .docx ou .txt', 'Формат файла документа: pdf, .doc, .docx или .txt', 'Format de fichier de document: pdf, .doc, .docx ou .txt', '문서 파일 형식 : pdf, .doc, .docx 또는 .txt', 'Dokumentdateiformat: pdf, .doc, .docx oder .txt', 'Formato del documento: pdf, .doc, .docx o .txt', 'รูปแบบไฟล์เอกสาร: pdf, .doc, .docx หรือ. txt', 'Dokumentum fájlformátum: pdf, .doc, .docx vagy .txt', 'Document bestandsformaat: pdf, .doc, .docx of .txt', 'Documentum formae q.e.: pdf, .doc, aut .docx .txt', 'Format file dokumen: pdf, .doc, .docx, atau .txt', 'Belge dosyası biçimi: pdf, .doc, .docx veya .txt', 'Μορφή αρχείου εγγράφου: pdf, .doc, .docx ή .txt', 'فرمت فایل اسناد: pdf، .doc، .docx یا .txt', 'Format fail dokumen: pdf, .doc, .docx atau .txt', 'డాక్యుమెంట్ ఫైల్ ఫార్మాట్: pdf, .doc, .docx లేదా .txt', 'ஆவண கோப்பு வடிவம்: pdf, .doc, .docx அல்லது .txt', 'દસ્તાવેજ ફાઇલ ફોર્મેટ: પીડીએફ, .ડોક, ..docx અથવા .txt', 'Format pliku dokumentu: pdf, .doc, .docx lub .txt', 'Формат файлу документа: pdf, .doc, .docx або .txt', 'ਦਸਤਾਵੇਜ਼ ਫਾਈਲ ਫਾਰਮੈਟ: ਪੀ ਡੀ ਐਫ, .ਡੌਕ, .ਡੌਕਸ ਜਾਂ .txt', 'Formatul fișierului documentului: pdf, .doc, .docx sau .txt', 'စာရွက်စာတမ်းဖိုင်ကို format နဲ့: pdf, .doc, .docx သို့မဟုတ် .txt', 'Faili faili faili: pdf, .doc, .docx or .txt', 'Tsarin fayil na fayil: pdf, .doc, .docx ko .txt', NULL),
(433, 'valid_file_format_img', 'Image file format: .jpg, .jpeg, .png or .gif', 'ইমেজ ফাইল ফরমেট: .জেপিজি, .জেপেগ, .পং ওর .গিফ।', 'Formato de archivo de imagen: .jpg, .jpeg, .png o .gif', 'تنسيق ملف الصورة: .jpg أو .jpeg أو ينغ أو .gif', 'छवि फ़ाइल प्रारूप: .jpg, .jpeg, .png या .gif', 'تصویری فائل کی شکل: .jpg، .jpeg، .png یا .gif', '图像文件格式：.jpg，.jpeg，.png或.gif', '画像ファイル形式：.jpg、.jpeg、.png、.gif', 'Formato do arquivo de imagem: .jpg, .jpeg, .png ou .gif', 'Формат файла изображения: .jpg, .jpeg, .png или .gif', 'Format de fichier image: .jpg, .jpeg, .png ou .gif', '이미지 파일 형식 : .jpg, .jpeg, .png 또는 .gif', 'Bilddateiformat: .jpg, .jpeg, .png oder .gif', 'Formato file immagine: .jpg, .jpeg, .png o .gif', 'รูปแบบไฟล์รูปภาพ: .jpg, .jpeg, .png หรือ. gif', 'Képfájl formátuma: .jpg, .jpeg, .png vagy .gif', 'Afbeeldingsbestandsindeling: .jpg, .jpeg, .png of .gif', 'Image formae q.e.: .jpg, .jpeg, aut png .gif', 'Format file gambar: .jpg, .jpeg, .png, atau .gif', 'Resim dosyası biçimi: .jpg, .jpeg, .png veya .gif', 'Μορφή αρχείου εικόνας: .jpg, .jpeg, .png ή .gif', 'فرمت فایل تصویری: .jpg، .jpeg، .png یا .gif', 'Format fail imej: .jpg, .jpeg, .png atau .gif', 'ఇమేజ్ ఫైల్ ఫార్మాట్: .jpg, .jpeg, .png లేదా .gif', 'பட கோப்பு வடிவமைப்பு: .jpg, .jpeg, .png அல்லது. Gif', 'છબી ફાઇલ ફોર્મેટ: .jpg, .jpeg, .png અથવા .gif', 'Format pliku obrazu: .jpg, .jpeg, .png lub .gif', 'Формат файлу зображень: .jpg, .jpeg, .png або .gif', 'ਚਿੱਤਰ ਫਾਇਲ ਫਾਰਮੈਟ: .jpg, .jpeg, .png ਜਾਂ .gif', 'Formatul fișierului imagine: .jpg, .jpeg, .png sau .gif', 'image file format နဲ့: .jpg, တွေဖြစ်တဲ့ JPEG, .png သို့မဟုတ် .gif', 'Aworan faili kika: .jpg, .jpeg, .png tabi .gif', 'Tsarin fayil na hotuna: .jpg, .jpeg, .png ko .gif', NULL),
(434, 'select_valid_file_format', 'Please select a valid file format.', 'একটি ভ্যালিড ফাইল ফরমেট নির্বাচন করুন।', 'Seleccione un formato de archivo válido.', 'الرجاء تحديد تنسيق ملف صالح.', 'कृपया एक वैध फ़ाइल प्रारूप का चयन करें।', 'براہ کرم ایک درست فائل کی شکل منتخب کریں.', '请选择一个有效的文件格式。', '有効なファイル形式を選択してください。', 'Selecione um formato de arquivo válido.', 'Выберите допустимый формат файла.', 'Veuillez sélectionner un format de fichier valide', '유효한 파일 형식을 선택하십시오.', 'Bitte wählen Sie ein gültiges Dateiformat.', 'Si prega di selezionare un formato di file valido.', 'โปรดเลือกรูปแบบไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlformátumot.', 'Selecteer alstublieft een geldig bestandsformaat.', 'Placere eligere formae q.e. valet.', 'Silahkan pilih format file yang valid.', 'Lütfen geçerli bir dosya biçimi seçin.', 'Επιλέξτε μια έγκυρη μορφή αρχείου.', 'لطفا یک فرمت فایل معتبر را انتخاب کنید', 'Sila pilih format fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ ఆకృతిని ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பு வடிவத்தை தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ ફોર્મેટ પસંદ કરો.', 'Wybierz prawidłowy format pliku.', 'Будь ласка, виберіть правильний формат файлу.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਫਾਰਮੈਟ ਚੁਣੋ.', 'Selectați un format de fișier valid.', 'ခိုင်လုံသောဖိုင် format ကိုရွေးချယ်ပါ။', 'Jọwọ yan ọna kika faili ti o wulo.', 'Da fatan za a zaɓi tsarin fayil mai aiki.', NULL),
(435, 'select_a_file', 'Please select a valid file.', 'দয়া করে একটি ভ্যালিড ফাইল নির্বাচন করুন।', 'Seleccione un archivo válido.', 'الرجاء تحديد ملف صالح.', 'कृपया एक मान्य फ़ाइल चुनें', 'براہ کرم ایک درست فائل منتخب کریں.', '请选择一个有效的文件。', '有効なファイルを選択してください。', 'Selecione um arquivo válido.', 'Выберите действительный файл.', 'Veuillez sélectionner un fichier valide', '올바른 파일을 선택하십시오.', 'Bitte wählen Sie eine gültige Datei.', 'Si prega di selezionare un file valido.', 'โปรดเลือกไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlt.', 'Selecteer alstublieft een geldig bestand.', 'Placere eligere file valet.', 'Silahkan pilih file yang valid.', 'Lütfen geçerli bir dosya seçin.', 'Επιλέξτε ένα έγκυρο αρχείο.', 'لطفا یک فایل معتبر را انتخاب کنید', 'Sila pilih fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ను ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பைத் தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ પસંદ કરો.', 'Proszę wybrać poprawny plik.', 'Будь ласка, виберіть дійсний файл.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਚੁਣੋ.', 'Selectați un fișier valid.', 'ခိုင်လုံသောဖိုင်ကိုရွေးပေးပါ။', 'Jọwọ yan faili ti o wulo.', 'Da fatan a zaɓi fayil mai aiki.', NULL),
(436, 'input_valid_amount', 'Please input valid amount.', 'দয়া করে ভ্যালিড পরিমাণ ইনপুট করুন।', 'Por favor ingrese un monto válido.', 'الرجاء إدخال مبلغ صالح.', 'कृपया वैध राशि इनपुट करें', 'براہ کرم ان پٹ درست رقم.', '请输入有效金额。', '有効な金額を入力してください。', 'Digite o valor válido.', 'Введите действительную сумму.', 'Veuillez entrer un montant valide', '유효한 금액을 입력하십시오.', 'Bitte geben Sie den gültigen Betrag ein.', 'Si prega di inserire un importo valido.', 'โปรดป้อนจำนวนที่ถูกต้อง', 'Kérem adja meg az érvényes összeget.', 'Voer een geldig bedrag in.', 'Initus placere ratum tantum.', 'Mohon masukan jumlah yang benar.', 'Lütfen geçerli tutarı giriniz.', 'Καταχωρίστε έγκυρο ποσό.', 'لطفا مقدار معتبر وارد کنید', 'Sila masukkan jumlah yang sah.', 'దయచేసి చెల్లని మొత్తం ఇన్పుట్ చేయండి.', 'தயவுசெய்து உள்ளீடு செல்லுபடியான தொகை.', 'કૃપા કરીને માન્ય રકમ ઇનપુટ કરો.', 'Wprowadź prawidłową kwotę.', 'Будь ласка, введіть дійсну суму.', 'ਕਿਰਪਾ ਕਰਕੇ ਯੋਗ ਰਕਮ ਇੰਪੁੱਟ ਕਰੋ.', 'Introduceți suma validă.', 'input ကိုတရားဝင်ငွေပမာဏပါ။', 'Jọwọ iye owo titẹ sii.', 'Da fatan shigar da adadin shigarwa.', NULL),
(437, 'input_valid_payment_setting', 'Please input correct payment setting.', 'প্লিজ ইনপুট কারেক্ট পেমেন্ট সেটিং।', 'Ingrese la configuración de pago correcta.', 'الرجاء إدخال إعداد الدفع الصحيح.', 'कृपया सही भुगतान सेटिंग इनपुट करें।', 'برائے مہربانی درست ادائیگی کی ترتیب میں ان پٹ', '请输入正确的付款设置。', '正しい支払い設定を入力してください。', 'Por favor, insira a configuração de pagamento correta.', 'Введите правильную настройку платежа.', 'Veuillez entrer le paramètre de paiement correct.', '올바른 지불 설정을 입력하십시오.', 'Bitte geben Sie die richtige Zahlungseinstellung ein.', 'Si prega di inserire le impostazioni di pagamento corrette.', 'โปรดป้อนการตั้งค่าการชำระเงินที่ถูกต้อง', 'Kérjük, adja meg a helyes fizetési beállítást.', 'Voer de juiste betalingsinstelling in.', 'Initus bene placent mercedem occasum.', 'Harap masukan pengaturan pembayaran yang benar.', 'Lütfen doğru ödeme ayarını giriniz.', 'Εισαγάγετε τη σωστή ρύθμιση πληρωμής.', 'لطفا تنظیم پرداخت درست را وارد کنید.', 'Sila masukkan tetapan pembayaran yang betul.', 'దయచేసి సరైన చెల్లింపు సెట్టింగ్ను ఇన్పుట్ చేయండి.', 'சரியான கட்டண அமைப்பை உள்ளிடுக.', 'કૃપા કરીને યોગ્ય ચુકવણી સેટિંગ ઇનપુટ કરો.', 'Wprowadź poprawne ustawienie płatności.', 'Будь ласка, введіть правильний параметр оплати.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਹੀ ਭੁਗਤਾਨ ਸੈਟਿੰਗ ਇਨਪੁਟ ਕਰੋ.', 'Introduceți setarea de plată corectă.', 'input ကိုမှန်ကန်ငွေပေးချေမှု setting ကိုပါ။', 'Jọwọ ṣe ipinnu eto sisan ti o tọ.', 'Da fatan a shigar da saitin biya daidai.', NULL),
(438, 'in_demo_db_backup', 'In demo database backp is disabled.', 'ডেমো ডেটাবেস ব্যাকআপে বন্ধ করা আছে।', 'En la copia de seguridad de la base de datos demo está desactivado', 'في النسخ الاحتياطي قاعدة البيانات التجريبي معطل.', 'डेमो डेटाबेस बैकअप में अक्षम है', 'ڈیمو ڈیٹا بیس کا بیک اپ غیر فعال ہے.', '在演示数据库中，备份被禁用。', 'デモでは、データベースのバックアップが無効になっています。', 'No backup do banco de dados demo está desativado.', 'В демонстрационной базе данных резервное копирование отключено.', 'Dans la sauvegarde de base de données démo est désactivé.', '데모에서 데이터베이스 백업이 비활성화되었습니다.', 'In der Demo ist die Datenbanksicherung deaktiviert.', 'Nel backup del database demo è disabilitato.', 'ในการสำรองฐานข้อมูลตัวอย่างถูกปิดใช้งาน', 'A demo adatbázis-mentés le van tiltva.', 'In demo-database is back-up uitgeschakeld.', 'In demo database tergum is disabled.', 'Dalam backup database demo dinonaktifkan.', 'Demo veritabanında yedekleme devre dışı bırakıldı.', 'Στην εφεδρική βάση δεδομένων επίδειξης είναι απενεργοποιημένη.', 'در نسخه پشتیبان تهیه نسخه ی نمایشی غیر فعال شده است.', 'Dalam sandaran pangkalan data demo dilumpuhkan.', 'డెమో డేటాబేస్ బ్యాకప్ డిసేబుల్.', 'டெமோ தரவுத்தள காப்பு உள்ள முடக்கப்பட்டுள்ளது.', 'ડેમો ડેટાબેસ બેકઅપ માં અક્ષમ છે.', 'W kopii zapasowej bazy danych demo jest wyłączone.', 'У демо-базі даних резервне копіювання вимкнено.', 'ਡੈਮੋ ਡਾਟਾਬੇਸ ਬੈਕਅੱਪ ਅਯੋਗ ਹੈ.', 'În baza de date demonstrativă, copia de rezervă este dezactivată.', 'သရုပ်ပြဒေတာဘေ့စမှာတော့ backup လုပ်ထားကိုပိတ်ထားသည်။', 'Ni ipamọ afẹyinti ipamọ jẹ alaabo.', 'A cikin dimbin bayanan bayanan yanar gizo an kashe.', NULL),
(439, 'this_room_already_allocated', 'This room already allocated at this time.', 'এই রুমে ইতিমধ্যে এই সময়ে বরাদ্দ করা আছে।', 'Esta habitación ya está asignada en este momento.', 'هذه الغرفة المخصصة بالفعل في هذا الوقت.', 'इस कमरे में पहले से ही इस समय आवंटित किया गया है।', 'اس کمرے کو اس وقت پہلے مختص کردیا گیا ہے.', '这个房间已经在这个时候分配了。', 'この部屋はこの時点ですでに割り当てられています。', 'Este quarto já foi alocado neste momento.', 'Эта комната уже выделена в это время.', 'Cette pièce est déjà allouée à ce moment.', '이 방은 이미이 시간에 할당되었습니다.', 'Dieses Zimmer ist zu dieser Zeit bereits vergeben.', 'Questa stanza è già stata assegnata in questo momento.', 'ห้องนี้มีการจัดสรรไว้แล้วในขณะนี้', 'Ez a szoba már kiosztott ebben az időben.', 'Deze kamer is al toegewezen op dit moment.', 'Hic locus iam ante hoc tempus partita imperia.', 'Kamar ini sudah dialokasikan saat ini.', 'Bu oda zaten bu saatte tahsis edilmiş.', 'Αυτό το δωμάτιο έχει ήδη διατεθεί αυτή τη στιγμή.', 'این اتاق در حال حاضر اختصاص داده شده است.', 'Bilik ini sudah diperuntukkan pada masa ini.', 'ఈ గది ఇప్పటికే ఈ సమయంలో కేటాయించబడింది.', 'இந்த அறை ஏற்கனவே இந்த நேரத்தில் ஒதுக்கப்பட்டுள்ளது.', 'આ ખંડ પહેલેથી જ આ સમયે ફાળવવામાં આવ્યો છે.', 'Ten pokój został już przydzielony w tym momencie.', 'Цей номер уже виділений в цей час.', 'ਇਹ ਕਮਰਾ ਪਹਿਲਾਂ ਹੀ ਇਸ ਸਮੇਂ ਨਿਰਧਾਰਤ ਕੀਤਾ ਗਿਆ ਹੈ.', 'Această cameră deja alocată în acest moment.', 'ဒီအခန်းကပြီးသားဤအချိန်တွင်ခွဲဝေ။', 'Yara yii ti ṣetoto ni akoko yii.', 'Wannan dakin da aka riga aka ba shi a wannan lokaci.', NULL),
(440, 'exam_final_result', 'Exam final result', 'পরীক্ষার চূড়ান্ত ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان حتمی نتیجہ', '考试最终结果', '試験の最終結果', 'Resultado final do exame', 'Окончательный результат экзамена', 'Résultat final de lexamen', '시험 최종 결과', 'Prüfung Endergebnis', 'Esame finale', 'ผลสอบสุดท้าย', 'Vizsga végeredmény', 'Eindresultaat examen', 'Effectus finalis nito', 'Hasil akhir ujian', 'Sınav nihai sonucu', 'Εξέταση τελικού αποτελέσματος', 'نتیجه نهایی آزمون', 'Keputusan akhir peperiksaan', 'తుది ఫలితం పరీక్ష', 'இறுதி முடிவு தேர்வு', 'પરીક્ષાની અંતિમ પરિણામ', 'Egzamin końcowy egzaminu', 'Останній результат іспиту', 'ਇਮਤਿਹਾਨ ਦੇ ਆਖਰੀ ਨਤੀਜੇ', 'Exam final final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ikẹhin ipari', 'Binciken ƙarshe na binciken', NULL),
(441, 'required_field', 'This field is required.', 'ফিল্ড টি  অবশ্যই পূরণ করতে হবে।', 'Este campo es requerido.', 'هذه الخانة مطلوبه.', 'यह फ़ील्ड आवश्यक है.', 'اس کو پر کرنا ضروری ہے.', '这是必填栏。', 'この項目は必須です。', 'Este campo é obrigatório.', 'Это поле обязательно к заполнению.', 'Ce champ est requis.', '이 입력란은 필수 항목입니다.', 'Dieses Feld wird benötigt.', 'Questo campo è obbligatorio.', 'ต้องระบุข้อมูลนี้', 'Ez a mező kötelező.', 'Dit veld is verplicht.', 'Hic ager requiritur.', 'Bagian ini diperlukan.', 'Bu alan gereklidir.', 'Αυτό το πεδίο απαιτείται.', 'این فیلد مورد نیاز است', 'Bidang ini diperlukan.', 'ఈ ఖాళీని తప్పనిసరిగా పూరించవలెను.', 'இந்த புலம் தேவை.', 'આ ક્ષેત્ર જરૂરી છે.', 'To pole jest wymagane.', 'Це поле є обовязковим.', 'ਇਸ ਫੀਲਡ ਦੀ ਲੋੜ ਹੈ.', 'Acest câmp este obligatoriu.', 'ဤစာကွက်လပ်မှာဖြည့်ရန်လိုအပ်ပါသည်။', 'E ni lati se nkan si aye yi.', 'Wannan fillin ana bukatansa.', NULL),
(442, 'enter_valid_email', 'Please enter a valid email address.', 'একটি ভ্যালিড ইমেইল ঠিকানা লিখুন।', 'Por favor, introduce una dirección de correo electrónico válida.', 'رجاء قم بإدخال بريد الكتروني صحيح.', 'कृपया एक वैध ई - मेल एड्रेस डालें।', 'برائے مہربانی قابل قبول ای میل ایڈریس لکھیں.', '请输入有效的电子邮件地址。', '有効なメールアドレスを入力してください。', 'Por favor insira um endereço de e-mail válido.', 'Пожалуйста, введите действительный адрес электронной почты.', 'Sil vous plaît, mettez une adresse email valide.', '유효한 이메일 주소를 입력하세요.', 'Bitte geben Sie eine gültige E-Mail-Adresse ein.', 'Si prega di inserire un indirizzo email valido.', 'กรุณาใส่อีเมล์ที่ถูกต้อง.', 'Kérjük valós e-mail címet adjon meg!', 'Gelieve een geldig e-mailadres in te geven.', 'Please enter inscriptio electronica valida.', 'Silakan isi alamat email.', 'Geçerli bir e.', 'Παρακαλώ εισάγετε μια έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομείου.', 'لطفا یک آدرس ایمیل معتبر وارد کنید.', 'Sila masukkan alamat emel yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్ చిరునామాను నమోదు చేయండి.', 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்.', 'કૃપા કરી કોઈ માન્ય ઇમેઇલ સરનામું દાખલ કરો.', 'Proszę wpisać aktualny adres e-mail.', 'Будь ласка, введіть дійсну адресу електронної пошти.', 'ਇੱਕ ਜਾਇਜ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ.', 'Te rog introdu o adresa de email valida.', 'ကျေးဇူးပြ။ မှန်ကန်သောအီးမေးလ်လိပ်စာကိုထည့်သွင်းပါ။', 'Jowo fun fun wa ni imeli re to je otito.', 'Don Allah shigar da adireshin i-mel mai inganci.', NULL),
(443, 'enter_valid_url', 'Please enter a valid URL.', 'একটি ভ্যালিড ইউআরএল প্রবেশ করুন।', 'Por favor introduzca un URL válido.', 'أدخل رابط صحيح من فضلك.', 'कृपया एक मान्य यूआरएल दर्ज कीजिए।', 'براہ کرم ایک درست URL درج کریں.', '请输入有效网址。', '有効なURLを入力してください。', 'Por favor, insira um URL válido.', 'Пожалуйста, введите корректный адрес.', 'Veuillez entrer une URL valide', '유효한 URL을 입력 해주세요.', 'Bitte geben Sie eine gültige URL ein.', 'Per favore, inserisci un URL valido.', 'โปรดป้อน URL ที่ถูกต้อง.', 'Kérem, írjon be egy érvényes url-t.', 'Voer een geldige URL in.', 'Please enter validum URL.', 'Masukkan URL yang valid', 'Lütfen geçerli bir adres girin.', 'Εισαγάγετε μια έγκυρη διεύθυνση URL.', 'لطفا یک نشانی وب معتبر وارد کنید.', 'Sila masukkan URL yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే URL ను నమోదు చేయండి.', 'சரியான இணைய முகவரியினை பதிவு செய்யவும்.', 'કૃપા કરી માન્ય URL દાખલ કરો', 'Proszę podać poprawny adres URL.', 'Будь ласка, введіть дійсну URL-адресу.', 'ਇੱਕ ਵੈਧ URL ਦਾਖਲ ਕਰੋ.', 'Introduceți o adresă URL validă.', 'ခိုင်လုံသော URL ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ URL ti o wulo.', 'Da fatan a shigar da adireshin mai amfani.', NULL),
(444, 'enter_valid_date', 'Please enter a valid date.', 'একটি ভ্যালিড তারিখ লিখুন দয়া করে।', 'Por favor introduzca una fecha valida.', 'ارجوك ادخل تاريخ صحيح.', 'कृपया एक मान्य तिथि प्रविष्ट करें।', 'براہ کرم ایک درست تاریخ درج کریں.', '请输入一个有效的日期。', '有効な日付を入力してください。', 'Por favor insira uma data válida.', 'Пожалуйста, введите правильную дату.', 'Veuillez entrer une date valide.', '유효한 날짜를 입력하십시오.', 'Bitte gib ein korrektes Datum an.', 'Per favore, inserisci una data valida.', 'โปรดป้อนวันที่ที่ถูกต้อง', 'Kérjük, adjon meg egy érvényes dátumot.', 'Vul alstublieft een geldige datum in.', 'Please enter validum diem.', 'Harap masukkan tanggal yang valid.', 'Lütfen geçerli bir tarih giriniz.', 'Παρακαλώ εισάγετε μία έγκυρη ημερομηνία.', 'لطفا یک تاریخ معتبر وارد کنید.', 'Sila masukkan tarikh yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే తేదీని నమోదు చేయండి.', 'செல்லுபடியாகும் தேதி உள்ளிடுக.', 'કૃપા કરી માન્ય તારીખ દાખલ કરો.', 'Proszę wprowadź poprawną datę.', 'Будь ласка, введіть дійсну дату.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਤਾਰੀਖ ਦਰਜ ਕਰੋ', 'Vă rugăm să introduceți o dată validă.', 'မှန်ကန်သောရက်စွဲတစ်ခုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ ọjọ ti o wulo.', 'Da fatan a shigar da kwanan wata mai aiki.', NULL),
(445, 'enter_valid_number', 'Please enter a valid number.', 'দয়া করে একটি ভ্যালিড নম্বর লিখুন।', 'Por favor ingrese un número valido.', 'من فضلك أدخل رقما صالحا.', 'कृपया एक सही संख्या डालिये।', 'براہ مہربانی ایک درست نمبر درج کریں.', '请输入一个有效的号码。', '有効な数値を入力してください。', 'por favor insira um número válido.', 'Пожалуйста, введите корректное число.', 'Sil vous plait, entrez un nombre valide.', '올바른 번호를 입력하십시오.', 'Bitte geben Sie eine gültige Nummer ein.', 'Per favore, inserire un numero valido.', 'โปรดป้อนหมายเลขที่ถูกต้อง', 'Kérjük, adjon meg érvényes számot.', 'Voer alstublieft een geldig nummer in.', 'Please enter validum est numerus.', 'Masukkan nomor yang valid', 'Lütfen geçerli bir numara girin.', 'Παρακαλώ εισάγετε έναν έγκυρο αριθμό.', 'لطفا یک شماره تلفن معتبر وارد کنید.', 'Sila masukkan nombor yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే సంఖ్యను నమోదు చేయండి.', 'சரியான எண்ணை உள்ளிடுக.', 'કૃપા કરી કોઈ માન્ય નંબર દાખલ કરો.', 'Proszę wprowadzić poprawny numer.', 'Введіть дійсний номер.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਪ੍ਰਮਾਣਿਕ ਸੰਖਿਆ ਦਰਜ ਕਰੋ.', 'Introduceți un număr valid.', 'ခိုင်လုံသောအရေအတွက်ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ nọmba nọmba kan.', 'Da fatan a shigar da lambar mai aiki.', NULL),
(446, 'enter_only_digit', 'Please enter only digits.', 'অনুগ্রহ করে শুধুমাত্র সংখ্যা প্রবেশ করান।', 'Por favor ingrese solo dígitos.', 'الرجاء إدخال أرقام فقط.', 'कृपया केवल अंक दर्ज करें।', 'صرف ہندسوں درج کریں.', '请只输入数字。', '数字のみ入力して下さい。', 'Digite apenas dígitos.', 'Пожалуйста, вводите только цифры.', 'Merci de nentrer que des chiffres.', '숫자 만 입력하십시오.', 'Bitte gib nur Ziffern ein.', 'Per favore, inserisci solo cifre.', 'โปรดป้อนตัวเลขเท่านั้น', 'Kérem csak számjegyeket adjon meg.', 'Alleen cijfers invoeren a.u.b.', 'PDF nisi constet.', 'Harap masukkan angka saja.', 'Lütfen sadece rakam giriniz.', 'Παρακαλώ εισάγετε μόνο ψηφία.', 'لطفا فقط رقم را وارد کنید', 'Sila masukkan angka sahaja.', 'దయచేసి అంకెలు మాత్రమే నమోదు చేయండి.', 'இலக்கங்களை மட்டும் உள்ளிடுக.', 'કૃપા કરીને માત્ર અંકો દાખલ કરો', 'Wprowadź tylko cyfry.', 'Будь ласка, введіть лише цифри.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਰਫ ਅੰਕ ਭਰੋ.', 'Te rog introdu doar cifre.', 'သာဂဏန်းရိုက်ထည့်ပေးပါ။', 'Jọwọ tẹ awọn nọmba nikan sii.', 'Da fatan a shigar da lambobi kawai.', NULL),
(447, 'enter_same_value_again', 'Please enter the same value again.', 'আবার একই ভ্যালু লিখুন দয়া করে।', 'Por favor, introduzca el mismo valor de nuevo.', 'من فظلك ادخل نفس القيمة مرة أخرى.', 'कृपया फिर से वही संख्या डालिये।', 'ایک بار پھر ایک ہی قیمت درج کریں.', '请再次填写同等数值。', 'もう一度同じ値を入力してください。', 'Por favor entre com o mesmo valor novamente.', 'Повторите одно и то же значение.', 'Entrez à nouveau la même valeur sil vous plait.', '다시 동일한 값을 입력하십시오.', 'Bitte geben Sie den gleichen Wert erneut ein.', 'Si prega di inserire di nuovo lo stesso valore.', 'โปรดป้อนค่าเดิมอีกครั้ง', 'Kérem, írja be ugyanazt az értéket újra.', 'Voer dezelfde waarde opnieuw in.', 'PDF simile est.', 'Harap masukkan nilai yang sama lagi.', 'Lütfen aynı değeri tekrar giriniz.', 'Εισαγάγετε ξανά την ίδια τιμή.', 'لطفا مجددا همان مقدار را وارد کنید.', 'Sila masukkan nilai yang sama sekali lagi.', 'దయచేసి మళ్ళీ అదే విలువను నమోదు చేయండి.', 'மறுபடியும் அதே மதிப்பை அழுத்தவும்.', 'કૃપા કરીને ફરીથી સમાન મૂલ્ય દાખલ કરો.', 'Wprowadź ponownie tę samą wartość.', 'Будь ласка, введіть те саме значення знову.', 'ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਉਹੀ ਮੁੱਲ ਦਰਜ ਕਰੋ.', 'Introduceți din nou aceeași valoare.', 'ထပ်တူညီတဲ့တန်ဖိုးကိုထည့်ပေးပါ။', 'Jowo tẹ iye kanna naa lẹẹkansi.', 'Da fatan a sake shigar da wannan darajar.', NULL),
(448, 'pls_fix_this', 'Please fix this field.', 'এইটা ঠিক করুন।', 'Por favor arregla este campo.', 'الرجاء إصلاح هذا الحقل.', 'कृपया यह फ़ील्ड ठीक करें।', 'براہ مہربانی اس فیلڈ کو ٹھیک کریں.', '请修复这一块。', 'このフィールドを直してください。', 'Por favor, corrija este campo.', 'Исправьте это поле.', 'Veuillez corriger ce champ.', '이 항목을 수정하여주십시오.', 'Bitte repariere dieses Feld.', 'Si prega di correggere questo campo.', 'โปรดแก้ไขฟิลด์นี้', 'Kérlek, javítsd ki ezt a mezőt.', 'Corrigeer dit veld.', 'Placere figere ipsa cellula compleatur.', 'Perbaiki bidang ini', 'Bu alanı düzeltin lütfen.', 'Παρακαλώ διορθώστε αυτό το πεδίο.', 'لطفا این فیلد را اصلاح کنید', 'Sila betulkan medan ini.', 'దయచేసి ఈ ఫీల్డ్ను పరిష్కరించండి.', 'தயவுசெய்து இந்த களத்தை சரிசெய்யவும்.', 'કૃપા કરી આ ફીલ્ડને ઠીક કરો.', 'Proszę poprawić to pole.', 'Виправте це поле.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਖੇਤਰ ਨੂੰ ਠੀਕ ਕਰੋ.', 'Vă rugăm să remediați acest câmp.', 'ဒီလယ်ကို fix ပေးပါ။', 'Jọwọ ṣatunkọ aaye yii.', 'Da fatan a gyara wannan filin.', NULL),
(449, 'permission_denied', 'You have no permission to access this page.', 'আপনি এই পৃষ্ঠা অ্যাক্সেস করার অনুমতি নেই।', 'No tienes permiso para acceder a esta página.', 'ليس لديك إذن للدخول إلى هذه الصفحة.', 'आपको इस पृष्ठ को एक्सेस करने की अनुमति नहीं है।', 'آپ کو اس صفحہ تک رسائی حاصل کرنے کی اجازت نہیں ہے.', '您无权访问此页面。', 'このページにアクセスする権限はありません。', 'Você não tem permissão para acessar esta página.', 'У вас нет разрешения на доступ к этой странице.', 'Vous nêtes pas autorisé à accéder à cette page.', '이 페이지에 액세스 할 수있는 권한이 없습니다.', 'Sie haben keine Berechtigung, auf diese Seite zuzugreifen.', 'Non hai il permesso di accedere a questa pagina.', 'คุณไม่มีสิทธิ์เข้าถึงหน้านี้', 'Nincs engedélye ennek az oldalnak az elérésére.', 'U hebt geen toestemming om deze pagina te openen.', 'Nullas tibi accessere hanc paginam permission.', 'Anda tidak memiliki izin untuk mengakses halaman ini.', 'Bu sayfaya erişmek için herhangi bir iznin yok.', 'Δεν έχετε καμία άδεια πρόσβασης σε αυτήν τη σελίδα.', 'شما اجازه دسترسی به این صفحه ندارید.', 'Anda tidak mempunyai kebenaran untuk mengakses halaman ini.', 'ఈ పేజీని ప్రాప్యత చేయడానికి మీకు అనుమతి లేదు.', 'இந்தப் பக்கத்தை அணுக உங்களுக்கு அனுமதி இல்லை.', 'આ પૃષ્ઠને ઍક્સેસ કરવાની તમારી પાસે કોઈ પરવાનગી નથી', 'Nie masz uprawnień dostępu do tej strony.', 'Ви не маєте дозволу на доступ до цієї сторінки.', 'ਤੁਹਾਨੂੰ ਇਸ ਪੇਜ ਨੂੰ ਐਕਸੈਸ ਕਰਨ ਦੀ ਕੋਈ ਅਨੁਮਤੀ ਨਹੀਂ ਹੈ.', 'Nu aveți permisiunea de a accesa această pagină.', 'သင်ဤစာမကျြနှာကိုဝင်ရောက်ဖို့မခွင့်ပြုချက်ရှိသည်။', 'O ko ni igbanilaaye lati wọle si oju-ewe yii.', 'Ba ku da izini don samun damar wannan shafin.', NULL),
(450, 'invalid_transaction_pls_try_again', 'Invalid transaction please try again.', 'ইনভ্যালিড লেনদেন আবার চেষ্টা করুন।', 'Transacción inválida, inténtalo de nuevo.', 'المعاملة غير صالحة يرجى المحاولة مرة أخرى.', 'अमान्य लेनदेन कृपया फिर से प्रयास करें', 'غلط ٹرانزیکشن براہ کرم دوبارہ کوشش کریں.', '无效的交易请再试一次。', 'トランザクションが無効です。もう一度お試しください。', 'Transação inválida, tente novamente.', 'Недействительные транзакции повторите попытку.', 'Transaction non valide, veuillez réessayer.', '잘못된 거래입니다. 다시 시도하십시오.', 'Ungültige Transaktion. Bitte versuche es erneut.', 'Transazione non valida, riprova.', 'ธุรกรรมไม่ถูกต้องโปรดลองอีกครั้ง', 'Érvénytelen ügylet, próbáld újra.', 'Ongeldige transactie probeer het opnieuw.', 'Aliquam nulla re.', 'Transaksi tidak valid silahkan dicoba lagi.', 'Geçersiz işlem lütfen tekrar deneyin.', 'Μη έγκυρη συναλλαγή δοκιμάστε ξανά.', 'معامله نامعتبر لطفا دوباره امتحان کنید', 'Transaksi tidak sah sila cuba lagi.', 'చెల్లని లావాదేవీ దయచేసి మళ్ళీ ప్రయత్నించండి.', 'தவறான பரிவர்த்தனை மீண்டும் முயற்சிக்கவும்.', 'અમાન્ય વ્યવહાર ફરીથી પ્રયાસ કરો.', 'Nieprawidłowa transakcja, spróbuj ponownie.', 'Недійсна транзакція. Повторіть спробу.', 'ਗਲਤ ਟ੍ਰਾਂਜੈਕਸ਼ਨ ਫਿਰ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Tranzacție nevalidă încercați din nou.', 'မှားနေသောငွေပေးငွေယူထပ်ကြိုးစားကြည့်ပါ။', 'Iṣowo idaniloju ko tọ gbiyanju tun gbiyanju.', 'Kasuwanci mara inganci a sake gwadawa.', NULL),
(451, 'payment_success', 'Payment has been successfully.', 'পেমেন্ট সফলভাবে হয়েছে।', 'El pago ha sido exitoso.', 'تم الدفع بنجاح.', 'भुगतान सफलतापूर्वक किया गया है', 'ادائیگی کامیاب ہوگئی ہے.', '付款已成功。', '支払いは正常に完了しました。', 'O pagamento foi feito com sucesso.', 'Оплата прошла успешно.', 'Le paiement a été effectué avec succès.', '지불이 완료되었습니다.', 'Die Zahlung wurde erfolgreich ausgeführt.', 'Il pagamento è andato a buon fine.', 'การชำระเงินสำเร็จแล้ว', 'A kifizetés sikeresen megtörtént.', 'De betaling is succesvol verlopen.', 'Solucionis fuerit feliciter.', 'Pembayaran sudah berhasil', 'Ödeme başarıyla yapıldı.', 'Η πληρωμή ολοκληρώθηκε με επιτυχία.', 'پرداخت با موفقیت انجام شده است', 'Pembayaran telah berjaya.', 'చెల్లింపు విజయవంతంగా ఉంది.', 'கட்டணம் வெற்றிகரமாக உள்ளது.', 'ચુકવણી સફળતાપૂર્વક કરવામાં આવી છે', 'Płatność została pomyślnie.', 'Оплата була успішною.', 'ਭੁਗਤਾਨ ਸਫਲਤਾਪੂਰਵਕ ਕੀਤਾ ਗਿਆ ਹੈ', 'Plata a fost efectuată cu succes.', 'ငွေပေးချေမှုရမည့်အောင်မြင်စွာဖြစ်ခဲ့သည်။', 'Isanwo ti wa ni ifijišẹ.', 'Biyan bashi ya samu nasarar.', NULL),
(452, 'payment_failed', 'Payment failed. Please try again.', 'পেমেন্ট ব্যর্থ হয়েছে. অনুগ্রহপূর্বক আবার চেষ্টা করুন।', 'Pago fallido. Inténtalo de nuevo.', 'عملية الدفع فشلت. حاول مرة اخرى.', 'भुगतान असफल हुआ। कृपया पुन: प्रयास करें।', 'ادائیگی ناکام ہوگئی. دوبارہ کوشش کریں.', '支付失败。 请再试一次。', '支払いに失敗しました。 もう一度お試しください。', 'Pagamento falhou. Por favor, tente novamente.', 'Платеж не прошел. Пожалуйста, попробуйте еще раз.', 'Paiement échoué. Veuillez réessayer.', '결제 실패. 다시 시도하십시오.', 'Bezahlung fehlgeschlagen. Bitte versuche es erneut.', 'Pagamento fallito. Per favore riprova.', 'การชำระเงินล้มเหลว กรุณาลองอีกครั้ง.', 'Fizetés meghiúsult. Kérlek próbáld újra.', 'Betaling mislukt. Probeer het opnieuw.', 'Payment defecit. Quaero, iterum conare.', 'Pembayaran gagal. Silahkan coba lagi', 'Ödeme başarısız. Lütfen tekrar deneyin.', 'Η πληρωμή απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'پرداخت ناموفق. لطفا دوباره تلاش کنید.', 'Pembayaran gagal. Sila cuba lagi.', 'చెల్లింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'கட்டணம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ચૂકવણી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Płatność nie powiodła się. Proszę spróbuj ponownie.', 'Оплата не виконана. Будь ласка спробуйте ще раз.', 'ਭੁਗਤਾਨ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Plata esuata. Vă rugăm să încercați din nou.', 'ငွေပေးချေမှုရမည့်မအောင်မြင်ခဲ့ပါဘူး။ ထပ်ကြိုးစားပါ။', 'Isanwo ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Baya ya biya. Da fatan a sake gwadawa.', NULL),
(453, 'you_have_remain_character', 'You have remain character/ letter ', 'আপনার অক্ষর বাকি আছে।', 'Has quedado personaje / carta', 'لديك حرف / حرف', 'आप चरित्र / पत्र रह गए हैं', 'آپ کا کردار / خط باقی ہے', '你保持字符/字母', 'あなたは文字/文字のままです', 'Você permaneceu caráter / carta', 'У вас есть символ / письмо', 'Vous avez reste caractère / lettre', '문자 / 문자로 남았습니다.', 'Du hast Charakter / Brief behalten', 'Hai carattere / lettera rimasti', 'คุณยังมีตัวอักษร / ตัวอักษร', 'Ön továbbra is karakter / betű marad', 'Je bent karakter / letter gebleven', 'Vos autem manent ingenii / litterae', 'Anda tetap memiliki karakter / huruf', 'Karakter / mektup kalmışsın', 'Έχετε παραμείνει χαρακτήρα / γράμμα', 'شما شخصیت / نامه را باقی میگذارید', 'Anda mempunyai watak / huruf tetap', 'మీరు అక్షరం / అక్షరం', 'நீங்கள் எழுத்து / கடிதமாகவே இருக்க வேண்டும்', 'તમે અક્ષર / અક્ષર રહેલા છે', 'Pozostałeś postacią / literą', 'Ви залишитеся символом / листом', 'ਤੁਸੀਂ ਅੱਖਰ / ਪੱਤਰ ਰਹੇ ਹੋ', 'Tu rămâi caracter / scrisoare', 'သငျသညျဇာတ်ကောင် / အက္ခရာဆက်လက်တည်ရှိကြပါပြီ', 'O ti wa ni iwa / lẹta', 'Ka kasance hali / wasika', NULL),
(454, 'privilege_not_setting', 'The Role Permission for this user not yet set.', 'এই ব্যবহারকারীর জন্য ভূমিকা অনুমতি এখনও সেট করা হয়নি।', 'El permiso de función para este usuario aún no se ha establecido.', 'لم يتم تعيين إذن الدور لهذا المستخدم بعد.', 'इस उपयोगकर्ता के लिए भूमिका अनुमति अभी तक सेट नहीं है', 'اس صارف کیلئے ابھی تک کردار کی اجازت نہیں ہے.', '此用户的角色权限尚未设置。', 'このユーザーのロール権限はまだ設定されていません。', 'A Permissão de Função para este usuário ainda não está configurado.', 'Разрешение роли для этого пользователя еще не установлено.', 'Lautorisation de rôle pour cet utilisateur nest pas encore définie.', '이 사용자에 대한 역할 권한이 아직 설정되지 않았습니다.', 'Die Rollenberechtigung für diesen Benutzer wurde noch nicht festgelegt.', 'Autorizzazione ruolo per questo utente non ancora impostato.', 'สิทธิ์การใช้งานบทบาทสำหรับผู้ใช้รายนี้ยังไม่ได้ตั้งค่า', 'A szerepkör engedélye erre a felhasználóra még nincs beállítva.', 'De rolmachtiging voor deze gebruiker is nog niet ingesteld.', 'De munere licentiam concedere quod nondum user set.', 'Izin Peran untuk pengguna ini belum ditetapkan.', 'Bu kullanıcı için Role Permission henüz ayarlanmadı.', 'Η άδεια ρόλου για αυτόν το χρήστη δεν έχει οριστεί ακόμα.', 'مجوز نقش برای این کاربر هنوز تعیین نشده است.', 'Kebenaran Peranan untuk pengguna ini belum ditetapkan.', 'ఈ వినియోగదారు కోసం రోల్ అనుమతి ఇంకా సెట్ చేయబడలేదు.', 'இந்த பயனருக்கான ரோல் அனுமதி இன்னும் அமைக்கப்படவில்லை.', 'આ વપરાશકર્તા માટે રોલ પરવાનગી હજુ સુધી સેટ નથી.', 'Uprawnienia roli dla tego użytkownika jeszcze nie zostały ustawione.', 'Рольовий дозвіл для цього користувача ще не встановлено.', 'ਇਸ ਉਪਭੋਗਤਾ ਲਈ ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ ਅਜੇ ਵੀ ਸੈਟ ਨਹੀਂ ਕੀਤੀ ਗਈ.', 'Permisiunea de rol pentru acest utilizator nu a fost încă setată.', 'သေးမသတ်မှတ်ဒီအသုံးပြုသူများအတွက်အခန်းက္ပခွင့်ပြုချက်။', 'Igbese Ilana fun olumulo yii ko sibẹsibẹ ṣeto.', 'Ƙungiyar izinin mai amfani ba tukuna an saita ba.', NULL),
(455, 'add_syllabus_instruction', 'Please add academic year before create syllabus.', 'পাঠ্যসূচী তৈরি করার আগে অনুগ্রহপূর্বক  একাডেমিক বছর অ্যাড করুন।', 'Agregue el año académico antes de crear el plan de estudios.', 'يرجى إضافة العام الدراسي قبل إنشاء المنهج.', 'पाठ्यक्रम बनाने से पहले शैक्षणिक वर्ष जोड़ें।', 'نصاب کو تخلیق کرنے سے پہلے تعلیمی سال شامل کریں.', '请在创建教学大纲之前添加学年。', 'シラバスを作成する前に学年を追加してください。', 'Por favor, adicione ano acadêmico antes de criar programas.', 'Пожалуйста, добавьте учебный год до создания учебного плана.', 'Veuillez ajouter une année académique avant de créer un syllabus.', '교과를 만들기 전에 학년을 추가하십시오.', 'Bitte fügen Sie akademisches Jahr vor dem Erstellen des Lehrplans hinzu.', 'Per favore aggiungi lanno accademico prima di creare il programma.', 'กรุณาเพิ่มปีการศึกษาก่อนที่จะสร้างหลักสูตร', 'Kérjük, add meg az egyetemi évet a tanterv létrehozása előtt.', 'Voeg academiejaar toe voordat u een syllabus maakt.', 'Anno ante partum aliter digerere velit academic add.', 'Harap tambahkan tahun akademik sebelum membuat silabus.', 'Müfredat oluşturmadan önce lütfen akademik yıl ekleyin.', 'Παρακαλείσθε να προσθέσετε ακαδημαϊκό έτος πριν δημιουργήσετε το αναλυτικό πρόγραμμα.', 'لطفا سال تحصیلی را قبل از ایجاد برنامه درسی اضافه کنید.', 'Sila tambah tahun akademik sebelum membuat sukatan pelajaran.', 'దయచేసి సిలబస్ సృష్టించడానికి ముందు విద్యాసంవత్సరం జోడించండి.', 'பாடத்திட்டத்தை உருவாக்க முன் கல்வி ஆண்டு சேர்க்கவும்.', 'અભ્યાસક્રમ બનાવવા પહેલાં શૈક્ષણિક વર્ષ ઉમેરો.', 'Dodaj rok akademicki przed utworzeniem sylabusa.', 'Будь ласка, додайте навчальний рік, перш ніж створювати навчальний план.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਲੇਬਸ ਬਣਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਅਕਾਦਮਿਕ ਸਾਲ ਜੋੜੋ', 'Vă rugăm să adăugați un an universitar înainte de a crea programa.', 'သင်ရိုးညွှန်းတမ်းဖန်တီးမတိုင်မီပညာသင်နှစ် add ပေးပါ။', 'Jowo fi ọjọ-ẹkọ ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-', 'Da fatan za a kara shekara ta ilimi kafin ƙirƙirar salo.', NULL),
(456, 'add_routine_instruction', 'Must be good combination (between room, time, teacher, day & subject) for routine.', 'রুটিনের জন্য ভালো সমন্বয় (রুম, সময়, শিক্ষক, দিন এবং বিষয় মধ্যে) হতে হবে।', 'Debe ser una buena combinación (entre la habitación, el tiempo, el maestro, el día y el tema) para la rutina.', 'يجب أن تكون تركيبة جيدة (بين الغرفة والوقت والمعلم واليوم والموضوع) للروتين.', 'दिनचर्या के लिए अच्छे संयोजन (कमरे, समय, शिक्षक, दिन और विषय के बीच) होना चाहिए।', 'معمول کے لئے اچھا مجموعہ (کمرے، وقت، استاد، دن اور موضوع کے درمیان) ہونا ضروری ہے.', '必须是常规的良好组合（房间，时间，老师，日期和主题）。', 'ルーチンのためには、（部屋、時間、教師、日、テーマの間の）良い組み合わせでなければなりません。', 'Deve ser uma boa combinação (entre sala, tempo, professor, dia e assunto) para a rotina.', 'Должна быть хорошая комбинация (между комнатой, временем, учителем, днем и субъектом) для рутины.', 'Doit être une bonne combinaison (entre la pièce, lheure, lenseignant, le jour et le sujet) pour la routine.', '평소에는 (방, 시간, 선생님, 낮 과목 사이에) 좋은 조합이어야합니다.', 'Muss eine gute Kombination sein (zwischen Raum, Zeit, Lehrer, Tag und Thema) für die Routine.', 'Deve essere una buona combinazione (tra stanza, orario, insegnante, giorno e materia) per la routine.', 'ต้องเป็นชุดที่ดี (ระหว่างห้องเวลาครูวันและเรื่อง) เป็นประจำ', 'Jó kombinációnak kell lennie (helyiség, idő, tanár, nap és téma között) a rutinhoz.', 'Moet een goede combinatie zijn (tussen kamer, tijd, docent, dag en onderwerp) voor routine.', 'Bonum est combination (inter locus, tempus, magister, & re die), pro exercitatione.', 'Harus kombinasi yang baik (antara ruang, waktu, guru, hari & subjek) untuk rutinitas.', 'Rutin için iyi bir kombinasyon (oda, zaman, öğretmen, gün ve konu arasında) olmalı.', 'Πρέπει να είναι καλός συνδυασμός (μεταξύ δωματίου, χρόνου, καθηγητή, μέρα & θέμα) για ρουτίνα.', 'ترکیب مناسب (بین اتاق، زمان، معلم، روز و موضوع) باید به صورت منظم باشد.', 'Harus menjadi kombinasi yang baik (antara bilik, masa, guru, hari & mata pelajaran) untuk rutin.', 'రొటీన్ కోసం మంచి కలయిక (గది, సమయం, గురువు, రోజు & విషయం మధ్య) ఉండాలి.', 'வழக்கமான கலவையாக இருக்க வேண்டும் (அறைக்கு, நேரம், ஆசிரியர், நாள் & பொருள்).', 'નિત્યક્રમ માટે સારા સંયોજન (ખંડ, સમય, શિક્ષક, દિવસ અને વિષય વચ્ચે) હોવો જોઈએ.', 'Musi to być dobra kombinacja (między pokojem, czasem, nauczycielem, dniem i tematem) dla rutyny.', 'Повинно бути гарною комбінацією (між кімнатою, часом, вчителем, днем та предметом) для звичайної роботи.', 'ਰੁਟੀਨ ਲਈ ਵਧੀਆ ਮਿਸ਼ਰਨ ਹੋਣਾ (ਕਮਰੇ, ਸਮੇਂ, ਅਧਿਆਪਕ, ਦਿਨ ਅਤੇ ਵਿਸ਼ੇ ਵਿਚਕਾਰ).', 'Trebuie să fie o combinație bună (între cameră, timp, profesor, zi și subiect) pentru rutină.', 'လုပ်ရိုးလုပ်စဉ်အဘို့ (အခန်းတစ်ခန်းအကြား, အချိန်, ဆရာ, နေ့ & ဘာသာရပ်) ကောင်းသောပေါင်းစပ်ဖြစ်ရမည်။', 'Gbọdọ jẹ apapo ti o dara (laarin yara, akoko, olukọ, ọjọ & akori) fun iṣiro.', 'Dole ne ya kasance haɗin hade (tsakanin ɗaki, lokaci, malami, rana da batun) don na yau da kullum.', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(457, 'exam_attendance_instruction', 'Please create exam schedule for this Exam, Class, Section & Subject.', 'এই পরীক্ষা, ক্লাস, সেকশন ও বিষয়ের জন্য পরীক্ষার সময়সূচী তৈরি করুন।', 'Por favor, cree un cronograma de exámenes para este examen, clase, sección y tema.', 'يرجى إنشاء جدول الامتحانات لهذا الامتحان، فئة، قسم والموضوع.', 'कृपया इस परीक्षा, कक्षा, धारा और विषय के लिए परीक्षा कार्यक्रम बनाएं।', 'برائے مہربانی اس امتحان، کلاس، سیکشن اور موضوع کیلئے امتحان شیڈول بنائیں.', '请为此考试，班级，科目和科目创建考试时间表。', 'この試験、クラス、セクション＆サブジェクトの試験スケジュールを作成してください。', 'Crie um cronograma de exame para este Exame, Classe, Seção e Assunto.', 'Создайте расписание экзаменов для этого экзамена, класса, раздела и темы.', 'Veuillez créer un horaire dexamen pour cet examen, classe, section et sujet.', '이 시험, 클래스, 섹션 및 제목에 대한 시험 일정을 작성하십시오.', 'Bitte erstellen Sie einen Prüfungsplan für diese Prüfung, Klasse, Abschnitt und Thema.', 'Si prega di creare un programma desame per questo esame, classe, sezione e argomento.', 'โปรดสร้างกำหนดการสอบสำหรับการสอบวิชา Class, Section & Subject', 'Kérjük, hozzon létre vizsgaütemezést ehhez a vizsgahoz, osztályhoz, szekcióhoz és tárgyhoz.', 'Maak een examenrooster voor dit examen, de cursus, sectie en onderwerp.', 'Placere creare nito schedule hoc IV: I classis, & Art subiectum.', 'Tolong buat jadwal ujian untuk Ujian, Kelas, Seksi & Subjek ini.', 'Lütfen bu Sınav, Ders, Bölüm ve Konunun sınav takvimini oluşturun.', 'Δημιουργήστε το πρόγραμμα εξετάσεων για αυτήν την εξέταση, κλάση, ενότητα & θέμα.', 'لطفا برنامه آزمون برای این آزمون، کلاس، بخش و موضوع ایجاد کنید.', 'Sila buat jadual peperiksaan untuk Peperiksaan, Kelas, Bahagian & Subjek ini.', 'ఈ పరీక్ష, తరగతి, విభాగం & విషయం కోసం పరీక్ష షెడ్యూల్ సృష్టించండి.', 'இந்தப் பரீட்சை, வகுப்பு, பிரிவு மற்றும் பாடநெறிக்கான பரீட்சை அட்டவணையை உருவாக்கவும்.', 'આ પરીક્ષા, વર્ગ, વિભાગ અને વિષય માટે પરીક્ષા શેડ્યૂલ બનાવો.', 'Utwórz harmonogram egzaminów dla tego egzaminu, klasy, sekcji i przedmiotu.', 'Будь ласка, створіть графік іспитів для цього іспиту, класу, розділу та теми.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ, ਭਾਗ ਅਤੇ ਵਿਸ਼ੇ ਦੇ ਲਈ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਬਣਾਓ.', 'Vă rugăm să creați un program de examen pentru acest examen, clasă, secțiune și subiect.', ', အတန်းအစား, ပုဒ်မ & အကြောင်းအရာကဒီစာမေးပွဲအဘို့အစာမေးပွဲအချိန်ဇယားကိုဖန်တီးပေးပါ။', 'Jowo ṣẹda iṣeto ayẹwo fun Akọwo yii, Kilasi, Abala & Koko.', 'Don Allah a halicci jimillar jarrabawar wannan jarrabawar, Class, Sashe & Sashe.', NULL),
(458, 'exam_mark_instruction', 'Please ensure Exam Schedule and Exam Attendance before Exam Mark Entry.', 'পরীক্ষা মার্ক এণ্ট্রি আগে পরীক্ষার সময়সূচী এবং পরীক্ষা উপস্থিতি নিশ্চিত করুন।', 'Por favor asegúrese de Horario de Examen y Asistencia al Examen antes de la Entrada de la Marca de Examen.', 'يرجى التأكد من جدول الامتحانات وحضور الامتحان قبل دخول علامة الامتحان.', 'परीक्षा मार्क एंट्री से पहले परीक्षा अनुसूची और परीक्षा उपस्थिति सुनिश्चित करें।', 'امتحان مارک انٹری سے پہلے امتحان شیڈول اور امتحان حاضری کو یقینی بنائیں.', '入学考试前，请确保考试时间表和考试出勤。', '試験のマーク入力の前に試験スケジュールと試験出席を確認してください。', 'Por favor, assegure o horário de exame e a participação no exame antes da entrada na marca do exame.', 'Пожалуйста, убедитесь, что экзаменационные экзамены и экзамен посещаемости до сдачи экзамена Марк.', 'Veuillez vous assurer de respecter le calendrier des examens et la participation aux examens avant lentrée à lexamen.', '시험 마크 입력 전에 시험 일정과 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass der Prüfungsplan und die Anwesenheit der Prüfung vor der Eintragung der Prüfungsnote eingehalten werden.', 'Si prega di assicurare la pianificazione degli esami e la frequenza degli esami prima delliscrizione.', 'โปรดตรวจสอบตารางการสอบและการเข้าร่วมการสอบก่อนการสอบของ Mark Entry', 'Kérjük, győződjön meg arról, hogy az Exam Mark Entry és Exam Attendance Exam Mark Entry előtt van.', 'Zorg ervoor dat het examenrooster en het examen aanwezig zijn vóór de inzending van het examen.', 'Test Morbi rhoncus velit, ut et IV ante Attendance Mark Test Entry.', 'Harap pastikan Jadwal Ujian dan Ujian Kehadiran sebelum Entri Tanda Ujian.', 'Sınav işareti girmeden önce lütfen Sınav Takvimi ve Sınav Ekibinden emin olunuz.', 'Βεβαιωθείτε ότι έχετε προγραμματίσει τις εξετάσεις και την εξέταση πριν την εγγραφή.', 'لطفا قبل از امتحان علامت گذاری به عنوان خوانده شده تست برنامه آزمون و حضور در آزمون را تضمین کنید.', 'Sila pastikan Jadual Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Peperiksaan.', 'పరీక్షా పరీక్ష షెడ్యూల్ మరియు పరీక్షా హాజరు నిర్ధారించడానికి దయచేసి మార్క్ ఎంట్రీ పరీక్ష.', 'பரீட்சைக்கு முன் தேர்வுப் பரீட்சை மற்றும் பரீட்சை பெறுதல் ஆகியவற்றை உறுதிப்படுத்துக.', 'પરીક્ષા માર્ક એન્ટ્રી પહેલાં પરીક્ષાની સૂચિ અને પરીક્ષા હાજરી નક્કી કરો.', 'Należy upewnić się, że harmonogram egzaminów i udział w egzaminach poprzedzą wejście do egzaminu.', 'Будь ласка, вкажіть час іспиту і відвідуваність іспиту перед початком вступки до іспиту.', 'ਐਜੂਕੇਸ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că ați verificat programul de examen și examenul înainte de înscrierea în examen.', 'စာမေးပွဲမာကု Entry မတိုင်မီစာမေးပွဲအချိန်ဇယားနှင့်စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Akoko Idaduro ati Akokọ Ibẹwo ṣaaju titẹ Akọsilẹ Akọsilẹ.', 'Da fatan a tabbatar da Gwargwadon Binciken da Jarraba Tambaya kafin jarrabawar Mark Mark.', NULL),
(459, 'mark_sheet_instruction', 'Please ensure Exam Attendance and Exam Mark to find Mark Sheet.', 'মার্ক শিট খুঁজে পেতে পরীক্ষার এ্যাটেনডেন্স এবং পরীক্ষা মার্ক নিশ্চিত করুন।', 'Asegúrate de que la Asistencia al examen y la Marca del examen encuentren la Hoja de calificaciones.', 'يرجى التأكد من امتحان الحضور وامتحان علامة لإيجاد علامة ورقة.', 'मार्क शीट को खोजने के लिए परीक्षा उपस्थिति और परीक्षा अंक को सुनिश्चित करें', 'براہ کرم مارک شیٹ کو تلاش کرنے کے لئے امتحان حاضری اور امتحان مارک کو یقینی بنائیں.', '请确保考试出席和考试标志找到标记表。', 'マークシートを見つけるには、試験出席と試験マークを確認してください。', 'Certifique-se da presença do exame e da marca do exame para encontrar a folha de marca.', 'Пожалуйста, убедитесь, что экзамен посещаемости и экзамен Марк, чтобы найти Mark Sheet.', 'Veuillez vous assurer de la présence à lexamen et de la note dexamen pour trouver la feuille de notes.', '마크 시트를 찾으려면 시험 출석과 시험 마크를 확인하십시오.', 'Bitte stellen Sie sicher, dass die Prüfungsteilnahme und die Prüfungsnote Mark-Sheet finden.', 'Si prega di assicurare la partecipazione agli esami e il marchio dellesame per trovare il foglio dei voti.', 'โปรดตรวจสอบว่ามีผู้เข้าสอบและเครื่องหมายสอบเพื่อหา Mark Sheet', 'Kérjük, hogy az Exam Attendance és a Exam Mark-ot találja meg a Mark Sheet-et.', 'Zorg ervoor dat u een examenformulier en een examencertificaat aantreft om het beoordelingsformulier te vinden.', 'Placere operam ad inveniendum Mark Mark Chapter OMNIBUS June IV Sheet.', 'Harap pastikan Ujian Kehadiran dan Tanda Ujian untuk menemukan Lembar Tandai.', 'Marka Belgesini bulmak için lütfen Sınav Devamını ve Sınav İşaretini sağlayın.', 'Βεβαιωθείτε ότι έχετε παρακολουθήσει την εξέταση και εξετάστε το για να βρείτε το φύλλο σημείωσης.', 'لطفا از بازدید کننده امتحان و علامت آزمون اطمینان حاصل کنید تا علامت ورق را پیدا کنید.', 'Sila pastikan Kehadiran Peperiksaan dan Ujian Peperiksaan untuk mencari Mark Sheet.', 'మార్క్ షీట్ను కనుగొనడానికి పరీక్షా హాజరు మరియు పరీక్షా మార్క్ ను నిర్ధారించుకోండి.', 'மார்க் தாள் கண்டுபிடிக்க தேர்ச்சி மற்றும் தேர்வு மார்க் உறுதி செய்யவும்.', 'માર્ક શીટ શોધવા માટે પરીક્ષાની હાજરી અને પરીક્ષા માર્ક કરો.', 'Prosimy o upewnienie się, że obecność na egzaminie i znak egzaminu jest zaznaczona.', 'Будь ласка, впевніться, що відвідувачі іспитів і екзаменаційні квитки знайдете листівки.', 'ਕਿਰਪਾ ਕਰਕੇ ਮਾਰਕ ਸ਼ੀਟ ਨੂੰ ਲੱਭਣ ਲਈ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਅਤੇ ਪ੍ਰੀਖਿਆ ਪੱਤਰ ਨੂੰ ਯਕੀਨੀ ਬਣਾਓ.', 'Asigurați-vă că ați participat la examen și la examen pentru a găsi o coală Mark.', 'မာကုစာရွက်ရှာတွေ့မှစာမေးပွဲတက်ရောက်ခြင်းနှင့်စာမေးပွဲမာကုသေချာပါစေ။', 'Jowo rii daju pe idaduro Ijadii ati Ṣayẹwo Marku lati wa Mark Sheet.', 'Da fatan a tabbatar da Hannun Binciken da Takaddun Mark don neman Mark Sheet.', NULL),
(460, 'exam_result_instruction', 'Please ensure Exam Mark and Exam Attendance before Final Mark Entry.', 'চূড়ান্ত মার্ক এণ্ট্রি আগে পরীক্ষা মার্ক এবং পরীক্ষার উপস্থিতি নিশ্চিত করুন।', 'Por favor, asegúrese de la marca de examen y la asistencia al examen antes de la entrada de la marca final.', 'يرجى التأكد من امتحان علامة وامتحان الحضور قبل علامة النهائي الدخول.', 'अंतिम मार्क प्रविष्टि से पहले परीक्षा मार्क और परीक्षा उपस्थिति सुनिश्चित करें', 'فائن مارک انٹری سے پہلے امتحان کے نشان اور امتحان کی حاضری یقینی بنائیں.', '请在最终标记输入前确保考试标志和考试出勤。', '最終マーク記入前に試験マークと試験出席を確認してください。', 'Certifique-se de Exame da marca e da presença do exame antes da entrada na marca final.', 'Пожалуйста, убедитесь, что экзамен и участие в экзамене перед окончательной записью.', 'Sil vous plaît assurez-vous dexamen et de présence à lexamen avant lentrée de la note finale.', '최종 점수 입력 전에 시험 점수와 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass Sie die Prüfung und die Teilnahme an der Prüfung vor der endgültigen Noteneingabe erhalten.', 'Si prega di assicurare la certificazione degli esami e la partecipazione agli esami prima della registrazione del voto finale.', 'โปรดตรวจสอบให้แน่ใจว่ามีผู้เข้าร่วมการสอบและการสอบเข้าร่วมการแข่งขันก่อนเข้าร่วมการแข่งขัน Final Mark Entry', 'Kérjük, győződjön meg az Exam Mark és Exam Attendance előtt a végső belépési bejegyzést.', 'Zorg ervoor dat het examen en het examen aanwezig zijn vóór de definitieve inschrijving.', 'Mark quaeso ensure nito et Finalis nito apud Attendance Mark Entry.', 'Harap pastikan Tanda Ujian dan Ujian Kehadiran sebelum Entri Mark Akhir.', 'Nihai İşaret Girişinden önce lütfen Sınav İmzası ve Sınav Ekibinden emin olun.', 'Παρακαλείσθε να βεβαιωθείτε για την εξέταση και την εξέταση πριν την τελική εγγραφή.', 'لطفا قبل از ورود به نشریه نهایی علامت گذاری آزمون و حضور آزمون را تضمین کنید.', 'Sila pastikan Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Akhir.', 'ఫైనల్ మార్క్ ఎంట్రీకి ముందు పరీక్ష మార్క్ మరియు పరీక్షా హాజరును నిర్ధారించుకోండి.', 'இறுதியாண்டு மார்க் நுழைவுமுறையில் தேர்வுப் பரீட்சை மற்றும் தேர்வுப் பணிகளை உறுதி செய்யுங்கள்.', 'અંતિમ માર્ક એન્ટ્રી પહેલાં પરીક્ષા માર્ક અને પરીક્ષાની હાજરી નિશ્ચિત કરો.', 'Prosimy o upewnienie się, że Egzamin i Egzaminacja Egzaminu odbywają się przed Ostatecznym Wpisem.', 'Ознайомтеся з учасниками іспитів та учасниками іспитів перед початком вступного запису.', 'ਕਿਰਪਾ ਕਰਕੇ ਅੰਤਮ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că examinați examenul și examenul înainte de înscrierea în marcajul final.', 'နောက်ဆုံးမာကု Entry မတိုင်မီစာမေးပွဲမာကုနဲ့စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Atilẹkọ Akọsilẹ ati isinwo Iwoye ṣaaju Ṣiṣe Akọsilẹ Titẹ.', 'Da fatan a tabbatar da Takaddun Mark da Takaddama na Aiki kafin shigarwa na karshe.', NULL),
(461, 'promotion_instruction_1', 'Please choose carefully Running Session & Promote Session.', 'দয়া করে সাবধানে চলমান সেশন  এবং প্রমোট সেশন নির্বাচন করুন।', 'Elija cuidadosamente Ejecutar sesión y promover sesión.', 'الرجاء اختيار بعناية تشغيل جلسة وتعزيز الدورة.', 'कृपया सावधानी से चल रहे सत्र और सत्र को बढ़ावा दें चुनें।', 'براہ کرم رننگ سیشن اور سیشن کو فروغ دینے کے لۓ منتخب کریں.', '请谨慎选择运行会议和推广会议。', '慎重に実行セッションとプロモートセッションを選択してください。', 'Por favor, escolha cuidadosamente a Sessão de Sessão e Promoção.', 'Пожалуйста, тщательно выберите «Запуск сеанса» и «Содействие».', 'Sil vous plaît choisir soigneusement session en cours et promouvoir la session.', '신중하게 세션 및 프로모션 세션을 선택하십시오.', 'Bitte wählen Sie sorgfältig ', 'Si prega di scegliere attentamente Running Session & Promoting Session.', 'เลือกเซสชันและเซสชันส่งเสริมการขายอย่างรอบคอบ', 'Kérjük, gondosan válassza a Futtatás és a kampány előmozdítását.', 'Kies zorgvuldig Sessie uitvoeren en sessie promoten.', 'Placere eligere diligenter & Thronus Sessio Promovere Sessio.', 'Harap pilih Session & Promote Session dengan hati-hati.', 'Lütfen dikkatle Çalışmayı Seçin ve Oturumu Tanıtın.', 'Επιλέξτε προσεκτικά την εκτέλεση της συνόδου και την προώθηση της συνόδου.', 'لطفا با دقت در حال اجرا Session & Promote Session را انتخاب کنید.', 'Sila pilih Sesi Berjalan & Sesi Promosi dengan hati-hati.', 'దయచేసి సెషన్ రన్నింగ్ & ప్రచారం సెషన్ను జాగ్రత్తగా ఎంచుకోండి.', 'அமர்வு இயக்குதல் மற்றும் அமர்வு ஊக்குவிக்க கவனமாகத் தேர்ந்தெடுங்கள்.', 'કૃપા કરીને કાળજીપૂર્વક ચાલી રહેલ સત્ર અને પ્રમોશન સત્ર પસંદ કરો.', 'Proszę wybrać ostrożnie Running Session & Promote Session.', 'Будь ласка, обережно вибирайте запуск сеансу та просуньте сеанс.', 'ਕਿਰਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ ਨੂੰ ਚੁਣੋ ਅਤੇ ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ.', 'Alegeți cu atenție Rularea sesiunii și promovarea sesiunii.', 'တွေ့ဆုံဆွေးနွေးပွဲ & တွေ့ဆုံဆွေးနွေးပွဲမြှင့်တင်ကို run ဂရုတစိုက်ရွေးချယ်ပါ။', 'Jowo yan Ṣeto Nilẹ Ikẹkọ ati Igbimọ Ikẹkọ.', 'Da fatan za a zaɓa a zahiri a Gudun Zama da Tsarin Zama.', NULL),
(462, 'promotion_instruction_2', 'Please choose carefully Current Class & Promote to Class.', 'দয়া করে সাবধানে বর্তমান ক্লাস  এবং প্রমোট ক্লাস নির্বাচন করুন।', 'Por favor, elija con cuidado la Clase actual y Promocione a la clase.', 'يرجى اختيار بعناية الفئة الحالية والترقية إلى فئة.', 'कृपया ध्यान दें वर्तमान कक्षा और श्रेणी में प्रचार करें।', 'براہ کرم احتیاط سے موجودہ کلاس کا انتخاب کریں اور کلاس میں فروغ دیں.', '请仔细选择当前课程并提升到课堂。', '慎重に選択してください現在のクラスとクラスへの昇格', 'Por favor, escolha cuidadosamente a classe atual e promova a classe.', 'Пожалуйста, выберите внимательно Текущий класс и продвигайте класс.', 'Sil vous plaît choisir soigneusement classe actuelle et promouvoir à la classe.', '주의 깊게 선택하십시오 Current Class & Class to Promote.', 'Bitte wählen Sie sorgfältig Aktuelle Klasse und Promote to Class.', 'Si prega di scegliere attentamente Classe corrente e promozione in classe.', 'โปรดเลือก Class ปัจจุบันและโปรโมต Class', 'Kérem, gondosan válassza az Aktuális osztály és az előadás osztályba.', 'Gelieve zorgvuldig te kiezen Huidige klasse en promotie naar klas.', 'Placere eligere diligenter Current Class Promovere in Ps.', 'Silakan pilih kelas yang sekarang dengan hati-hati & promosikan ke kelas.', 'Lütfen Geçerli Sınıfı Seçin ve Sınıfı Tanıtın.', 'Επιλέξτε προσεκτικά την τρέχουσα κλάση και την προώθηση στην κλάση.', 'لطفا دقت کلاس فعلی را ارتقا دهید و کلاس را ارتقا دهید.', 'Sila pilih Kelas Semasa & Menggalakkan Kelas dengan berhati-hati.', 'దయచేసి క్లాస్కు ప్రస్తుత క్లాస్ & ప్రమోట్ను జాగ్రత్తగా ఎంచుకోండి.', 'தற்போதைய வகுப்பு மற்றும் வகுப்புக்கு ஊக்குவிக்கவும்.', 'કૃપા કરી કાળજીપૂર્વક વર્તમાન વર્ગ પસંદ કરો અને વર્ગમાં પ્રમોટ કરો.', 'Wybierz ostrożnie Obecna klasa i promuj do klasy.', 'Будь ласка, обережно вибирайте поточний клас та рекламуйте до класу.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਵਰਤਮਾਨ ਕਲਾਸ ਅਤੇ ਪ੍ਰੋਮੋਟ ਤੋਂ ਕਲਾਸ ਚੁਣੋ.', 'Alegeți cu atenție Clasa curentă și promovați în clasă.', 'လက်ရှိအတန်းအစားဂရုတစိုက်ကိုရှေးခယျြ & Class ကိုမှမြှင့်တင်ပါ။', 'Jọwọ yan abojuto Kilasi lọwọlọwọ & Igbelaruge si Kilasi.', 'Da fatan za a zaɓa a hankali A halin yanzu Class & Yi Nasara zuwa Class.', NULL),
(463, 'promotion_instruction_3', 'Please complete the process of Exam, Exam Schedule, Exam Attendance, Exam Mark & Final Result.', 'অনুগ্রহপূর্বক পরীক্ষার প্রক্রিয়া, পরীক্ষার সময়সূচী, পরীক্ষার উপস্থিতি, পরীক্ষার চিহ্ন এবং চূড়ান্ত ফলাফল সম্পন্ন করুন।', 'Complete el proceso de Examen, Programa de examen, Asistencia de examen, Marca de examen y Resultado final.', 'يرجى إكمال عملية الامتحان، جدول الامتحانات، امتحان الحضور، علامة الامتحان والنتيجة النهائية.', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم امتحان، امتحان شیڈول، امتحان حاضری، امتحان مارک اور حتمی نتائج کا عمل مکمل کریں.', '请完成考试，考试时间表，考试考勤，考试标志和最终结果的过程。', '試験、試験のスケジュール、試験の出席、試験のマークと最終結果のプロセスを完了してください。', 'Por favor, complete o processo de exame, horário de exames, atendimento ao exame, marca de exame e resultado final.', 'Завершите процесс экзамена, экзаменационного экзамена, экзаменационного экзамена, экзамена и итогового результата.', 'Veuillez compléter le processus dexamen, le programme dexamen, la présence aux examens, la note dexamen et le résultat final.', '시험, 시험 일정, 시험 참석, 시험 점수 및 최종 결과의 과정을 완료하십시오.', 'Bitte führen Sie den Prozess der Prüfung, des Prüfungsplans, der Prüfungsbesuch, der Prüfungsnote und des Abschlussergebnisses durch.', 'Si prega di completare il processo di esame, pianificazione dellesame, partecipazione agli esami, voto dellesame e risultato finale.', 'กรุณากรอกแบบฟอร์มการสอบ, กำหนดการสอบ, เข้าร่วมการสอบ, เครื่องหมายการสอบและผลการทดสอบขั้นสุดท้าย', 'Kérjük, töltse ki a vizsga, az érettségi vizsga, az érettségi, a vizsgajegy és a végeredmény folyamatát.', 'Voltooi het proces van examen, examenroosters, examen, examen en eindresultaat.', 'Placere perficere processus MACROCYTOSIS, Exam Schedule, OMNIBUS June IV: Mark Chapter & exitu rerum.', 'Selesaikan proses Ujian, Jadwal Ujian, Ujian Kehadiran, Tanda Ujian & Hasil Akhir.', 'Lütfen Sınav, Sınav Takvimi, Sınav Katılımı, Sınav Sonucu ve Final Sonuç sürecini tamamlayın.', 'Παρακαλούμε συμπληρώστε τη διαδικασία της εξέτασης, του προγράμματος εξετάσεων, της συμμετοχής στις εξετάσεις, του εξεταστικού σημειώματος και του τελικού αποτελέσματος.', 'لطفا روند امتحان، برنامه امتحان، حضور امتحان، معاینه آزمون و نتیجه نهایی را تکمیل کنید.', 'Sila lengkapkan proses Peperiksaan, Jadual Peperiksaan, Kehadiran Peperiksaan, Peperiksaan Ujian & Keputusan Akhir.', 'పరీక్షా ప్రక్రియ పూర్తి చేయండి, పరీక్షా షెడ్యూల్, పరీక్షా హాజరు, పరీక్ష మార్క్ & ఫైనల్ ఫలితం.', 'பரீட்சை செயல்முறை, தேர்வு அட்டவணை, தேர்வு கலந்துரையாடல், தேர்வு மார்க் & இறுதி முடிவு முடிக்க.', 'પરીક્ષા, પરીક્ષા શેડ્યૂલ, પરીક્ષા હાજરી, પરીક્ષા માર્ક અને અંતિમ પરિણામની પ્રક્રિયા પૂર્ણ કરો.', 'Prosimy o wypełnienie procesu egzaminu, egzaminu, egzaminu, egzaminu i końcowego wyniku.', 'Будь ласка, заповніть процедуру іспиту, графіку іспиту, відвідуваність іспиту, оцінку іспиту та остаточний результат.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ, ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ, ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ, ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਅੰਤਿਮ ਨਤੀਜੇ ਦੀ ਪ੍ਰਕਿਰਿਆ ਪੂਰੀ ਕਰੋ.', 'Completați procesul de examen, program de examen, examen, examen și rezultat final.', 'စာမေးပွဲ, စာမေးပွဲအချိန်ဇယား, စာမေးပွဲတက်ရောက်, စာမေးပွဲ, Mark & Final ရလဒ်များ၏လုပ်ငန်းစဉ်ကိုအပြီးသတ်ပေးပါ။', 'Jọwọ pari awọn ilana ti kẹhìn, Akokọwo Itanwo, Aṣọwo Iwoye, Aṣayẹwo ayẹwo ati Ipari ikẹhin.', 'Don Allah a kammala aikin nazarin, Nazarin Jirgin, Jirgin Tambaya, Alamar Duba & Sakamako na ƙarshe.', NULL),
(464, 'promotion_instruction_4', 'Please double check all Students Total Marks, Obtain Mark, Average Grade Point & Next Class Roll No.', 'দয়া করে সকল শিক্ষার্থীর মোট নম্বর, প্রাপ্ত নম্বর, গড় গ্রেড পয়েন্ট এবং পরবর্তী শ্রেণী রোল নম্বর চেক করুন।', 'Verifique por favor todas las marcas totales de estudiantes, obtenga la marca, el promedio de calificaciones y la siguiente clase.', 'يرجى التحقق مرة أخرى من جميع الطلاب مجموع العلامات، والحصول على علامة، متوسط درجة نقطة و التالي فئة لفة رقم', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم تمام طالب علموں کو کل مارکس چیک کریں، مارک حاصل کریں، اوسط گریڈ پوائنٹ اور اگلے کلاس رول نمبر', '请仔细检查所有学生的总分，获得分数，平均分和下一班的卷号', '生徒の合計標章、標章の取得、平均等級点および次のクラスのロール番号を再度確認してください', 'Por favor, verifique novamente todas as Marcas Total de Estudantes, Obter Marca, Ponto Médico e Próxima Classe Roll No.', 'Пожалуйста, дважды проверьте все учащиеся, общее количество баллов, получите оценку, среднюю оценку и следующий класс.', 'Veuillez vérifier toutes les notes totales des élèves, obtenir la note, la note moyenne et la prochaine classe', '모든 학생 수 표, 점수 획득, 평균 성적 점수 및 다음 등급 롤 수를 다시 확인하십시오.', 'Bitte überprüfen Sie alle Schüler-Gesamtpunkte, erhalten Sie Mark, Durchschnittspunkt und nächste Klasse Roll-Nr.', 'Si prega di ricontrollare tutti gli indicatori Total Marks, Obtain Mark, Average Grade Point e Next Class.', 'โปรดตรวจสอบเครื่องหมายคะแนนนักศึกษาทั้งหมด, ดูเครื่องหมาย, คะแนนเฉลี่ยและลำดับถัดไปเลขที่ม้วน', 'Kérem, ellenőrizze az összes diákok teljes pontszámát, szerezze meg a pontszámot, átlag pontot és a következő osztályú tekercset.', 'Controleer alsjeblieft alle studenten totaalcijfers, cijfer behalen, gemiddelde cijferpunt en volgende klasserol nr.', 'Velit gemino reprehendo omnes alumni Romanum marcas, Mark Alleluia, & mediocris gradus punctum Next Class Roll No.', 'Harap periksa kembali semua Siswa Total Marks, Dapatkan Mark, Rata-rata Nilai Kelas & Gulungan Kelas Berikutnya No.', 'Lütfen tüm Öğrencilerin Toplam İşaretlerini, İşaretle, Ortalama Puan Puanı ve Sonraki Sınıf Rulo Numarasını kontrol edin.', 'Παρακαλώ ελέγξτε διπλά όλους τους μαθητές Σύνολο σημείων, αποκτήστε το σήμα, το μέσο βαθμό βαθμού και το επόμενο κύκλο', 'لطفا تمام دانشجویان کل عالمت ها، علامت گذاری، رتبه متوسط و رول بعدی کلاس را بررسی کنید', 'Sila semak semula semua Markah Jumlah Pelajar, Dapatkan Tanda, Nilai Gred Purata & No.', 'దయచేసి మొత్తం స్టూడెంట్స్ మొత్తం మార్క్స్, మార్క్, సగటు గ్రేడ్ పాయింట్ & తదుపరి క్లాస్ రోల్ నెంబరుని తనిఖీ చేయండి.', 'மாணவர் மொத்த மார்க்ஸ், மார்க், சராசரி தர புள்ளி மற்றும் அடுத்த வகுப்பு ரோல் எண் ஆகியவற்றைப் பெறுக.', 'કૃપા કરીને બધાં વિદ્યાર્થીના કુલ ગુણની તપાસ કરો, માર્ક, સરેરાશ ગ્રેડ પોઇન્ટ અને આગળનો વર્ગ રોલ નંબર મેળવો.', 'Sprawdź dokładnie wszystkie oceny uczniów, zdobądź ocenę, średnią ocenę i numer następnej klasy', 'Будь ласка, подвійно перевірте всі студенти загальних знаків, отримайте знак, середню оцінку точки та наступний клас Roll No.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਸਾਰੇ ਵਿਦਿਆਰਥੀਆਂ ਦੇ ਕੁੱਲ ਅੰਕ ਪਤਾ ਕਰੋ, ਪ੍ਰਾਪਤ ਕਰੋ ਮਾਰਕ, ਔਸਤ ਗਰੇਡ ਪੁਆਇੰਟ ਅਤੇ ਅਗਲਾ ਕਲਾਸ ਰੋਲ ਨੰਬਰ', 'Verificați dublu toți studenții Mark Total, Obțineți marca, Punctul mediu și următoarea clasă Roll Nr.', 'အမှတ်ပျမ်းမျှအဆင့်ပွိုင့် & Next ကိုအတန်းအစား Roll, မာကုရယူပါအပေါင်းတို့, ကျောင်းသားများစုစုပေါင်း Marks စစ်ဆေးနှစ်ဆ ကျေးဇူးပြု.', 'Jọwọ ṣe ayẹwo lẹẹmeji gbogbo Awọn akẹkọ Awọn ami ni gbogbo, Gba Samisi, Oṣuwọn Ipele Apapọ & Eerun Kọọkan Ibẹkọ No.', 'Don Allah sau biyu duba duk daliban Ƙidaya Ƙididdiga Alamomi, Sami Mark, Matsakaicin Matsayi Bayyana & Kayan Kayan Kira.', NULL),
(465, 'promotion_instruction_5', 'All things are 100% correct Then Promote Students to Next Class.', 'সবকিছুর 100% সঠিক তারপর শিক্ষার্থীদের পরবর্তী শ্রেণীতে উন্নীত করুন।', 'Todas las cosas son 100% correctas. Luego, promueva a los estudiantes a la siguiente clase.', 'جميع الأشياء صحيحة 100٪ ثم تعزيز الطلاب إلى الدرجة التالية.', 'सभी चीजें 100% सही हैं, फिर छात्रों को अगली कक्षा में बढ़ावा देना।', 'تمام چیزیں 100٪ درست ہیں، پھر طلباء کو اگلا کلاس میں فروغ دیں.', '所有的事情都是100％正确的，然后促进学生下一课。', 'すべてのものが100％正しいです。次に、学生を次のクラスに昇格させます。', 'Todas as coisas estão 100% corretas. Em seguida, promova alunos para a próxima classe.', 'Все вещи на 100% правильны. Затем продвигайте студентов в следующий класс.', 'Toutes les choses sont 100% correctes Puis promouvoir les étudiants à la prochaine classe.', '모든 것은 100 % 정확합니다. 그런 다음 학생들을 다음 학급으로 승급하십시오.', 'Alle Dinge sind zu 100% korrekt. Dann fördern Sie die Schüler zur nächsten Klasse.', 'Tutte le cose sono corrette al 100%, quindi promuovi gli studenti alla prossima lezione.', 'ทุกอย่างถูกต้อง 100% แล้วโปรโมตนักเรียนให้เข้าชั้นเรียนถัดไป', 'Minden dolog 100% -ban helyes, majd elősegíti a diákokat a következő osztályba.', 'Alle dingen zijn 100% correct. Promoot vervolgens studenten naar de volgende klas.', 'Et bene omnia sunt, C% Next Promovere studentibus ad generalia Ps.', 'Semua hal 100% benar Lalu Promosikan Siswa ke Kelas Selanjutnya.', 'Her şey% 100 doğrudur Sonra Öğrencileri Bir Sonraki Sınıfta Tanıtın.', 'Όλα τα πράγματα είναι 100% σωστά Στη συνέχεια προωθήστε τους μαθητές στην επόμενη τάξη.', 'همه چیز 100٪ درست است سپس دانش آموزان را به کلاس بعدی ارتقا دهید.', 'Semua perkara adalah 100% betul Kemudian Menggalakkan Pelajar ke Kelas Seterusnya.', 'అన్ని విషయాలు 100% సరైనవి, తరువాత స్టూడెంట్స్ స్టూడెంట్స్ టు క్లాస్ టు క్లాస్.', 'எல்லா விஷயங்களும் 100% சரியானவை, பின்னர் மாணவர்கள் அடுத்த வகுப்புக்கு ஊக்குவிக்கின்றன.', 'બધી વસ્તુઓ 100% સાચી છે પછી વિદ્યાર્થીઓને આગામી વર્ગમાં પ્રમોટ કરો.', 'Wszystkie rzeczy są w 100% poprawne Następnie promuj uczniów do następnej klasy.', 'Всі речі правильні на 100%. Потім просувайте студентів до наступного класу.', 'ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ 100% ਠੀਕ ਹਨ. ਫਿਰ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਅਗਲੀ ਕਲਾਸ ਵਿਚ ਉਤਸ਼ਾਹਿਤ ਕਰੋ.', 'Toate lucrurile sunt 100% corecte Apoi promovează elevii în clasa următoare.', 'ခပ်သိမ်းသောအရာတို့ကိုထိုအခါ Next ကိုအတန်းအစားမှကျောင်းသားများမြှင့်တင် 100% မှန်ကန်ဖြစ်ကြသည်။', 'Gbogbo ohun ni o wa 100% atunṣe Lẹhinna Ṣẹda Awọn Ile-iwe si Kilasi Oju.', 'Dukkanin abubuwa 100% daidai Saan nan kuma ƙaddara ɗaliban zuwa Kashi na gaba.', NULL),
(466, 'average_grade_point', 'GPA', 'জিপিএ', 'GPA', 'المعدل التراكمي', 'जीपीए', 'جی پی اے', '等级点平均值', '平均等級点', 'gpa', 'оценка', 'gpa', '학점', 'gpa', 'gpa', 'เกรดเฉลี่ย', 'gpa', 'gpa', 'gpa', 'gpa', 'not ortalamasını', 'gpa', 'درجه امتیاز', 'gpa', 'గ్రేడ్ పాయింట్', 'தர புள்ளி', 'જીપા', 'gpa', 'ГПа', 'ਜੀਪੀਏ', 'grad punct', 'တန်းအမှတ်', 'gpa', 'gpa', NULL),
(467, 'please_select_a_route', 'Please select a Route.', 'একটি রুট নির্বাচন করুন।', 'Seleccione una ruta.', 'الرجاء تحديد مسار.', 'कृपया एक रूट चुनें', 'براہ راست راستہ منتخب کریں.', '请选择路线。', 'ルートを選択してください。', 'Selecione uma Rota.', 'Выберите маршрут.', 'Veuillez sélectionner un itinéraire.', '경로를 선택하십시오.', 'Bitte wählen Sie eine Route.', 'Si prega di selezionare una rotta.', 'โปรดเลือกเส้นทาง', 'Kérjük, válasszon ki egy útvonalat.', 'Selecteer alstublieft een route.', 'Placere eligere Iter itineris.', 'Silakan pilih Rute.', 'Lütfen bir Güzergah seçin.', 'Επιλέξτε μια διαδρομή.', 'لطفا یک مسیر را انتخاب کنید', 'Sila pilih Laluan.', 'దయచేసి ఒక మార్గం ఎంచుకోండి.', 'தயவுசெய்து ஒரு பாதை தேர்ந்தெடுக்கவும்.', 'કૃપા કરીને એક રસ્તો પસંદ કરો', 'Wybierz trasę.', 'Будь ласка, виберіть маршрут.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਰੂਟ ਚੁਣੋ.', 'Selectați o rută.', 'တစ်လမ်းကြောင်းရွေးချယ်ပါ။', 'Jọwọ yan Itọsọna kan.', 'Da fatan a zaɓi hanyar.', NULL),
(468, 'return_success', 'Book return successfully', 'বই সফলভাবে ফেরত হয়েছে।', 'Libro devuelto con éxito', 'عودة الكتاب بنجاح', 'बुक सफलतापूर्वक वापस', 'کتاب کامیابی سے واپسی', '预订成功', '書籍の返品に成功', 'Livro de retorno com sucesso', 'Успешное возвращение книги', 'Le retour du livre a réussi', '도서 반환 성공', 'Buchen Sie erfolgreich zurück', 'Prenota con successo', 'หนังสือคืนสำเร็จแล้ว', 'A könyv sikeres visszaadása', 'Boek teruggave succesvol', 'Revertetur libro prospere', 'Pesan berhasil kembali', 'Kitap iadesi başarıyla gerçekleştirildi', 'Επαναφορά βιβλίου με επιτυχία', 'بازگشت کتاب با موفقیت', 'Pulangan buku berjaya', 'పుస్తకం తిరిగి విజయవంతంగా', 'புத்தகம் வெற்றிகரமாக திரும்பியது', 'ચોપડે સફળતાપૂર્વક વળતર', 'Zwrot książki powodzeniem', 'Книга повертається успішно', 'ਕਿਤਾਬ ਸਫਲਤਾਪੂਰਵਕ ਵਾਪਸ ਆਉਂਦੀ ਹੈ', 'Revenirea la carte a reușit', 'စာအုပ်အောင်မြင်စွာပြန်လာ', 'Iwe pada ni ifijišẹ', 'Book dawo da nasara', NULL),
(469, 'due_amount', 'Due Amount', 'বাকি টাকা', 'Cantidad debida', 'مبلغ مستحق', 'देय राशि', 'باقی رقم', '到期金额', '金額', 'Valor devedor', 'Надлежащей суммы', 'Montant dû', '만기 금액', 'Fälliger Betrag', 'Importo dovuto', 'จำนวนเงินที่ครบกำหนด', 'Teljes összeg', 'Te betalen bedrag', 'ob Aliquam', 'Jumlah kematian', 'Ödenecek meblağ', 'Οφειλόμενο ποσό', 'مقدار قابل توجه', 'Jumlah terhutang', 'మొత్తం పరిమాణం', 'நிலுவை தொகை', 'નિયત રકમ', 'Kwota należna', 'Належна сума', 'ਕਮਾਈ ਰਕਮ', 'Suma datorata', 'ကြောင့်ငွေပမာဏ', 'Fun iye', 'Saboda Adadin', NULL),
(470, 'user_active_status', 'Your account is not active. Please contact with administrator.', 'আপনার অ্যাকাউন্ট সক্রিয় নয়। প্রশাসকের সঙ্গে যোগাযোগ করুন দয়া করে।', 'Su cuenta no está activa. Por favor, póngase en contacto con el administrador.', 'حسابك غير فعال. يرجى الاتصال بالمشرف.', 'आपका खाता सक्रिय नहीं है। कृपया व्यवस्थापक से संपर्क करें', 'آپ کا اکاؤنٹ فعال نہیں ہے. برائے مہربانی منتظم کے ساتھ رابطہ کریں.', '您的帐户不活跃。 请与管理员联系。', 'あなたのアカウントはアクティブではありません。 管理者に連絡してください。', 'Sua conta não está ativa. Entre em contato com o administrador.', 'Ваша учетная запись неактивна. Пожалуйста, свяжитесь с администратором.', 'Votre compte nest pas actif. Sil vous plaît contacter avec ladministrateur.', '귀하의 계정이 활성화되어 있지 않습니다. 관리자에게 문의하십시오.', 'Dein Konto ist nicht aktiv. Bitte kontaktieren Sie den Administrator.', 'Il tuo account non è attivo. Si prega di contattare con lamministratore.', 'บัญชีของคุณไม่ทำงาน โปรดติดต่อผู้ดูแลระบบ', 'Fiókod nem aktív. Kérjük, lépjen kapcsolatba a rendszergazdával.', 'Uw account is niet actief. Neem contact op met de beheerder.', 'Ratio tua est activae. Placere contactus administrator.', 'Akunmu tidak aktif. Silahkan kontak dengan administrator.', 'Hesabınız aktif değil. Lütfen yönetici ile iletişime geçin.', 'Ο λογαριασμός σας δεν είναι ενεργός. Επικοινωνήστε με τον διαχειριστή.', 'حساب شما فعال نیست لطفا با مدیر تماس بگیرید', 'Akaun anda tidak aktif. Sila hubungi dengan pentadbir.', 'మీ ఖాతా చురుకుగా లేదు. దయచేసి నిర్వాహకుడితో సంప్రదించండి.', 'உங்கள் கணக்கு செயலில் இல்லை. நிர்வாகியுடன் தொடர்பு கொள்ளவும்.', 'તમારું એકાઉન્ટ સક્રિય નથી. સંચાલક સાથે સંપર્ક કરો.', 'Twoje konto nie jest aktywne. Skontaktuj się z administratorem.', 'Ваш обліковий запис не активний. Будь ласка, звяжіться з адміністратором.', 'ਤੁਹਾਡਾ ਖਾਤਾ ਕਿਰਿਆਸ਼ੀਲ ਨਹੀਂ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਬੰਧਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contul dvs. nu este activ. Contactați administratorul.', 'သင့်အကောင့်တက်ကြွမဟုတ်ပါဘူး။ စီမံခန့်ခွဲသူနှင့်အတူကိုဆက်သွယ်ပါ။', 'Akoto rẹ ko ṣiṣẹ. Jọwọ kan si pẹlu alakoso.', 'Asusunku ba aiki ba ne. Da fatan a tuntuɓi mai gudanarwa.', NULL),
(471, 'certificate', 'Certificate', 'সার্টিফিকেট', 'Certificado', 'شهادة', 'प्रमाणपत्र', 'سرٹیفیکیٹ', '证书', '証明書', 'Certificado', 'сертификат', 'Certificat', '증명서', 'Zertifikat', 'Certificato', 'ใบรับรอง', 'Bizonyítvány', 'Certificaat', 'libellum', 'Sertifikat', 'sertifika', 'Πιστοποιητικό', 'گواهی', 'Sijil', 'సర్టిఫికెట్', 'சான்றிதழ்', 'પ્રમાણપત્ર', 'Certyfikat', 'Сертифікат', 'ਸਰਟੀਫਿਕੇਟ', 'Certificat', 'လက်မှတ်', 'Ijẹrisi', 'Certificate', NULL),
(472, 'main_certificate_text', 'Certificate Text', 'সার্টিফিকেট বিষয়বস্তু', 'Certificado de texto', 'نص الشهادة', 'प्रमाणपत्र पाठ', 'سرٹیفکیٹ متن', '证书文本', '証明書のテキスト', 'Texto do Certificado', 'Текст сертификата', 'Texte du certificat', '인증서 텍스트', 'Zertifikatstext', 'Testo del certificato', 'ข้อความรับรอง', 'Tanúsítványszöveg', 'Certificaattekst', 'libellum Text', 'Teks Sertifikat', 'Sertifika Metni', 'Κείμενο πιστοποιητικού', 'متن گواهی', 'Teks Sijil', 'సర్టిఫికెట్ టెక్స్ట్', 'சான்றிதழ் உரை', 'પ્રમાણપત્ર ટેક્સ્ટ', 'Tekst certyfikatu', 'Текст сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਟੈਕਸਟ', 'Textul certificatului', 'လက်မှတ်စာသား', 'Iwe ijẹrisi', 'Takaddun shaida', NULL),
(473, 'footer_left', 'Footer Left Text', 'ফুটার বাম টেক্সট', 'Texto de pie de página a la izquierda', 'تذييل النص الأيسر', 'पाद लेख वाम पाठ', 'فوٹر بائیں متن', '页脚左边的文字', 'フッター左のテキスト', 'Rodapé do texto à esquerda', 'Нижний левый текст', 'Pied gauche Texte', '꼬리말 왼쪽 텍스트', 'Fußzeile linken Text', 'Testo a piè di pagina a sinistra', 'ข้อความท้ายกระดาษท้าย', 'Footer Left Text', 'Voettekst Linkertekst', 'Reliquit Footer Text', 'Footer Left Text', 'Altbilgi Sol Metin', 'Υποσέλιδο αριστερό κείμενο', 'پاورقی متن چپ', 'Teks Kiri Kaki', 'ఫుటరు ఎడమ టెక్స్ట్', 'அடிக்குறிப்பு இடது உரை', 'ફૂટર ડાબે ટેક્સ્ટ', 'Footer Left Text', 'Нижній колонтитул ліворуч', 'ਪਦਲੇਖ ਖੱਬੇ ਪਾਠ', 'Subtitrarea textului din subsol', 'footer လက်ဝဲစာသား', 'Onkọ Left Ẹsẹ', 'Rubutun Hagu na Hagu', NULL),
(474, 'footer_middle', 'Footer Middle Text', 'ফুটার মধ্যম টেক্সট', 'Texto intermedio del pie de página', 'تذييل الصفحة الوسطى النص', 'पाद लेख मध्य पाठ', 'فوٹر مشرق وسطی', '页脚中间文本', 'フッター中間テキスト', 'Texto do rodapé', 'Нижний текст нижнего колонтитула', 'Pied Moyen Texte', '꼬리말 중간 텍스트', 'Fußzeile mittlerer Text', 'Footer Middle Text', 'ข้อความระดับกลางของท้ายกระดาษ', 'Lábra középső szöveg', 'Voettekst Middelste tekst', 'Medio Footer Text', 'Footer Middle Text', 'Altbilgi Orta Metin', 'Υποσέλιδο Μέσο κείμενο', 'Footer Middle Text', 'Teks Tengah Footer', 'ఫుటర్ మధ్య టెక్స్ట్', 'அடிக்குறிப்பு நடு உரை', 'ફૂટર મધ્ય લખાણ', 'Stopka środkowy tekst', 'Нижній колонтитул середній текст', 'ਫੁੱਟਰ ਮੱਧ ਪਾਠ', 'Subtitrarea textului de mijloc', 'footer အလယျပိုငျးစာသား', 'Ẹkọ Agbegbe Aarin', 'Rubutun Tsakiyar Tsakiya', NULL),
(475, 'footer_right', 'Footer Right Text', 'ফুটার ডান টেক্সট', 'Texto a la derecha del pie de página', 'تذييل النص الأيمن', 'पाद लेख सही टेक्स्ट', 'فوٹر صحیح متن', '页脚正确的文本', 'フッタ右のテキスト', 'Texto à direita do rodapé', 'Нижний текст нижнего колонтитула', 'Pied droit Texte', '꼬리말 오른쪽 텍스트', 'Fußzeile rechten Text', 'Piè di pagina a destra', 'ข้อความชิดขวา', 'Lábfej jobb szöveg', 'Voettekst juiste tekst', 'Ius Footer Text', 'Footer Right Text', 'Altbilgi Sağ Metin', 'Υποσημείωση κειμένου υποσέλιδου', 'متن سمت راست پاورقی', 'Teks Kanan Footer', 'ఫుటర్ రైట్ టెక్స్ట్', 'அடிக்குறிப்பு வலது உரை', 'ફૂટર જમણો ટેક્સ્ટ', 'Stopka Prawy tekst', 'Нижній колонтитул праворуч', 'ਪਦਲੇਖ ਸੱਜੇ ਪਾਠ', 'Footer dreapta text', 'footer ညာစာသား', 'Oro Ọtun Ẹka', 'Rubutattun Kalmomin Tsaida', NULL),
(476, 'background', 'Background', 'ব্যাকগ্রাউন্ড', 'Fondo', 'خلفية', 'पृष्ठभूमि', 'پس منظر', '背景', 'バックグラウンド', 'fundo', 'Задний план', 'Contexte', '배경', 'Hintergrund', 'sfondo', 'พื้นหลัง', 'Háttér', 'Achtergrond', 'Maecenas vitae', 'Latar Belakang', 'Arka fon', 'Ιστορικό', 'زمینه', 'Latar Belakang', 'నేపథ్య', 'பின்னணி', 'પૃષ્ઠભૂમિ', 'tło', 'Передумови', 'ਪਿਛੋਕੜ', 'fundal', 'နောက်ခံသမိုင်း', 'Atilẹhin', 'Bayani', NULL),
(477, 'gallery', 'Gallery', 'গ্যালারি', 'Galería', 'صالة عرض', 'गेलरी', 'نگارخانہ', '画廊', 'ギャラリー', 'Galeria', 'Галерея', 'Galerie', '갱도', 'Galerie', 'Galleria', 'เฉลียง', 'Képtár', 'Galerij', 'gallery', 'Galeri', 'galeri', 'Εκθεσιακός χώρος', 'آلبوم عکس', 'Galeri', 'గ్యాలరీ', 'கேலரி', 'ગેલેરી', 'Galeria', 'Галерея', 'ਗੈਲਰੀ', 'Galerie', 'ပြခန်း', 'Awọn ohun ọgbìn', 'Gallery', NULL),
(478, 'is_view_on_web', 'Is View on Web?', 'ওয়েব দেখুন কি?', '¿Ver en la web?', 'هو عرض على شبكة الإنترنت؟', 'वेब पर देखें क्या है?', 'کیا ویب پر نظر ہے؟', '在网上查看？', 'Web上での表示ですか？', 'Ver na Web?', 'Просмотр в Интернете?', 'Est-ce que View on Web?', '웹에서보기입니까?', 'Ist im Web zu sehen?', 'La vista è sul Web?', 'ดูบนเว็บหรือไม่?', 'Megtekintés a weben?', 'Is View on Web?', 'View in Web est?', 'Apakah Lihat di Web?', 'Webde Görüntüleme mi?', 'Είναι η προβολή στο Web;', 'آیا نمایش در وب است؟', 'Adakah Lihat di Web?', 'వెబ్లో వీక్షించాలా?', 'இணையத்தில் பார்க்கிறதா?', 'વેબ પર જુઓ છો?', 'Czy widok w sieci?', 'Чи є перегляд в Інтернеті?', 'ਕੀ ਵੈਬ ਤੇ ਨਜ਼ਰ ਹੈ?', 'Vizualizați pe Web?', 'ကြည့်ရန်က်ဘ်ပေါ်လား?', 'Wo ni oju-iwe ayelujara?', 'Shin View a Yanar?', NULL),
(479, 'cover_image', 'Cover Image', 'কভার চিত্র', 'Imagen de portada', 'صورة الغلاف', 'कवर छवि', 'کور تصویر', '封面图片', '表紙画像', 'Imagem de capa', 'Изображение обложки', 'Image de couverture', '표지 이미지', 'Titelbild', 'Immagine di copertina', 'ภาพปก', 'Borítókép', 'Omslagfoto', 'No Cover Image', 'Gambar sampul', 'Kapak resmi', 'Εικόνα εξωφύλλου', 'تصویر روی جلد', 'Cover Image', 'చిత్రం కవర్', 'படத்தை மறை', 'કવર છબી', 'Okładka', 'Обкладинка зображення', 'ਕਵਰ ਚਿੱਤਰ', 'Imagine de copertă', 'အဖုံးပုံရိပ်', 'Aworan Ideri', 'Rufin Hotuna', NULL),
(480, 'media_gallery', 'Media Gallery', 'মিডিয়া গ্যালারী', 'Galería media', 'معرض الوسائط', 'मीडिया गैलरी', 'میڈیا گیلری', '媒体库', 'メディアギャラリー', 'Galeria de mídia', 'Медиа-галерея', 'Galerie des médias', '미디어 갤러리', 'Medien Gallerie', 'Galleria multimediale', 'Media Gallery', 'Média Galéria', 'media galerij', 'Gallery', 'Galeri media', 'Medya Galerisi', 'Έκθεση μέσων', 'گالری رسانه', 'Galeri Media', 'మీడియా గ్యాలరీ', 'மீடியா தொகுப்பு', 'મીડિયા ગેલેરી', 'Galeria multimediów', 'Медіа галерея', 'ਮੀਡੀਆ ਗੈਲਰੀ', 'Galerie media', 'မီဒီယာပြခန်း', 'Media Gallery', 'Media Gallery', NULL),
(481, 'caption', 'Caption', 'ক্যাপশন', 'Subtítulo', 'شرح', 'शीर्षक', 'کیپشن', '标题', 'キャプション', 'Rubrica', 'титр', 'Légende', '표제', 'Bildbeschriftung', 'Didascalia', 'คำบรรยายภาพ', 'Felirat', 'Onderschrift', 'caption', 'Caption', 'altyazı', 'Λεζάντα', 'عنوان', 'Keterangan', 'శీర్షిక', 'தலைப்பு', 'કૅપ્શન', 'Podpis', 'Підпис', 'ਸੁਰਖੀ', 'Legendă', 'caption', 'Caption', 'Caption', NULL),
(482, 'school_fax', 'School Fax', 'স্কুল ফ্যাক্স', 'Fax escolar', 'فاكس المدرسة', 'स्कूल फ़ैक्स', 'اسکول فیکس', '学校传真', '学校のファックス', 'Fax escolar', 'Школьный Факс', 'Fax de lécole', '학교 팩스', 'Schulfax', 'Fax della scuola', 'แฟกซ์โรงเรียน', 'Iskolai fax', 'Schoolfax', 'Fax School', 'Faks Sekolah', 'Okul faksı', 'Σχολικό φαξ', 'مدرسه فکس', 'Faks Sekolah', 'స్కూల్ ఫ్యాక్స్', 'பள்ளி தொலைநகல்', 'શાળા ફેક્સ', 'Faks szkolny', 'Шкільний факс', 'ਸਕੂਲ ਫੈਕਸ', 'Scoala de fax', 'ကျောင်းစာအုပ်ဖက်စ်', 'Fax Ile-iwe', 'Fax Fax', NULL),
(483, 'school_geocode', 'School Location Code', 'স্কুল অবস্থান কোড', 'Código de ubicación de la escuela', 'رمز موقع المدرسة', 'स्कूल स्थान कोड', 'سکول کی جگہ کا کوڈ', '学校位置代码', '学校の場所コード', 'Código de localização da escola', 'Код места расположения школы', 'Code de lieu de lécole', '학교 위치 코드', 'Standortcode der Schule', 'Codice di posizione della scuola', 'รหัสสถานที่ตั้งโรงเรียน', 'Iskola helykódja', 'School locatiecode', 'Location schola Code', 'Kode Lokasi Sekolah', 'Okul Yeri Kodu', 'Κωδικός τοποθεσίας σχολείου', 'کد مدرسه محل سکونت', 'Kod Lokasi Sekolah', 'స్కూల్ స్థానాన్ని వీధి చిరునామా', 'பள்ளி இடத்தை', 'શાળા સ્થાન કોડ', 'Kod lokalizacji szkoły', 'Код місцеположення школи', 'ਸਕੂਲ ਸਥਾਨ ਕੋਡ', 'Codul locației școlii', 'ကျောင်းစာအုပ်တည်နေရာ Code ကို', 'Iwe Ilana Ile-iwe', 'Lambar Ƙarin Makaranta', NULL),
(484, 'facebook_url', 'Facebook URL', 'ফেসবুক ইউআরএল', 'Facebook URL', 'URL الفيسبوك', 'फेसबुक युआरएल', 'فیس بک یو آر ایل', 'Facebook网址', 'Facebookの', 'URL Facebook', 'URL-адрес Facebook', 'Ladresse URL de Facebook', 'Facebook URL', 'Facebook URL', 'URL di Facebook', 'URL ของ Facebook', 'Facebook URL', 'Facebook URL', 'Facebook URL', 'URL Facebook', 'Facebook URL', 'Διεύθυνση URL του Facebook', 'URL فیس بوک', 'URL Facebook', 'Facebook URL', 'பேஸ்புக் URL', 'ફેસબુક URL', 'URL facebooka', 'URL-адреса на Facebook', 'ਫੇਸਬੁੱਕ URL', 'URL-ul Facebook', 'Facebook မှာ URL ကို', 'URL URL', 'Facebook URL', NULL),
(485, 'twitter_url', 'Twitter URL', 'টুইটার ইউআরএল', 'URL de Twitter', 'رابط تويتر', 'ट्विटर यूआरएल', 'ٹویٹر یو آر ایل', 'Twitter网址', 'Twitterの', 'URL do Twitter', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL di Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Διεύθυνση URL Twitter', 'URL توییتر', 'URL Twitter', 'Twitter URL', 'ட்விட்டர் URL', 'ટ્વિટર URL', 'Adres URL Twittera', 'URL-адреса Twitter', 'ਟਵਿੱਟਰ URL', 'URL-ul Twitter', 'Twitter ကို URL ကို', 'Twitter URL', 'Twitter URL', NULL),
(486, 'linkedin_url', 'Linkedin URL', 'লিঙ্কডিন ইউআরএল', 'URL de Linkedin', 'Linkedin URL', 'लिंक्डिन यूआरएल', 'لنکڈین یو آر ایل', 'Linkedin网址', 'リンク先の', 'URL do Linkedin', 'Ссылка на Linkedin', 'URL Linkedin', '링크 된 URL', 'Verknüpfte URL', 'URL di Linkedin', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'LinkedIn URL', 'URL Linkedin', 'Linkedin URLsi', 'Linkedin URL', 'نشانی اینترنتی لینکدین', 'URL Linkedin', 'లింక్ చేసిన URL', 'இணைக்கப்பட்ட URL', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'ਲਿੰਕਡਿਨ ਯੂਆਰਐਲ', 'Linkedin URL', 'linkedin URL ကို', 'Linkedin URL', 'Linkedin URL', NULL),
(487, 'google_plus_url', 'Google Plus URL', 'গুগল প্লাস ইউআরএল', 'URL de Google Plus', 'جوجل بلس URL', 'Google Plus URL', 'Google Plus URL', 'Google Plus网址', 'Google Plusの', 'URL do Google Plus', 'URL-адрес Google Plus', 'URL Google Plus', 'Google 플러스 URL', 'Google Plus-URL', 'URL di Google Plus', 'URL Google Plus', 'Google Plus URL', 'Google Plus URL', 'Google Plus URL', 'URL Google Plus', 'Google Artı URL', 'Διεύθυνση URL Google Plus', 'گوگل پلاس URL', 'URL Google Plus', 'గూగుల్ ప్లస్ URL', 'கூகிள் பிளஸ் URL', 'Google Plus URL', 'Adres URL Google Plus', 'URL-адреса Google Plus', 'Google Plus URL', 'Adresa URL Google Plus', 'Google Plus URL ကို', 'URL Google Plus', 'Google Plus URL', NULL),
(488, 'youtube_url', 'Youtube URL', 'ইউটিউব ইউআরএল', 'URL de Youtube', 'عنوان URL على Youtube', 'यूथट्यूब यूआरएल', 'یو ٹیوب یو آر ایل', 'YouTube网址', 'YouTubeの', 'URL do Youtube', 'URL Youtube', 'URL Youtube', 'YouTube URL', 'YouTube-URL', 'URL di Youtube', 'URL ของ Youtube', 'Youtube URL', 'YouTube-URL', 'URL Videos', 'URL Youtube', 'Youtube URLsi', 'Youtube URL', 'URL یوتیوب', 'URL Youtube', 'Youtube URL', 'Youtube URL', 'YouTube URL', 'Adres URL w YouTube', 'URL-адреса YouTube', 'ਯੂਟਿਊਬ ਯੂਆਰਐਲ', 'Adresa URL Youtube', 'Youtube ကို URL ကို', 'Youtube URL', 'Youtube URL', NULL),
(489, 'instagram_url', 'Instagram URL', 'ইনস্টাগ্রাম ইউআরএল', 'URL de Instagram', 'عنوان انستغرام', 'Instagram URL', 'Instagram یو آر ایل', 'Instagram网址', 'Instagram URL', 'URL do Instagram', 'URL-адрес Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'URL di Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'URL Instagram', 'Instagram URL', 'Διεύθυνση URL Instagram', 'URL نمایش مشخصات عمومی', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'Adres URL Instagrama', 'URL-адреса Instagram', 'Instagram URL', 'Adresă URL Instagram', 'Instagram ကို URL ကို', 'Instagram URL', 'Instagram URL', NULL),
(490, 'pinterest_url', 'Pinterest URL', 'পিন্টারেস্ট ইউআরএল', '', 'Pinterest URL', 'Pinterest यूआरएल', 'Pinterest یو آر ایل', 'Pinterest网址', 'Pinterest URL', 'URL do Pinterest', 'URL-адрес Pinterest', 'URL de Pinterest', '관심있는 URL', 'Pinterest-URL', 'URL di Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'URL Pinterest', 'URL Pinterest', 'Pinterest URL', 'Διεύθυνση URL Pinterest', 'آدرس اینترنتی Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'Pinterest URL', 'URL na Pinterest', 'Pinterest URL', 'Pinterest ਯੂਆਰਐਲ', 'Adresa URL Pinterest', 'Pinterest URL ကို', 'Pinterest URL', 'URL din', NULL),
(491, 'page', 'Page', '', 'Página', 'صفحة', 'पृष्ठ', 'صفحہ', '页', 'ページ', 'Página', 'страница', 'Page', '페이지', 'Seite', 'Pagina', 'หน้า', 'oldal', 'Pagina', 'page', 'Halaman', 'Sayfa', 'Σελίδα', 'صفحه', 'Halaman', 'పేజీ', 'பக்கம்', 'પાનું', 'Strona', 'Сторінка', 'ਪੰਨਾ', 'Pagină', 'စာမျက်နှာ', 'Page', 'Page', NULL),
(492, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'विवरण', 'تفصیل', '描述', '説明', 'Descrição', 'Описание', 'La description', '기술', 'Beschreibung', 'Descrizione', 'ลักษณะ', 'Leírás', 'Beschrijving', 'Description', 'Deskripsi', 'Açıklama', 'Περιγραφή', 'شرح', 'Penerangan', 'వివరణ', 'விளக்கம்', 'વર્ણન', 'Opis', 'Опис', 'ਵਰਣਨ', 'Descriere', 'ဖေါ်ပြချက်', 'Apejuwe', 'Bayani', NULL),
(493, 'hourly', 'Hourly', 'প্রতি ঘণ্টায়', 'Cada hora', 'باستمرار', 'प्रति घंटा', 'گھنٹہ وار', '每小时', '毎時', 'De hora em hora', 'почасовой', 'Horaire', '매시간', 'Stündlich', 'ogni ora', 'ทุกๆชั่วโมง', 'Óránkénti', 'ieder uur', 'hourly', 'Per jam', 'Saatlik', 'Ωριαίος', 'ساعتی', 'Jam', 'ప్రతిగంట', 'மணிக்கொருமுறை', 'અવરલી', 'Cogodzinny', 'Погодинно', 'ਘੰਟਾ', 'ore', 'နာရီတိုင်း', 'Wakati', 'Saa', NULL),
(494, 'payroll', 'Payroll', 'পেরোল', 'Nómina de sueldos', 'كشف رواتب', 'पेरोल', 'پے رول', '工资表', '給与計算', 'Folha de pagamento', 'Начисление заработной платы', 'Paie', '급여', 'Lohn-und Gehaltsabrechnung', 'Libro paga', 'บัญชีเงินเดือน', 'Payroll', 'Loonlijst', 'Mauris scelerisque', 'Daftar gaji', 'Maaş bordrosu', 'Κατάσταση μισθοδοσίας', 'حقوق و دستمزد', 'Penggajian', 'పేరోల్', 'சம்பளப்பட்டியல்', 'પેરોલ', 'Lista płac', 'Зарплата', 'ਪੇਰੋਲ', 'stat de plată', 'အခစာရင်း', 'Owo-owo sisan', 'Biyan kuɗi', NULL),
(495, 'salary_grade', 'Salary Grade', 'বেতন গ্রেড', 'Grado de salario', 'راتب', 'वेतन ग्रेड', 'تنخواہ گریڈ', '薪金等级', '給与等級', 'Grau Salarial', 'Уровень зарплаты', 'Grade salarial', '급여 등급', 'Gehaltsstufe', 'Grado di stipendio', 'ระดับเงินเดือน', 'Fizetési fokozat', 'Salarisrang', 'Romani stipendio', 'Grade Gaji', 'Maaş Notu', 'Μισθός βαθμού', 'درجه حقوق و دستمزد', 'Gred Gaji', 'జీతం గ్రేడ్', 'சம்பளம் தர', 'પગાર ગ્રેડ', 'Wynagrodzenie', 'Зарплата', 'ਸੈਲਰੀ ਗ੍ਰੇਡ', 'Gradul de salarizare', 'လစာအဆင့်', 'Iye owo-iwe', 'Salary Salary', NULL),
(496, 'grade_name', 'Grade Name', 'গ্রেড নাম', 'Nombre de grado', 'اسم الصف', 'ग्रेड का नाम', 'گریڈ کا نام', '成绩名称', 'グレード名', 'Nome da classe', 'Имя класса', 'Nom de grade', '학년 이름', 'Benennungsname', 'Nome di qualità', 'ชื่อชั้นเรียน', 'Grade Name', 'Grade naam', 'nomen gradus', 'Nama Kelas', 'Sınıf adı', 'Όνομα βαθμού', 'نام درجه', 'Nama Gred', 'గ్రేడ్ పేరు', 'தரம் பெயர்', 'ગ્રેડ નામ', 'Nazwa klasy', 'Назва класу', 'ਗਰੇਡ ਨਾਮ', 'Numele clasei', 'grade အမည်', 'Orukọ Ipele', 'Sunan suna', NULL),
(497, 'basic_salary', 'Basic Salary', 'মূল বেতন', 'Salario base', 'راتب اساسي', 'मूल वेतन', 'بنیادی تنخواہ', '基础工资', '基本給', 'Salário básico', 'Основная зарплата', 'Salaire de base', '기본 급여', 'Grundgehalt', 'Salario di base', 'เงินเดือนทั่วไป', 'Alapilletmény', 'Basis salaris', 'Basic stipendio', 'Gaji pokok', 'Temel maaş', 'Βασικού μισθού', 'حقوق پایه', 'Gaji pokok', 'మూల వేతనం', 'அடிப்படை சம்பளம்', 'પ્રાથમિક વેતન', 'Podstawowe wynagrodzenie', 'Основна заробітна плата', 'ਬੇਸਿਕ ਸੈਲਰੀ', 'Salariu de baza', 'အခြေခံလစာ', 'Ipilẹ Ipilẹ', 'Salaye na asali', NULL),
(498, 'house_rent', 'House Rent', 'ঘর ভাড়া', 'Alquiler de casa', 'إيجار المنزل', 'घर का किराया', 'گھر کا کرایہ', '房租', '家賃', 'Aluguel de casa', 'Аренда дома', 'Location de maison', '집 임대', 'Hausmiete', 'Affitto della casa', 'บ้านเช่า', 'House Rent', 'Huur', 'HABITATIO', 'Sewa Rumah', 'Ev Kiralama', 'Ενοίκιο σπιτιού', 'اجاره خانه', 'Rumah sewa', 'హౌస్ అద్దె', 'வீட்டு வாடகை', 'હાઉસ ભાડું', 'Dom na wynajem', 'Оренда житла', 'ਹਾਊਸ ਰੈਂਟ', 'Chiria casei', 'အိမ်ဌားရန်', 'Ile Iyalo', 'House Rent', NULL),
(499, 'over_time_hourly_rate', 'Over Time Hourly Rate', 'ওভার টাইম ঘন্টায় রেট', 'Sobre la tarifa por hora del tiempo', 'مع مرور الوقت معدل بالساعة', 'समय प्रति घंटा दर से अधिक', 'وقت کے اوقات کی شرح کے دوران', '随时间变化的小时费率', '時間ごとの時間別料金', 'Taxa horária por hora', 'Счастье в час', 'Taux horaire au fil du temps', '시간별 시간당 요금', 'Stundensatz über die Zeit', 'Over Time Rate oraria', 'อัตรารายชั่วโมงต่อชั่วโมง', 'Több mint óránkénti arány', 'Na verloop van tijd uurtarief', 'Per Rate Tempus Hourly', 'Over Time Hourly Rate', 'Zaman İçindekiler Hızı', 'Χρόνος ανά ώρα', 'در طول ساعت به صورت ساعت', 'Lebih Kadar Masa Berkala', 'ఓవర్ టైమ్ గంటరో రేట్', 'ஓவர் டைம் மணிநேர விகிதம்', 'સમયનો સમય દીઠ દર', 'Ponadgodzinna stawka', 'З часом в годину', 'ਵੱਧ ਸਮਾਂ ਘੰਟਾ ਦਰ', 'Rata orară a timpului', 'အချိန်နာရီအလိုက်နှုန်းကျော်', 'Akoko Iwọn Akokọ Oṣuwọn', 'Fiye da Lokaci Na Yau', NULL),
(500, 'provident_fund', 'Provident Fund', 'তহবিল', 'fondo de Previsión', 'صندوق الادخار', 'भविष्य निधि', 'پراویڈنٹ فنڈ', '公积金', '準備基金', 'fundo de previdência', 'резервный фонд', 'Fonds de prévoyance', '프로 비전 기금', 'Vorsorgefonds', 'fondo di previdenza', 'กองทุนสำรองเลี้ยงชีพ', 'segélyalap', 'Provident Fund', 'fiscus provident', 'dana penghematan', 'ihtiyat fonu', 'ταμείο προνοίας', 'صندوق', 'kumpulan Wang Simpanan', 'భవిష్య నిధి', 'வருங்கால வைப்பு நிதி', 'પ્રોવિડન્ટ ફંડ', 'Fundusz Provident', 'резервного фонду', 'ਪ੍ਰਾਵੀਡੈਂਟ ਫੰਡ', 'Fondul Provident', 'Provident Fund က', 'Iwe-iṣowo Pipese', 'Asusun bada', NULL),
(501, 'hourly_rate', 'Hourly Rate', 'প্রতি ঘণ্টার মূল্য', 'Tarifa por hora', 'المعدل بالساعة', 'प्रति घंटा - दर', ' فی گھنٹہ کی شرح', '每小时收费', '時給', 'Taxa horária', 'Часовая ставка', 'Taux horaire', '시간당 요금', 'Stundensatz', 'Tariffa oraria', 'อัตราชั่วโมง', 'Óradíj', 'Uurtarief', 'Hourly rate', 'Tarif per jam', 'Saatlik ücret', 'Ωρομίσθιο', 'نرخ ساعتی', 'Kadar jam', 'గంటకు రేటు', 'நேர விகிதம்', 'અવરલી રેટ', 'Stawka godzinowa', 'Погодинна ставка', 'ਘੰਟੇ ਦੀ ਦਰ', 'Rata orară', 'အလုပ်ချိန်နာရီနှုန်း', 'Oṣuwọn wakati', 'Ranar Saa', NULL),
(502, 'gross_salary', 'Gross Salary', 'মোট বেতন', 'Salario bruto', 'الراتب الكلى', 'सकल वेतन', 'مجموعی تنخواہ', '总薪水', '総給与', 'Salário Bruto', 'Валовая зарплата', 'Salaire brut', '총 급여', 'Bruttogehalt', 'Stipendio lordo', 'เงินเดือนขั้นต้น', 'Bruttó bér', 'Brutosalaris', 'Crassa salarium', 'Gaji kotor', 'Brüt maaş', 'Ακαθάριστο μισθό', 'حقوق و دستمزد ناخالص', 'Gaji kasar', 'స్థూల జీతం', 'மொத்த சம்பளம்', 'કુલ પગાર', 'Wynagrodzenie brutto', 'Зарплата брутто', 'ਕੁੱਲ ਤਨਖ਼ਾਹ', 'Salariu brut', 'စုစုပေါင်းလစာ', 'Gross Salary', 'Rawan kudi mai yawa', NULL),
(503, 'net_salary', 'Net Salary', 'নেট বেতন', 'Sueldo neto', 'صافي الراتب', 'कुल वेतन', 'نیٹ تنخواہ', '净工资', 'ネット給与', 'Salário líquido', 'Чистая зарплата', 'Salaire net', '순 급여', 'Nettogehalt', 'Salario netto', 'เงินเดือนสุทธิ', 'Nettó bér', 'Netto salaris', 'Net MERCES', 'Gaji bersih', 'Net maaş', 'Καθαρός μισθός', 'حقوق خالص', 'Gaji Bersih', 'నికర జీతం', 'நிகர சம்பளம்', 'નેટ પગાર', 'Wynagrodzenie netto', 'Чиста зарплата', 'Net Salary', 'Salariu net', 'net ကလစာ', 'Apapọ owo-ori', 'Raayin Netarwa', NULL),
(504, 'salary_type', 'Salary Type', 'বেতন প্রকার', 'Tipo de salario', 'نوع الراتب', 'वेतन प्रकार', 'تنخواہ کی قسم', '薪资类型', '給与タイプ', 'Tipo salarial', 'Тип зарплаты', 'Type de salaire', '급여 유형', 'Gehaltsart', 'Tipo di stipendio', 'ประเภทเงินเดือน', 'Fizetési típus', 'Salaris Type', 'Type stipendio', 'Tipe Gaji', 'Maaş Türü', 'Τύπος μισθοδοσίας', 'نوع حقوق', 'Jenis Gaji', 'జీతం పద్ధతి', 'சம்பள வகை', 'પગાર પ્રકાર', 'Rodzaj wynagrodzenia', 'Тип заробітної плати', 'ਤਨਖਾਹ ਦੀ ਕਿਸਮ', 'Tip de salariu', 'လစာအမျိုးအစား', 'Iyawo Iru', 'Nauin Salary', NULL),
(505, 'payment_to', 'Payment To', 'জাহাকেপেমেন্ট  করা হবে', 'Pago Para', 'دفع ل', 'को भुगतान', 'ادائیگی کرنے کے لئے', '支付', 'への支払い', 'Pagamento para', 'Оплата Для', 'Paiement à', '지불 대상', 'Zahlung an', 'pagamento a', 'ชำระเงินถึง', 'Fizetés ... részére', 'Betaling aan', 'Ad Payment', 'pembayaran untuk', 'Için ödeme', 'Πληρωμή σε', 'پرداخت به', 'bayaran kepada', 'చెల్లింపు', 'கட்டணம் கட்ட', 'ચુકવણી માટે', 'Płatność Do', 'Оплата до', 'ਭੁਗਤਾਨ ਕਰਨ ਲਈ', 'plata catre', 'ရန်ငွေပေးချေမှုရမည့်', 'Isanwo Lati', 'Biya Don', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(506, 'over_time_total_hour', 'Over Time Total Hour', 'ওভার টাইম  মোট ঘন্টা', 'Hora total en el tiempo', 'مع مرور الوقت إجمالي ساعة', 'समय कुल घंटे से अधिक', 'کل وقت کے ساتھ', '随着时间的推移', '合計時間', 'Over Time Total Hour', 'С течением времени', 'Au fil du temps Total heure', '시간이 지남에 따라 총 시간', 'Über die Zeit insgesamt Stunde', 'Oltre lora totale', 'เมื่อรวมเวลาทั้งหมด', 'Idő alatt Teljes óra', 'Na verloop van tijd Totaal uur', 'Total super Hour', 'Over Time Total Hour', 'Zamanla Toplam Saat', 'Συνολική ώρα κατά τη διάρκεια του χρόνου', 'در طول زمان کل ساعت', 'Lebih Masa Jumlah Jam', 'ఓవర్ టైం టోటల్ అవర్', 'மொத்த நேரம் மொத்த நேரம்', 'સમય કુલ કલાક ઉપર', 'Łączna liczba godzin w czasie', 'З часом загальна година', 'ਟਾਈਮ ਕੁਲ ਘੰਟਾ ਵੱਧ', 'Ora pe oră totală', 'အချိန်စုစုပေါင်းနာရီကျော်', 'Aago Aago Lapapọ wakati', 'Bayan Lokaci Kayan Saa', NULL),
(507, 'over_time_amount', 'Over Time Amount', 'ওভার টাইম পরিমাণ', 'Sobre el tiempo Monto', 'على مر الزمن المبلغ', 'समय राशि के साथ', 'وقت کی رقم کے دوران', '随着时间的推移', '時間経過に伴う金額', 'Ao longo do tempo', 'Сумма за раз', 'Au fil du temps', '시간 경과에 따른 금액', 'Über Zeit Betrag', 'Over Time Amount', 'เมื่อเวลาผ่านไป', 'Több idő alatt', 'Over tijd Bedrag', 'Per Aliquam tempus', 'Over Time Amount', 'Zamana Göre Tutar', 'Ποσό Over Time', 'بیش از مقدار زمان', 'Jumlah Lebih Masa', 'ఓవర్ టైం మొత్తం', 'ஓவர் டைம் தொகை', 'સમયનો રકમ', 'Kwota w czasie', 'Надмірна сума', 'ਸਮੇਂ ਦੀ ਮਾਤਰਾ ਤੋਂ ਵੱਧ', 'Valoarea peste timp', 'အချိန်ပမာဏကျော်', 'Iye Iye Aago', 'Yawan Lokaci', NULL),
(508, 'total_hour', 'Total Hour', 'মোট ঘন্টা', 'Hora total', 'مجموع الساعة', 'कुल घंटे', 'کل گھنٹے', '总时数', '合計時間', 'Hora Total', 'Общий час', 'Heure totale', '총 시간', 'Gesamtstunde', 'Ora totale', 'รวมชั่วโมง', 'Teljes óra', 'Totaal uur', 'summa Hour', 'Jam Total', 'Toplam Saat', 'Συνολική ώρα', 'ساعت کل', 'Jumlah Jam', 'మొత్తం అవర్', 'மொத்த மணி', 'કુલ કલાક', 'Godzina ogółem', 'Загальна кількість годин', 'ਕੁੱਲ ਘੰਟਾ', 'Ora totală', 'စုစုပေါင်းနာရီ', 'Lapapọ wakati', 'Jimlar Saa', NULL),
(509, 'bonus', 'Bonus', 'বোনাস', 'Prima', 'علاوة', 'बोनस', ' بونس', '奖金', 'ボーナス', 'Bônus', 'бонус', 'Prime', '보너스', 'Bonus', 'indennità', 'โบนัส', 'pótlék', 'Bonus', 'Bonus', 'Bonus', 'Bonus', 'Δώρο', 'جایزه', 'Bonus', 'అదనపు', 'போனஸ்', 'બોનસ', 'Premia', 'Бонус', 'ਬੋਨਸ', 'Primă', 'ဆုငှေ', 'Ajeseku', 'Bonus', NULL),
(510, 'penalty', 'Penalty', 'জরিমানা', 'Pena', 'ضربة جزاء', 'दंड', 'جرمانہ', '罚款', 'ペナルティ', 'Pena', 'неустойка', 'Peine', '패널티', 'Elfmeter', 'Pena', 'การลงโทษ', 'Büntetés', 'boete', 'supplicium', 'Penalti', 'Ceza', 'Ποινή', 'مجازات', 'Penalti', 'పెనాల్టీ', 'அபராதம்', 'દંડ', 'Rzut karny', 'Штраф', 'ਪੈਨਲਟੀ', 'Penalizare', 'ပြစ်ဒဏ်', 'Ipaba', 'Zama', NULL),
(511, 'gross_amount', 'Gross Amount', 'মোট পরিমাণ', 'Cantidad bruta', 'المبلغ الإجمالي', 'सकल राशि', 'مجموعی رقم', '总额', '総額', 'Quantidade bruta', 'Сумма брутто', 'Montant brut', '총액', 'Bruttobetrag', 'Importo lordo', 'ยอดรวม', 'Bruttó összeg', 'Brutobedrag', 'Crassa pondus', 'Jumlah bruto', 'Brüt miktar', 'Ακαθάριστο ποσό', 'مقدار ناخالص', 'Jumlah kasar', 'స్థూల మొత్తం', 'மொத்த தொகை', 'કુલ રકમ', 'Kwota brutto', 'Валова сума', 'ਕੁੱਲ ਰਕਮ', 'Valoarea brută', 'စုစုပေါင်းငွေပမာဏ', 'Iye nla', 'Babban Asalin', NULL),
(512, 'net_amount', 'Net Amount', 'নেট পরিমাণ', 'Importe neto', 'كمية الشبكة', 'शुद्ध राशि', 'اصل رقم', '净额', '正味金額', 'Valor líquido', 'Чистая сумма', 'Montant net', '순액', 'Netto-Betrag', 'Importo netto', 'ปริมาณสุทธิ', 'Nettó összege', 'Netto bedrag', 'Net amount', 'Jumlah bersih', 'Net tutar', 'Καθαρό ποσό', 'مقدار خالص', 'Jumlah bersih', 'నికర మొత్తం', 'நிகர தொகை', 'નેટ રકમ', 'Kwota netto', 'Чиста сума', 'ਕੁੱਲ ਰਾਸ਼ੀ', 'Cantitate netă', 'net ငွေပမာဏ', 'Iye apapọ', 'Babban Asusun', NULL),
(513, 'is_applicable_discount', 'Is Applicable Discount?', 'ডিসকাউন্ট কি প্রযোজ্য?', '¿Es un descuento aplicable?', 'هو الخصم للتطبيق؟', 'लागू छूट है?', 'قابل اطلاق ڈسکاؤنٹ ہے؟', '是否适用折扣？', '適用割引ありますか？', 'É um desconto aplicável?', 'Применимая скидка?', 'Est-ce que le rabais applicable?', '적용 가능한 할인인가?', 'Ist der Rabatt gültig?', 'È lo sconto applicabile?', 'ส่วนลดที่ใช้บังคับหรือไม่?', 'Alkalmazható kedvezmény?', 'Is toepasselijke korting?', 'Price est applicabilis?', 'Apakah Diskon yang Berlaku?', 'Uygulanabilir İndirim mi?', 'Εφαρμόζεται έκπτωση;', 'آیا تخفیف مناسب است؟', 'Adakah Diskaun Berkenaan?', 'వర్తించదగిన డిస్కౌంట్ ఉందా?', 'பொருந்தக்கூடிய தள்ளுபடி?', 'લાગુ ડિસ્કાઉન્ટ છે?', 'Czy obowiązuje zniżka?', 'Чи застосовується знижка?', 'ਕੀ ਛੂਟ ਨੂੰ ਲਾਗੂ ਕਰਨਾ ਹੈ?', 'Este o reducere aplicabilă?', 'သက်ဆိုင်သောလျှော့ရှိပါသလား?', 'Ṣe Ṣe Kan Owo?', 'Shin rangwamen da aka dace?', NULL),
(514, 'social_link', 'Social Link', 'সামাজিক লিংক', 'Vínculo social', 'وصلة اجتماعية', 'सामाजिक लिंक', 'سوشل لنک', '社交链接', 'ソーシャルリンク', 'Link social', 'Социальная связь', 'Lien social', '소셜 링크', 'Soziale Verbindung', 'Collegamento sociale', 'Social Link', 'Közösségi link', 'Sociale link', 'Social Link', 'Jaringan sosial', 'Sosyal link', 'Κοινωνική σύνδεση', 'پیوند اجتماعی', 'Pautan Sosial', 'సామాజిక లింక్', 'சமூக இணைப்பு', 'સામાજિક લિંક', 'Link społecznościowy', 'Соціальна Посилання', 'ਸੋਸ਼ਲ ਲਿੰਕ', 'Legătură socială', 'လူမှု Link ကို', 'Asopọ Awujọ', 'Ƙungiyar Jiki', NULL),
(515, 'get_in_touch', 'Get in Touch', 'স্পর্শ করুন', 'Estar en contacto', 'ابقى على تواصل', 'संपर्क में रहो', 'رابطے میں رہنا', '保持联系', '連絡する', 'Entrar em contato', 'Связаться', 'Entrer en contact', '연락하기', 'In Kontakt kommen', 'Mettiti in contatto', 'ได้รับการติดต่อ', 'Felveszi a kapcsolatot', 'Neem contact op', 'Get in Touch', 'Berhubungan', 'Temasta olmak', 'Ερχομαι σε επαφή', 'در تماس بودن', 'Dapatkan Sentuhan', 'అందుబాటులో ఉండు', 'தொடர்பில் இருங்கள்', 'સંપર્કમાં રહેવા', 'Bądź w kontakcie', 'Будемо на звязку', 'ਸੰਪਰਕ ਵਿੱਚ ਰਹੇ', 'Intrați în contact', 'Touch ကိုအတွက် Get', 'Gba ni Fọwọkan', 'Samun shiga', NULL),
(516, 'staff', 'Staff', 'কর্মী', 'Personal', 'العاملين', 'कर्मचारी', 'اسٹاف', '员工', 'スタッフ', 'Funcionários', 'Сотрудники', 'Personnel', '직원', 'Mitarbeiter', 'Personale', 'บุคลากร', 'Személyzet', 'Personeel', 'Staff', 'Staf', 'Personel', 'Προσωπικό', 'کارکنان', 'Kakitangan', 'స్టాఫ్', 'ஊழியர்கள்', 'સ્ટાફ', 'Personel', 'Персонал', 'ਸਟਾਫ਼', 'Personal', 'ဝန်ထမ်း', 'Oṣiṣẹ', 'Maaikata', NULL),
(517, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'हमसे संपर्क करें', 'ہم سے رابطہ کریں', '联系我们', 'お問い合わせ', 'Contate-Nos', 'Свяжитесь с нами', 'Contactez nous', '연락처', 'Kontaktiere uns', 'Contattaci', 'ติดต่อเรา', 'Lépjen kapcsolatba velünk', 'Neem contact met ons op', 'Nobis loquere', 'Hubungi kami', 'Bizimle iletişime geçin', 'Επικοινωνήστε μαζί μας', 'تماس با ما', 'Hubungi Kami', 'మమ్మల్ని సంప్రదించండి', 'எங்களை தொடர்பு கொள்ள', 'અમારો સંપર્ક કરો', 'Skontaktuj się z nami', 'Звяжіться з нами', 'ਸਾਡੇ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contacteaza-ne', 'ကြှနျုပျတို့ကိုဆကျသှယျရနျ', 'Pe wa', 'Tuntuɓi Mu', NULL),
(518, 'read_more', 'Read More', 'আরও পড়ুন', 'Lee mas', 'اقرأ أكثر', 'और पढो', 'مزید پڑھ', '阅读更多', '続きを読む', 'consulte Mais informação', 'Прочитайте больше', 'Lire la suite', '더 읽기', 'Weiterlesen', 'Leggi di più', 'อ่านเพิ่มเติม', 'Olvass tovább', 'Lees verder', 'Lege plus', 'Baca lebih banyak', 'Daha fazla oku', 'Διαβάστε περισσότερα', 'ادامه مطلب', 'Baca Lebih Lanjut', 'ఇంకా చదవండి', 'மேலும் வாசிக்க', 'વધુ વાંચો', 'Czytaj więcej', 'Читати далі', 'ਹੋਰ ਪੜ੍ਹੋ', 'Citeste mai mult', 'ဆက်ဖတ်ရန်', 'Ka siwaju', 'Kara karantawa', NULL),
(519, 'event_info', 'Event Info', 'ইভেন্ট তথ্য', 'Información del evento', 'معلومات الحدث', 'ईवेंट जानकारी', 'واقعہ کی معلومات', '活动信息', 'イベント情報', 'Informação do Evento', 'Информация о событии', 'Informations sur lévénement', '이벤트 정보', 'Ereignisinformationen', 'Informazioni sullevento', 'ข้อมูลเหตุการณ์', 'Esemény információ', 'Evenement info', 'res Info', 'Info Acara', 'Etkinlik Bilgisi', 'Πληροφορίες εκδήλωσης', 'اطلاعات رویداد', 'Maklumat Acara', 'ఈవెంట్ సమాచారం', 'நிகழ்வு தகவல்', 'ઇવેન્ટ માહિતી', 'Informacje o wydarzeniu', 'Інформація про події', 'ਇਵੈਂਟ ਜਾਣਕਾਰੀ', 'Informații despre eveniment', 'အဖြစ်အပျက်အင်ဖို', 'Alaye ti oyan', 'Bayanin Event', NULL),
(520, 'admission_form', 'Admission Form', 'ভর্তির ফর্ম', 'Formulario de admisión', 'شكل القبول', 'प्रवेश फार्म', 'داخلہ فارم', '入场表格', '入学式', 'Formulário de admissão', 'Форма приема', 'Formulaire dadmission', '입학 허가서', 'Aufnahmeformular', 'Modulo di ammissione', 'แบบฟอร์มเข้าศึกษา', 'Felvételi űrlap', 'Toelatingsformulier', 'Admission Form', 'Formulir Pendaftaran', 'Kabul formu', 'Έντυπο Εισαγωγής', 'فرم پذیرش', 'Borang Kemasukan', 'అడ్మిషన్ ఫారం', 'சேர்க்கை படிவம்', 'પ્રવેશ ફોર્મ', 'Formularz przyjęcia', 'Форма прийому', 'ਦਾਖ਼ਲਾ ਫਾਰਮ', 'Formular de admitere', 'ဝန်ခံချက် Form ကို', 'Fọọmu Gbigba', 'Takardar izinin shiga', NULL),
(521, 'home', 'Home', 'হোম', 'Casa', ' الصفحة الرئيسية', 'होम', 'گھر', '家', 'ホーム', 'Casa', 'Главная', 'Accueil', '집', 'Zuhause', 'Casa', 'บ้าน', 'itthon', 'Huis', 'domum', 'Rumah', 'Ev', 'Σπίτι', 'خانه', 'Rumah', 'హోమ్', 'முகப்பு', 'હોમ', 'Dom', 'Будинок', 'ਘਰ', 'Acasă', 'နေအိမ်', 'Ile', 'Home', NULL),
(522, 'last_name', 'Last Name', 'নামের শেষাংশ', 'Apellido', 'الكنية', 'अंतिम नाम', 'آخری نام', '姓 ', '苗字', 'Último nome', 'Фамилия', 'Nom de famille', '성', 'Familienname, Nachname', 'Cognome', 'นามสกุล', 'Vezetéknév', 'Achternaam', 'Cognomen', 'Nama keluarga', 'Soyadı', 'Επίθετο', 'نام خانوادگی', 'Nama terakhir', 'చివరి పేరు', 'கடைசி பெயர்', 'છેલ્લું નામ', 'Nazwisko', 'Прізвище', 'ਆਖਰੀ ਨਾਂਮ', 'Numele de familie', 'မျိုးနွယ်အမည်', 'Oruko idile', 'Sunan mahaifa', NULL),
(523, 'school_fax', 'Fax', 'ফ্যাক্স', 'Fax', 'فاكس', 'फैक्स', 'فیکس', '传真', 'ファックス', 'Fax', 'факс', 'Fax', '팩스', 'Fax', 'Fax', 'แฟกซ์', 'Fax', 'Fax', 'Fax', 'Fax', 'Faks', 'Φαξ', 'فکس', 'Faks', 'ఫ్యాక్స్', 'தொலைநகல்', 'ફેક્સ', 'Faks', 'Факс', 'ਫੈਕਸ', 'Fax', 'ဖက်စ်', 'Faksi', 'Fax', NULL),
(524, 'admission', 'Admission', 'ভর্তি', 'Admisión', 'قبول', 'दाखिला', 'داخلہ', '入场', '入場料', 'Admissão', 'вход', 'Admission', '입장', 'Eintritt', 'Ammissione', 'การรับเข้า', 'Belépés', 'Toelating', 'Praesent', 'Penerimaan', 'kabul', 'Αδεια', 'پذیرش', 'Kemasukan', 'అడ్మిషన్', 'சேர்க்கை', 'પ્રવેશ', 'Wstęp', 'Вхід', 'ਦਾਖ਼ਲਾ', 'Admitere', 'ဝင်ခွင့်ပေးခြင်း', 'Gbigba wọle', 'Shiga', NULL),
(525, 'check_at_least_one', 'Please check at least one checkbox', 'অন্তত একটি চেকবক্স চেক করুন দয়া করে', 'Por favor marque al menos una casilla', 'يرجى التحقق من مربع اختيار واحد على الأقل', 'कृपया कम से कम एक चेकबॉक्स को चेक करें', 'براہ کرم کم از کم ایک چیک باکس چیک کریں', '请至少检查一个复选框', '少なくとも1つのチェックボックスをオンにしてください', 'Por favor, marque pelo menos uma caixa de seleção', 'Установите хотя бы один флажок', 'Veuillez cocher au moins une case', '하나 이상의 확인란을 선택하십시오.', 'Bitte kreuzen Sie mindestens eine Checkbox an', 'Si prega di verificare almeno una casella di controllo', 'โปรดเลือกช่องทำเครื่องหมายอย่างน้อยหนึ่งรายการ', 'Kérjük, ellenőrizze legalább egy jelölőnégyzetet', 'Controleer minimaal één selectievakje', 'Please saltem reprehendo', 'Silakan periksa setidaknya satu kotak centang', 'Lütfen en az bir onay kutusunu işaretleyin', 'Επιλέξτε τουλάχιστον ένα πλαίσιο ελέγχου', 'لطفا حداقل یک کادر را بررسی کنید', 'Sila semak sekurang-kurangnya satu kotak semak', 'దయచేసి కనీసం ఒక చెక్బాక్స్ను తనిఖీ చేయండి', 'குறைந்தது ஒரு பெட்டியை சரிபார்க்கவும்', 'કૃપા કરી ઓછામાં ઓછું એક ચેકબૉક્સ તપાસો', 'Zaznacz co najmniej jedno pole wyboru', 'Перевірте хоча б одну прапорець', 'ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ ਘੱਟ ਇੱਕ ਚੈਕਬੌਕਸ ਦੀ ਜਾਂਚ ਕਰੋ', 'Verificați cel puțin o casetă de selectare', 'အနည်းဆုံး checkbox ကိုစစ်ဆေးပါ', 'Jowo ṣayẹwo ṣayẹwo o kere ju apoti kan', 'Da fatan a duba akalla akwati ɗaya', NULL),
(526, 'extra_charge', 'Extra Charge', 'অতিরিক্ত মূল্য', 'Carga extra', 'رسوم اضافية', 'अतिरिक्त प्रभार', 'اضافی چارج', '额外收费', '追加の費用', 'Custo extra', 'Дополнительная плата', 'Supplément', '추가 요금', 'Aufpreis', 'Costo aggiuntivo', 'ค่าบริการพิเศษ', 'Felár', 'Toeslag', 'extra crimen', 'Biaya tambahan', 'Ek ücret', 'Επιπλέον χρέωση', 'هزینه اضافی', 'Caj tambahan', 'అదనపు ధర', 'கூடுதல் கட்டணம்', 'વધારાની કિમત', 'Dodatkowa opłata', 'Додатковий збір', 'ਵਾਧੂ ਚਾਰਜ', 'Tarif suplimentar', 'အပိုငွေကောက်ခံမှု', 'Afikun Afikun', 'Karin caji', NULL),
(527, 'ccavenue', 'CCAvenue', 'সিসি এভিনিউ', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ccavenue', 'CCAvenue', 'CCAvenue', 'Επιπλέον χρέωση', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ibi Ilana', 'Cibiyar', NULL),
(528, 'merchant_key', 'Merchant Key', 'মার্চেন্ট কি', 'Clave del comerciante', 'مفتاح التاجر', 'व्यापारी कुंजी', 'مرچنٹ کلیدی', '商家钥匙', 'マーチャントキー', 'Chave do comerciante', 'Торговый ключ', 'Clé du marchand', '판매자 키', 'Händlerschlüssel', 'Chiave del commerciante', 'Merchant Key', 'Merchant kulcs', 'Verkopersleutel', 'Key mercator', 'Kunci Pedagang', 'Satıcı Anahtarı', 'Εμπορικό κλειδί', 'کلید تجاری', 'Kunci Pedagang', 'మర్చంట్ కీ', 'Merchant Key', 'વેપારી કી', 'Klucz sprzedawcy', 'Торговельний ключ', 'ਵਪਾਰੀ ਕੁੰਜੀ', 'Cheia comerciantului', 'ကုန်သည် Key ကို', 'Oluṣowo Iṣowo', 'Maɓalli mai ciniki', NULL),
(529, 'merchant_mid', 'Merchant MID', 'মার্চেন্ট মিড্', 'Merchant MID', 'Merchant MID', 'व्यापारी एमआईडी', 'مرچنٹ MID', '商家MID', 'Merchant MID', 'Comerciante MID', 'Merchant MID', 'Marchand MID', '판매자 MID', 'Händler-MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'MEDIUS mercator', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'مرچنت MID', 'Merchant MID', 'మర్చెంట్ MID', 'Merchant MID', 'મર્ચન્ટ MID', 'Merchant MID', 'Merchant MID', 'ਵਪਾਰੀ ਮਿਡ', 'Meridian MID', 'ကုန်သည်လယ်', 'Iṣowo Iṣowo', 'MID M', NULL),
(530, 'paytm', 'PayTM', 'পে টিম', 'PayTM', 'PayTM', 'Paytm', 'پی ٹی ٹی ایم', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'BezahlenTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'Paytm', 'પેટીએમ', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', NULL),
(531, 'website', 'Website', 'ওয়েবসাইট', 'Sitio web', 'موقع الكتروني', 'वेबसाइट', 'ویب سائٹ', '网站', 'ウェブサイト', 'Local na rede Internet', 'Веб-сайт', 'Site Internet', '웹 사이트', 'Webseite', 'Sito web', 'เว็บไซต์', 'Weboldal', 'Website', 'website', 'Situs web', 'Web sitesi', 'Δικτυακός τόπος', 'سایت اینترنتی', 'Laman web', 'వెబ్సైట్', 'இணையதளம்', 'વેબસાઇટ', 'Stronie internetowej', 'Веб-сайт', 'ਵੈੱਬਸਾਇਟ', 'website', 'ဝက်ဘ်ဆိုက်', 'Aaye ayelujara', 'Yanar Gizo', NULL),
(532, 'text_local', 'Text Local', 'টেক্সট লোকাল', 'Texto local', 'نص محلي', 'पाठ स्थानीय', 'متن مقامی', '文字本地', 'テキストローカル', 'Texto local', 'Текстовые локальные', 'Texte local', '텍스트 로컬', 'Text lokal', 'Testo locale', 'ข้อความ Local', 'Helyi szöveg', 'Tekst Lokaal', 'Locus text', 'Teks Lokal', 'Metin Yerel', 'Κείμενο τοπικό', 'متن محلی', 'Teks Tempatan', 'స్థానిక టెక్స్ట్', 'உள்ளூர் உரை', 'ટેક્સ્ટ લોકલ', 'Tekst lokalny', 'Текст локально', 'ਟੈਕਸਟ ਸਥਾਨਕ', 'Text local', 'စာသားမဒေသခံ', 'Ọrọ Agbegbe', 'Text Local', NULL),
(533, 'hash_key', 'Hash Key', 'হ্যাশ কী', 'Clave hash', 'مفتاح التجزئة', 'हैश कुंजी', 'ہش کلیدی', '散列键', 'ハッシュキー', 'Chave de hash', 'Хэш-ключ', 'Touche dièse', '해시 키', 'Hash-Schlüssel', 'Tasto cancelletto', 'คีย์แฮช', 'Hash gomb', 'Hash sleutel', 'Key Nullam', 'Kunci Hash', 'Kare tuşu', 'Κλειδί Hash', 'کلید هش', 'Hash Key', 'హాష్ కీ', 'ஹாஷ் கீ', 'હેશ કી', 'Klucz skrótu', 'Hash Key', 'ਹੈਸ਼ ਕੁੰਜੀ', 'Tasta Diez', 'hash Key ကို', 'Bọtini Iwọn', 'Hash Key', NULL),
(534, 'sms_country', 'SMS Country', 'এস এম এস কান্ট্রি', 'País SMS', 'بلد SMS', 'एसएमएस देश', 'ایس ایم ایس ملک', 'SMS国家', 'SMS国', 'País SMS', 'Страна SMS', 'SMS Pays', 'SMS 국가', 'SMS Land', 'Paese SMS', 'ประเทศ SMS', 'SMS ország', 'SMS-land', 'SMS patriae', 'Negara SMS', 'SMS Ülke', 'SMS Χώρα', 'اس ام اس کشور', 'SMS Negara', 'SMS దేశం', 'SMS நாடு', 'એસએમએસ દેશ', 'Kraj SMS', 'SMS Країна', 'ਐਸਐਮਐਸ ਦੇਸ਼', 'Țara SMS', 'SMS ကိုနိုင်ငံ', 'SMS Latin', 'SMS Country', NULL),
(535, 'school_code', 'School Code', 'স্কুল কোড', 'Código escolar', 'كود مدرسة', 'स्कूल कोड', 'سکول کوڈ', '学号', '学校コード', 'Código escolar', 'Школьный код', 'Code détablissement', '학교 코드', 'Schulcode', 'Codice della scuola', 'รหัสโรงเรียน', 'Iskolák kódja', 'Schoolcode', 'Code School', 'Kode Sekolah', 'Okul Kodu', 'Σχολικός κώδικας', 'کد مدرسه', 'Kod Sekolah', 'స్కూల్ కోడ్', 'பள்ளி குறியீடு', 'શાળા કોડ', 'Kod szkoły', 'Шкільний кодекс', 'ਸਕੂਲ ਕੋਡ', 'Codul școlii', 'ကျောင်းစာအုပ် Code ကို', 'Koodu Ile-iwe', 'Lambar Makarantar', NULL),
(536, 'enable_rtl', 'Enable RTL', 'এনাবল আর টি এল', 'Activar RTL', 'تمكين RTL', 'आरटीएल सक्षम करें', 'RTL کو فعال کریں', '启用RTL', 'RTLを有効にする', 'Ativar RTL', 'Включить RTL', 'Activer RTL', 'RTL 사용', 'Aktivieren Sie RTL', 'Abilita RTL', 'เปิดใช้งาน RTL', 'Engedélyezze az RTL engedélyezését', 'Schakel RTL in', 'Admitte License', 'Aktifkan RTL', 'RTLyi etkinleştir', 'Ενεργοποίηση RTL', 'فعال کردن RTL', 'Dayakan RTL', 'RTL ప్రారంభించు', 'RTL ஐ இயக்கு', 'RTL સક્ષમ કરો', 'Włącz RTL', 'Увімкнути RTL', 'RTL ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activează RTL', 'ဘန်ဝစ် Enable', 'Mu RTL ṣiṣẹ', 'Enable RTL', NULL),
(537, 'enable_frontend', 'Enable Frontend', 'এনাবল ফ্রন্টএন্ড', 'Habilitar Frontend', 'تمكين الواجهة الأمامية', 'Frontend सक्षम करें', 'فرنٹ اینڈ کو فعال کریں', '启用前端', 'フロントエンドを有効にする', 'Ativar Frontend', 'Включить Frontend', 'Activer le frontend', '프론트 엔드 사용', 'Frontend aktivieren', 'Abilita Frontend', 'เปิดใช้ Frontend', 'Engedélyezze a Frontendet', 'Frontend inschakelen', 'Admitte Frontend', 'Aktifkan Frontend', 'Ön Uçu Etkinleştir', 'Ενεργοποιήστε το Frontend', 'فعال کردن ظاهر', 'Dayakan Frontend', 'ఫ్రంటెండ్ని ప్రారంభించండి', 'Frontend ஐ இயக்கு', 'અગ્રભાગને સક્ષમ કરો', 'Włącz interfejs użytkownika', 'Увімкнути Frontend', 'ਫਰੰਟਐਂਡ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activați Frontend', 'Frontend Enable', 'Mu Frontend ṣiṣẹ', 'Ƙara Farfaɗa', NULL),
(538, 'fee_type_instruction_hostel_1', 'Hostel Fee Amount Will be define in Hostel Room creation time.', 'হোস্টেল ফি হোস্টেল রুম তৈরির সময় নির্ধারণ করা হবে।', 'El importe de la tarifa del albergue se definirá en el tiempo de creación de la habitación del albergue.', 'سيتم تحديد قيمة رسوم Hostel Hostel في وقت إنشاء غرفة Hostel Hostel.', 'हॉस्टल शुल्क राशि हॉस्टल के कमरे के निर्माण समय में परिभाषित की जाएगी।', 'ہاسٹل کی فیس کی رقم ہاسٹل روم تخلیق کے وقت میں متعین کی جائے گی۔', 'Hostel Fee Amount将在Hostel Room创建时间中定义。', 'ホステル料金は、ホステルルームの作成時に定義されます。', 'O valor da taxa do albergue será definido no horário de criação do quarto do albergue.', 'Стоимость хостела будет определена во время создания комнаты хостела.', 'Montant des frais d’auberge Sera défini lors de la création de la chambre d’auberge.', '호스텔 요금 금액은 호스텔 객실 생성 시간으로 정의됩니다.', 'Hostel-Gebührenbetrag Wird in der Erstellungszeit des Hostel-Zimmers definiert.', 'L\'importo della tassa di ostello sarà definito al momento della creazione della stanza dell\'ostello.', 'จำนวนค่าธรรมเนียมของโฮสเทลจะถูกกำหนดในเวลาสร้างห้องโฮสเทล', 'A hosteldíj összegét a Hostel szoba létrehozásának idején határozzuk meg.', 'Hostel Fee Bedrag zal worden bepaald in het creëren van Hostel Room.', 'Hostel hostel volutpat pretium moles erit define creaturae est in tempore.', 'Jumlah Biaya Hostel akan ditentukan dalam waktu pembuatan Kamar Hostel.', 'Hostel Ücreti Tutarı, Hostel Odası oluşturma süresinde tanımlanacaktır.', 'Hostel Χρέωση Ποσό Θα καθοριστεί στην ώρα δημιουργίας δωμάτιο δωμάτιο.', 'میزان هزینه خوابگاه در زمان ایجاد اتاق خواب مشخص خواهد شد.', 'Jumlah Bayaran Kos Asrama Akan ditentukan dalam Asrama Masa penciptaan bilik.', 'హాస్టల్ ఫీజు మొత్తం హాస్టల్ గది సృష్టి సమయంలో నిర్వచించబడుతుంది.', 'விடுதி கட்டணம் தொகை விடுதி அறை உருவாக்கும் நேரத்தில் வரையறுக்கப்படும்.', 'છાત્રાલયની ફી બનાવવાની રકમ હોસ્ટેલના રૂમ બનાવટ સમયે નક્કી કરવામાં આવશે.', 'Kwota opłaty za hostel zostanie określona w czasie tworzenia pokoju w hostelu.', 'Сума плати за хостел визначатиметься у часі створення номеру хостелу.', 'ਹੋਸਟਲ ਦੀ ਫੀਸ ਦੀ ਰਕਮ ਹੋਸਟਲ ਦੇ ਕਮਰਾ ਬਣਾਉਣ ਦੇ ਸਮੇਂ ਵਿੱਚ ਪ੍ਰਭਾਸ਼ਿਤ ਕੀਤੀ ਜਾਏਗੀ.', 'Valoarea tarifelor pentru hostel va fi definită în timpul de creare a camerei Hostel.', 'ဘော်ဒါဆောင်ကြေးငွေပမာဏဘော်ဒါဆောင်အခန်းဖန်ဆင်းခြင်းကာလ၌သတ်မှတ်လိမ့်မည်။', 'Iye iye ayagbe Ile ayagbe ni yoo ṣe alaye ni akoko ẹda ti Ile ayagbe.', 'Adadin Dakunan kwanan Dakunan kwanan za a ayyana a lokacin ƙirƙirar Room Dakunan kwanan yara.', NULL),
(539, 'fee_type_instruction_hostel_2', 'From here must be create Hostel Fee Title to create Hostel Fee Invoice.', 'হোস্টেল ফি চালান তৈরি করতে অবশ্যই হোস্টেল ফি শিরোনাম তৈরি করতে হবে এখান থেকে।', 'A partir de aquí debe crearse el Título de tarifa de albergue para crear la Factura de tarifa de albergue.', 'من هنا يجب إنشاء عنوان رسوم Hostel Hostel لإنشاء فاتورة Hostel Fee.', 'यहाँ से Hostel Fee Invoice बनाने के लिए Hostel Fee Title बनाना होगा।', 'ہاسٹل فیس انوائس بنانے کے لئے یہاں سے ہاسٹل فیس ٹائٹل بنانا ضروری ہے۔', '从这里必须创建Hostel Fee Title以创建Hostel Fee Invoice。', 'ここから、ホステル料金請求書を作成するために、ホステル料金タイトルを作成する必要があります。', 'A partir daqui, deve ser criado o título da taxa do albergue para criar a fatura da taxa do albergue.', 'Отсюда необходимо создать Hostel Fee Title для создания Hostel Fee Invoice.', 'Créez un titre de taxe d’auberge pour créer une facture de taxe d’auberge.', '여기에서 호스텔 요금 청구서를 작성하려면 호스텔 요금 제목을 작성해야합니다.', 'Von hier aus muss ein Hostelgebührentitel erstellt werden, um eine Hostelgebühr-Rechnung zu erstellen.', 'Da qui è necessario creare il titolo della tariffa dell\'ostello per creare la fattura della quota dell\'ostello.', 'จากที่นี่จะต้องสร้างชื่อค่าธรรมเนียมหอพักเพื่อสร้างใบแจ้งหนี้ค่าธรรมเนียมหอพัก', 'Innentől létre kell hozni a Hostel Díj címét a Hostel Díj számla létrehozásához.', 'Vanaf hier moet Hostel Fee Titel worden gemaakt om Hostel Fee Factuur te maken.', 'Hinc oportet creare hostel hostel pretium pretium Titulus creare cautionem.', 'Dari sini harus dibuat Judul Biaya Hostel untuk membuat Faktur Biaya Hostel.', 'Buradan Pansiyon Ücreti Faturası oluşturmak için Pansiyon Ücreti Başlığı oluşturulmalıdır.', 'Από εδώ πρέπει να δημιουργήσετε τον Τίτλο του Τέλους Hostel για να δημιουργήσετε το Τιμολόγιο Φόρουμ Hostel.', 'از اینجا باید عنوان Hostel Fee عنوان ایجاد کنید تا فاکتور هزینه خوابگاه را تهیه کنید.', 'Dari sini mesti mewujudkan Title Fee Hostel untuk membuat Invois Bayaran Hostel.', 'ఇక్కడ నుండి హాస్టల్ ఫీజు ఇన్వాయిస్ సృష్టించడానికి హాస్టల్ ఫీజు శీర్షికను సృష్టించాలి.', 'இங்கிருந்து விடுதி கட்டண விலைப்பட்டியலை உருவாக்க விடுதி கட்டண தலைப்பை உருவாக்க வேண்டும்.', 'છાત્રાલય ફી ભરતિયું બનાવવા માટે અહીંથી છાત્રાલય ફીનું શીર્ષક બનાવવું આવશ્યક છે.', 'Stąd należy utworzyć tytuł opłaty za hostel, aby utworzyć fakturę za opłatę za hostel.', 'Звідси потрібно створити назву комісійної комісії, щоб створити рахунок-фактуру за хостел.', 'ਹੋਸਟਲ ਫੀਸ ਇਨਵੌਇਸ ਬਣਾਉਣ ਲਈ ਇੱਥੇ ਤੋਂ ਹੋਸਟਲ ਫੀਸ ਦਾ ਸਿਰਲੇਖ ਹੋਣਾ ਲਾਜ਼ਮੀ ਹੈ.', 'De aici trebuie să se creeze titlul de taxe pentru pensii pentru a crea factura de taxe la hostel.', 'ဒီကနေဘော်ဒါဆောင်ကြေးငွေတောင်းခံလွှာကိုဖန်တီးရန်ဘော်ဒါဆောင်ကြေးခေါင်းစဉ်ဖန်တီးရမည်ဖြစ်သည်။', 'Lati ibi gbọdọ jẹ ṣẹda Akọle ayagbe Ile ayagbe lati ṣẹda Invoice Ile ayagbe hostel.', 'Daga nan dole ne a ƙirƙiri taken Dakunan kwanan Mai ba da izini don ƙirƙirar Injin Dadi Mai masaukin baki.', NULL),
(540, 'fee_type_instruction_transport_1', 'Transport Fee Amount Will be define in Transport Route creation time.', 'পরিবহন রুট তৈরির সময় পরিবহন ফি পরিমাণ নির্ধারণ করা হবে।', 'El importe de la tarifa de transporte se definirá en el tiempo de creación de la ruta de transporte.', 'سيتم تحديد مبلغ رسوم النقل في وقت إنشاء طريق النقل.', 'परिवहन शुल्क राशि परिवहन मार्ग निर्माण समय में परिभाषित की जाएगी।', 'ٹرانسپورٹ روٹ کی تخلیق کے وقت میں ٹرانسپورٹ کی فیس کی رقم متعین کی جائے گی۔', '运输费用金额将在运输路线创建时间中定义。', '輸送料金の金額は、輸送ルートの作成時に定義されます。', 'O valor da taxa de transporte será definido no horário de criação da rota de transporte.', 'Сумма транспортного сбора будет определена во время создания транспортного маршрута.', 'Le montant des frais de transport sera défini dans l\'heure de création de l\'itinéraire de transport.', '운송 비용 금액은 운송 경로 생성 시간에 정의됩니다.', 'Der Betrag der Transportgebühr wird in der Erstellungszeit des Transportwegs definiert.', 'L\'importo della tassa di trasporto verrà definito al momento della creazione della rotta di trasporto.', 'จำนวนค่าธรรมเนียมการขนส่งจะถูกกำหนดในเวลาสร้างเส้นทางการขนส่ง', 'A szállítási díj összegét a szállítási útvonal létrehozási ideje határozza meg.', 'Het bedrag van de transportkosten wordt bepaald in de aanmaaktijd van de transportroute.', 'Aliquam pretium onerariam navem onerariam in define voluntas creaturae Iter itineris est.', 'Jumlah Biaya Transportasi akan ditentukan dalam waktu pembuatan Rute Transportasi.', 'Nakliye Ücreti Tutarı, Nakliye Rotası oluşturma süresinde tanımlanacaktır.', 'Ποσό τέλους μεταφοράς Θα οριστεί στην ώρα δημιουργίας διαδρομής μεταφοράς.', 'مقدار هزینه حمل و نقل در زمان ایجاد مسیر حمل و نقل مشخص خواهد شد.', 'Jumlah Bayaran Pengangkutan Akan ditentukan dalam Masa Penjanaan Laluan Pengangkutan.', 'రవాణా రుసుము మొత్తం రవాణా మార్గం సృష్టి సమయంలో నిర్వచించబడుతుంది.', 'போக்குவரத்து பாதை தொகை போக்குவரத்து பாதை உருவாக்கும் நேரத்தில் வரையறுக்கப்படும்.', 'પરિવહન ફીની રકમ ટ્રાન્સપોર્ટ રૂટ બનાવટના સમયમાં નિર્ધારિત કરવામાં આવશે.', 'Wysokość opłaty transportowej zostanie określona w czasie tworzenia trasy transportowej.', 'Сума транспортної плати визначатиметься у часі створення транспортного маршруту.', 'ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਦੀ ਰਕਮ ਟਰਾਂਸਪੋਰਟ ਰੂਟ ਬਣਾਉਣ ਦੇ ਸਮੇਂ ਵਿੱਚ ਪ੍ਰਭਾਸ਼ਿਤ ਕੀਤੀ ਜਾਏਗੀ.', 'Valoarea tarifelor de transport va fi definită în timpul de creare a traseului de transport.', 'ပို့ဆောင်ရေးကြေးငွေပမာဏပို့ဆောင်ရေးလမ်းကြောင်းဖန်ဆင်းခြင်းကာလ၌သတ်မှတ်လိမ့်မည်။', 'Iye isanwo Irinṣẹ Yoo ṣalaye ni akoko Irinṣẹ Irinṣẹ.', 'Adadin Kudin Sufuri Zai Iya Bayyanawa a Lokacin Hada Jirgin Sama.', NULL),
(541, 'fee_type_instruction_transport_2', 'From here must be create Transport Fee Title to create Transport Fee Invoice.', 'পরিবহন ফি চালান তৈরি করতে এখান থেকে অবশ্যই পরিবহন ফি শিরোনাম তৈরি করতে হবে।', 'A partir de aquí debe crearse el Título de tarifa de transporte para crear la Factura de tarifa de transporte.', 'من هنا يجب إنشاء عنوان رسوم النقل لإنشاء فاتورة رسوم النقل.', 'यहाँ से Transport Fee Invoice बनाने के लिए Transport Fee Title बनाना होगा।', 'ٹرانسپورٹ فیس انوائس بنانے کیلئے یہاں سے ٹرانسپورٹ فیس ٹائٹل بنانا ضروری ہے۔', '从这里必须创建运输费标题以创建运输费发票。', '輸送費請求書を作成するには、ここから輸送費タイトルを作成する必要があります。', 'A partir daqui, deve ser criado o título da taxa de transporte para criar a fatura da taxa de transporte.', 'Отсюда необходимо создать Название транспортной пошлины, чтобы создать Счет на оплату транспортных расходов.', 'À partir de là, vous devez créer un titre de frais de transport pour créer une facture de frais de transport.', '여기에서 운송료 청구서를 작성하려면 운송료 제목을 작성해야합니다.', 'Von hier aus muss der Transportgebührentitel erstellt werden, um die Transportgebührenrechnung zu erstellen.', 'Da qui deve essere creato il titolo della tassa di trasporto per creare la fattura della tassa di trasporto.', 'จากที่นี่จะต้องสร้างชื่อค่าธรรมเนียมการขนส่งเพื่อสร้างใบแจ้งหนี้ค่าขนส่ง', 'Innentől létre kell hozni a szállítási díj címét a szállítási díj számla létrehozásához.', 'Vanaf hier moet u Transporttitel maken om Transportfactuurfactuur te maken.', 'Hinc oportet creare pretium onerariam Titulus creare pretium onerariam cautionem.', 'Dari sini harus dibuat Judul Biaya Transportasi untuk membuat Faktur Biaya Transportasi.', 'Buradan, Taşıma Ücreti Faturası oluşturmak için Taşıma Ücreti Başlığı oluşturulmalıdır.', 'Από εδώ πρέπει να δημιουργηθεί τίτλος τέλους μεταφοράς για να δημιουργηθεί τιμολόγιο μεταφοράς.', 'از اینجا باید عنوان ایجاد هزینه حمل و نقل برای ایجاد فاکتور حمل و نقل هزینه ایجاد کنید.', 'Dari sini mesti mencipta Tajuk Bayaran Pengangkutan untuk membuat Invois Bayaran Pengangkutan.', 'రవాణా ఫీజు ఇన్వాయిస్ సృష్టించడానికి ఇక్కడ నుండి రవాణా ఫీజు శీర్షికను సృష్టించాలి.', 'போக்குவரத்து கட்டண விலைப்பட்டியலை உருவாக்க இங்கிருந்து போக்குவரத்து கட்டண தலைப்பை உருவாக்க வேண்டும்.', 'અહીંથી ટ્રાન્સપોર્ટ ફી ઇન્વoiceઇસ બનાવવા માટે પરિવહન ફીનું શીર્ષક બનાવવું આવશ્યક છે.', 'Stąd należy utworzyć tytuł opłaty transportowej, aby utworzyć fakturę opłaty transportowej.', 'Звідси слід створити назву транспортної плати, щоб створити рахунок за транспортну плату.', 'ਇੱਥੇ ਤੋਂ ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਇਨਵੌਇਸ ਬਣਾਉਣ ਲਈ ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਸਿਰਲੇਖ ਹੋਣਾ ਲਾਜ਼ਮੀ ਹੈ.', 'De aici trebuie să se creeze titlul comisionului de transport pentru a crea factura taxelor de transport.', 'ဒီကနေပို့ဆောင်ရေးကြေးငွေတောင်းခံလွှာကိုဖန်တီးရန်ပို့ဆောင်ရေးကြေးခေါင်းစဉ်ဖန်တီးရမည်ဖြစ်သည်။', 'Lati ibi gbọdọ wa ni ṣẹda Akọọlẹ owo ọya lati ṣẹda Invoice Fee Invoice.', 'Daga nan dole ne a ƙirƙiri Fati Fee Title don ƙirƙirar Lissafin Kuɗi na Kuɗi.', NULL),
(542, 'caste', 'Caste', 'জাত', 'Casta Casta', 'الطائفة', 'जाति', 'ذات۔', '种姓', 'カースト', 'Casta', 'каста', 'Caste', '카스트', 'Kaste', 'Casta', 'วรรณะ', 'Kaszt', 'Kaste', 'caste', 'Kasta', 'Kast', 'Κοινωνική τάξη', 'کاست', 'Kasta', 'కులం', 'ஜாதி', 'જાતિ', 'Kasta', 'Каста', 'ਜਾਤ', 'Castă', 'ဇာတ်', 'Caste', 'Caste', NULL),
(543, 'admission_no', 'Admission  No', 'ভর্তি নম্বর', 'Admisión no', 'رقم القبول', 'प्रवेश संख्या', 'داخلہ نمبر', '入场号', '入場無料', 'Admissão Não', 'Вход Нет', 'Admission No', '입장료 없음', 'Eintritt Nr', 'Ingresso n', 'ค่าเข้าชม', 'Felvételi száma', 'Toegangsnummer', 'Praesent nulla', 'Penerimaan No', 'Giriş No', 'Εισαγωγή αριθ', 'پذیرش شماره', 'Kemasukan No', 'అడ్మిషన్ సంఖ్య', 'சேர்க்கை எண்', 'પ્રવેશ નં', 'Miesiąc zakończenia sesji', 'Вхід №', 'ਦਾਖਲਾ ਨੰਬਰ', 'Admitere nr', 'ဝန်ခံချက်အဘယ်သူမျှမ', 'Gbigbawọle Bẹẹkọ', 'Shiga Aa', NULL),
(544, 'age', 'Age', 'বয়স', 'Años', 'عمر', 'आयु', 'عمر', '年龄', '年齢', 'Era', 'Возраст', 'Âge', '나이', 'Alter', 'Età', 'อายุ', 'Kor', 'Leeftijd', 'age', 'Usia', 'Yaş', 'Ηλικία', 'سن', 'Umur', 'వయసు', 'வயது', 'ઉંમર', 'Wiek', 'Вік', 'ਉਮਰ', 'Vârstă', 'အသက်အရွယ်', 'Ọjọ ori', 'Shekaru', NULL),
(545, 'transfer', 'Transfer', 'হস্তান্তর', 'Transferir', 'نقل', 'स्थानांतरण', 'منتقلی', '转让', '転送', 'Transferir', 'Перевод', 'Transfert', '이전', 'Transfer', 'Trasferimento', 'โอน', 'Átruházás', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ΜΕΤΑΦΟΡΑ', 'انتقال', 'Pemindahan', 'ట్రాన్స్ఫర్', 'மாற்றம்', 'પરિવહન', 'Transfer', 'Трансфер', 'ਟ੍ਰਾਂਸਫਰ ਕਰੋ', 'Transfer', 'လွှဲပြောင်း', 'Gbigbe lọ', 'Canja wurin', NULL),
(546, 'health_condition', 'Health Condition', 'স্বাস্থ্যের অবস্থা', 'Estado de salud', 'الحالة الصحية', 'स्वास्थ्य की स्थिति', 'صحت کی کیفیت', '健康状况', '健康状態', 'Condição de saúde', 'Состояние здоровья', 'État de santé', '건강 상태', 'Gesundheitszustand', 'Condizione di salute', 'เงื่อนไขสุขภาพ', 'Egészségi állapot', 'Gezondheid', 'salutem Description', 'Kondisi kesehatan', 'Sağlık durumu', 'Η κατάσταση της υγείας', 'وضعیت سلامتی', 'Keadaan kesihatan', 'ఆరోగ్య స్థితి', 'உடல் நிலை', 'આરોગ્યની સ્થિતિ', 'Stan zdrowia', 'Стан здоровя', 'ਸਿਹਤ ਦੀ ਸਥਿਤੀ', 'Starea de sănătate', 'ကနျြးမာရေးအခြေအနေ', 'Ipo ilera', 'Yanayin Lafiya', NULL),
(547, 'national_id', 'National ID', 'জাতীয় আইডি', 'Identificación nacional', 'الهوية الوطنية', 'राष्ट्रीय पहचान पत्र', 'قومی شناختی', '国民身份证', '国民ID', 'identidade nacional', 'Национальный идентификатор', 'carte didentité', '국립 ID', 'Personalausweis', 'ID nazionale', 'รหัสประจำตัวประชาชน', 'Nemzeti azonosító', 'Nationaal ID', 'National ID', 'ID Nasional', 'Ulusal Kimliği', 'Εθνική ταυτότητα', 'کد ملی', 'ID kebangsaan', 'జాతీయ గుర్తింపు', 'தேசிய ஐடி', 'રાષ્ટ્રીય ID', 'Dowód osobisty', 'Національний ID', 'ਰਾਸ਼ਟਰੀ ਆਈਡੀ', 'buletin', 'အမျိုးသား ID ကို', 'ID orile-ede', 'ID na kasa', NULL),
(548, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'अन्य', 'دیگر', '其他', 'その他', 'De outros', 'Другие', 'Autre', '다른', 'Andere', 'Altro', 'อื่น ๆ', 'Más', 'anders', 'alius', 'Lain', 'Diğer', 'Αλλα', 'دیگر', 'Lain-lain', 'ఇతర', 'மற்ற', 'અન્ય', 'Inny', 'Інший', 'ਹੋਰ', 'Alte', 'အခြား', 'Miiran', 'Sauran', NULL),
(549, 'contact', 'Contact', 'যোগাযোগ', 'Contacto', 'اتصل', 'संपर्क करें', 'رابطہ کریں', '联系', '接触', 'Contato', 'контакт', 'Contact', '접촉', 'Kontakt', 'Contatto', 'ติดต่อ', 'Kapcsolatba lépni', 'Contact', 'Contact', 'Kontak', 'Temas', 'Επικοινωνία', 'تماس', 'Hubungi', 'సంప్రదించండి', 'தொடர்பு', 'સંપર્ક કરો', 'Kontakt', 'Звязатися', 'ਸੰਪਰਕ ਕਰੋ', 'a lua legatura', 'ထိတှေ့', 'Kan si', 'Saduwa', NULL),
(550, 'next_year', 'Next Year', 'আগামী বছর', 'El próximo año', 'العام القادم', 'अगले वर्ष', 'اگلے سال', '明年', '来年', 'Próximo ano', 'Следующий год', 'Lannée prochaine', '내년', 'Nächstes Jahr', 'Lanno prossimo', 'ปีหน้า', 'Következő év', 'Volgend jaar', 'Proximo anno', 'Tahun depan', 'Gelecek yıl', 'Του χρόνου', 'سال آینده', 'Tahun hadapan', 'వచ్చే సంవత్సరం', 'அடுத்த வருடம்', 'આગામી વર્ષ', 'Następny rok', 'Наступного року', 'ਅਗਲੇ ਸਾਲ', 'Anul urmator', 'နောက်နှစ်', 'Odun to nbo', 'Kashe na gaba', NULL),
(551, 'enter_purchase_code', 'Enter Purchase Code', 'ক্রয় কোড লিখুন', 'Ingrese el código de compra', 'أدخل رمز الشراء', 'खरीद कोड दर्ज करें', 'خریداری کوڈ درج کریں', '输入购买代码', '購入コードを入力', 'Digite o código de compra', 'Введите код покупки', 'Entrer le code dachat', '구매 코드 입력', 'Geben Sie den Kaufcode ein', 'Inserisci il codice di acquisto', 'ป้อนรหัสการสั่งซื้อ', 'Írja be a beszerzési kódot', 'Voer de aankoopcode in', 'Enter code Purchase', 'Masukkan Kode Pembelian', 'Satınalma kodunu giriniz', 'Εισαγάγετε τον κωδικό αγοράς', 'کد خرید را وارد کنید', 'Masukkan Kod Pembelian', 'కొనుగోలు కోడ్ను నమోదు చేయండి', 'கொள்முதல் கோடு உள்ளிடவும்', 'ખરીદી કોડ દાખલ કરો', 'Wprowadź kod zakupu', 'Введіть код покупки', 'ਖਰੀਦ ਕੋਡ ਦਾਖਲ ਕਰੋ', 'Introduceți codul de cumpărare', 'အရစ်ကျ Code ကိုရိုက်ထည့်ပါ', 'Tẹ koodu rira', 'Shigar da Dokar Siya', NULL),
(552, 'purchase_code', 'Purchase Code', 'ক্রয় কোড', 'Código de compra', 'كود شراء', 'खरीद कोड', 'خریداری کوڈ', '购买代码', '購入コード', 'Código de Compra', 'Код покупки', 'Code dachat', '구매 코드', 'Kaufcode', 'Codice dacquisto', 'รหัสการสั่งซื้อ', 'Vásárlási kód', 'Aankoopcode', 'Purchase Code', 'Kode Pembelian', 'Satın alma kodu', 'Κωδικός αγοράς', 'کد خرید', 'Kod Pembelian', 'కొనుగోలు కోడ్', 'கொள்முதல் கோட்', 'ખરીદી કોડ', 'Kup kod', 'Код покупок', 'ਖਰੀਦ ਕੋਡ', 'Codul de cumpărare', 'အရစ်ကျ Code ကို', 'Koodu rira', 'Katin sayen', NULL),
(553, 'parent', 'Parent', 'পিতামাতা', 'Padre', 'الأبوين', 'माता-पिता', 'والدین', '亲', '親', 'Pai', 'родитель', 'Parent', '부모의', 'Elternteil', 'Genitore', 'ผู้ปกครอง', 'Szülő', 'Ouder', 'parens', 'Induk', 'ebeveyn', 'Μητρική εταιρεία', 'والدین', 'Ibu bapa', 'మాతృ', 'பெற்றோர்', 'માતાપિતા', 'Rodzic', 'Батько', 'ਮਾਪੇ', 'Mamă', 'မိဘ', 'Obi', 'Uba', NULL),
(554, 'written', 'Written', 'লিখিত', 'Escrito', 'مكتوب', 'लिखा हुआ', 'لکھا ہوا', '书面', '書かれた', 'Escrito', 'написано', 'Écrit', '쓴', 'Geschrieben', 'Scritto', 'เขียน', 'Írott', 'Geschreven', 'Scriptum', 'Tertulis', 'Yazılı', 'Γραπτός', 'نوشته شده است', 'Ditulis', 'రాసిన', 'எழுதப்பட்டது', 'લખેલું', 'Pisemny', 'Написано', 'ਲਿਖਿਆ ਗਿਆ', 'Scris', 'Written', 'Kọwe', 'An rubuta', NULL),
(555, 'practical', 'Practical', 'ব্যবহারিক', 'Práctico', 'عملي', 'व्यावहारिक', 'عملی', '实际的', '実践的', 'Prático', 'практический', 'Pratique', '실용적인', 'Praktisch', 'pratico', 'ประยุกต์', 'Gyakorlati', 'praktisch', 'practical', 'Praktis', 'Pratik', 'Πρακτικός', 'کاربردی', 'Praktikal', 'ప్రాక్టికల్', 'நடைமுறை', 'પ્રાયોગિક', 'Praktyczny', 'Практичний', 'ਵਿਹਾਰਕ', 'Practic', 'လက်တွေ့', 'Ilowo', 'M', NULL),
(556, 'tutorial', 'Tutorial', 'টিউটরিআল', 'Tutorial', 'الدورة التعليمية', 'ट्यूटोरियल', 'سبق', '教程', 'チュートリアル', 'Tutorial', 'Руководство', 'Didacticiel', '지도 시간', 'Tutorial', 'lezione', 'เกี่ยวกับการสอน', 'oktatói', 'Tutorial', 'doceo', 'Tutorial', 'Eğitimi', 'Φροντιστήριο', 'آموزش', 'Tutorial', 'ట్యుటోరియల్', 'பயிற்சி', 'ટ્યુટોરીયલ', 'Seminarium', 'Підручник', 'ਟਿਊਟੋਰਿਅਲ', 'Tutorial', 'tutorial', 'Ibaṣepọ', 'Koyawa', NULL),
(557, 'viva', 'Viva', 'ভাইভা', 'Viva', 'تحيا', 'सलाम', 'زبانی', '欢呼声', 'ビバ', 'Viva', 'да здравствует', 'Viva', '만세', 'Viva', 'Viva', 'ขอให้มีอายุยืนยาว', 'éljen', 'Viva', 'Vivaldi', 'Viva', 'sözlü', 'Viva', 'ویوا', 'Viva', 'వివా', 'விவா', 'વિવા', 'Wiwat', 'Віва', 'ਵਿਵਾ', 'Viva', 'Viva', 'Viva', 'Viva', NULL),
(558, 'mark', 'Mark', 'মার্ক', 'marca', 'علامة', 'निशान', 'مارک', '标记', 'マーク', 'Marca', 'отметка', 'marque', '표', 'Kennzeichen', 'marchio', 'เครื่องหมาย', 'Mark', 'Mark', 'Evangelium secundum Marcum', 'Menandai', 'işaret', 'Σημάδι', 'علامت', 'Mark', 'మార్క్', 'மார்க்', 'ચિહ્ન', 'znak', 'Марка', 'ਮਾਰਕ', 'marcă', 'အမှတ်', 'Samisi', 'Mark', NULL),
(559, 'obtain', 'Obtain', 'প্রাপ্ত', 'Obtener', 'الحصول على', 'प्राप्त', 'حاصل کریں', '获得', '入手します', 'Obtivermos', 'получать', 'Obtenir', '얻다', 'Erhalten', 'Ottenere', 'ได้รับ', 'Szerezze', 'Verkrijgen', 'Vitam', 'Memperoleh', 'elde etmek', 'Αποκτώ', 'به دست آوردن', 'Dapatkan', 'పొందటానికి', 'பெறுதல்', 'મેળવો', 'Uzyskać', 'Отримати', 'ਪ੍ਰਾਪਤ ਕਰੋ', 'Obține', 'ရရှိသည်', 'Gba', 'Samun', NULL),
(560, 'result_card', 'Result Card', 'ফলাফল কার্ড', 'Tarjeta de resultado', 'بطاقة النتيجة', 'परिणाम कार्ड', 'نتیجہ کارڈ', '结果卡', '結果カード', 'Cartão de Resultado', 'Карта результатов', 'Carte de résultat', '결과 카드', 'Ergebniskarte', 'Scheda dei risultati', 'การ์ดผลลัพธ์', 'Eredménykártya', 'Resultaatkaart', 'effectus Card', 'Kartu Hasil', 'Sonuç Kartı', 'Κάρτα αποτελεσμάτων', 'نتیجه کارت', 'Kad Keputusan', 'ఫలితం కార్డ్', 'முடிவு அட்டை', 'પરિણામ કાર્ડ', 'Karta wyników', 'Результат картки', 'ਨਤੀਜਾ ਕਾਰਡ', 'Cardul de rezultate', 'ရလဒ် Card ကို', 'Kaadi Kaadi', 'Katin Amintacce', NULL),
(561, 'bus_stop', 'Bus Stop', 'বাস স্টপ', 'Parada de autobús', 'موقف باص', 'बस स्टॉप', 'بس اسٹاپ', '公交车站', 'バス停', 'Ponto de ônibus', 'Автобусная остановка', 'Arrêt de bus', '버스 정류장', 'Bushaltestelle', 'Fermata dellautobus', 'ป้ายรถเมล์', 'Buszmegálló', 'Bushalte', 'bus Sistere', 'Pemberhentian bus', 'Otobüs durağı', 'Στάση λεωφορείου', 'ایستگاه اتوبوس', 'Perhentian bas', 'బస్ స్టాప్', 'பேருந்து நிறுத்தம்', 'બસ સ્ટોપ', 'Przystanek autobusowy', 'Автобусна зупинка', 'ਬੱਸ ਅੱਡਾ', 'Stație de autobuz', 'ဘတ်စ်ကားမှတ်တိုင်', 'Ibudo oko', 'Bus Stop', NULL),
(562, 'lowest', 'Lowest', 'সর্বনিম্ন', 'Más bajo', 'أدنى', 'सबसे कम', 'سب سے کم', '最低', '最低', 'Menor', 'низший', 'Le plus bas', '최저', 'Niedrigste', 'minore', 'ต่ำที่สุด', 'A legalacsonyabb', 'laagste', 'lowest', 'Terendah', 'En düşük', 'Χαμηλότερο', 'پایین ترین', 'Terendah', 'అత్యల్ప', 'குறைந்த', 'ન્યૂનતમ', 'Najniższy', 'Найменший', 'ਸਭ ਤੋਂ ਘੱਟ', 'Cel mai mic', 'နိမ့်ဆုံး', 'Ti o kere julọ', 'Ƙananan', NULL),
(563, 'height', 'Height', 'সর্বোচ্চ', 'Altura', 'ارتفاع', 'ऊंचाई', 'اونچائی', '高度', '高さ', 'Altura', 'Высота', 'la taille', '신장', 'Höhe', 'Altezza', 'ความสูง', 'Magasság', 'Hoogte', 'altitudo', 'Tinggi', 'Yükseklik', 'Υψος', 'ارتفاع', 'Ketinggian', 'ఎత్తు', 'உயரம்', 'ઊંચાઈ', 'Wysokość', 'Висота', 'ਕੱਦ', 'Înălţime', 'အမြင့်', 'Iga', 'Hawan', NULL),
(564, 'position', 'Position', 'অবস্থান', 'Posición', 'موضع', 'पद', 'مقام', '位置', 'Position', 'Posição', 'Должность', 'Position', '위치', 'Position', 'Posizione', 'ตำแหน่ง', 'Pozíció', 'Positie', 'statum', 'Posisi', 'pozisyon', 'Θέση', 'موقعیت', 'Jawatan', 'స్థానం', 'நிலை', 'પોઝિશન', 'Pozycja', 'Позиція', 'ਸਥਿਤੀ', 'Poziţie', 'ရာထူး', 'Ipo', 'Matsayi', NULL),
(565, 'merit_list', 'Merit List', 'মেধা তালিকা', 'Lista de mérito', 'قائمة الاستحقاق', 'मेरिट सूची', 'میرٹ کی فہرست', '优点列表', 'メリットリスト', 'Lista de Mérito', 'Список заслуг', 'Liste de mérite', '장점 목록', 'Leistungsliste', 'Lista dei Meriti', 'รายชื่อบุญ', 'Érdemjegy', 'Merit List', 'merito List', 'Daftar Kelebihan', 'Liyakat listesi', 'Λίστα αξιών', 'فهرست شایستگی', 'Senarai Merit', 'మెరిట్ జాబితా', 'தகுதி பட்டியல்', 'મેરિટ લિસ્ટ', 'Lista zasłużonych', 'Список заслуг', 'ਮੈਰਿਟ ਲਿਸਟ', 'Lista de merit', 'ကောင်းမှုကုသိုလ်များစာရင်း', 'Àtòkọ Ẹrọ', 'Lissafin Ƙasa', NULL),
(566, 'passed', 'Passed', 'উত্তীর্ণ', 'Pasado', 'مرت', 'बीतने के', 'منظور', '通过', '合格', 'Passado', 'Прошло', 'Passé', '합격', 'Bestanden', 'Passato', 'ผ่าน', 'elmúlt', 'Geslaagd', 'transierunt', 'Lulus', 'geçti', 'Πέρασε', 'گذشت', 'Lulus', 'Passed', 'கடந்து', 'પસાર થઈ', 'Przeszedł', 'Пройдено', 'ਪਾਸ ਹੋਇਆ', 'A trecut', 'လွန်', 'Ti kọja', 'An wuce', NULL),
(567, 'failed', 'Failed', 'ব্যর্থ', 'Ha fallado', 'فشل', 'अनुत्तीर्ण होना', 'ناکام', '失败', '失敗', 'Falhou', 'Не смогли', 'Échoué', '실패한', 'Gescheitert', 'mancato', 'ล้มเหลว', 'nem sikerült', 'mislukt', 'Deficio', 'Gagal', 'Başarısız oldu', 'Απέτυχε', 'ناموفق', 'Gagal', 'విఫలమైంది', 'தோல்வி', 'નિષ્ફળ થયું', 'Nie powiodło się', 'Помилка', 'ਅਸਫਲ', 'A eșuat', 'Failed', 'Kuna', 'Ba a yi nasarar ba', NULL),
(568, 'manage', 'Manage', 'পরিচালনা করুন', 'Gestionar', 'تدبير', 'प्रबंधित', 'انتظام کریں', '管理', '管理', 'Gerir', 'управлять', 'Gérer', '꾸리다', 'Verwalten', 'Gestire', 'จัดการ', 'kezel', 'beheren', 'curo', 'Mengelola', 'yönetme', 'Διαχειρίζονται', 'مدیریت کردن', 'Mengurus', 'నిర్వహించడానికి', 'நிர்வகிக்கவும்', 'મેનેજ કરો', 'Zarządzanie', 'Керувати', 'ਪ੍ਰਬੰਧ ਕਰਨਾ, ਕਾਬੂ ਕਰਨਾ', 'Administra', 'စီမံခန့်ခွဲရန်', 'Ṣakoso', 'Sarrafa', NULL),
(569, 'admitted', 'Admitted', 'ভর্তি', 'Aceptado', 'اعترف', 'स्वीकार किया', 'اعتراف', '承认', '授与された', 'Admitido', 'Допускаются', 'Admis', '수락 한', 'Zugelassen', 'Ammesso', 'ที่ยอมรับ', 'Felvételt nyer', 'toegelaten', 'admissus', 'Mengakui', 'kabul edilmiş', 'Παράδεκτος', 'پذیرفته', 'Diterima', 'చేరినవారి', 'அனுமதிக்கப்பட்டார்', 'સ્વીકૃત', 'Przyznał', 'Прийнято', 'ਦਾਖਲ', 'Admis', 'ဝန်ခံ', 'Ti gba', 'Admitted', NULL),
(570, 'promoted', 'Promoted', 'উন্নীত', 'Promovido', 'رقية', 'प्रचारित', 'فروغ دیا', '提拔', 'プロモート', 'Promovido', 'Повышен', 'Promu', '승격 된', 'Gefördert', 'Promossa', 'การเลื่อนตำแหน่ง', 'promotált', 'gepromoveerd', 'promoted', 'Dipromosikan', 'Tanıtılan', 'Προωθήθηκε', 'ترویج شده', 'Dipromosikan', 'ప్రమోట్', 'விளம்பர', 'બઢતી', 'Lansowany', 'Промотований', 'ਪ੍ਰਮੋਟ ਕੀਤਾ', 'Promovat', 'ရာထူးတိုး', 'Igbegaga', 'Ci gaba', NULL),
(571, 'drop_out', 'Drop Out', 'বাদ পরা', 'Abandonar', 'أوقع', 'ड्रॉप आउट', 'باہر چھوڑ', '退出', '脱落', 'Cair fora', 'Выбывать', 'Abandonner', '탈락', 'Aussteigen', 'Buttare fuori', 'ปล่อยออก', 'Kidobni', 'Afvaller', 'EXSTILLO', 'Keluar', 'Bırakmak', 'Εγκαταλείπω', 'رها کردن', 'Tercicir', 'వదిలివేయడం', 'வெளியேற்று', 'છોડી દીધેલ', 'Wycofać się', 'Викинути', 'ਛੱਡ ਦੇਣਾ', 'Renunța', 'နှုတ်ထွက်သည်', 'Eniti o ko lati se nkan', 'Daina', NULL),
(572, 'advanced', 'Advanced', 'অগ্রিম', 'Avanzado', 'المتقدمة', 'उन्नत', 'اعلی درجے کی', '高级', '上級', 'Avançado', 'продвинутый', 'Avancée', '많은', 'Fortgeschritten', 'Avanzate', 'สูง', 'Fejlett', 'gevorderd', 'provectus', 'Maju', 'ileri', 'Προχωρημένος', 'پیشرفته', 'Advanced', 'ఆధునిక', 'மேம்பட்ட', 'અદ્યતન', 'zaawansowane', 'Розширений', 'ਤਕਨੀਕੀ', 'Avansat', 'အဆင့်မြင့်', 'Ti ni ilọsiwaju', 'Na ci gaba', NULL),
(573, 'avg_of_all_exam', 'Average of All Exam', 'সব পরীক্ষার গড়', 'Promedio de todos los exámenes', 'متوسط كل الامتحانات', 'सभी परीक्षा का औसत', 'تمام امتحانوں کا اوسط', '所有考试的平均值', 'すべての試験の平均', 'Média de todos os exames', 'Среднее значение всего экзамена', 'Moyenne de tous les examens', '모든 시험의 평균', 'Durchschnitt aller Prüfungen', 'Media di tutti gli esami', 'ค่าเฉลี่ยของการสอบทั้งหมด', 'Átlagos összes vizsgája', 'Gemiddelde van alle examen', 'Omnes mediocris de nito', 'Rata-Rata Semua Ujian', 'Tüm sınavın ortalaması', 'Μέσος όρος όλων των εξετάσεων', 'میانگین امتحانات', 'Purata Semua Peperiksaan', 'అన్ని పరీక్షల సగటు', 'அனைத்து தேர்வு சராசரி', 'તમામ પરીક્ષાનું સરેરાશ', 'Średnia wszystkich egzaminów', 'Середній бал усіх іспитів', 'ਸਭ ਪ੍ਰੀਖਿਆ ਦਾ ਔਸਤ', 'Media tuturor examenelor', 'အားလုံးစာမေးပွဲ၏ပျမ်းမျှ', 'Iwọn ti Gbogbo Ayẹwo', 'Matsayin Duk Kwara', NULL),
(574, 'only_of_fianl_exam', 'Only Based on Final Exam', 'শুধু ফাইনাল পরীক্ষার ভিত্তিতে', 'Solo basado en el examen final', 'يعتمد فقط على الاختبار النهائي', 'केवल अंतिम परीक्षा के आधार पर', 'صرف حتمی امتحان کی بنیاد پر', '仅基于期末考试', '最終試験のみに基づいて', 'Apenas com base no exame final', 'Только на основе итогового экзамена', 'Seulement basé sur lexamen final', '최종 시험에만 근거 함', 'Nur basierend auf der Abschlussprüfung', 'Solo in base allesame finale', 'ขึ้นอยู่กับการสอบปลายภาค', 'Csak a záróvizsga alapján', 'Alleen gebaseerd op eindexamen', 'Ex tantum Exam', 'Hanya Berdasarkan Ujian Akhir', 'Sadece Final Sınavına Dayalı', 'Βασίζεται μόνο στην τελική εξέταση', 'فقط بر اساس آزمون نهایی', 'Hanya Berdasarkan Peperiksaan Akhir', 'అంతిమ పరీక్షల ఆధారంగా మాత్రమే', 'இறுதி தேர்வு அடிப்படையில் மட்டுமே', 'માત્ર અંતિમ પરીક્ષા પર આધારિત', 'Tylko na podstawie egzaminu końcowego', 'Тільки на підставі остаточного іспиту', 'ਕੇਵਲ ਅੰਤਿਮ ਪ੍ਰੀਖਿਆ ਦੇ ਆਧਾਰ ਤੇ', 'Numai pe baza examenului final', 'သာနောက်ဆုံးစာမေးပွဲအပေါ် အခြေခံ.', 'Nikan Da lori Igbeyewo Ayẹwo', 'Binciken Bincike ne kawai', NULL),
(575, 'template', 'Template', 'টেমপ্লেট', 'Modelo', 'قالب', 'खाका', 'سانچے', '模板', 'テンプレート', 'Modelo', 'шаблон', 'Modèle', '주형', 'Vorlage', 'Modello', 'แบบ', 'Sablon', 'Sjabloon', 'Home', 'Template', 'şablon', 'Πρότυπο', 'قالب', 'Templat', 'మూస', 'டெம்ப்ளேட்', 'ઢાંચો', 'Szablon', 'Шаблон', 'ਟੈਂਪਲੇਟ', 'Format', 'template', 'Awoṣe', 'Samfurin', NULL),
(576, 'absent', 'Absent', 'অনুপস্থিত', 'Ausente', 'غائب', 'अनुपस्थित', 'غیر حاضر', '缺席', '不在', 'Ausente', 'Нет на месте', 'Absent', '없는', 'Abwesend', 'Assente', 'ขาด', 'Hiányzó', 'Afwezig', 'absens', 'Tidak hadir', 'Yok', 'Απών', 'غایب', 'Tidak hadir', 'ఆబ్సెంట్', 'இருக்காது', 'ગેરહાજર', 'Nieobecny', 'Відсутня', 'ਗੈਰਹਾਜ਼ਰੀ', 'Absent', 'မရှိသော', 'Ti ko ni', 'Ba ya nan', NULL),
(577, 'activity_log', 'Activity Log', 'কার্য বিবরণ', 'Registro de actividades', 'سجل النشاطات', 'गतिविधि लॉग', 'سرگرمی لاگ ان', '活动日志', '活動記録', 'Registro de atividade', 'Журнал активности', 'Journal dactivité', '활동 로그', 'Aktivitätsprotokoll', 'Registro delle attività', 'บันทึกกิจกรรม', 'Naplót', 'Activiteiten logboek', 'Actio iniuriarum', 'Log aktivitas', 'Etkinlik Günlüğü', 'Αρχείο καταγραφής δραστηριότητας', 'گزارش فعالیت', 'Log aktiviti', 'కార్యాచరణ లాగ్', 'நடவடிக்கை பதிவு', 'પ્રવૃત્તિ લૉગ', 'Dziennik aktywności', 'Журнал активності', 'ਸਰਗਰਮੀ ਲਾਗ', 'Jurnalul de activitate', 'လှုပ်ရှားမှုမှတ်တမ်း', 'Wọle iṣẹ', 'Sabis na Ayyuka', NULL),
(578, 'generate_csv', 'Generate CSV', 'সিএসভি তৈরি করুন', 'Generar CSV', 'إنشاء ملف CSV', 'सीएसवी उत्पन्न करें', 'CSV بنائیں', '生成CSV', 'CSVを生成する', 'Gerar CSV', 'Создание CSV', 'Générer un fichier CSV', 'CSV 생성', 'CSV generieren', 'Genera CSV', 'สร้าง CSV', 'CSV létrehozása', 'CSV genereren', 'CSV generate', 'Hasilkan CSV', 'CSV oluştur', 'Δημιουργία CSV', 'ایجاد CSV', 'Menjana CSV', 'CSV ను సృష్టించండి', 'CSV ஐ உருவாக்கவும்', 'CSV જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити CSV', 'ਸੀਐਸਵੀ ਬਣਾਉ', 'Generați CSV', 'CSV ကို Generate', 'Fi CSV ti o lagbara', 'Samar da CSV', NULL),
(579, 'csv_file', 'CSV File', 'সিএসভি ফাইল', 'Archivo CSV', 'ملف CSV', 'सीएसवी फ़ाइल', 'CSV فائل', 'CSV文件', 'CSVファイル', 'Arquivo CSV', 'Файл CSV', 'Fichier CSV', 'CSV 파일', 'CSV-Datei', 'File CSV', 'ไฟล์ CSV', 'CSV fájl', 'CSV-bestand', 'File CSV', 'File CSV', 'CSV Dosyası', 'Αρχείο CSV', 'فایل CSV', 'Fail CSV', 'CSV ఫైల్', 'CSV கோப்பு', 'CSV ફાઇલ', 'Plik CSV', 'CSV-файл', 'CSV ਫਾਈਲ', 'Fișier CSV', 'CSV ဖိုင်ဖိုင်မှတ်တမ်း', 'Faili CSV', 'Fayil ɗin CSV', NULL),
(580, 'bulk_student_instruction_1', 'At first select the School, Academic Year, Class and Section', 'প্রথমে ক্লাস এবং বিভাগ নির্বাচন করুন', 'Al principio, seleccione la Clase y la Sección (Escuela).', 'في البداية ، اختر الفصل الدراسي (المدرسة) ، والقسم', 'पहले (स्कूल,) कक्षा और अनुभाग का चयन करें', 'پہلے (اسکول،) کلاس اور سیکشن کو منتخب کریں', '首先选择（School，）Class和Section', 'まず、（学校、）クラスとセクション', 'Inicialmente selecione a Classe e Seção (Escola)', 'Сначала выберите класс (School,) и раздел', 'Au début, sélectionnez la classe et la section (école)', '먼저 (학교,) 클래스와 섹션을 선택하십시오.', 'Wählen Sie zunächst die (Schule,) Klasse und den Abschnitt aus', 'Inizialmente seleziona la (Scuola,) Classe e Sezione', 'ตอนแรกเลือกหมวด (โรงเรียน,) และส่วน', 'Először válassza ki az (iskola) osztályt és a szakaszt', 'Selecteer eerst de (school,) klas en sectie', 'In Primum lege lectionem (School,) § et Paleonemertea Class', 'Pertama pilih Kelas dan Bagian (Sekolah,)', 'İlk önce (Okul,) Sınıf ve Bölüm seçin', 'Αρχικά, επιλέξτε την κατηγορία (Σχολή, Κατηγορία) και Τμήμα', 'در ابتدا کلاس (دانشکده)، بخش را انتخاب کنید', 'Pada mulanya pilih Kelas (Sekolah,) dan Bahagian', 'మొదటి వద్ద (స్కూల్,) క్లాస్ మరియు విభాగం ఎంచుకోండి', 'ஆரம்பத்தில் (பள்ளி, வகுப்பு மற்றும் பிரிவு) தேர்ந்தெடுக்கவும்', 'પ્રથમ (શાળા,) વર્ગ અને વિભાગ પસંદ કરો', 'Najpierw wybierz klasę (szkołę) i sekcję', 'Спочатку виберіть (Клас, Клас) та Розділ', 'ਸਭ ਤੋਂ ਪਹਿਲਾਂ (ਸਕੂਲ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ) ਦੀ ਚੋਣ ਕਰੋ', 'Mai întâi selectați clasa și secțiunea (Școală)', 'ပထမဦးဆုံးမှာ (ကျောင်း,) အတန်းအစားနှင့်ပုဒ်မကို select', 'Ni akọkọ yan awọn (Ile-iwe,) Kilasi ati Abala', 'Da farko zaɓa da (Makaranta,) Class da Sashe', NULL),
(581, 'bulk_student_instruction_2', 'At first select the Academic Year, Class and Section', 'সিএসভি ফাইল তৈরি করুন', 'Generar archivo CSV', 'إنشاء ملف CSV', 'सीएसवी फ़ाइल जेनरेट करें', 'CSV فائل بنائیں', '生成CSV文件', 'CSVファイルを生成する', 'Gerar arquivo CSV', 'Создание файла CSV', 'Générer un fichier CSV', 'CSV 파일 생성', 'Generieren Sie eine CSV-Datei', 'Genera file CSV', 'สร้างไฟล์ CSV', 'CSV fájl létrehozása', 'Genereer CSV-bestand', 'CSV lima generate', 'Hasilkan file CSV', 'CSV dosyası oluştur', 'Δημιουργία αρχείου CSV', 'ایجاد فایل CSV', 'Buat fail CSV', 'CSV ఫైల్ను సృష్టించండి', 'CSV கோப்பை உருவாக்கவும்', 'CSV ફાઇલ જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити файл CSV', 'CSV ਫਾਈਲ ਉਤਪੰਨ ਕਰੋ', 'Generați fișierul CSV', 'CSV ဖိုင် Generate', 'Fifẹ CSV faili', 'Samar da fayil CSV', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(582, 'bulk_student_instruction_3', 'Generate CSV file', 'ডাউনলোড করা সিএসভি ফাইলটি খুলুন এবং ইউনিক ইমেলের মাধ্যমে শিক্ষার্থী তথ্য প্রবেশ করুন', 'Abra el archivo CSV descargado e ingrese la información del estudiante con un nombre de usuario único', 'افتح ملف CSV الذي تم تنزيله وأدخل معلومات الطالب باستخدام اسم مستخدم فريد', 'डाउनलोड की गई CSV फ़ाइल खोलें और अद्वितीय उपयोगकर्ता नाम के साथ छात्र जानकारी दर्ज करें', 'ڈاؤن لوڈ کردہ CSV فائل کو کھولیں اور طالب علم کی معلومات کو منفرد صارف نامہ درج کریں', '打开下载的CSV文件，输入具有唯一用户名的学生信息', 'ダウンロードしたCSVファイルを開き、固有のユーザー名で学生情報を入力します', 'Abra o arquivo CSV baixado e insira as informações do aluno com um nome de usuário exclusivo', 'Откройте загруженный CSV-файл и введите информацию о студенте с уникальным именем пользователя', 'Ouvrez le fichier CSV téléchargé et entrez les informations sur l\'étudiant avec un nom d\'utilisateur unique.', '다운로드 한 CSV 파일을 열고 고유 한 사용자 이름으로 학생 정보를 입력하십시오.', 'Öffnen Sie die heruntergeladene CSV-Datei und geben Sie die Schülerinformationen mit einem eindeutigen Benutzernamen ein', 'Apri il file CSV scaricato e inserisci le informazioni dello studente con un nome utente univoco', 'เปิดไฟล์ CSV ที่ดาวน์โหลดและใส่ข้อมูลของนักเรียนด้วยชื่อผู้ใช้ที่ไม่ซ้ำกัน', 'Nyissa meg a letöltött CSV-fájlt, és adja meg a diákadatokat egyedi felhasználónévvel', 'Open het gedownloade CSV-bestand en geef studentinformatie op met unieke gebruikersnaam', 'Downloaded CSV lima notitia aperire et intrare studiosum cum unique nomen usoris', 'Buka file CSV yang diunduh dan masukkan informasi siswa dengan nama pengguna yang unik', 'İndirilen CSV dosyasını açın ve benzersiz kullanıcı adıyla öğrenci bilgilerini girin', 'Ανοίξτε το αρχείο CSV που κατεβάσατε και εισάγετε τις πληροφορίες σπουδαστών με μοναδικό όνομα χρήστη', 'فایل دانلود شده CSV را باز کنید و اطلاعات دانشجویی را با نام کاربری منحصر به فرد وارد کنید', 'Buka fail CSV yang dimuat turun dan masukkan maklumat pelajar dengan nama pengguna yang unik', 'డౌన్లోడ్ చేసిన CSV ఫైల్ను తెరిచి విద్యార్థి పేరును ప్రత్యేక యూజర్ పేరుతో నమోదు చేయండి', 'பதிவிறக்கம் செய்யப்பட்ட CSV கோப்பைத் திறந்து, தனிப்பட்ட பயனர்பெயருடன் மாணவர் தகவலை உள்ளிடவும்', 'ડાઉનલોડ કરેલી CSV ફાઇલ ખોલો અને અનન્ય વપરાશકર્તાનામ સાથે વિદ્યાર્થી માહિતી દાખલ કરો', 'Otwórz pobrany plik CSV i wprowadź informacje o uczniu z unikalną nazwą użytkownika', 'Відкрийте скачаний файл CSV та введіть інформацію про учня з унікальним ім\'ям користувача', 'ਡਾਊਨਲੋਡ ਕੀਤੀ CSV ਫਾਈਲ ਖੋਲ੍ਹੋ ਅਤੇ ਵਿਲੱਖਣ ਉਪਭੋਗਤਾ ਨਾਂ ਨਾਲ ਵਿਦਿਆਰਥੀ ਜਾਣਕਾਰੀ ਦਰਜ ਕਰੋ', 'Deschideți fișierul CSV descărcat și introduceți informații despre student cu un nume de utilizator unic', 'ဒေါင်း CSV ဖိုင်ကိုဖွင့်ပြီးထူးခြားတဲ့အသုံးပြုသူအမည်နှင့်အတူကျောင်းသားသတင်းအချက်အလက်ထည့်သွင်း', 'Ṣii faili CSV ti a gba lati ayelujara ati tẹ alaye ọmọde pẹlu orukọ olumulo oto', 'Bude fayil din CSV da aka sauke kuma shigar da bayanan dalibai tare da sunan mai amfani na musamman', NULL),
(583, 'bulk_student_instruction_4', 'Open the downloaded CSV file and enter student information with unique username', 'গার্ডিয়ান তালিকা থেকে গার্ডিয়ান আইডি নিন', 'Tome la ID de Guardian de la lista de Guardian', 'خذ بطاقة الجارديان من قائمة الجارديان', 'अभिभावक सूची से गार्जियन आईडी लें', 'گارڈین کی شناخت سے گارڈین کی فہرست لے لو', '从Guardian列表中获取Guardian ID', 'GuardianリストからGuardian IDを取得する', 'Pegue o Guardian ID da lista do Guardian', 'Возьмите идентификатор Guardian из списка Guardian', 'Prenez lidentifiant Guardian de la liste Guardian', 'Guardian 목록에서 Guardian ID 가져 오기', 'Nimm die Wächter-ID aus der Wächterliste', 'Prendi lID Guardian dallelenco dei guardiani', 'นำ ID Guardian จากรายการ Guardian', 'Vegye a Guardian azonosítót a Guardian listából', 'Neem de Guardian ID van de Guardian-lijst', 'Guardiani accipere a Guardiano id album', 'Ambil ID Guardian dari daftar Guardian', 'Guardian IDsini Guardian listesinden alın', 'Πάρτε τον κωδικό Guardian από τη λίστα Guardian', 'نگاهی به شناسه نگهبان از فهرست گاردین', 'Ambil ID Guardian dari senarai Guardian', 'గార్డియన్ ఐడి నుండి గార్డియన్ ఐడిని తీసుకోండి', 'கார்டியன் ஐடி கார்டியன் பட்டியலில் இருந்து எடுத்துக் கொள்ளுங்கள்', 'ગાર્ડિયન સૂચિમાંથી ગાર્ડિયન ID લો', 'Weź identyfikator Guardian z listy Guardian', 'Візьміть ідентифікатор опікуна з списку охоронців', 'ਗਾਰਡੀਅਨ ਸੂਚੀ ਤੋਂ ਗਾਰਡੀਅਨ ਆਈਡੀ ਲਵੋ', 'Luați ID-ul Guardian din lista Guardian', 'ဂါးဒီးယန်း list ကနေဂါးဒီးယန်း ID ကိုယူပါ', 'Mu ID IDE kuro lati akojọ Awọn olutọju', 'Ɗauki ID na Guardian daga jerin sunayen Guardian', NULL),
(584, 'bulk_student_instruction_5', 'Save the edited CSV file', 'সম্পাদিত সিএসভি  ফাইল সংরক্ষণ করুন', 'Guarde el archivo CSV editado', 'احفظ ملف CSV الذي تم تحريره', 'संपादित सीएसवी फ़ाइल सहेजें', 'ترمیم شدہ CSV فائل کو محفوظ کریں', '保存已编辑的CSV文件', '編集したCSVファイルを保存する', 'Salve o arquivo CSV editado', 'Сохранить отредактированный файл CSV', 'Enregistrez le fichier CSV modifié', '편집 된 CSV 파일 저장', 'Speichern Sie die bearbeitete CSV-Datei', 'Salva il file CSV modificato', 'บันทึกไฟล์ CSV ที่แก้ไขแล้ว', 'Mentse a szerkesztett CSV fájlt', 'Sla het bewerkte CSV-bestand op', 'CSV lima edited by salvificem', 'Simpan file CSV yang diedit', 'Düzenlenen CSV dosyasını kaydet', 'Αποθηκεύστε το επεξεργασμένο αρχείο CSV', 'فایل CSV ویرایش شده را ذخیره کنید', 'Simpan fail CSV yang diedit', 'సవరించిన CSV ఫైల్ను సేవ్ చేయండి', 'திருத்தப்பட்ட CSV கோப்பை சேமி', 'સંપાદિત CSV ફાઇલ સાચવો', 'Zapisz edytowany plik CSV', 'Зберегти редагований файл CSV', 'ਸੰਪਾਦਿਤ CSV ਫਾਈਲ ਸੁਰੱਖਿਅਤ ਕਰੋ', 'Salvați fișierul CSV editat', 'အဆိုပါ edited CSV ဖိုင် Save', 'Fipamọ faili CSV ti o satunkọ', 'Ajiye fayil ɗin CSV da aka gyara', NULL),
(585, 'bulk_student_instruction_6', 'Upload again CSV file you just edited and submit', 'এডিট করা ফাইলটি আবার আপলোড করুন এবং সাবমিট করুন', 'Sube de nuevo el archivo CSV que acabas de editar y enviar', 'قم بتحميل ملف CSV مرة أخرى قمت بتحريره وإرساله', 'फिर से संपादित और जमा करें CSV फ़ाइल अपलोड करें', 'دوبارہ ترمیم کریں اور جمع کرائیں CSV فائل دوبارہ اپ لوڈ کریں', '再次上传您刚编辑并提交的CSV文件', '編集して送信したCSVファイルを再度アップロードする', 'Carregue novamente o ficheiro CSV que acabou de editar e envie', 'Загрузите снова CSV-файл, который вы только что отредактировали и отправили', 'Téléchargez à nouveau le fichier CSV que vous venez déditer et de soumettre', '방금 수정하고 제출 한 CSV 파일을 다시 업로드하십시오.', 'Laden Sie erneut die CSV-Datei hoch, die Sie gerade bearbeitet und gesendet haben', 'Carica di nuovo il file CSV che hai appena modificato e invia', 'อัปโหลดอีกครั้งไฟล์ CSV ที่คุณเพิ่งแก้ไขและส่ง', 'Töltse meg újra a szerkesztett és benyújtott CSV fájlt', 'Upload opnieuw CSV-bestand dat u zojuist hebt bewerkt en verzendt', 'CSV lima upload denuo edidit et vos iustus submittere', 'Unggah lagi file CSV yang baru saja Anda edit dan kirim', 'Düzenlediğiniz ve gönderdiğiniz yeni CSV dosyasını tekrar yükleyin', 'Ανεβάστε ξανά αρχείο CSV που μόλις επεξεργαστήκατε και υποβάλατε', 'دوباره فایل CSV را که ویرایش کرده اید بارگذاری کنید و ارسال کنید', 'Muat naik fail CSV yang baru sahaja anda edit dan hantar', 'మళ్ళీ అప్లోడ్ CSV ఫైల్ మీరు సవరించిన మరియు సమర్పించండి', 'பதிவேற்ற மீண்டும் CSV கோப்பை நீங்கள் திருத்தப்பட்டு சமர்ப்பிக்கவும்', 'તમે હમણાં સંપાદિત અને સબમિટ કરો છો તે CSV ફાઇલ ફરીથી અપલોડ કરો', 'Prześlij ponownie plik CSV, który właśnie edytowałeś i przesłałeś', 'Завантажте файл CSV, який ви щойно редагували та подали', 'ਦੁਬਾਰਾ CSV ਫਾਈਲ ਅਪਲੋਡ ਕਰੋ ਜੋ ਤੁਸੀਂ ਹੁਣੇ ਸੰਪਾਦਿਤ ਅਤੇ ਪ੍ਰਸਤੁਤ ਕਰਦੇ ਹੋ', 'Încărcați din nou fișierul CSV pe care tocmai l-ați editat și trimis', 'CSV ဖိုင်ရုံ edited သင် file များနှင့်တင်သွင်းသည်နောက်တဖန် Upload လုပ်ပါ', 'Ṣe atunse faili CSV ti o ṣatunkọ ati firanṣẹ', 'Shigar da fayil ɗin CSV kawai da aka gyara da kuma mika shi', NULL),
(586, 'activity', 'Activity', 'কার্যকলাপ', 'Actividad', 'نشاط', 'गतिविधि', 'سرگرمی', '活动', 'アクティビティ', 'Atividade', 'Мероприятия', 'Activité', '활동', 'Aktivität', 'Attività', 'กิจกรรม', 'Tevékenység', 'Activiteit', 'actio', 'Aktivitas', 'Aktivite', 'Δραστηριότητα', 'فعالیت', 'Aktiviti', 'కార్యాచరణ', 'செயல்பாடு', 'પ્રવૃત્તિ', 'Czynność', 'Діяльність', 'ਸਰਗਰਮੀ', 'Activitate', 'လှုပ်ရှားမှု', 'Iṣẹ', 'Ayyuka', NULL),
(587, 'default_time_zone', 'Default Time Zone', 'ডিফল্ট টাইম জোন', 'Zona horaria predeterminada', 'المنطقة الزمنية الافتراضية', 'डिफ़ॉल्ट समय क्षेत्र', 'ڈیفالٹ ٹائم زون', '默认时区', 'デフォルトのタイムゾーン', 'Fuso horário padrão', 'Часовой пояс по умолчанию', 'Fuseau horaire par défaut', '기본 시간대', 'Standardzeitzone', 'Fuso orario predefinito', 'เขตเวลาเริ่มต้น', 'Alapértelmezett időzóna', 'Standaard tijdzone', 'Default Time Zone', 'Zona Waktu Default', 'Varsayılan Zaman Dilimi', 'Προεπιλεγμένη ζώνη ώρας', 'منطقه زمانی پیش فرض', 'Zon Masa Lalai', 'డిఫాల్ట్ టైమ్ జోన్', 'இயல்புநிலை நேர மண்டலம்', 'ડિફૉલ્ટ સમય ઝોન', 'Domyślna strefa czasowa', 'Часовий пояс за замовчуванням', 'ਡਿਫਾਲਟ ਸਮਾਂ ਜ਼ੋਨ', 'Fusul orar implicit', 'default အချိန်ဇုန်', 'Aago Aago Aiyipada', 'Yanayin lokaci na tsohuwar', NULL),
(588, 'check_all', 'Check All', 'সব টিক চিহ্ন দিন', 'Verificar todo', 'تحقق من الكل', 'सभी की जांच करो', 'سب چیک کریں', '选择所有', 'すべてチェック', 'Verificar tudo', 'Отметить все', 'Vérifie tout', '모두 확인', 'Alle überprüfen', 'Seleziona tutto', 'เลือกทั้งหมด', 'Ellenőrizni mind', 'Controleer alles', 'reprehendo omnes', 'Periksa Semua', 'Tümünü Kontrol Et', 'Ελεγξε τα ολα', 'بررسی همه', 'Memeriksa semua', 'అన్నింటినీ తనిఖీ చేయండి', 'எல்லாம் சரிபார்க்கவும்', 'બધા તપાસો', 'Zaznacz wszystkie', 'Перевірити все', 'ਸਾਰੇ ਚੈੱਕ ਕਰੋ', 'Selectați toate', 'အားလုံးစစ်ပါ', 'Ṣayẹwo Gbogbo', 'Duba Duk', NULL),
(589, 'uncheck_all', 'Uncheck All', 'সব টিক চিহ্ন তুলে দিন', 'Desmarcar todo', 'الغاءالكل', 'सब को अचयनित करें', 'سبھی کو نشان زد کریں', '取消所有', 'すべてのチェックを外す', 'Desmarcar todos', 'Снять все', 'Décocher tout', '모두 선택 취소', 'Alle deaktivieren', 'Deseleziona tutto', 'ยกเลิกการเลือกทั้งหมด', 'Minden választás törlése', 'Deselecteer alles', 'omnes Licens', 'Jangan tandai semua', 'Tümünü işaretleme', 'Αποεπιλογή όλων', 'همه موارد را از حالت انتخاب خارج کنید', 'Nyahtanda Semua', 'అన్నీ తనిఖీ చేయి', 'அனைத்தையும் அகற்றவும்', 'બધાને અનચેક કરો', 'Odznacz wszystkie', 'Зніміть прапорець біля всіх', 'ਸਭ ਹਟਾਓ', 'Deselecteaza tot', 'Uncheck အားလုံး', 'Ṣii Gbogbo rẹ', 'Cire Dukkan', NULL),
(590, 'debit', 'Debit', 'ডেবিট', 'Débito', 'مدين', 'नामे', 'ڈیبٹ', '借方', 'デビット', 'Débito', 'Дебет', 'Débit', '차변', 'Lastschrift', 'Addebito', 'หักบัญชี', 'tartozás', 'Debiteren', 'Debita', 'Debet', 'borç', 'Χρέωση', 'بدهی', 'Debit', 'డెబిట్', 'டெபிட்', 'ડેબિટ', 'Obciążyć', 'Дебет', 'ਡੈਬਿਟ', 'Debit', 'debit', 'Debit', 'Haɗi', NULL),
(591, 'credit', 'Credit', 'ক্রেডিট', 'Crédito', 'ائتمان', 'श्रेय', 'کریڈٹ', '信用', 'クレジット', 'Crédito', 'кредит', 'Crédit', '신용', 'Kredit', 'Credito', 'เครดิต', 'Hitel', 'Credit', 'fidem', 'Kredit', 'Kredi', 'Πίστωση', 'اعتبار', 'Kredit', 'క్రెడిట్', 'கடன்', 'ક્રેડિટ', 'Kredyt', 'Кредит', 'ਕ੍ਰੈਡਿਟ', 'Credit', 'အကြွေး', 'Ike', 'Credit', NULL),
(592, 'reset_user_email', 'Reset User Email', 'ব্যবহারকারীর ইমেল রিসেট করুন', 'Restablecer correo electrónico', 'إعادة تعيين البريد الإلكتروني للمستخدم', 'उपयोगकर्ता ईमेल रीसेट करें', 'صارف ای میل ری سیٹ کریں', '重置用户电子邮件', 'ユーザーの電子メールをリセットする', 'Redefinir email do usuário', 'Сброс электронной почты пользователя', 'Réinitialiser lemail', '사용자 이메일 재설정', 'Benutzer-E-Mail zurücksetzen', 'Reimposta e-mail utente', 'รีเซ็ตอีเมลผู้ใช้', 'Felhasználói e-mail visszaállítása', 'Reset gebruikersmail', 'Mobile Version Email', 'Setel ulang Email Pengguna', 'Kullanıcı e-postasını sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου χρήστη', 'تنظیم مجدد ایمیل کاربر', 'Tetapkan semula E-mel Pengguna', 'యూజర్ ఇమెయిల్ను రీసెట్ చేయండి', 'பயனர் மின்னஞ்சல் மீட்டமை', 'વપરાશકર્તા ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj e-mail użytkownika', 'Скинути електронну адресу користувача', 'ਰੀਸੈਟ ਯੂਜਰ ਈਮੇਲ', 'Resetați e-mailul utilizatorului', 'အသုံးပြုသူအီးမေးလ် Reset', 'Atunto Olumulo Olumulo', 'Sake saitin Imel mai amfani', NULL),
(593, 'reset_email', 'Reset Email', 'ইমেল রিসেট করুন', 'Restablecer Email', 'إعادة تعيين البريد الإلكتروني', 'ईमेल रीसेट करें', 'ای میل ری سیٹ کریں', '重置邮箱', '電子メールをリセットする', 'Redefinir email', 'Сбросить электронную почту', 'Reset Email', '이메일 재설정', 'E-Mail zurücksetzen', 'Ripristina email', 'รีเซ็ตอีเมล', 'E-mail visszaállítása', 'Reset e-mail', 'Reddere praeferentias Email', 'Setel ulang Email', 'E-postayı sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου', 'تنظیم مجدد ایمیل', 'Tetapkan semula E-mel', 'ఇమెయిల్ను రీసెట్ చేయండి', 'மின்னஞ்சல் மீட்டமை', 'ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj email', 'Скидання електронної пошти', 'ਈਮੇਲ ਦੁਬਾਰਾ ਸੈਟ ਕਰੋ', 'Resetați e-mailul', 'အီးမေးလ် Reset', 'Tunto Imeeli', 'Sake saita Imel', NULL),
(594, 'date_format', 'Date Format', 'ডেট ফরমেট', 'Formato de fecha', 'صيغة التاريخ', 'डेटा प्रारूप', 'تاریخ کی شکل', '日期格式', '日付形式', 'Formato de data', 'Формат даты', 'Format de date', '날짜 형식', 'Datumsformat', 'Formato data', 'รูปแบบวันที่', 'Dátum formátum', 'Datumnotatie', 'Forma Date', 'Format tanggal', 'Tarih formatı', 'Μορφή ημερομηνίας', 'فرمت تاریخ', 'Format tarikh', 'తేదీ ఫార్మాట్', 'தேதி வடிவமைப்பு', 'તારીખ ફોર્મેટ', 'Format daty', 'Формат дати', 'ਤਾਰੀਖ ਫਾਰਮੈਟ', 'Formatul datei', 'နေ့စွဲပုံစံ', 'Ọjọ kika', 'Kwanan wata Tsarin', NULL),
(595, 'position_in_class', 'Position in Class', 'ক্লাসে অবস্থান', 'Posición en clase', 'موقف في الصف', 'कक्षा में स्थिति', 'کلاس میں مقام', '在课堂上的位置', 'クラス内の位置', 'Posição na classe', 'Должность в классе', 'Position en classe', '클래스의 위치', 'Position in der Klasse', 'Posizione in classe', 'ตำแหน่งในชั้นเรียน', 'Pozíció az osztályban', 'Positie in de klas', 'Statum Paleonemertea Class', 'Posisi di Kelas', 'Sınıftaki pozisyonu', 'Θέση στην τάξη', 'موقعیت در کلاس', 'Kedudukan dalam Kelas', 'తరగతి లో స్థానం', 'வகுப்பில் நிலை', 'વર્ગમાં સ્થાન', 'Pozycja w klasie', 'Позиція в класі', 'ਕਲਾਸ ਵਿਚ ਸਥਿਤੀ', 'Poziția în clasă', 'အတန်းအစားထဲမှာရာထူး', 'Ipo ni Kilasi', 'Matsayi a Class', NULL),
(596, 'position_in_section', 'Position in Section', 'বিভাগে অবস্থান', 'Posición en la Sección', 'موقف في القسم', 'खंड में स्थिति', 'سیکشن میں مقام', '在部分中的位置', 'セクション内の位置', 'Posição na seção', 'Должность в разделе', 'Position dans la section', '섹션의 위치', 'Position im Abschnitt', 'Posizione nella sezione', 'ตำแหน่งในส่วน', 'Pozíció a fejezetben', 'Positie in sectie', 'Situ Art', 'Posisi dalam Bagian', 'Bölümdeki pozisyon', 'Θέση στην Ενότητα', 'موقعیت در بخش', 'Kedudukan dalam Seksyen', 'విభాగంలో స్థానం', 'பிரிவில் நிலை', 'વિભાગમાં સ્થાન', 'Pozycja w sekcji', 'Позиція в розділі', 'ਸੈਕਸ਼ਨ ਵਿੱਚ ਸਥਿਤੀ', 'Poziția în secțiune', 'Section မှာရာထူး', 'Ipo ni Abala', 'Matsayi a Sashi', NULL),
(597, 'percentage', 'Percentage', 'শতকরা হার', 'Porcentaje', 'النسبة المئوية', 'प्रतिशत', 'فی صد', '百分比', 'パーセンテージ', 'Percentagem', 'процент', 'Pourcentage', '백분율', 'Prozentsatz', 'Percentuale', 'ร้อยละ', 'Százalék', 'Percentage', 'CENTESIMA', 'Persentase', 'Yüzde', 'Ποσοστό', 'درصد', 'Peratusan', 'శాతం', 'சதவிதம்', 'ટકાવારી', 'Odsetek', 'Відсоток', 'ਪ੍ਰਤੀਸ਼ਤ', 'Procent', 'ရာခိုင်နှုန်း', 'Ogorun', 'Kashi', NULL),
(598, 'principal', 'Principal', 'অধ্যক্ষ', 'Director de escuela', 'المالك', 'प्रधान अध्यापक', 'پرنسپل', '主要', '主要な', 'Diretor', 'принципал', 'Principal', '주요한', 'Schulleiter', 'Principale', 'หลัก', 'Fő', 'principaal', 'principalem', 'Kepala Sekolah', 'anapara', 'ΔΙΕΥΘΥΝΤΡΙΑ σχολειου', 'سرپرست', 'Pengetua', 'ప్రిన్సిపాల్', 'முதல்வர்', 'આચાર્યશ્રી', 'Dyrektor', 'Головний', 'ਪ੍ਰਿੰਸੀਪਲ', 'Principal', 'ကြောငျးအုပျကွီး', 'Ilana', 'Babban', NULL),
(599, 'feedback', 'Feedback', 'প্রতিক্রিয়া', 'Realimentación', 'ردود الفعل', 'प्रतिक्रिया', 'تاثرات', '反馈', 'フィードバック', 'Comentários', 'Обратная связь', 'Retour d\'information', '피드백', 'Feedback', 'Risposta', 'ผลตอบรับ', 'Visszacsatolás', 'terugkoppeling', 'feedback', 'Umpan balik', 'geri bildirim', 'Ανατροφοδότηση', 'بازخورد', 'Maklumbalas', 'అభిప్రాయం', 'பின்னூட்டம்', 'પ્રતિક્રિયા', 'Sprzężenie zwrotne', 'Зворотній зв\'язок', 'ਸੁਝਾਅ', 'Parere', 'တုံ့ပြန်ချက်', 'Idahun', 'Feedback', NULL),
(600, 'super_admin', 'Super Admin', 'সুপার অ্যাডমিন', 'Super admin', 'مشرف متميز', 'सुपर व्यवस्थापक', 'سپر ایڈمن', '超级管理员', 'スーパー管理者', 'Super Admin', 'Супер администратор', 'Super Admin', '수퍼 관리자', 'höchster Vorgesetzter', 'Super Admin', 'ผู้ดูแลระบบขั้นสูง', 'Super Admin', 'Superbeheerder', 'super Maecenas et ipsum', 'Admin Super', 'Süper Yönetici', 'Super Admin', 'مدیر فوق العاده', 'Super Admin', 'సూపర్ అడ్మిన్', 'சூப்பர் நிர்வாகம்', 'સુપર એડમિન', 'Superadministrator', 'Супер адміністратор', 'ਸੁਪਰ ਐਡਮਿਨ', 'Super Admin', 'စူပါအဒ်မင်', 'Super abojuto', 'Super Admin', NULL),
(601, 'is_publish', 'Is Publish?', 'প্রকাশ করা হয়?', 'Es publicar?', 'هل تنشر؟', 'प्रकाशित है?', 'شائع کیا ہے؟', '发布了吗？', 'パブリッシュですか？', 'É publicar?', 'Опубликован?', 'Est Publier?', '게시 하시겠습니까?', 'Ist Veröffentlichen?', 'È pubblico?', 'เผยแพร่แล้วหรือไม่?', 'Publikál?', 'Is publiceren?', 'Auditum est?', 'Apakah Publikasikan?', 'Yayınlanıyor mu?', 'Είναι η δημοσίευση;', 'انتشار است؟', 'Adakah Terbitkan?', 'ప్రచురించాలా?', 'வெளியிட வேண்டுமா?', 'પ્રકાશિત છે?', 'Czy publikujesz?', 'Опублікувати?', 'ਕੀ ਪਬਲਿਸ਼ ਹੈ?', 'Este publicat?', 'Publish သလဲ?', 'Ṣe Atọjade?', 'Ana Buga?', NULL),
(602, 'location', 'Location', 'অবস্থান', 'Ubicación', 'موقعك', 'स्थान', 'مقام', '地点', 'ロケーション', 'Localização', 'Место нахождения', 'Emplacement', '위치', 'Ort', 'Posizione', 'ที่ตั้ง', 'Elhelyezkedés', 'Plaats', 'Location', 'Lokasi', 'yer', 'Τοποθεσία', 'محل', 'Lokasi', 'స్థానం', 'இருப்பிடம்', 'સ્થાન', 'Lokalizacja', 'Розташування', 'ਸਥਾਨ', 'Locație', 'တည်နေရာ', 'Ipo', 'Yanayi', NULL),
(603, 'google_analytics', 'Google Analytics', 'গুগল এনালিটিক্স', 'Google analitico', 'تحليلات كوكل', 'गूगल विश्लेषिकी', 'گوگل تجزیہ کار', '谷歌分析', 'グーグルアナリティクス', 'Google Analytics', 'Гугл Аналитика', 'Google Analytics', 'Google 애널리틱스', 'Google Analytics', 'statistiche di Google', 'Google Analytics', 'A Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'تجزیه و تحلیل ترافیک گوگل', 'Google Analytics', 'గూగుల్ విశ్లేషణలు', 'கூகுள் அனலிட்டிக்ஸ்', 'ગૂગલ ઍનલિટિક્સ', 'Google Analytics', 'Google Analytics', 'ਗੂਗਲ ਵਿਸ਼ਲੇਸ਼ਣ', 'Google Analytics', 'Google Analytics', 'Atupale Google', 'Google Analytics', NULL),
(604, 'have_any_question', 'Have you any question?', 'আপনার কোন প্রশ্ন আছে?', '¿Tienes alguna pregunta?', 'هل لديك أي سؤال؟', 'क्या आपका कोई सवाल है?', 'کیا آپ کا کوئی سوال ہے', '你有什么问题吗？', '何か質問ありますか？', 'Você tem alguma pergunta?', 'У вас есть вопрос?', 'Avez-vous une question?', '질문 있니?', 'Hast du eine Frage?', 'Hai qualche domanda?', 'คุณมีคำถามหรือไม่?', 'Kérdése van?', 'Heb je een vraag?', 'Have vos interrogare?', 'Apakah Anda punya pertanyaan?', 'Bir sorunuz var mı?', 'Έχετε κάποια ερώτηση;', 'آیا شما هر گونه سوال', 'Adakah anda mempunyai soalan?', 'మీకు ఏదైనా ప్రశ్న ఉందా?', 'உங்களிடம் ஏதாவது கேள்வி இருக்கிறதா?', 'શું તમને કોઈ પ્રશ્ન છે?', 'Masz jakieś pytanie?', 'У вас є якесь питання?', 'ਕੀ ਤੁਹਾਨੂੰ ਕੋਈ ਸਵਾਲ ਹੈ?', 'Aveți vreo întrebare?', 'သင်သည်မည်သည့်မေးခွန်းရှိပါသလား?', 'Ṣe o ni eyikeyi ibeere?', 'Shin kuna da wata tambaya?', NULL),
(605, 'call_us', 'Call us', 'আমাদের কল করুন', 'Llamanos', 'اتصل بنا', 'हमें बुलाओ', 'ہمیں بلائیں', '打电话给我们', 'お電話ください', 'Ligue para nós', 'Позвоните нам', 'Appelez nous', '전화주세요.', 'Ruf uns an', 'Chiamaci', 'โทรหาเรา', 'Hívjon bennünket', 'Bel ons', 'nos voca', 'Hubungi kami', 'Bizi arayın', 'Καλέστε μας', 'با ما تماس بگیرید', 'Hubungi kami', 'మాకు కాల్ చేయండి', 'எங்களை அழை', 'અમને કૉલ કરો', 'Zadzwoń do nas', 'Зателефонуйте нам', 'ਸਾਨੂੰ ਕਾਲ ਕਰੋ', 'Sună-ne', 'ကျွန်တော်တို့ကို Call', 'Pe wa', 'Kira mana', NULL),
(606, 'email_us', 'Email us', 'আমাদেরকে ইমেইল করুন', 'Envíenos un correo electrónico', 'أرسل لنا', 'हमे ईमेल करे', 'ہمیں ای میل کریں', '电邮我们', '私達に電子メールを送り', 'Envia-nos um email', 'Свяжитесь с нами по электронной почте', 'Envoyez-nous un email', '이메일 문의', 'Schreiben Sie uns eine E-Mail', 'Mandaci una email', 'ส่งอีเมลถึงเรา', 'Küldj egy emailt nekünk', 'Email ons', 'email us', 'Email kami', 'Bize e-posta', 'Στείλτε μας email', 'به ما ایمیل بزنید', 'Email kami', 'మాకు ఇమెయిల్ చేయండి', 'எங்களுக்கு மின்னஞ்சல்', 'અમને ઇમેઇલ કરો', 'Wyślij do nas e-mail', 'Напишіть нам', 'ਸਾਨੂੰ ਈਮੇਲ ਕਰੋ', 'Trimite-ti-ne un e-mail', 'ကျွန်တော်တို့ကိုအီးမေး', 'Imeeli wa', 'Email mu', NULL),
(607, 'welcome_to', 'Welcome to', 'স্বাগতম', 'Bienvenido a', 'مرحبا بك في', 'में स्वागत', 'میں خوش آمدید', '欢迎来到', 'ようこそ', 'Bem-vindo ao', 'Добро пожаловать в', 'Bienvenue à', '에 오신 것을 환영합니다', 'Willkommen zu', 'Benvenuto a', 'ยินดีต้อนรับสู่', 'Isten hozott a', 'Welkom bij', 'gratam', 'Selamat Datang di', 'Hoşgeldiniz', 'Καλωσόρισες στο', 'خوش آمدید به', 'Selamat datang ke', 'స్వాగతం', 'வரவேற்கிறோம்', 'સ્વાગત', 'Witamy w', 'Ласкаво просимо до', 'ਸਵਾਗਤ ਹੈ', 'Bun venit la', 'မှလှိုက်လှဲစွာကြိုဆိုပါသည်', 'Kaabo si', 'Barka da zuwa', NULL),
(608, 'our', 'Our', 'আমাদের', 'Nuestro', 'لنا', 'हमारी', 'ہمارا', '我们的', '私たち', 'Nosso', 'наш', 'Notre', '우리의', 'Unsere', 'Nostro', 'ของเรา', 'a', 'Onze', 'nostrum', 'Kami', 'bizim', 'Μας', 'ما', 'Kami', 'మా', 'எங்கள்', 'અમારું', 'Nasz', 'Наша', 'ਸਾਡਾ', 'Al nostru', 'ကျွန်တော်တို့၏', 'Wa', 'Mu', NULL),
(609, 'facilities', 'Facilities', 'সু্যোগ  সুবিধা', 'Instalaciones', 'مرافق', 'सुविधाएं', 'سہولیات', '设备', '施設', 'Instalações', 'оборудование', 'Installations', '시설', 'Anlagen', 'Strutture', 'สิ่งอำนวยความสะดวก', 'Felszerelés', 'uitrusting', 'facilities', 'Fasilitas', 'tesisler', 'Εγκαταστάσεις', 'امکانات', 'Kemudahan', 'సౌకర్యాలు', 'வசதிகள்', 'સુવિધાઓ', 'Udogodnienia', 'Засоби', 'ਸੁਵਿਧਾਵਾਂ', 'Facilităţi', 'အဆောက်အဦးများ', 'Awọn ohun elo', 'Ayyuka', NULL),
(610, 'achivement', 'Achievement', 'অর্জন', 'Logro', 'موهلات', 'उपलब्धि', 'کامیابی', '成就', '成果', 'Realização', 'Достижение', 'Réussite', '성취', 'Leistung', 'realizzazione', 'ความสำเร็จ', 'Teljesítmény', 'prestatie', 'factum', 'Prestasi', 'Başarı', 'Κατόρθωμα', 'دستاورد', 'Pencapaian', 'అచీవ్మెంట్', 'சாதனையாளர்', 'સિદ્ધિ', 'Osiągnięcie', 'Досягнення', 'ਪ੍ਰਾਪਤੀ', 'Realizare', 'အောင်မြင်ချက်', 'Aseyori', 'Sakamakon', NULL),
(611, 'by', 'By', 'দ্বারা', 'Por', 'بواسطة', 'द्वारा', 'کی طرف سے', '通过', 'によって', 'Por', 'От', 'Par', '으로', 'Durch', 'Di', 'โดย', 'Által', 'Door', 'a', 'Oleh', 'Tarafından', 'Με', 'توسط', 'Oleh', 'ద్వారా', 'மூலம்', 'દ્વારા', 'Przez', 'По', 'ਨਾਲ', 'De', 'အားဖြင့်', 'Nipa', 'By', NULL),
(612, 'what_guardian_say', 'What Guardian Say?', 'গার্ডিয়ান কি বলে?', '¿Qué dice el guardián?', 'ما الوصي قل؟', 'क्या गार्जियन कहते हैं?', 'کیا گارڈین کہتے ہیں؟', '卫报怎么说？', 'ガーディアンは何を言っているの？', 'O que o guardião diz?', 'Что сказал Хранитель?', 'Que dit le gardien?', '가디언이 뭐라 구요?', 'Was Wächter sagen?', 'Che cosa dice il guardiano?', 'อะไร Guardian Say?', 'Milyen Guardian mondja?', 'Welke bewaker zegt?', 'Custos, quid dices?', 'Apa yang dikatakan Guardian?', 'Koruyucu ne diyor?', 'Τι λέει ο Guardian;', 'چه گاردی می گوید؟', 'Apa yang dikatakan Guardian?', 'గార్డియన్ ఏమి చెబుతారు?', 'கார்டியன் என்ன சொல்கிறது?', 'ગાર્ડિયન શું કહે છે?', 'Co mówi strażnik?', 'Що каже гадаю?', 'ਗਾਰਡੀਅਨ ਕੀ ਕਹਿੰਦੇ ਹਨ?', 'Ce spune Guardian?', 'အဘယ်အရာကိုဂါးဒီးယန်းပြောရမည်မှာ,', 'Kini Oluṣọ Kan Sọ?', 'Abin da Guardian Say?', NULL),
(613, 'apply_now_for_your_kid', 'Apply Now for Your Kids', 'আপনার বাচ্চাদের জন্য এখন আবেদন করুন', 'Solicite ahora para sus hijos', 'قدم الآن لأطفالك', 'अपने बच्चों के लिए अभी आवेदन करें', 'اپنے بچوں کے لئے اب درخواست دیں', '立即申请您的孩子', 'あなたの子供たちに今すぐ応募する', 'Inscreva-se agora para seus filhos', 'Применить сейчас для своих детей', 'Appliquez maintenant pour vos enfants', '자녀에게 지금 신청하십시오', 'Bewerben Sie sich jetzt für Ihre Kinder', 'Fai domanda per i tuoi bambini', 'สมัครตอนนี้เพื่อลูกของคุณ', 'Jelentkezz most a gyerekeknek', 'Meld je nu aan voor je kinderen', 'Applicare autem tuus pro Kids', 'Ajukan Sekarang untuk Anak-Anak Anda', 'Çocuklarınız için Şimdi Başvurun', 'Εφαρμόστε τώρα για τα παιδιά σας', 'اکنون برای کودکان خود اعمال کنید', 'Sapukan Sekarang untuk Anak-Anak Anda', 'ఇప్పుడు మీ కిడ్స్ కోసం దరఖాస్తు చేసుకోండి', 'உங்கள் பிள்ளைகளுக்கு இப்போது விண்ணப்பிக்கவும்', 'તમારા બાળકો માટે હવે અરજી કરો', 'Złóż aplikację teraz dla swoich dzieci', 'Застосувати зараз для своїх дітей', 'ਆਪਣੇ ਬੱਚਿਆਂ ਲਈ ਹੁਣੇ ਅਪਲਾਈ ਕਰੋ', 'Aplicați acum pentru copiii dvs.', 'သင့်ရဲ့ကလေးတွေကအဘို့အ Now ကို Apply', 'Ṣe Waye Bayi fun Awọn ọmọ wẹwẹ rẹ', 'Nemi Yanzu Don Yaracenku', NULL),
(614, 'invalid_school_selection', 'Invalid Selection. Please choose valid School.', 'অবৈধ নির্বাচন। বৈধ স্কুল নির্বাচন করুন।', 'Selección invalida. Por favor elija una escuela válida.', 'اختيار غير صالح. الرجاء اختيار مدرسة صالحة.', 'अमान्य चयन कृपया वैध स्कूल चुनें।', 'غلط انتخاب براہ مہربانی درست اسکول منتخب کریں.', '选择无效。 请选择有效的学校。', '無効な選択。 有効な学校を選択してください。', 'Seleção inválida. Por favor, escolha uma escola válida.', 'Недопустимый выбор. Выберите действующую школу.', 'Selection invalide. Veuillez choisir une école valide.', '유효하지 않은 선택입니다. 유효한 학교를 선택하십시오.', 'Ungültige Auswahl. Bitte wählen Sie eine gültige Schule.', 'Selezione non valida. Scegli una scuola valida.', 'การเลือกไม่ถูกต้อง โปรดเลือกโรงเรียนที่ถูกต้อง', 'Érvénytelen kiválasztás. Kérjük, válasszon érvényes iskolát.', 'Ongeldige selectie. Kies een geldige school.', 'Electio invalida. Placere eligere valet School.', 'Pemilihan Tidak Valid. Silakan pilih Sekolah yang valid.', 'Geçersiz seçim. Lütfen geçerli bir okul seçiniz.', 'Μη έγκυρη επιλογή. Επιλέξτε το έγκυρο σχολείο.', 'انتخاب نامعتبر لطفا مدرسه معتبر را انتخاب کنید', 'Pemilihan tidak sah. Sila pilih Sekolah yang sah.', 'చెల్లని ఎంపిక. దయచేసి చెల్లుబాటు అయ్యే పాఠశాలను ఎంచుకోండి.', 'தவறான தேர்வு. சரியான பள்ளியைத் தேர்ந்தெடுக்கவும்.', 'અમાન્ય પસંદગી. કૃપા કરીને માન્ય શાળા પસંદ કરો.', 'Nieprawidłowy wybór. Wybierz właściwą szkołę.', 'Недійсний вибір Будь ласка, виберіть дійсну школу.', 'ਅਵੈਧ ਚੋਣ ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਸਕੂਲ ਚੁਣੋ', 'Selecție nevalidă. Alegeți o școală validă.', 'မှားနေသောရွေးချယ်ရေး။ ခိုင်လုံသောကျောင်း ကျေးဇူးပြု. ရွေးချယ်ပါ။', 'Aṣayan aiyipada. Jọwọ yan Ile-iṣẹ to wulo.', 'Zaɓin mara inganci. Don Allah a zabi Makaranta mai kyau.', NULL),
(615, 'school_lat', 'Latitude', 'অক্ষাংশ', 'Latitud', 'خط العرض', 'अक्षांश', 'طول', '纬度', '緯度', 'Latitude', 'широта', 'Latitude', '위도', 'Breite', 'Latitudine', 'ละติจูด', 'Szélességi kör', 'Breedtegraad', 'latitudo', 'Lintang', 'Enlem', 'Γεωγραφικό πλάτος', 'عرض جغرافیایی', 'Latitud', 'అక్షాంశం', 'அட்சரேகை', 'અક્ષાંશ', 'Szerokość', 'Широта', 'ਵਿਥਕਾਰ', 'Latitudine', 'လတီ္တတွဒ်', 'Iwọn', 'Latitude', NULL),
(616, 'school_lng', 'Longitude', 'দ্রাঘিমা', 'Longitud', 'خط الطول', 'देशान्तर', 'لمبائی', '经度', '経度', 'Longitude', 'Долгота', 'Longitude', '경도', 'Längengrad', 'Longitudine', 'ลองจิจูด', 'Hosszúság', 'Lengtegraad', 'longitudo', 'Garis bujur', 'Boylam', 'Γεωγραφικό μήκος', 'عرض جغرافیایی', 'Longitud', 'రేఖాంశం', 'தீர்க்கரேகை', 'રેખાંશ', 'Długość geograficzna', 'Довгота', 'ਲੰਬਕਾਰ', 'Longitudine', 'လောင်ဂျီတွဒ်', 'Gunitude', 'Longitude', NULL),
(617, 'pls_remove_child_data', 'Please delete child data before delete this.', 'এই ডাটা  মুছে ফেলার আগে প্লিজ ডিলিট চাইল্ড ডাটা', 'Por favor, elimine los datos secundarios antes de eliminar esto.', 'يرجى حذف البيانات الفرعية قبل حذفها.', 'इसे हटाने से पहले कृपया बाल डेटा हटाएं।', 'براہ کرم اس کو حذف کرنے سے قبل بچے کے ڈیٹا کو حذف کریں.', '删除之前请删除子数据。', '削除する前に子データを削除してください。', 'Por favor, apague os dados da criança antes de deletar isto.', 'Удалите дочерние данные перед удалением.', 'Veuillez supprimer les données enfants avant de supprimer ceci.', '삭제하기 전에 하위 데이터를 삭제하십시오.', 'Bitte löschen Sie untergeordnete Daten, bevor Sie diese löschen.', 'Si prega di cancellare i dati figlio prima di eliminarlo.', 'โปรดลบข้อมูลเด็กก่อนลบข้อมูลนี้', 'Kérjük, törölje a gyermekadatokat a törlés előtt.', 'Wis onderliggende gegevens voordat u deze verwijdert.', 'Delete hoc in conspectu delete notitia puero placet.', 'Hapus data anak sebelum menghapus ini.', 'Lütfen bunu silmeden önce çocuk verilerini silin', 'Διαγράψτε τα δεδομένα παιδιού πριν διαγράψετε αυτό το θέμα.', 'لطفا قبل از حذف این اطلاعات فرزند را حذف کنید.', 'Sila padamkan data kanak-kanak sebelum memadamkannya.', 'దీన్ని తొలగించడానికి ముందు పిల్లల డేటాను తొలగించండి.', 'இதை நீக்குவதற்கு முன் குழந்தைத் தரவை நீக்குக.', 'કૃપા કરીને આને કાઢી નાખતા પહેલા બાળ ડેટા કાઢી નાખો.', 'Usuń dane podrzędne, zanim je usuniesz.', 'Будь ласка, видаліть дочірні дані, перш ніж видалити це.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸਨੂੰ ਮਿਟਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਬੱਚੇ ਦਾ ਡੇਟਾ ਮਿਟਾਓ.', 'Ștergeți datele copilului înainte de a șterge acest lucru.', 'မတိုင်မှီကဒီကိုဖျက်ကလေးက data တွေကိုဖျက်ပစ်ပါ။', 'Jọwọ pa awọn ọmọ ọmọkunrin rẹ ṣaaju ki o to paarẹ.', 'Da fatan a share bayanan jariri kafin a share wannan.', NULL),
(618, 'wrong_username', 'You have entered wrong username', 'আপনি ভুল ব্যবহারকারীর নাম প্রবেশ করেছেন', 'You have entered wrong username', 'لقد أدخلت اسم مستخدم خاطئ', 'आपने गलत उपयोगकर्ता नाम दर्ज किया है', 'آپ نے غلط صارف نامہ درج کیا ہے', '您输入了错误的用户名', '間違ったユーザー名を入力しました', 'Você digitou o nome de usuário incorreto', 'Вы ввели неправильное имя пользователя', 'Vous avez entré un mauvais nom d\'utilisateur', '잘못된 사용자 이름을 입력했습니다.', 'Sie haben einen falschen Benutzernamen eingegeben', 'Hai inserito un nome utente errato', 'คุณป้อนชื่อผู้ใช้ผิด', 'Rossz felhasználónevet adott meg', 'U hebt de verkeerde gebruikersnaam ingevoerd', 'Et ingressi sunt mali nomen usoris', 'Anda memasukkan nama pengguna yang salah', 'Yanlış kullanıcı adı girdiniz', 'Έχετε εισάγει λάθος όνομα χρήστη', 'نام کاربری اشتباه وارد کرده اید', 'Anda telah memasukkan nama pengguna yang salah', 'మీరు తప్పు వినియోగదారు పేరును నమోదు చేసారు', 'தவறான பயனர்பெயரை உள்ளிட்டுள்ளீர்கள்', 'તમે ખોટી વપરાશકર્તાનામ દાખલ કર્યું છે', 'Podałeś błędną nazwę użytkownika', 'Ви ввели неправильне ім\'я користувача', 'ਤੁਸੀਂ ਗਲਤ ਉਪਭੋਗਤਾ ਨਾਮ ਦਰਜ ਕੀਤਾ ਹੈ', 'Ați introdus un nume de utilizator greșit', 'သငျသညျမှားယွင်းတဲ့အသုံးပြုသူအမည်ထဲသို့ဝင်ခဲ့ကြ', 'O ti tẹ orukọ olumulo ti ko tọ si', 'An shigar da sunan mai amfani mara kyau', NULL),
(619, 'set_academic_year_for_school', 'Please set academic year for the associated school.', 'সংশ্লিষ্ট স্কুলর  জন্য একাডেমিক বছর সেট করুন।', 'Por favor, establezca el año académico para la escuela asociada.', 'يرجى تحديد العام الدراسي للمدرسة المرتبطة.', 'कृपया संबंधित स्कूल के लिए अकादमिक वर्ष निर्धारित करें।', 'برائے مہربانی تعلیمی سال متعلقہ اسکول کے لئے مقرر کریں.', '请为相关学校设置学年。', '関連する学校の学年を設定してください。', 'Por favor, defina o ano acadêmico para a escola associada.', 'Укажите учебный год для соответствующей школы.', 'Veuillez définir l\'année scolaire pour l\'école associée.', '해당 학교의 학년도를 설정하십시오.', 'Bitte legen Sie das Schuljahr für die zugehörige Schule fest.', 'Si prega di fissare l\'anno accademico per la scuola associata.', 'โปรดกำหนดปีการศึกษาสำหรับโรงเรียนที่เกี่ยวข้อง', 'Kérjük, állítsa be az akadémiai évet a társult iskola számára.', 'Stel het academisch jaar in voor de bijbehorende school.', 'Quaesumus eam selige academic consociata annum ad scholam.', 'Harap tetapkan tahun akademik untuk sekolah terkait.', 'Lütfen ilgili okul için akademik yılı ayarlayın.', 'Ορίστε ακαδημαϊκό έτος για το σχετικό σχολείο.', 'لطفا سال تحصیلی را برای مدرسه همراه تعیین کنید.', 'Sila tentukan tahun akademik untuk sekolah yang berkaitan.', 'దయచేసి అనుబంధ పాఠశాల కోసం విద్యా సంవత్సరం సెట్ చేయండి.', 'அதனுடன் தொடர்புடைய பள்ளிக்கு கல்விக் காலத்தை அமைத்திடுங்கள்.', 'કૃપા કરીને સંબંધિત શાળા માટે શૈક્ષણિક વર્ષ સેટ કરો.', 'Ustaw rok akademicki dla stowarzyszonej szkoły.', 'Будь ласка, встановіть навчальний рік для асоційованої школи.', 'ਕਿਰਪਾ ਕਰਕੇ ਸੰਬੰਧਿਤ ਸਕੂਲ ਲਈ ਅਕਾਦਮਿਕ ਸਾਲ ਸੈਟ ਕਰੋ.', 'Alegeți anul universitar pentru școala asociată.', 'ဆက်စပ်သောကြောငျးအတှကျပညာသင်နှစ်သတ်မှတ်ပါ။', 'Jowo ṣeto odun ẹkọ fun ile-iwe ti o ni nkan.', 'Don Allah a kafa shekara ta ilimi don makarantar hade.', NULL),
(620, 'industry_type', 'Industry Type', 'ইন্ডাস্ট্রি টাইপ', 'Tipo de industria', 'نوع الصناعة', 'उद्योग के प्रकार', 'صنعت کی قسم', '行业类型', '業種別', 'tipo industrial', 'Тип промышленности', 'type d\'industrie', '업종', 'Branchentyp', 'Tipo d\'industria', 'ประเภทอุตสาหกรรม', 'Ipari típus', 'industrie type', 'Type Industry', 'Jenis Industri', 'Endüstri Tipi', 'Τύπος βιομηχανίας', 'نوع صنعت', 'Jenis Industri', 'పరిశ్రమ పద్ధతి', 'தொழில் வகை', 'ઉદ્યોગ પ્રકાર', 'typ przemysłu', 'Тип промисловості', 'ਉਦਯੋਗ ਕਿਸਮ', 'tipul industriei', 'စက်မှုအမျိုးအစား', 'Iru iṣẹ Iru', 'Masana\'antu', NULL),
(621, 'char_set', 'Char Set', 'ক্যারেক্টার  সেট', 'Conjunto de char', 'مجموعة تشار', 'चार सेट', 'چار سیٹ۔', '字符集', 'チャーセット', 'Conjunto de caracteres', 'Набор символов', 'Jeu de caractères', '문자 세트', 'Char Set', 'Set di caratteri', 'ชุดถ่าน', 'Char szett', 'Char Set', 'Set char', 'Char Set', 'Char Seti', 'Char Set', 'مجموعه های برجسته', 'Set Caj', 'చార్ సెట్', 'சார் செட்', 'ચાર સેટ', 'Char Set', 'Набір Чар', 'ਚਾਰ ਸੈੱਟ', 'Char Set', 'char သတ်မှတ်မည်', 'Ṣeto Ṣeto', 'Char Saiti', NULL),
(622, 'priority', 'Priority', 'প্রায়োরিটি', 'Prioridad', 'أفضلية', 'प्राथमिकता', 'ترجیح', '优先', '優先度', 'Prioridade', 'приоритет', 'Priorité', '우선 순위', 'Priorität', 'Priorità', 'ลำดับความสำคัญ', 'Kiemelten fontos', 'Prioriteit', 'PRAECELLENTIA', 'Prioritas', 'öncelik', 'Προτεραιότητα', 'اولویت', 'Keutamaan', 'ప్రాధాన్యత', 'முன்னுரிமை', 'પ્રાથમિકતા', 'Priorytet', 'Пріоритет', 'ਤਰਜੀਹ', 'Prioritate', 'ဦးစားပေး', 'Ipilẹṣẹ', 'Fifiko', NULL),
(623, 'complain', 'Complain', 'অভিযোগ', 'Quejar', 'تذمر', 'शिकायत', 'شکایت کریں۔', '抱怨', '文句を言う', 'Reclamar', 'Пожаловаться', 'Se plaindre', '불평', 'Beschweren', 'Lamentarsi', 'บ่น', 'Panaszkodik', 'Klagen', 'queri', 'Mengeluh', 'Şikayet', 'κανω παραπονα', 'شكايت كردن', 'Mengadu', 'ఫిర్యాదు', 'புகார்', 'ફરિયાદ કરો', 'Skarżyć się', 'Поскаржитися', 'ਸ਼ਿਕਾਇਤ', 'plânge', 'တိုင်ကြား', 'Ẹdun ọkan', 'Gunaguni', NULL),
(624, 'material', 'Material', 'উপাদান', 'Material', 'مواد', 'सामग्री', 'مٹیریل۔', '材料', '素材', 'Material', 'материал', 'Matériel', '자료', 'Material', 'Materiale', 'วัสดุ', 'Anyag', 'Materiaal', 'material', 'Bahan', 'Malzeme', 'Υλικό', 'مواد', 'Bahan', 'మెటీరియల్', 'பொருள்', 'સામગ્રી', 'Materiał', 'Матеріал', 'ਪਦਾਰਥ', 'Material', 'ပစ္စည်း', 'Ohun elo', 'Kayan aiki', NULL),
(625, 'e_book', 'E-Book', 'ই-বুক', 'Libro electronico', 'الكتاب الاليكتروني', 'ई-बुक', 'ای بک۔', '电子书', '電子書籍', 'E-Book', 'Электронная книга', 'Livre électronique', '전자 책', 'E-Book', 'E-Book', 'E-Book', 'E-Book', 'E-Book', 'E-', 'E-Book', 'E-Kitap', 'Ηλεκτρονικό βιβλίο', 'کتاب الکترونیکی', 'E-Book', 'E- బుక్', 'மின் புத்தக', 'ઇ-બુક', 'E-Book', 'Електронна книга', 'ਈ-ਬੁੱਕ', 'E-Book', 'E-စာအုပ်', 'Iwe-iwe', 'Littattafai E-Book', NULL),
(626, 'read', 'Read', 'পড়া', 'Leer', 'اقرأ', 'पढ़ना', 'پڑھیں', '读', '読む', 'Ler', 'Читать', 'Lis', '독서', 'Lesen', 'Leggere', 'อ่าน', 'Olvas', 'Lezen', 'Legere', 'Baca baca', 'okumak', 'Ανάγνωση', 'خواندن', 'Baca', 'చదవండి', 'படிக்க', 'વાંચવું', 'Czytać', 'Прочитайте', 'ਪੜ੍ਹੋ', 'Citit', 'ဖတ်', 'Ka', 'Karanta', NULL),
(627, 'apply_successful', 'Online application successfully submitted', 'অনলাইন আবেদন সফলভাবে জমা দেওয়া হয়েছে', 'Solicitud en línea enviada con éxito', 'تم تقديم الطلب عبر الإنترنت بنجاح', 'ऑनलाइन आवेदन सफलतापूर्वक सबमिट किया गया', 'آن لائن درخواست کامیابی کے ساتھ جمع کرائی گئی۔', '在线申请成功提交', 'オンライン申請が正常に送信されました', 'Inscrição online enviada com sucesso', 'Онлайн заявка успешно отправлена', 'Demande en ligne soumise avec succès', '온라인 신청서가 성공적으로 제출되었습니다', 'Online-Bewerbung erfolgreich eingereicht', 'Domanda online inviata correttamente', 'ส่งใบสมัครออนไลน์สำเร็จแล้ว', 'Az online jelentkezés sikeresen benyújtva', 'Online aanvraag succesvol ingediend', 'Summitto bene online application', 'Aplikasi online berhasil dikirim', 'Online başvuru başarıyla gönderildi', 'Η ηλεκτρονική αίτηση υποβλήθηκε με επιτυχία', 'برنامه آنلاین با موفقیت ارسال شد', 'Permohonan dalam talian berjaya dihantar', 'ఆన్‌లైన్ దరఖాస్తు విజయవంతంగా సమర్పించబడింది', 'ஆன்லைன் விண்ணப்பம் வெற்றிகரமாக சமர்ப்பிக்கப்பட்டது', 'Applicationનલાઇન એપ્લિકેશન સફળતાપૂર્વક સબમિટ કરી', 'Aplikacja online została pomyślnie przesłana', 'Онлайн-заявка успішно подана', 'Applicationਨਲਾਈਨ ਅਰਜ਼ੀ ਸਫਲਤਾਪੂਰਵਕ ਦਰਜ ਕੀਤੀ ਗਈ', 'Cererea online a fost trimisă cu succes', 'အွန်လိုင်းလျှောက်လွှာကိုအောင်မြင်စွာတင်သွင်း', 'Ohun elo ori ayelujara ni ifijišẹ silẹ', 'An yi nasarar gabatar da aikace-aikacen kan layi cikin nasara', NULL),
(628, 'apply_failed', 'Online application submitted failed. Please try again.', 'জমা দেওয়া অনলাইন আবেদন ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'Solicitud en línea enviada fallida. Inténtalo de nuevo.', 'فشل تقديم الطلب عبر الإنترنت. حاول مرة اخرى.', 'ऑनलाइन आवेदन विफल रहा। कृपया पुन: प्रयास करें।', 'آن لائن درخواست جمع کروائی گئی۔ دوبارہ کوشش کریں.', '在线申请提交失败。 请再试一次。', 'オンライン申請が失敗しました。 もう一度試してください。', 'A inscrição online enviada falhou. Por favor, tente novamente.', 'Онлайн-заявка подана не удалось. Пожалуйста, попробуйте еще раз.', 'L\'application en ligne soumise a échoué. Veuillez réessayer.', '온라인 신청이 실패했습니다. 다시 시도하십시오.', 'Online-Bewerbung fehlgeschlagen. Bitte versuche es erneut.', 'Domanda online inviata non riuscita. Per favore riprova.', 'ส่งใบสมัครออนไลน์ล้มเหลว กรุณาลองอีกครั้ง.', 'A benyújtott online pályázat sikertelen. Kérlek próbáld újra.', 'Online aanvraag ingediend is mislukt. Probeer het opnieuw.', 'Online application submitted defecit. Quaero, iterum conare.', 'Aplikasi online yang diajukan gagal. Silakan coba lagi.', 'Gönderilen çevrimiçi başvuru başarısız oldu. Lütfen tekrar deneyin.', 'Η υποβολή ηλεκτρονικής αίτησης απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'درخواست آنلاین ارسال نشد. لطفا دوباره تلاش کنید.', 'Permohonan dalam talian yang dikemukakan gagal. Sila cuba lagi.', 'సమర్పించిన ఆన్‌లైన్ దరఖాస్తు విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి.', 'சமர்ப்பிக்கப்பட்ட ஆன்லைன் விண்ணப்பம் தோல்வியுற்றது. தயவுசெய்து மீண்டும் முயற்சி செய்க.', 'સબમિટ થયેલ applicationનલાઇન અરજી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Złożenie wniosku online nie powiodło się. Proszę spróbuj ponownie.', 'Не вдалося подати онлайн-заявку. Будь ласка спробуйте ще раз.', 'ਜਮ੍ਹਾਂ ਹੋਈ applicationਨਲਾਈਨ ਅਰਜ਼ੀ ਅਸਫਲ ਰਹੀ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Cererea online trimisă nu a reușit. Vă rugăm să încercați din nou.', 'တင်သွင်းအွန်လိုင်းလျှောက်လွှာမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ။', 'Ohun elo ori ayelujara silẹ ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Aikace-aikcen kan layi akan kasa sun kasa. Da fatan za a sake gwadawa.', NULL),
(629, 'approve', 'Approve', 'অনুমোদন', 'Aprobar', 'يوافق', 'मंजूर', 'منظور کریں۔', '批准', '承認する', 'Aprovar', 'Утвердить', 'Approuver', '승인', 'Genehmigen', 'Approvare', 'อนุมัติ', 'Jóváhagy', 'Goedkeuren', 'probant', 'Menyetujui', 'onaylamak', 'Εγκρίνω', 'تایید', 'Terima', 'ఆమోదించడానికి', 'ஒப்புதல்', 'મંજૂર', 'Zatwierdzać', 'Затвердити', 'ਮਨਜ਼ੂਰ', 'Aproba', 'အတည်ပြု', 'Fi ọwọ si', 'Amincewa', NULL),
(630, 'approved', 'Approved', 'অনুমোদিত', 'Aprobada', 'وافق', 'मंजूर की', 'منظورشدہ', '批准', '承認済み', 'Aprovada', 'Одобренный', 'Approuvée', '승인', 'Genehmigt', 'Approvato', 'ได้รับการอนุมัติ', 'Jóváhagyott', 'aangenomen', 'probatus', 'Disetujui', 'onaylı', 'Εγκρίθηκε', 'تایید شده', 'Diluluskan', 'ఆమోదించబడింది', 'அங்கீகரிக்கப்பட்ட', 'મંજુર', 'Zatwierdzony', 'Затверджено', 'ਮਨਜ਼ੂਰ', 'Aprobat', 'approved', 'Ti a fọwọsi', 'An yarda', NULL),
(631, 'decline', 'Decline', 'প্রত্যাখ্যান', 'Disminución', 'انخفاض', 'पतन', 'رد', '下降', NULL, 'Declínio', 'снижение', 'Déclin', '쇠퇴', 'Ablehnen', 'Declino', 'ปฏิเสธ', 'Hanyatlás', 'Afwijzen', 'declines', 'Menurun', 'düşüş', 'Πτώση', 'کاهش می یابد', 'Tolak', 'డిక్లైన్', 'சரிவு', 'ઘટી', 'Upadek', 'Спад', 'ਅਸਵੀਕਾਰ', 'Declin', 'ဆင်းလာ', 'Kọ', 'Ragewa', NULL),
(632, 'declined', 'Declined', 'প্রত্যাখান', 'Rechazado', 'رفض', 'इंकार कर दिया', 'رد۔', '下降', '不承認', 'Recusada', 'Отклонено', 'Diminuée', '거부', 'Abgelehnt', 'rifiutato', 'ปรับตัวลดลง', 'Elutasította', 'Afgewezen', 'declinavi ex ea', 'Ditolak', 'Reddedilen', 'Απορρίφθηκε', 'نپذیرفتن', 'Ditolak', 'తిరస్కరించబడింది', 'நிராகரிக்கப்பட்டது', 'નકારવું', 'Odrzucony', 'Відхилено', 'ਅਸਵੀਕਾਰ ਕਰ ਦਿੱਤਾ', 'Refuzat', 'ငြင်းဆန်', 'Kikọ', 'Ya ki', NULL),
(633, 'favicon_icon', 'Favicon Icon', 'ফ্যাভিকন আইকন', 'Icono de favicon', 'أيقونة فافيكون', 'फ़ेविकॉन आइकन', 'فیویکون آئیکن', 'Favicon图标', 'ファビコンアイコン', 'Favicon Ícone', 'Фавикон Иконка', 'Icône Favicon', 'Favicon 아이콘', 'Favicon Icon', 'Icona Favicon', 'ไอคอน Favicon', 'Favicon ikonra', 'Favicon-pictogram', 'Icon favicon', 'Ikon Favicon', 'Favicon Simgesi', 'Εικονίδιο Favicon', 'نماد Favicon', 'Ikon Favicon', 'ఫావికాన్ ఐకాన్', 'ஃபேவிகான் ஐகான்', 'ફેવિકોન ચિહ્ન', 'Ikona Favicon', 'Ікона Фавікона', 'ਫੇਵੀਕਨ ਆਈਕਨ', 'Pictograma Favicon', 'စိတ်ကြိုက်အိုင်ကွန်အိုင်ကွန်', 'Favicon Aami', 'Favicon Icon', NULL),
(634, 'reason', 'Reason', 'কারণ', 'Razón', 'السبب', 'कारण', 'وجہ۔', '原因', '理由', 'Razão', 'причина', 'Raison', '이유', 'Grund', 'Ragionare', 'เหตุผล', 'Ok', 'Reden', 'ratio', 'Alasan', 'neden', 'Λόγος', 'دلیل', 'Sebab', 'కారణము', 'காரணம்', 'કારણ', 'Powód', 'Причина', 'ਕਾਰਨ', 'Motiv', 'အကွောငျးရငျး', 'Idi', 'Dalili', NULL),
(635, 'applicant', 'Applicant', 'আবেদক', 'Solicitante', 'طالب وظيفة', 'आवेदक', 'درخواست دہندہ۔', '申请人', '応募者', 'Candidato', 'заявитель', 'Demandeur', '응모자', 'Antragsteller', 'Richiedente', 'ผู้ขอ', 'Pályázó', 'aanvrager', 'applicant', 'Pemohon', 'Başvuru sahibi', 'Αιτών', 'درخواست کننده', 'Pemohon', 'దరఖాస్తుదారు', 'விண்ணப்பதாரர்', 'અરજદાર', 'Petent', 'Заявник', 'ਬਿਨੈਕਾਰ', 'Solicitant', 'လြှောကျသူ', 'Ibẹwẹ', 'Mai nema', NULL),
(636, 'to_date_must_be_big', 'To date must be greater than From date', 'টু  ডেট  অবশ্যই  ফ্রম  ডেট  থেকে বড় হতে হবে', 'Hasta la fecha debe ser mayor que Desde la fecha', 'يجب أن يكون التاريخ أكبر من تاريخ', 'आज तक की तारीख से अधिक होना चाहिए', 'آج تک تاریخ سے زیادہ ہونا چاہئے۔', '迄今为止必须大于From日期', '終了日は開始日よりも大きくする必要があります', 'Até a data deve ser maior que a partir da data', 'На сегодняшний день должно быть больше, чем с даты', 'À ce jour doit être supérieur à la date de début', '종료 날짜는 시작 날짜보다 커야합니다', 'Bis Datum muss größer als Von Datum sein', 'Ad oggi deve essere maggiore di Da data', 'ถึงวันที่จะต้องมากกว่าวันที่', 'A dátumnak nagyobbnak kell lennie, mint a dátumtól', 'Tot datum moet groter zijn dan vanaf datum', 'Ad date debet esse a major diem', 'Tanggal harus lebih besar dari Tanggal', 'Tarih, Kimden tarihinden büyük olmalı', 'Μέχρι σήμερα πρέπει να είναι μεγαλύτερη από Από την ημερομηνία', 'تا به امروز باید بیشتر از تاریخ باشد', 'Sehingga kini mesti lebih besar dari tarikh Dari', 'తేదీ నుండి తేదీ కంటే ఎక్కువగా ఉండాలి', 'இன்றுவரை தேதியை விட அதிகமாக இருக்க வேண்டும்', 'આજની તારીખ તારીખથી મોટી હોવી જોઈએ', 'Do tej pory musi być większa niż od daty', 'На сьогоднішній день має бути більше, ніж з дати', 'ਤਾਰੀਖ ਤੋਂ ਤਾਰੀਖ ਤੋਂ ਵੱਡਾ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ', 'Până în prezent trebuie să fie mai mare decât De la dată', 'ယနေ့အထိနေ့စွဲမှစထက် သာ. ကြီးမြတ်ဖြစ်ရမည်', 'Lati ọjọ gbọdọ tobi ju Lati ọjọ lọ', 'Zuwa yau dole ne ya fi Na zamani', NULL),
(637, 'purpose', 'Purpose', 'উদ্দেশ্য', 'Propósito', 'غرض', 'उद्देश्य', 'مقصد۔', '目的', '目的', 'Finalidade', 'Цель', 'Objectif', '목적', 'Zweck', 'Scopo', 'วัตถุประสงค์', 'Célja', 'Doel', 'rem', 'Tujuan', 'amaç', 'Σκοπός', 'هدف', 'Tujuan', 'పర్పస్', 'நோக்கம்', 'હેતુ', 'Cel, powód', 'Призначення', 'ਉਦੇਸ਼', 'Scop', 'ရည်ရွယ်ချက်', 'Idi', 'Manufa', NULL),
(638, 'front_office', 'Front Office', 'ফ্রন্ট অফিস', 'Oficina frontal', 'مكتب الإستقبال', 'फ्रंट कार्यालय', 'سامنے والا دفتر', '前厅', 'フロントオフィス', 'Front Office', 'Фронт-офис', 'Front Office', '프론트 오피스', 'Vorderbüro', 'Sportello', 'หน้าสำนักงาน', 'Front Office', 'Front Office', 'Fronte officium', 'Kantor depan', 'Ön ofis', 'Μπροστινό γραφείο', 'دفتر جلو', 'Pejabat Depan', 'ఫ్రంట్ ఆఫీస్', 'முன் அலுவலகம்', 'આગળ ની ઓફિસ', 'Front Office', 'Фронт-офіс', 'ਸਾਹਮਣੇ ਦੇ ਦਫ਼ਤਰ', 'Front office', 'တပ်ဦးရုံး', 'Iwaju Iwaju', 'Ofishin gaba', NULL),
(639, 'call_log', 'Call Log', 'কল লগ', 'Registro de llamadas', 'سجل المكالمات', 'कॉल लॉग', 'کال کی فہرست', '通话记录', '通話記録', 'Registro de chamadas', 'Журнал вызовов', 'Journal d\'appel', '통화 기록', 'Anrufliste', 'Registro chiamate', 'บันทึกการโทร', 'Hívásnapló', 'Oproeplogboek', 'Log voca', 'Laporan panggilan', 'Çağrı geçmişi', 'Μητρώο κλήσεων', 'تماس تلفنی', 'Log panggilan', 'కాల్ లాగ్', 'அழைப்பு பதிவு', 'લ Callગ ક Callલ કરો', 'Rejestr połączeń', 'Журнал викликів', 'ਕਾਲ ਲੌਗ', 'Jurnal de Apel', 'ဖုန်းခေါ်ဆိုမှုမှတ်တမ်း', 'Wọle Wọle', 'Kiran Kira', NULL),
(640, 'incoming', 'Incoming', 'ইনকামিং', 'Entrante', 'الوارد', 'आने वाली', 'آنے والی۔', '来', '着信', 'Entrada', 'вступающий', 'Entrante', '들어오는', 'Eingehend', 'in arrivo', 'ขาเข้า', 'Beérkező', 'inkomend', 'ineuntes', 'Masuk', 'Gelen', 'Εισερχόμενος', 'ورودی', 'Masuk', 'ఇన్కమింగ్', 'வருகை', 'ઇનકમિંગ', 'Przychodzące', 'Вхідний', 'ਆਉਣ ਵਾਲੀ', 'care sosește', 'incoming', 'Ti nwọle', 'Mai shigowa', NULL),
(641, 'outgoing', 'Outgoing', 'আউটগোয়িং', 'Saliente', 'المنتهية', 'निवर्तमान', 'سبکدوش ہونے والے', '传出', NULL, 'Extrovertida', 'исходящий', 'Sortante', '나가는', 'Ausgehend', 'Estroversa', 'ขาออก', 'Kimenő', 'uitgaande', 'exitus', 'Keluar', 'Dışına dönük', 'Εξερχόμενος', 'برونگرا', 'Keluar', 'అవుట్గోయింగ్', 'வெளிச்செல்லும்', 'આઉટગોઇંગ', 'Towarzyski', 'Вихідні', 'ਆgoingਟਗੋਇੰਗ', 'De ieșire', 'အထွက်', 'Ti njade', 'Mai fita', NULL),
(642, 'call_type', 'Call Type', 'কল টাইপ', 'Tipo de llamada', 'نوع الاتصال', 'कॉल प्रकार', 'کال کی قسم', '通话类型', NULL, 'Tipo de chamada', 'Тип звонка', 'Type d\'appel', '통화 유형', 'Anrufart', 'Tipo di chiamata', 'ประเภทการโทร', 'Hívás típusa', 'Oproeptype', 'vocationem Type', 'Jenis Panggilan', 'Çağrı tipi', 'Τύπος κλήσης', 'نوع تماس', 'Jenis Panggilan', 'కాల్ రకం', 'அழைப்பு வகை', 'ક Callલનો પ્રકાર', 'Rodzaj połączenia', 'Тип дзвінка', 'ਕਾਲ ਦੀ ਕਿਸਮ', 'Tip apel', 'ခေါ်ရန်အမျိုးအစား', 'Iru Ipe', 'Nau\'in Kira', NULL),
(643, 'call_duration', 'Call Duration', 'কল সময়কাল', 'Duración de la llamada', 'مدة المكالمة', 'कॉल की अवधि', 'کال کا دورانیہ', '通话时长', '通話時間', 'Duraçao da chamada', 'Длительность звонка', 'Durée d\'appel', '통화 시간', 'Gesprächsdauer', 'Durata della chiamata', 'ระยะเวลาการโทร', 'Hívás időtartam', 'Gespreksduur', 'Duration vocatio', 'Durasi panggilan', 'Çağrı süresi', 'Διάρκεια κλήσης', 'مدت زمان تماس', 'Tempoh Panggilan', 'కాల్ వ్యవధి', 'அழைப்பு காலம்', 'ક Callલ અવધિ', 'Długość rozmowy', 'Тривалість дзвінка', 'ਕਾਲ ਅੰਤਰਾਲ', 'Durata apelului', 'Duration: Call', 'Akoko Ipe', 'Lokacin Kira', NULL),
(644, 'follow_up', 'Follow Up', 'অনুসরণ', 'Seguir', 'متابعة', 'जाँच करना', 'فالو اپ', '跟进', 'ファローアップ', 'Acompanhamento', 'Следовать за', 'Suivre', '후속 조치', 'Nachverfolgen', 'Azione supplementare', 'ติดตาม', 'Követés', 'Opvolgen', 'INSEQUOR', 'Mengikuti', 'Takip et', 'Ακολουθω', 'پیگیری', 'Mengikuti', 'ఫాలో అప్', 'பின்தொடர்', 'અનુસરો', 'Zagryźć', 'Слідувати', 'Ran leti', 'Urmare', 'နောက်ဆက်တွဲ', 'Ran leti', 'Biyo Gaba', NULL),
(645, 'call_date', 'Call Date', 'কল ডেট', 'Fecha de llamada', 'تاريخ الاتصال', 'कॉल की तारीख', 'کال کی تاریخ۔', '通话日期', '呼び出し日', 'Data da chamada', 'Дата звонка', 'Date d\'appel', '전화 날짜', 'Anrufdatum', 'Data della chiamata', 'วันที่โทร', 'Hívás dátuma', 'Oproepdatum', 'vocationem Date', 'Tanggal Panggilan', 'Çağrı tarihi', 'Ημερομηνία κλήσης', 'تاریخ تماس', 'Tarikh Panggilan', 'కాల్ తేదీ', 'அழைப்பு தேதி', 'ક Callલ તારીખ', 'Data połączenia', 'Дата виклику', 'ਕਾਲ ਦੀ ਮਿਤੀ', 'Data apelului', 'ခေါ်ရန်နေ့စွဲ', 'Ọjọ', 'Ranar Kira', NULL),
(646, 'waiting', 'Waiting', 'প্রতীক্ষা', 'Esperando', 'انتظار', 'इंतज़ार कर रही', 'انتظار کر رہا ہے۔', '等候', '待っています', 'Esperando', 'ждущий', 'Attendre', '기다리는', 'Warten', 'Inattesa', 'ที่รอคอย', 'Várakozás', 'Aan het wachten', 'exspecto', 'Menunggu', 'bekleme', 'Αναμονή', 'در انتظار', 'Menunggu', 'వేచి', 'காத்திருக்கிறது', 'રાહ જોવી', 'Czekanie', 'Очікування', 'ਉਡੀਕ ਕਰ ਰਿਹਾ ਹੈ', 'Aşteptare', 'စောင့်ဆိုင်းနေ', 'Nduro', 'Jiran', NULL),
(647, 'pay_stack', 'Pay Stack', 'পে স্ট্যাক', 'Pila de pago', 'دفع المكدس', 'पे स्टैक', 'تنخواہ', '支付堆栈', '有料スタック', 'Pilha de pagamento', 'Стек оплаты', 'Pile de paie', '지불 스택', 'Zahlen Sie Stapel', 'Pay Stack', 'สแต็คจ่ายเงิน', 'Pay Stack', 'Betaalstapel', 'stipendium Stack', 'Tumpukan pembayaran', 'Yığın öde', 'Στοίβα πληρωμής', 'پشته را پرداخت کنید', 'Stack Pay', 'పే స్టాక్', 'பே ஸ்டேக்', 'પે સ્ટેક', 'Pay Stack', 'Сплатити стек', 'ਤਨਖਾਹ ਸਟੈਕ', 'Pay Stack', 'Pay ကို Stack', 'Sanwo Stack', 'Biyan Stack', NULL),
(648, 'secret_key', 'Secret Key', 'সিক্রেট কী', 'Llave secreta', 'المفتاح السري', 'गुप्त कुंजी', 'خفیہ کلید', '密钥', '秘密鍵', 'Chave secreta', 'Секретный ключ', 'Clef secrète', '비밀 키', 'Geheimer Schlüssel', 'Chiave segreta', 'รหัสลับ', 'Titkos kulcs', 'Geheime sleutel', 'Key, secret', 'Kunci rahasia', 'Gizli anahtar', 'Μυστικό κλειδί', 'کلید مخفی', 'Kunci Rahsia', 'సీక్రెట్ కీ', 'ரகசிய விசை', 'ગુપ્ત કી', 'Sekretny klucz', 'Секретний ключ', 'ਗੁਪਤ ਕੁੰਜੀ', 'Cheie secreta', 'လျှို့ဝှက် Key ကို', 'Bọtini Asiri', 'Maɓallin Sirri', NULL),
(649, 'public_key', 'Public Key', 'পাবলিক কী', 'Llave pública', 'المفتاح العمومي', 'सार्वजनिक कुंजी', 'عوامی کلید', '公钥', '公開鍵', 'Chave pública', 'Открытый ключ', 'Clé publique', '공개 키', 'Öffentlicher Schlüssel', 'Chiave pubblica', 'กุญแจสาธารณะ', 'Nyilvános kulcs', 'Publieke sleutel', 'Key publica', 'Kunci Publik', 'Genel anahtar', 'Δημόσιο κλειδί', 'کلید عمومی', 'Kunci Awam', 'పబ్లిక్ కీ', 'பொது விசை', 'જાહેર કી', 'Klucz publiczny', 'Публічний ключ', 'ਪਬਲਿਕ ਕੁੰਜੀ', 'Cheia publică', 'Public Key ကို', 'Bọtini Gbangba', 'Makullin jama\'a', NULL),
(650, 'beta_sms', 'Beta SMS', 'বিটা  এসএমএস', 'SMS beta', 'بيتا SMS', 'बीटा एसएमएस', 'بیٹا ایس ایم ایس۔', 'Beta短信', 'ベータ版SMS', 'Beta SMS', 'Бета СМС', 'SMS bêta', '베타 SMS', 'Beta SMS', 'Beta SMS', 'SMS Beta', 'Beta SMS', 'Beta sms', 'Beta SMS', 'SMS Beta', 'Beta SMS', 'Beta SMS', 'پیامک بتا', 'SMS Beta', 'బీటా SMS', 'பீட்டா எஸ்.எம்.எஸ்', 'બીટા એસ.એમ.એસ.', 'Beta SMS', 'Бета-SMS', 'ਬੀਟਾ ਐਸ ਐਮ ਐਸ', 'SMS-uri beta', 'beta ကို SMS စာတို', 'Beta SMS', 'Beta SMS', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(651, 'confirm_proceed', 'Are you sure you want to proceed?', 'আপনি কি নিশ্চিত আপনি সামনে এগুতে চান?', '¿Estas seguro que deseas continuar?', 'هل انت متأكد انك تريد المتابعة؟', 'क्या आप सुनिश्चित रूप से आगे बढ़ना चाहते हैं?', 'کیا آپ واقعی آگے بڑھنا چاہتے ہیں؟', '你确定要继续吗？', '続行しますか？', 'Tem certeza de que deseja continuar?', 'Вы уверены, что хотите продолжить?', 'Êtes-vous sur de vouloir continuer?', '계속 하시겠습니까?', 'Sind Sie sicher, dass Sie fortfahren möchten?', 'Sei sicuro di voler procedere?', 'คุณแน่ใจหรือไม่ว่าต้องการดำเนินการต่อ', 'Biztosan folytatni akarja?', 'Weet je zeker dat je verder wilt gaan?', 'Certus es ire velis?', 'Anda yakin ingin melanjutkan?', 'Devam etmek istediğinize emin misiniz?', 'Είστε βέβαιοι ότι θέλετε να προχωρήσετε;', 'آیا مطمئن هستید که می خواهید ادامه دهید؟', 'Adakah anda pasti mahu meneruskan?', 'మీరు ఖచ్చితంగా కొనసాగాలని అనుకుంటున్నారా?', 'நீங்கள் நிச்சயமாக தொடர விரும்புகிறீர்களா?', 'શું તમે ખરેખર આગળ વધવા માંગો છો?', 'Na pewno chcesz kontynuować?', 'Ви впевнені, що хочете продовжити?', 'ਕੀ ਤੁਸੀਂ ਅੱਗੇ ਵੱਧਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Ești sigur că vrei să continui?', 'သငျသညျဆက်လက်ဆောင်ရွက်လိုသောသေချာလား?', 'Ṣe o da ọ loju pe o fẹ tẹsiwaju?', 'Ka tabbata kana son ci gaba?', NULL),
(652, 'session_start', 'Session Start', 'সেশন শুরু', 'Inicio de sesión', 'بدء الجلسة', 'सत्र प्रारंभ', 'سیشن اسٹارٹ۔', '会话开始', 'セッション開始', 'Início da sessão', 'Начало сеанса', 'Début de session', '세션 시작', 'Sitzungsstart', 'Inizio sessione', 'เริ่มเซสชัน', 'Session Start', 'Start sessie', 'Sessio Committitur', 'Mulai Sesi', 'Oturum Başlangıcı', 'Έναρξη περιόδου σύνδεσης', 'جلسه شروع', 'Mula Sesi', 'సెషన్ ప్రారంభం', 'அமர்வு தொடக்கம்', 'સત્ર પ્રારંભ', 'Rozpoczęcie sesji', 'Запуск сесії', 'ਸ਼ੈਸ਼ਨ ਅਰੰਭ', 'Începerea sesiunii', 'session Start ကို', 'Ibẹrẹ Ikilọ', 'Zama na Farko', NULL),
(653, 'session_end', 'Session End', 'সেশন সমাপ্তি', 'Fin de sesión', 'نهاية الجلسة', 'सत्र समाप्ति', 'سیشن ختم۔', '会话结束', 'セッション終了', 'Fim da Sessão', 'Коне Success!ц сессии', 'Fin de session', '세션 종료', 'Sitzungsende', 'Fine della sessione', 'สิ้นสุดเซสชัน', 'Munkamenet vége', 'Sessie einde', 'Sessio finis', 'Sesi Berakhir', 'Oturum Sonu', 'Τέλος περιόδου σύνδεσης', 'جلسه پایان', 'Akhir Sesi', 'సెషన్ ముగింపు', 'அமர்வு முடிவு', 'સત્ર સમાપ્ત', 'Koniec sesji', 'Закінчення сесії', 'ਸੈਸ਼ਨ ਅੰਤ', 'Sfârșitul sesiunii', 'session အဆုံး', 'Ipari Igba', 'Zaman Karshe', NULL),
(654, 'bulk_student_instruction_7', 'Take the Student Type ID from Student Type list', 'স্টুডেন্ট টাইপ তালিকা থেকে স্টুডেন্ট টাইপ আইডি নিন', 'Tome la identificación de tipo de estudiante de la lista de tipo de estudiante', 'خذ معرف نوع الطالب من قائمة نوع الطالب', 'छात्र प्रकार सूची से छात्र प्रकार आईडी लें', 'اسٹوڈنٹ ٹائپ لسٹ سے اسٹوڈنٹ ٹائپ ID لیں۔', '从学生类型列表中获取学生类型ID', '学生タイプリストから学生タイプIDを取得します', 'Pegue o ID do tipo de aluno na lista Tipo de aluno', 'Возьмите идентификатор типа студента из списка типа студента', 'Prenez l\'ID de type d\'étudiant dans la liste Type d\'étudiant', '학생 유형 목록에서 학생 유형 ID를 가져옵니다', 'Übernehmen Sie die Schülertyp-ID aus der Schülertyp-Liste', 'Prendi l\'ID del tipo di studente dall\'elenco Tipo di studente', 'ใช้รหัสประเภทนักศึกษาจากรายการประเภทนักศึกษา', 'Vegye ki a Student Type ID-t a Student Type listából', 'Neem de Student Type ID uit de lijst Student Type', 'Discipulus accipere id Type de Discipulus Type album', 'Ambil ID Jenis Siswa dari daftar Jenis Siswa', 'Öğrenci Türü kimliğini Öğrenci Türü listesinden alın', 'Πάρτε το αναγνωριστικό τύπου φοιτητή από τη λίστα Τύπος σπουδαστών', 'شناسه Student Student را از لیست Student Student بگیرید', 'Ambil ID Jenis Pelajar dari senarai Jenis Pelajar', 'స్టూడెంట్ టైప్ జాబితా నుండి స్టూడెంట్ టైప్ ఐడిని తీసుకోండి', 'மாணவர் வகை பட்டியலிலிருந்து மாணவர் வகை ஐடியை எடுத்துக் கொள்ளுங்கள்', 'વિદ્યાર્થી પ્રકારની સૂચિમાંથી વિદ્યાર્થી પ્રકારનો ID લો', 'Weź identyfikator typu studenta z listy typów studentów', 'Візьміть ідентифікатор типу Student зі списку Student Student', 'ਵਿਦਿਆਰਥੀ ਕਿਸਮ ਦੀ ਸੂਚੀ ਤੋਂ ਵਿਦਿਆਰਥੀ ਕਿਸਮ ਦੀ ID ਲਓ', 'Luați ID-ul Student Type din lista de tip Student', 'ကျောင်းသားအမျိုးအစား list ကနေကျောင်းသားအမျိုးအစား ID ကိုယူပါ', 'Mu Ọmọ-iwe Ọmọ-iwe Ọmọde lati inu akojọ Iru Akeko', 'IDauki ID na Dalibi na fromalibi a cikin nau\'in nau\'in ɗalibi', NULL),
(655, 'school_name', 'School Name', 'স্কুলের নাম', 'Nombre de la escuela', 'اسم المدرسة', 'विद्यालय का नाम', 'اسکول کا نام', '学校名称', '学校名', 'Nome da escola', 'Название школы', 'Nom de l\'école', '학교 이름', 'Schulname', 'Nome della scuola', '', 'Iskola neve', 'Schoolnaam', 'nomen schola', 'Nama sekolah', 'Okul Adı', 'Ονομα σχολείου', 'نام مدرسه', 'Nama sekolah', '', '', 'શાળા નામ', 'Nazwa szkoły', 'Назва школи', 'ਸਕੂਲ ਦਾ ਨਾਮ', 'Numele scolii', '', 'Orukọ Ile-iwe', 'Sunan Makaranta', NULL),
(656, 'brand_name', 'Brand Name', 'ব্র্যান্ড নাম', 'Nombre de la marca', 'اسم العلامة التجارية', 'ब्रांड का नाम', 'برانڈ کا نام', '品牌', 'ブランド名', 'Marca', 'Название бренда', 'Marque', '상표명', 'Markenname', 'Marchio', '', 'Márkanév', 'Merknaam', 'Notam nomen', 'Nama merk', 'Marka adı', 'Μάρκα', 'نام تجاری', 'Jenama', '', '', 'બ્રાન્ડ નામ', 'Nazwa handlowa', 'Бренд', 'ਮਾਰਕਾ', 'Numele mărcii', '', 'Oruko oja', 'Sunan Brand', NULL),
(657, 'brand_title', 'Brand Title', 'ব্র্যান্ড শিরোনাম', 'Título de marca', 'عنوان العلامة التجارية', 'ब्रांड का शीर्षक', 'برانڈ کا عنوان', '品牌名称', 'ブランドタイトル', 'Título da marca', 'Название бренда', 'Titre de la marque', '브랜드 제목', 'Markentitel', 'Titolo del marchio', '', 'Márkanév', 'Merktitel', 'Brand Titulus', 'Judul Merek', 'Marka Başlığı', 'Τίτλος επωνυμίας', 'عنوان برند', 'Tajuk Jenama', '', '', 'બ્રાન્ડ શીર્ષક', 'Tytuł marki', 'Назва марки', 'ਬ੍ਰਾਂਡ ਦਾ ਸਿਰਲੇਖ', 'Titlul mărcii', '', 'Akọle Brand', 'Brand taken', NULL),
(658, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'Logotipo', 'شعار العلامة التجارية', 'ब्रांड लोगो', 'برانڈ لوگو', '品牌标志', 'ブランドロゴ', 'Logotipo da marca', 'Логотип бренда', 'Logo de la marque', '브랜드 로고', 'Markenlogo', 'Logo del marchio', '', 'Márka logó', 'Brand logo', 'notam logo', 'Logo Merek', 'Marka logosu', 'Λογότυπο μάρκας', 'آرم مارک', 'Logo Jenama', '', '', 'બ્રાન્ડ લોગો', 'Logo marki', 'Логотип торгової марки', 'ਬ੍ਰਾਂਡ ਲੋਗੋ', 'Logo-ul mărcii', '', 'Logo Brand', 'Brand Logo', NULL),
(659, 'brand_footer', 'Brand Footer', 'ব্র্যান্ড ফুটার', 'Pie de marca', 'تذييل العلامة التجارية', 'ब्रांड पाद', 'برانڈ فوٹر', '品牌脚注', 'ブランドフッター', 'Rodapé da marca', 'Марка нижнего колонтитула', 'Pied de page de la marque', '브랜드 바닥 글', 'Markenfußzeile', 'Piè di pagina del marchio', '', 'Márka lábléc', 'Merk voettekst', 'Brand Footer', 'Footer Merek', 'Marka Altbilgisi', 'Υποσέλιδο μάρκας', 'پاورقی برند', 'Footer Jenama', '', '', 'બ્રાન્ડ ફૂટર', 'Stopka marki', 'Брендовий колонтитул', 'ਬ੍ਰਾਂਡ ਫੁੱਟਰ', 'Marcă de subsol', '', 'Ẹsẹ ẹlẹsẹ', 'Brand Footer', NULL),
(660, 'employee_name', 'Employee Name', 'কর্মকর্তার নাম', 'Nombre de empleado', 'اسم الموظف', 'कर्मचारी का नाम', 'ملازم کا نام', '员工姓名', '従業員名', 'nome do empregado', 'Имя сотрудника', 'Nom de l\'employé', '직원 이름', 'Mitarbeitername', 'Nome dipendente', '', 'Alkalmazott Neve', 'Naam werknemer', 'Aliquam nomine', 'nama karyawan', 'Çalışan Adı', 'όνομα υπαλλήλου', 'نام کارمند', 'Nama Pekerja', '', '', 'કર્મચારીનું નામ', 'imię i nazwisko pracownika', 'ім\'я працівника', 'ਕਰਮਚਾਰੀ ਦਾ ਨਾਮ', 'numele angajatului', '', 'Orukọ agbanisiṣẹ', 'Sunan Ma\'aikata', NULL),
(661, 'student_name', 'Student Name', 'শিক্ষার্থীর নাম', 'Nombre del estudiante', 'أسم الطالب', 'छात्र का नाम', 'طالب علم کا نام', '学生姓名', '学生の名前', 'Nome do aluno', 'Имя студента', 'Nom d\'étudiant', '학생 이름', 'Name des Studenten', 'Nome dello studente', '', 'Tanuló név', 'Studenten naam', 'nomen discipulus', 'Nama siswa', 'Öğrenci adı', 'Ονομα μαθητή', 'نام دانش آموز', 'Nama pelajar', '', '', 'વિદ્યાર્થીનું નામ', 'Nazwisko studenta', 'Ім\'я студента', 'ਵਿਦਿਆਰਥੀ ਦਾ ਨਾਮ', 'Numele studentului', '', 'Orukọ ọmọ ile-iwe', 'Dalibin Dalibi', NULL),
(662, 'teacher_name', 'Teacher Name', 'শিক্ষকের নাম', 'Nombre del maestro', 'اسم المعلم', 'अध्यापक का नाम', 'استاد کا نام', '老师的名字', '先生の名前', 'Nome do professor', 'Имя учителя', 'Nom de l\'enseignant', '선생님 성함', 'Name des Lehrers', 'Nome dell\'insegnante', '', 'Tanár neve', 'Naam leraar', 'nomen magister', 'Nama guru', 'Öğretmen adı', 'Όνομα δασκάλου', 'نام معلم', 'Nama Guru', '', '', 'શિક્ષકનું નામ', 'Imię nauczyciela', 'Ім\'я вчителя', 'ਅਧਿਆਪਕ ਦਾ ਨਾਮ', 'Numele profesorului', '', 'Orukọ Olukọ', 'Sunan Malami', NULL),
(663, 'module_name', 'Module Name', 'মডিউল নাম', 'Nombre del módulo', 'اسم وحدة', 'मोड्यूल का नाम', 'ماڈیول کا نام', '模块名称', 'モジュール名', 'nome do módulo', 'Имя модуля', 'Nom du module', '모듈 이름', 'Modulname', 'Nome del modulo', '', 'Modul neve', 'module naam', 'OMNIBUS nomine', 'Nama Modul', 'Modül Adı', 'Όνομα ενότητας', 'نام ماژول', 'Nama Modul', '', '', 'મોડ્યુલ નામ', 'Nazwa modułu', 'Назва модуля', 'ਮੋਡੀuleਲ ਨਾਮ', 'Numele modulului', '', 'Orukọ Module', 'Sunan Module', NULL),
(664, 'function_name', 'Function Name', 'ফাংশন নাম', 'Nombre de la función', 'اسم وظيفة', 'कार्य का नाम', 'فنکشن کا نام', '功能名称', '関数名', 'Nome da Função', 'Имя функции', 'Nom de la fonction', '기능 이름', 'Funktionsname', 'Nome della funzione', '', 'Funkció neve', 'Functienaam', 'nomen function', 'Nama Fungsi', 'Fonksiyon adı', 'Όνομα συνάρτησης', 'نام عملکرد', 'Nama Fungsi', '', '', 'કાર્ય નામ', 'Nazwa funkcji', 'Назва функції', 'ਫੰਕਸ਼ਨ ਦਾ ਨਾਮ', 'Numele funcției', '', 'Orukọ Iṣẹ', 'Sunan Aiki', NULL),
(665, 'route_name', 'Route Name', 'রুটের নাম', 'Nombre de ruta', 'اسم المسار', 'मार्ग का नाम', 'راستے کا نام', '路线名称', 'ルート名', 'Nome da Rota', 'Название маршрута', 'Nom de l\'itinéraire', '노선 이름', 'Routenname', 'Nome percorso', '', 'Útvonal neve', 'Route naam', 'nomen iter itineris', 'Nama Rute', 'Güzergah Adı', 'Όνομα διαδρομής', 'نام مسیر', 'Nama Laluan', '', '', 'માર્ગનું નામ', 'Nazwa trasy', 'Назва маршруту', 'ਮਾਰਗ ਦਾ ਨਾਮ', 'Numele traseului', '', 'Orukọ ọna', 'Sunan Hanyar', NULL),
(666, 'user_type', 'User Type', 'ব্যবহারকারীর ধরন', 'Tipo de usuario', 'نوع المستخدم', 'उपयोगकर्ता का प्रकार', 'صارف کی قسم', '用户类型', 'ユーザータイプ', 'Tipo de usuário', 'Тип пользователя', 'Type d\'utilisateur', '사용자 유형', 'Benutzertyp', 'Tipologia di utente', '', 'Felhasználó típusa', 'Gebruikerstype', 'User Type', 'Tipe Pengguna', 'Kullanıcı tipi', 'Τύπος χρήστη', 'نوع کاربر', 'Jenis pengguna', '', '', 'વપરાશકર્તા પ્રકાર', 'Rodzaj użytkownika', 'Тип користувача', 'ਉਪਭੋਗਤਾ ਕਿਸਮ', 'Tip de utilizator', '', 'Olumulo Iru', 'Nau\'in mai amfani', NULL),
(667, 'meet_user_type', 'Meet User Type', 'সাক্ষাৎ ব্যবহারকারীর ধরন', 'Conoce el tipo de usuario', 'تلبية نوع المستخدم', 'मिलो उपयोगकर्ता प्रकार', 'صارف کی قسم سے ملو', '符合用户类型', 'ユーザータイプに会う', 'Conheça o tipo de usuário', 'Тип пользователя', 'Rencontrez le type d\'utilisateur', '사용자 유형 충족', 'Treffen Sie den Benutzertyp', 'Incontra il tipo di utente', '', 'Ismerje meg a felhasználói típust', 'Maak kennis met gebruikerstype', 'User occursum Type', 'Temui Jenis Pengguna', 'Kullanıcı Türüyle Tanışın', 'Γνωρίστε τον τύπο χρήστη', 'با نوع کاربری ملاقات کنید', 'Temui Jenis Pengguna', '', '', 'વપરાશકર્તા પ્રકાર મળો', 'Poznaj typ użytkownika', 'Знайдіть тип користувача', 'ਉਪਭੋਗਤਾ ਕਿਸਮ ਨੂੰ ਮਿਲੋ', 'Întâlniți tipul de utilizator', '', 'Pade Iru Olumulo', 'Sadu da nau\'in mai amfani', NULL),
(668, 'user_credential', 'User Credential', 'ব্যবহারকারীর  ক্রীডেন্শাল', 'Credencial de usuario', 'بيانات اعتماد المستخدم', 'उपयोगकर्ता क्रेडेंशियल', 'صارف کی سند', '用户凭证', 'ユーザー資格情報', 'Credencial do usuário', 'Учетные данные пользователя', 'Informations d\'identification de l\'utilisateur', '사용자 자격 증명', 'Benutzeranmeldeinformationen', 'Credenziali dell\'utente', '', 'Felhasználói hitelesítő adatok', 'Gebruikersgegevens', 'User Credential', 'Kredensial Pengguna', 'Kullanıcı Kimlik Bilgileri', 'Διαπιστευτήρια χρήστη', 'اعتبار کاربر', 'Kelayakan Pengguna', '', '', 'વપરાશકર્તા ઓળખપત્ર', 'Poświadczenie użytkownika', 'Повноваження користувача', 'ਉਪਭੋਗਤਾ ਪ੍ਰਮਾਣ ਪੱਤਰ', 'Credențial utilizator', '', 'Ẹri Olumulo', 'Takaddun Mai Amfani', NULL),
(669, 'class_teacher', 'Class Teacher', 'শ্রেণী শিক্ষক', 'Profesor de clase', 'معلم الصف', 'कक्षा अध्यापक', 'کلاس ٹیچر', '班主任', 'クラスの先生', 'Professor da classe', 'Учитель класса', 'Professeur de classe', '수업 교사', 'Klassenlehrer', 'Insegnante', '', 'Osztályfőnök', 'Klassen leraar', 'classis Teacher', 'Guru kelas', 'Sınıf öğretmeni', 'Δάσκαλος τάξης', 'معلم کلاس', 'Guru kelas', '', '', 'વર્ગ શિક્ષક', 'Wychowawca klasy', 'Викладач класу', 'ਕਲਾਸ ਅਧਿਆਪਕ', 'Profesor', '', 'Olukọ kilasi', 'Malami na aji', NULL),
(670, 'class_routine', 'Class Routine', 'ক্লাস রুটিন', 'Rutina de clase', 'روتين الفصل', 'क्लास रूटीन', 'کلاس روٹین', '课堂常规', 'クラスルーチン', 'Rotina de Classe', 'Класс рутин', 'Routine de classe', '클래스 루틴', 'Klassenroutine', 'Routine di classe', '', 'Osztályrutin', 'Klassenroutine', 'classis DEFUNCTORIUS', 'Kelas Rutin', 'Sınıf Rutini', 'Ρουτίνα τάξης', 'کلاس معمول', 'Rutin Kelas', '', '', 'વર્ગ નિયમિત', 'Rutyna klasowa', 'Клас звичайний', 'ਕਲਾਸ ਰੁਟੀਨ', 'Rutina clasei', '', 'Ilana Kilasi', 'Tsarin hanya', NULL),
(671, 'previous_school', 'Previous School', 'পূর্ববর্তী স্কুল', 'Antes de la escuela', 'المدرسة السابقة', 'पिछला स्कूल', 'پچھلا اسکول', '以前的学校', '前の学校', 'Escola anterior', 'Предыдущая школа', 'L\'école dernière', '이전 학교', 'Vorherige Schule', 'Scuola precedente', '', 'Előző iskola', 'Vorige school', 'prior School', 'Sekolah sebelumnya', 'Önceki okul', 'Προηγούμενο σχολείο', 'مدرسه قبلی', 'Sekolah Terdahulu', '', '', 'ગત શાળા', 'Poprzednia szkoła', 'Попередня школа', 'ਪਿਛਲਾ ਸਕੂਲ', 'Scoala anterioara', '', 'Ile-iwe iṣaaju', 'Makaranta ta gabata', NULL),
(672, 'previous_class', 'Previous Class', 'পূর্ববর্তী ক্লাস', 'Clase anterior', 'الفصل السابق', 'पिछली कक्षा', 'پچھلی کلاس', '上一课', '前のクラス', 'Classe Anterior', 'Предыдущий класс', 'Classe précédente', '이전 수업', 'Vorherige Klasse', 'Classe precedente', '', 'Előző osztály', 'Vorige les', 'Previous Class', 'Kelas Sebelumnya', 'Önceki Sınıf', 'Προηγούμενη τάξη', 'کلاس قبلی', 'Kelas Sebelumnya', '', '', 'પાછલો વર્ગ', 'Poprzednia klasa', 'Попередній клас', 'ਪਿਛਲੀ ਕਲਾਸ', 'Clasa anterioară', '', 'Kilasi iṣaaju', 'Class Na Baya', NULL),
(673, 'class_option', 'Class Option', 'ক্লাস অপশন', 'Opción de clase', 'خيار الفصل', 'क्लास का विकल्प', 'کلاس آپشن', '类选项', 'クラスオプション', 'Opção de classe', 'Вариант класса', 'Option de classe', '수업 옵션', 'Klassenoption', 'Opzione di classe', '', 'Osztály opció', 'Klasse optie', 'Bene genus', 'Opsi Kelas', 'Sınıf Seçeneği', 'Επιλογή κατηγορίας', 'گزینه کلاس', 'Pilihan Kelas', '', '', 'વર્ગ વિકલ્પ', 'Opcja klasy', 'Варіант класу', 'ਕਲਾਸ ਵਿਕਲਪ', 'Opțiune de clasă', '', 'Aṣayan kilasi', 'Zaɓin Class', NULL),
(674, 'frontend_setting', 'Frontend Setting', 'সম্মুখভাগ  সেটিংস', 'Configuración frontend', 'إعداد الواجهة الأمامية', 'सीमा निर्धारण', 'فرنٹ اینڈ سیٹنگ', '前端设定', 'フロントエンド設定', 'Configuração de front-end', 'Настройка внешнего интерфейса', 'Paramètre frontal', '프론트 엔드 설정', 'Frontend-Einstellung', 'Impostazione frontend', '', 'Előlap beállítása', 'Frontend-instelling', 'Profecti Frontend', 'Pengaturan Frontend', 'Ön Uç Ayarı', 'Ρύθμιση frontend', 'تنظیم جلد', 'Penetapan Depan', '', '', 'અગ્ર સેટિંગ', 'Ustawienie interfejsu użytkownika', 'Налаштування Frontend', 'ਫਰੰਟੈਂਡ ਸੈਟਿੰਗ', 'Setare frontend', '', 'Eto Eto iwaju', 'Saitin gaba', NULL),
(675, 'frontend_page', 'Frontend Page', 'সম্মুখভাগ পৃষ্ঠা', 'Página Frontend', 'الصفحة الأمامية', 'फ्रंटेंड पेज', 'فرنٹ اینڈ پیج', '前端页面', 'フロントエンドページ', 'Página Frontend', 'Страница интерфейса', 'Page frontend', '프론트 엔드 페이지', 'Frontend-Seite', 'Pagina frontend', '', 'Frontend oldal', 'Frontend-pagina', 'Page Frontend', 'Halaman Frontend', 'Ön Uç Sayfası', 'Αρχική σελίδα', 'صفحه جلوی', 'Halaman Depan', '', '', 'અગ્ર પૃષ્ઠ', 'Frontend Page', 'Frontend Page', 'ਫਰੰਟੈਂਡ ਪੇਜ', 'Frontend Page', '', 'Oju-iwe Frontend', 'Shafin Farko', NULL),
(676, 'academic_group', 'Academic Group', 'একাডেমিক গ্রুপ', 'Grupo académico', 'المجموعة الأكاديمية', 'शैक्षणिक समूह', 'اکیڈمک گروپ', '学术团体', '学術グループ', 'Grupo Acadêmico', 'Академическая группа', 'Groupe académique', '아카데믹 그룹', 'Akademische Gruppe', 'Gruppo Accademico', '', 'Akadémiai csoport', 'Academische groep', 'Group academic', 'Kelompok Akademik', 'Akademik Grup', 'Ακαδημαϊκή ομάδα', 'گروه دانشگاهی', 'Kumpulan Akademik', '', '', 'શૈક્ષણિક જૂથ', 'Grupa akademicka', 'Академічна група', 'ਅਕਾਦਮਿਕ ਸਮੂਹ', 'Grupul academic', '', 'Group Ẹkọ', 'Kungiyar Ilimi', NULL),
(677, 'vehicle_number', 'Vehicle Number', 'যানবাহন নম্বর', 'Número de vehículo', 'عدد المركبات', 'वाहन संख्या', 'گاڑی کا نمبر', '车号', '車両番号', 'Número do veículo', 'Номер автомобиля', 'Numéro de véhicule', '차량 번호', 'Fahrzeugnummer', 'Numero del veicolo', '', 'Jármű száma', 'Voertuignummer', 'vehiculum Number', 'Nomor kendaraan', 'Araç numarası', 'Αριθμός οχήματος', 'شماره وسیله نقلیه', 'Nombor Kenderaan', '', '', 'વાહન નંબર', 'Numer pojazdu', 'Номер транспортного засобу', 'ਵਾਹਨ ਨੰਬਰ', 'Numărul vehiculului', '', 'Nọmba ọkọ', 'Lambar Mota', NULL),
(678, 'select_bus_stop', 'Select Bus Stop', 'বাস স্টপ নির্বাচন করুন', 'Seleccionar parada de autobús', 'حدد موقف الحافلات', 'बस स्टॉप का चयन करें', 'بس اسٹاپ کو منتخب کریں', '选择巴士站', 'バス停を選択', 'Selecionar ponto de ônibus', 'Выберите автобусную остановку', 'Sélectionnez l\'arrêt de bus', '버스 정류장 선택', 'Wählen Sie Bushaltestelle', 'Seleziona la fermata dell\'autobus', '', 'Válassza a Bus Stop lehetőséget', 'Selecteer Bushalte', 'Select Bus Stop', 'Pilih Halte Bus', 'Otobüs Durağı Seçin', 'Επιλέξτε Στάση λεωφορείου', 'ایستگاه اتوبوس را انتخاب کنید', 'Pilih Perhentian Bas', '', '', 'બસ સ્ટોપ પસંદ કરો', 'Wybierz Przystanek autobusowy', 'Виберіть Автобусна зупинка', 'ਬੱਸ ਸਟਾਪ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Oprirea autobuzului', '', 'Yan Duro Duro', 'Zaɓi Tsaya', NULL),
(679, 'add_to_transport', 'Add to Transport', 'পরিবহণ যোগ করুন', 'Agregar al transporte', 'أضف إلى النقل', 'परिवहन में जोड़ें', 'ٹرانسپورٹ میں شامل کریں', '添加到运输', 'トランスポートに追加', 'Adicionar ao transporte', 'Добавить в транспорт', 'Ajouter au transport', '운송에 추가', 'Zum Transport hinzufügen', 'Aggiungi al trasporto', '', 'Adja hozzá a szállításhoz', 'Toevoegen aan transport', 'Addere quod haec transportatio', 'Tambahkan ke Transport', 'Taşınmaya Ekle', 'Προσθήκη στη μεταφορά', 'اضافه کردن به حمل و نقل', 'Tambah ke Pengangkutan', '', '', 'પરિવહન ઉમેરો', 'Dodaj do transportu', 'Додати до транспорту', 'ਆਵਾਜਾਈ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la Transport', '', 'Fi si Gbe', 'Toara zuwa Sufuri', NULL),
(680, 'login_to_school', 'Login to School', 'স্কুলে লগইন করুন', 'Entrar a la escuela', 'تسجيل الدخول إلى المدرسة', 'स्कूल में लॉगिन करें', 'اسکول میں لاگ ان کریں', '登录学校', '学校にログイン', 'Entrar na escola', 'Вход в школу', 'Connectez-vous à l\'école', '학교에 로그인', 'Logge dich in die Schule ein', 'Accedi a scuola', '', 'Bejelentkezés az iskolába', 'Log in op school', 'Login to School', 'Login ke Sekolah', 'Okula Giriş', 'Είσοδος στο σχολείο', 'ورود به مدرسه', 'Masuk ke Sekolah', '', '', 'શાળા પ્રવેશ કરો', 'Zaloguj się do szkoły', 'Вхід до школи', 'ਸਕੂਲ ਵਿਚ ਲੌਗਇਨ ਕਰੋ', 'Autentificare la școală', '', 'Buwolu wọle si Ile-iwe', 'Shiga Makaranta', NULL),
(681, 'visit_school', 'Visit School', 'স্কুল ঘুরে দেখুন', 'Visita escuela', 'قم بزيارة المدرسة', 'स्कूल जाएँ', 'اسکول دیکھیں', '参观学校', '学校に行く', 'Visitar a escola', 'Посещение школы', 'Visiter l\'école', '학교 방문', 'Besuchen Sie die Schule', 'Visita la scuola', '', 'Látogasson el az iskolába', 'Bezoek School', 'visit School', 'Kunjungi Sekolah', 'Okulu ziyaret et', 'Επισκεφτείτε το σχολείο', 'بازدید از مدرسه', 'Lawati Sekolah', '', '', 'શાળા ની મુલાકાત લો', 'Odwiedź szkołę', 'Відвідайте школу', 'ਸਕੂਲ ਜਾਓ', 'Vizitați școala', '', 'Ṣabẹwo si Ile-iwe', 'Ziyarci Makaranta', NULL),
(682, 'notice_detail', 'Notice Detail', 'বিস্তারিত বিজ্ঞপ্তি', 'Detalle de aviso', 'إشعار التفاصيل', 'सूचना विस्तार से', 'نوٹس تفصیل', '通知详情', 'お知らせ詳細', 'Detalhe do aviso', 'Обратите внимание на детали', 'Détail de l\'avis', '공지 사항', 'Hinweis Detail', 'Dettaglio avviso', '', 'Közlemény részlete', 'Let op Detail', 'notitia Detail', 'Detail Pemberitahuan', 'İlan Detayı', 'Λεπτομέρεια ειδοποίησης', 'جزئیات', 'Perincian Notis', '', '', 'સૂચના વિગતવાર', 'Szczegóły powiadomienia', 'Повідомте деталі', 'ਨੋਟਿਸ ਵੇਰਵਾ', 'Detaliu de notificare', '', 'Akiyesi Apejuwe', 'Bayani Dalla-dalla', NULL),
(683, 'news_detail', 'News Detail', 'বিস্তারিত সংবাদ', 'Detalle de noticias', 'تفاصيل الأخبار', 'समाचार विस्तार से', 'خبر کی تفصیل', '新闻详细', 'ニュース詳細', 'Detalhe da notícia', 'Новости подробно', 'Détail des nouvelles', '뉴스 상세', 'News Detail', 'Dettaglio notizie', '', 'Hírek részletei', 'Nieuws Detail', 'News Detail', 'Detail Berita', 'Haber Detayı', 'Λεπτομέρεια ειδήσεων', 'جزئیات اخبار', 'Perincian Berita', '', '', 'સમાચાર વિગતવાર', 'Szczegóły wiadomości', 'Деталі новин', 'ਖ਼ਬਰਾਂ ਦਾ ਵੇਰਵਾ', 'Detalii știri', '', 'Apejuwe Awọn iroyin', 'Cikakkun Labaran', NULL),
(684, 'apply_now', 'Apply Now', 'এখন আবেদন করুন', 'Aplica ya', 'قدم الآن', 'अभी आवेदन करें', 'اب لگائیں', '现在申请', '今すぐ申し込む', 'Aplique agora', 'Применить сейчас', 'Appliquer maintenant', '지금 신청하십시오', 'Jetzt bewerben', 'Applica ora', '', 'Jelentkezz most', 'Nu toepassen', 'Applicare autem', 'Ajukan Sekarang', 'Şimdi Uygula', 'Κάνε αίτηση τώρα', 'اکنون درخواست کنید', 'Mohon sekarang', '', '', 'હવે અરજી કરો', 'Aplikuj teraz', 'Подати зараз', 'ਹੁਣ ਲਾਗੂ ਕਰੋ', 'Aplica acum', '', 'Waye Bayi', 'Aiwatar Yanzu', NULL),
(685, 'latest_news', 'Latest News', 'সর্বশেষ সংবাদ', 'Últimas noticias', 'أحدث الأخبار', 'ताज़ा खबर', 'تازہ ترین خبریں', '最新消息', '最新ニュース', 'Últimas notícias', 'Последние новости', 'Dernières nouvelles', '최근 소식', 'Neuesten Nachrichten', 'Ultime notizie', '', 'Legfrissebb hírek', 'Laatste nieuws', 'Latest News', 'Berita Terbaru', 'Son Haberler', 'Τελευταία νέα', 'آخرین خبرها', 'Berita terkini', '', '', 'તાજા સમાચાર', 'Najnowsze wiadomości', 'Останні новини', 'ਤਾਜ਼ਾ ਖ਼ਬਰਾਂ', 'Cele mai recente știri', '', 'Awọn irohin tuntun', 'Sabbin Labarai', NULL),
(686, 'latest_notice', 'Latest Notice', 'সর্বশেষ বিজ্ঞপ্তি', 'Último aviso', 'أحدث إشعار', 'नवीनतम सूचना', 'تازہ ترین نوٹس', '最新通知', '最新のお知らせ', 'Último aviso', 'Последнее уведомление', 'Dernier avis', '최신 공지', 'Letzte Mitteilung', 'Ultimo avviso', '', 'Legfrissebb közlemény', 'Laatste kennisgeving', 'tardus Notitia', 'Pemberitahuan Terbaru', 'Son Bildirim', 'Τελευταία ειδοποίηση', 'آخرین اعلامیه', 'Notis Terkini', '', '', 'નવીનતમ સૂચના', 'Najnowsze zawiadomienie', 'Останнє повідомлення', 'ਤਾਜ਼ਾ ਨੋਟਿਸ', 'Ultima notificare', '', 'Akiyesi Tuntun', 'Sanarwa ta Buga', NULL),
(687, 'latest_holiday', 'Latest Holiday', 'সর্বশেষ ছুটি', 'Últimas vacaciones', 'آخر عطلة', 'नवीनतम अवकाश', 'تازہ ترین چھٹی', '最新假期', '最新の休日', 'Últimas Férias', 'Последний праздник', 'Dernières vacances', '최신 휴일', 'Letzter Urlaub', 'Ultima vacanza', '', 'Utolsó ünnep', 'Laatste vakantie', 'latest nulla', 'Libur Terbaru', 'Son Tatil', 'Τελευταίες διακοπές', 'آخرین تعطیلات', 'Percutian Terkini', '', '', 'નવીનતમ રજા', 'Najnowsze wakacje', 'Останнє свято', 'ਤਾਜ਼ਾ ਛੁੱਟੀਆਂ', 'Ultima vacanță', '', 'Isinmi tuntun', 'Bikin Holiday', NULL),
(688, 'holiday_detail', 'Holiday Detail', 'ছুটির বিস্তারিত', 'Detalle de vacaciones', 'تفاصيل العطلة', 'छुट्टी का विवरण', 'چھٹیوں کا تفصیل', '假期详情', '休日の詳細', 'Detalhe do feriado', 'Деталь праздника', 'Détail vacances', '휴일 세부 사항', 'Feiertagsdetail', 'Dettaglio vacanza', '', 'Nyaralás részletei', 'Vakantie Detail', 'feriatum Detail', 'Detail Liburan', 'Tatil Detayı', 'Λεπτομέρεια διακοπών', 'جزئیات تعطیلات', 'Perincian Percutian', '', '', 'રજા વિગતો', 'Szczegóły wakacji', 'Свято докладно', 'ਛੁੱਟੀਆਂ ਦਾ ਵੇਰਵਾ', 'Detaliu de sărbători', '', 'Apejuwe Isinmi', 'Bayanin Hutu', NULL),
(689, 'latest_event', 'Latest Event', 'সর্বশেষ ইভেন্ট', 'Último Evento', 'الحدث الأخير', 'नवीनतम कार्यक्रम', 'تازہ ترین واقعہ', '最新事件', '最新のイベント', 'Último Evento', 'Последнее событие', 'dernier événement', '최근 사건', 'Letztes Ereignis', 'l\'ultimo evento', '', 'Legutóbbi Esemény', 'laatste evenement', 'tardus Vicis', 'Acara Terkini', 'En Son etkinlik', 'τελευταίο γεγονός', 'آخرین رخداد', 'acara terbaru', '', '', 'નવીનતમ ઇવેન્ટ', 'ostatnie wydarzenie', 'Остання подія', 'ਤਾਜ਼ਾ ਘਟਨਾ', 'Ultimul eveniment', '', 'Iṣẹlẹ Tuntun', 'Sabbin Balaguro', NULL),
(690, 'event_detail', 'Event Detail', 'ইভেন্ট বিস্তারিত', 'Detalle del evento', 'تفاصيل الحدث', 'घटना का विवरण', 'واقعہ کی تفصیل', '活动详情', 'イベント詳細', 'Detalhe do Evento', 'Деталь события', 'Détail de l\'événement', '이벤트 상세', 'Ereignisdetail', 'Dettaglio dell\'evento', '', 'Esemény részletei', 'Evenementdetail', 'res Detail', 'Detail Acara', 'Etkinlik Ayrıntısı', 'Λεπτομέρεια εκδήλωσης', 'جزئیات رویداد', 'Perincian Acara', '', '', 'પ્રસંગની વિગત', 'Szczegóły wydarzenia', 'Деталі події', 'ਘਟਨਾ ਦਾ ਵੇਰਵਾ', 'Detaliu eveniment', '', 'Apejuwe iṣẹlẹ', 'Cikakken bayanin abin da ya faru', NULL),
(691, 'contact_mail_from', 'Contact Mail From', 'কন্টাক্ট মেইল থেকে', 'Correo de contacto de', 'اتصل بريد من', 'मेल से संपर्क करें', 'سے میل سے رابطہ کریں', '联系邮件来自', 'からのメール', 'E-mail de contato de', 'Контактная почта от', 'Courriel de contact', '연락처', 'Kontakt Mail von', 'Contatta Mail From', '', 'Vegye fel a kapcsolatot a levelekkel', 'Contact Mail van', 'Mail ex contactu', 'Hubungi Email Dari', 'İletişim Postası Gönderen', 'Επικοινωνία αλληλογραφίας από', 'تماس با ایمیل از', 'Hubungi Mel Dari', '', '', 'દ્વારા મેઇલનો સંપર્ક કરો', 'Skontaktuj się z Mail From', 'Контактна пошта від', 'ਤੋਂ ਮੇਲ ਸੰਪਰਕ ਕਰੋ', 'Contact Mail from', '', 'Kan si Meji Lati', 'Adireshin Adireshi Daga', NULL),
(692, 'guardian_name', 'Guardian Name', 'অভিভাবকের নাম', 'Nombre del tutor', 'اسم الوصي', 'अभिभावक का नाम', 'گارڈین کا نام', '监护人姓名', '保護者の名前', 'Nome do guardião', 'Имя опекуна', 'Nom du gardien', '보호자 이름', 'Name des Wächters', 'Nome della guardia', '', 'Gárda neve', 'Naam voogd', 'custos nomine', 'Nama penjaga', 'Muhafız adı', 'Όνομα κηδεμόνα', 'نام نگهبان', 'Nama Penjaga', '', '', 'વાલીનું નામ', 'Nazwisko strażnika', 'Ім\'я опікуна', 'ਸਰਪ੍ਰਸਤ ਦਾ ਨਾਮ', 'Numele tutorelui', '', 'Orukọ Olutọju', 'Sunan Mai Kula', NULL),
(693, 'guardian_phone', 'Guardian Phone', 'অভিভাবকের ফোন', 'Guardian Phone', 'هاتف الوصي', 'अभिभावक फोन', 'گارڈین فون', '监护人电话', '保護者の電話', 'Telefone do Guardião', 'Guardian Phone', 'Téléphone gardien', '가디언 전화', 'Guardian Telefon', 'Guardian Phone', '', 'Guardian telefon', 'Guardian-telefoon', 'custos Phone', 'Telepon Pelindung', 'Koruyucu Telefon', 'Τηλέφωνο φύλακα', 'تلفن نگهبان', 'Telefon Penjaga', '', '', 'વાલી ફોન', 'Telefon opiekuńczy', 'Телефон опікуна', 'ਸਰਪ੍ਰਸਤ ਫੋਨ', 'Telefon tutore', '', 'Foonu Olutọju', 'Waya', NULL),
(694, 'about_school', 'About School', 'স্কুল সম্পর্কে', 'Acerca de la escuela', 'حول المدرسة', 'विद्यालय के बारे में', 'اسکول کے بارے میں', '关于学校', '学校について', 'Sobre escola', 'Про школу', 'À propos de l\'école', '학교 소개', 'Über die Schule', 'Sulla scuola', '', 'Iskoláról', 'Over school', 'De School', 'Tentang sekolah', 'Okul hakkında', 'Σχετικά με το σχολείο', 'درباره مدرسه', 'Mengenai Sekolah', '', '', 'શાળા વિશે', 'O szkole', 'Про школу', 'ਸਕੂਲ ਬਾਰੇ', 'Despre școală', '', 'Nipa Ile-iwe', 'Game da Makaranta', NULL),
(695, 'expire_month', 'Expire Month', 'মেয়াদ শেষ মাস', 'Vence el mes', 'شهر انتهاء الصلاحية', 'माह समाप्त हो रहा है', 'ماہ ختم ہوجائیں', '到期月份', '有効期限', 'Mês de validade', 'Истекает месяц', 'Expirer le mois', '월 만료', 'Monat ablaufen', 'Scade il mese', '', 'Lejár hónap', 'Verloopt maand', 'mense exspirare', 'Bulan Kedaluwarsa', 'Sona Erme Ayı', 'Λήξη μήνα', 'ماه Expire', 'Tamat Bulan', '', '', 'મહિનો સમાપ્ત થાય છે', 'Wygasać miesiąc', 'Закінчується місяць', 'ਮਹੀਨਾ ਖਤਮ', 'Expira luna', '', 'Pari oṣu', 'Ireare Watan', NULL),
(696, 'expire_year', 'Expire Year', 'মেয়াদ শেষ বছর', 'Vence el año', 'سنة انتهاء الصلاحية', 'अवसान वर्ष', 'میعاد ختم ہونے والا سال', '到期年份', '有効期限', 'Expiração do ano', 'Истекает год', 'Expirer l\'année', '만료 연도', 'Ablaufjahr', 'Scade l\'anno', '', 'Lejárat éve', 'Vervalt jaar', 'Anno exspirare', 'Tahun Kedaluwarsa', 'Sona Erme Yılı', 'Λήξη έτους', 'سال اعدام', 'Tamat Tahun', '', '', 'વર્ષ સમાપ્ત થાય છે', 'Wygaśnij rok', 'Закінчується рік', 'ਸਾਲ ਖਤਮ', 'Expira anul', '', 'Odun ipari', 'Shekara ta kare', NULL),
(697, 'pay_now', 'Pay Now', 'এখন পরিশোধ করুন', 'Pagar ahora', 'ادفع الآن', 'अब भुगतान करें', 'اب ادا', '现在付款', '今払う', 'Pague agora', 'Заплатить сейчас', 'Payez maintenant', '지금 지불하세요', 'Zahlen Sie jetzt', 'Paga ora', '', 'Fizess most', 'Nu betalen', 'Nunc ergo redde', 'Bayar sekarang', 'Şimdi öde', 'Πλήρωσε τώρα', 'الان پرداخت کن', 'Bayar sekarang', '', '', 'હવે પૈસા આપો', 'Zapłać teraz', 'Платити зараз', 'ਹੁਣੇ ਭੁਗਤਾਨ ਕਰੋ', 'Plătește acum', '', 'Sanwo Bayi', 'Biyan Yanzu', NULL),
(698, 'paid_date', 'Paid Date', 'প্রদত্ত তারিখ', 'Fecha de pago', 'تاريخ المدفوعة', 'भुगतान तिथि', 'ادا کی گئی تاریخ', '支付日期', '支払日', 'Data de pagamento', 'Оплаченная дата', 'La date de paiement', '유료 날짜', 'Bezahltes Datum', 'Data di pagamento', '', 'Fizetett dátum', 'Betaalde datum', 'solvit Date', 'Tanggal Dibayar', 'Ödenen tarih', 'Ημερομηνία πληρωμής', 'تاریخ پرداخت', 'Tarikh Dibayar', '', '', 'ચૂકવેલ તારીખ', 'Data zapłaty', 'Дата сплати', 'ਭੁਗਤਾਨ ਤਾਰੀਖ', 'Data plății', '', 'Ọjọ ti San', 'Ranar biya', NULL),
(699, 'student_copy', 'Student Copy', 'শিক্ষার্থী অনুলিপি', 'Copia del estudiante', 'نسخة الطالب', 'छात्र कॉपी', 'طالب علم کی کاپی', '学生副本', '学生用コピー', 'Cópia do aluno', 'Студенческая копия', 'Copie de l\'élève', '학생 사본', 'Studentenkopie', 'Copia dello studente', '', 'Student Copy', 'Student Copy', 'Exemplar discipulus', 'Copy Pelajar', 'Öğrenci Kopyası', 'Αντίγραφο μαθητή', 'کپی دانشجویی', 'Salinan Pelajar', '', '', 'વિદ્યાર્થીની નકલ', 'Kopia studencka', 'Студентська копія', 'ਵਿਦਿਆਰਥੀ ਕਾੱਪੀ', 'Copie student', '', 'Ẹda Ọmọ ile-iwe', 'Kwafin Dalibi', NULL),
(700, 'fee_amount', 'Fee Amount', 'ফি পরিমাণ', 'Importe de la cuota', 'مبلغ الرسوم', 'शुल्क राशि', 'فیس کی رقم', '收费多少', '手数料の金額', 'Valor da taxa', 'Величина платежа', 'Montant des frais', '요금', 'Gebührenbetrag', 'Importo tassa', '', 'Díj összegét', 'Vergoedingsbedrag', 'Aliquam feodo', 'Jumlah biaya', 'Ücret miktarı', 'Προμήθεια', 'مبلغ', 'Jumlah Yuran', '', '', 'ફી રકમ', 'Kwota opłaty', 'Сума плати', 'ਫੀਸ ਦੀ ਰਕਮ', 'Suma comisionului', '', 'Iye owo', 'Adadin kuɗi', NULL),
(701, 'create_bulk_invoice', 'Create Bulk Invoice', 'বাল্ক চালান তৈরি করুন', 'Crear factura masiva', 'إنشاء فاتورة مجمعة', 'थोक चालान बनाएँ', 'بلک انوائس بنائیں', '创建批量发票', '一括請求書を作成', 'Criar fatura em massa', 'Создать массовый счет', 'Créer une facture groupée', '대량 송장 생성', 'Massenrechnung erstellen', 'Crea fattura collettiva', '', 'Hozzon létre tömeges számlát', 'Maak een bulkfactuur', 'Create mole cautionem', 'Buat Faktur Massal', 'Toplu Fatura Oluştur', 'Δημιουργία μαζικού τιμολογίου', 'ایجاد فاکتور فله', 'Buat Invois Pukal', '', '', 'બલ્ક ઇન્વ Invઇસ બનાવો', 'Utwórz fakturę zbiorczą', 'Створіть масовий рахунок-фактура', 'ਬਲਕ ਇਨਵੌਇਸ ਬਣਾਓ', 'Creați factură în vrac', '', 'Ṣẹda Invoice Bulk', 'Voirƙiri Rasis Invoice', NULL),
(702, 'create_invoice', 'Create Invoice', 'চালান তৈরি করুন', 'Crear factura', 'إنشاء فاتورة', 'इनवॉयस बनाएँ', 'انوائس بنائیں', '创建发票', '請求書を作成', 'Criar recibo', 'Создать счет', 'Créer une facture', '송장 생성', 'Rechnung erstellen', 'Crea fattura', '', 'Számla létrehozása', 'Factuur maken', 'cautionem crea', 'Buat Faktur', 'Fatura oluşturmak', 'Δημιουργία τιμολογίου', 'ایجاد فاکتور', 'Buat Invois', '', '', 'ભરતિયું બનાવો', 'Wystaw fakturę', 'Створіть рахунок-фактуру', 'ਚਲਾਨ ਬਣਾਓ', 'Creați factură', '', 'Ṣẹda Invoice', 'Inirƙiri Invoice', NULL),
(703, 'general_fee', 'General Fee', 'জেনারেল ফি', 'Tarifa general', 'الرسوم العامة', 'सामान्य शुल्क', 'جنرل فیس', '一般费用', '一般料金', 'Taxa Geral', 'Общая плата', 'Frais généraux', '일반 수수료', 'Allgemeine Gebühr', 'Commissione generale', '', 'Általános díj', 'Algemene vergoeding', 'General pretium', 'Biaya Umum', 'Genel Ücret', 'Γενική χρέωση', 'هزینه عمومی', 'Bayaran Am', '', '', 'જનરલ ફી', 'Opłata ogólna', 'Загальна плата', 'ਆਮ ਫੀਸ', 'Comision general', '', 'Gbogbogbo fee', 'Janar Fee', NULL),
(704, 'due_fee_student', 'Due Fee Student', 'বকেয়া ফি স্টুডেন্ট', 'Cuota debida estudiante', 'طالب الرسوم المستحقة', 'देय छात्र', 'واجب الادا طالب علم', '应付学生费', '学費留学生', 'Estudante devido', 'Студент', 'Étudiant exigible', '학비', 'Fällige Gebühr Student', 'Studente dovuto', '', 'Esedékes díj hallgató', 'Due Fee Student', 'Discipulus debita pretium', 'Pelajar Karena Biaya', 'Ödenmesi Gereken Ücretli Öğrenci', 'Φοιτητής οφειλόμενης προμήθειας', 'حق عضویت دانشجویی', 'Pelajar Yuran Hutang', '', '', 'ફી ફી વિદ્યાર્થી', 'Opłata studencka', 'Сплата студента', 'ਫੀਸ ਵਿਦਿਆਰਥੀ', 'Taxă cuvenită student', '', 'Omo ile iwe isanwo to san', 'Sakamakon Karatun dalibi', NULL),
(705, 'Student Promotion', 'Student Promotion', 'ছাত্র পদোন্নতি', 'Promoción estudiantil', 'ترقية الطالب', '', 'طلبا کی تشہیر', '学生升学', '学生プロモーション', 'Promoção de Estudantes', 'Студенческое продвижение', 'Promotion étudiante', '학생 프로모션', 'Studentenförderung', 'Promozione studentesca', '', 'Diákösztönzés', 'Promotie voor studenten', 'Promotio discipulus', 'Promosi Mahasiswa', 'Öğrenci Tanıtımı', 'Προώθηση φοιτητών', 'ارتقاء دانشجویی', 'Promosi Pelajar', '', '', 'વિદ્યાર્થી બotionતી', 'Promocja studencka', 'Промоція студентів', 'ਵਿਦਿਆਰਥੀ ਤਰੱਕੀ', 'Promovarea studenților', '', 'Igbega omo ile-iwe', 'Karatun Dalibi', NULL),
(706, 'upload_date', 'Upload Date', 'আপলোড তারিখ', 'Fecha de carga', 'تاريخ الرفع', 'अपलोड की तारीख', 'اپ لوڈ کرنے کی تاریخ', '上传日期', 'アップロード日', 'Data de upload', 'Дата загрузки', 'Date de dépôt', '업로드 날짜', 'Datum des Hochladens', 'Data di caricamento', '', 'Feltöltés dátuma', 'Upload datum', 'Index Date', 'Tanggal Pengunggahan', 'Yükleme tarihi', 'Ημερομηνία ανεβάσματος', 'تاریخ بارگذاری', 'Tarikh muat-naik', '', '', 'તારીખ અપલોડ કરો', 'Data przesłania', 'Дата завантаження', 'ਅਪਲੋਡ ਮਿਤੀ', 'Data de incarcare', '', 'Fa Ọjọ', 'Kwanan Wata', NULL),
(707, 'school_statistics', 'School Statistics', 'স্কুল পরিসংখ্যান', 'Estadísticas escolares', 'إحصائيات المدرسة', 'स्कूल सांख्यिकी', 'اسکول کے اعدادوشمار', '学校统计', '学校統計', 'Estatísticas da Escola', 'Школьная Статистика', 'Statistiques scolaires', '학교 통계', 'Schulstatistik', 'Statistiche scolastiche', '', 'Iskolai statisztikák', 'Schoolstatistieken', 'School Statistics', 'Statistik Sekolah', 'Okul İstatistikleri', 'Στατιστικές σχολείου', 'آمار مدرسه', 'Statistik Sekolah', '', '', 'શાળા આંકડા', 'Statystyka szkolna', 'Статистика шкіл', 'ਸਕੂਲ ਦੇ ਅੰਕੜੇ', 'Statistici școlare', '', 'Awọn eeka ile-iwe', 'Isticsididdigar Makaranta', NULL),
(708, 'student_statistics', 'Student Statistics', 'ছাত্র পরিসংখ্যান', 'Estadísticas de estudiantes', 'إحصائيات الطلاب', 'छात्र सांख्यिकी', 'طلباء کے اعدادوشمار', '学生统计', '学生統計', 'Estatísticas dos Alunos', 'Студенческая статистика', 'Statistiques des étudiants', '학생 통계', 'Studentenstatistik', 'Statistica degli studenti', '', 'Hallgatói statisztikák', 'Studentenstatistieken', 'Statistics discipulus', 'Statistik Siswa', 'Öğrenci İstatistikleri', 'Στατιστικές μαθητών', 'آمار دانشجویان', 'Statistik Pelajar', '', '', 'વિદ્યાર્થી આંકડા', 'Statystyka studentów', 'Статистика студентів', 'ਵਿਦਿਆਰਥੀ ਅੰਕੜੇ', 'Statisticile studenților', '', 'Statistiki Ọmọ ile-iwe', 'Isticsididdigar Studentalibai', NULL),
(709, 'mother_information', 'Mother Information', 'মায়ের তথ্য', 'Información de la madre', 'معلومات الأم', 'माँ की जानकारी', 'ماں کی معلومات', '母亲信息', '母親の情報', 'Informações da Mãe', 'Информация Матери', 'Informations sur la mère', '어머니 정보', 'Mutterinformation', 'Informazioni sulla madre', '', 'Anya információ', 'Moeder informatie', 'Mater Information', 'Informasi Ibu', 'Ana Bilgi', 'Πληροφορίες για τη μητέρα', 'اطلاعات مادر', 'Maklumat Ibu', '', '', 'માતાની માહિતી', 'Informacje o matce', 'Інформація про матір', 'ਮਾਂ ਦੀ ਜਾਣਕਾਰੀ', 'Mama Informații', '', 'Alaye ti Iya', 'Bayanin Iya', NULL),
(710, 'father_information', 'Father Information', 'বাবার তথ্য', 'Información del padre', 'معلومات الأب', 'पिता की जानकारी', 'والد کی معلومات', '父亲信息', '父の情報', 'Informações do Pai', 'Информация об отце', 'Informations sur le père', '아버지 정보', 'Informationen zum Vater', 'Informazioni sul padre', '', 'Apák Információ', 'Vader informatie', 'Pater Information', 'Informasi Ayah', 'Baba Bilgileri', 'Πληροφορίες πατέρα', 'اطلاعات پدر', 'Maklumat Bapa', '', '', 'પિતાની માહિતી', 'Informacje o ojcu', 'Інформація про батька', 'ਪਿਤਾ ਦੀ ਜਾਣਕਾਰੀ', 'Informații despre părinte', '', 'Alaye Baba', 'Bayanin Uba', NULL),
(711, 'other_information', 'Other Information', 'অন্যান্য তথ্য', 'Otra información', 'معلومات أخرى', 'अन्य सूचना', 'دوسری معلومات', '其他资讯', 'その他の情報', 'Outra informação', 'Другая информация', 'les autres informations', '기타 정보', 'Andere Informationen', 'Altre informazioni', '', 'Egyéb információk', 'Andere informatie', 'Alia', 'Informasi lainnya', 'Diğer bilgiler', 'Αλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat lain', '', '', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', '', 'Alaye miiran', 'Sauran Bayani', NULL),
(712, 'invoice_number', 'Invoice Number', 'চালান নম্বর', 'Numero de factura', 'رقم الفاتورة', 'बीजक संख्या', 'انوائس تعداد', '发票编号', '請求書番号', 'Número da fatura', 'Номер счета', 'Numéro de facture', '송장 번호', 'Rechnungsnummer', 'Numero di fattura', '', 'Számlaszám', 'Factuurnummer', 'cautionem Number', 'Nomor faktur', 'Fatura numarası', 'Αριθμός τιμολογίου', 'شماره فاکتور', 'Nombor invois', '', '', 'બીલ નંબર', 'Numer faktury', 'Номер накладної', 'ਚਲਾਨ ਨੰਬਰ', 'Număr de factură', '', 'Nọmba Invoice', 'Lambar Invoice', NULL),
(713, 'letter_grade', 'Letter Grade', 'লেটার গ্রেড', 'Grado de la letra', 'الرسالة الصف', 'पत्र ग्रेड', 'لیٹر گریڈ', '字母等级', 'レターグレード', 'Letter Grade', 'Оценка буквы', 'Classement par lettre', '문자 등급', 'Briefnote', 'Grado lettera', '', 'Levél fokozat', 'Letter Grade', 'Romani epistulam', 'Nilai Surat', 'Mektup Notu', 'Βαθμός επιστολών', 'نامه نامه', 'Gred Huruf', '', '', 'લેટર ગ્રેડ', 'Klasa literowa', 'Лист сорту', 'ਪੱਤਰ ਗ੍ਰੇਡ', 'Scrisoarea de grad', '', 'Lẹta Iwe', 'Harafin Harafi', NULL),
(714, 'relation_with_guardian', 'Relation With Guardian', 'অভিভাবকের সাথে সম্পর্ক', 'Relación con el tutor', 'العلاقة مع الوصي', 'अभिभावक के साथ संबंध', 'سرپرست کے ساتھ تعلق', '与监护人的关系', '保護者との関係', 'Relação com o Guardião', 'Отношение со Стражем', 'Relation avec Guardian', '보호자와의 관계', 'Beziehung zum Wächter', 'Relazione con il guardiano', '', 'Kapcsolat a gyámmal', 'Relatie met Guardian', 'In relatione Custodes', 'Hubungan Dengan Wali', 'Vasi ile İlişki', 'Σχέση με τον κηδεμόνα', 'رابطه با نگهبان', 'Perhubungan Dengan Penjaga', '', '', 'વાલી સાથે સંબંધ', 'Relacja z opiekunem', 'Зв\'язок із опікуном', 'ਸਰਪ੍ਰਸਤ ਨਾਲ ਸੰਬੰਧ', 'Relația cu gardianul', '', 'Ifiweranṣẹ Pẹlu Olutọju', 'Siyayya Tare da Guardian', NULL),
(715, 'second_language', 'Second Language', 'দ্বিতীয় ভাষা', 'Segundo lenguaje', 'اللغة الثانية', 'दूसरी भाषा', 'دوسری زبان', '第二语言', '第二言語', 'Segunda língua', 'Второй язык', 'Deuxième langue', '제 2 언어', 'Zweite Sprache', 'Seconda lingua', '', 'Második nyelv', 'Tweede taal', 'Lingua secundi', 'Bahasa kedua', 'İkinci dil', 'Δεύτερη γλώσσα', 'زبان دوم', 'Bahasa kedua', '', '', 'બીજી ભાષા', 'Drugi język', 'Друга мова', 'ਦੂਜੀ ਭਾਸ਼ਾ', 'A doua limba', '', 'Ede Keji', 'Harshe Na biyu', NULL),
(716, 'admission_date', 'Admission Date', 'ভর্তির তারিখ', 'Fecha de admisión', 'تاريخ القبول', 'प्रवेश तिथि', 'داخلہ کی تاریخ', '入学日期', '入学日', 'Data de admissão', 'Дата поступления', 'Date d\'admission', '입학 일', 'Aufnahmedatum', 'Data di ammissione', '', 'Felvételi időpont', 'Toelatingsdatum', 'Praesent Date', 'Tanggal Penerimaan', 'Kabul Tarihi', 'Ημερομηνία εισαγωγής', 'تاریخ پذیرش', 'Tarikh Kemasukan', '', '', 'પ્રવેશ તારીખ', 'Data przyjęcia', 'Дата прийому', 'ਦਾਖਲਾ ਮਿਤੀ', 'Data admiterii', '', 'Ọjọ Gbigba', 'Ranar shigowa', NULL),
(717, 'admin_panel', 'Admin Panel', 'অ্যাডমিন প্যানেল', 'Panel de administrador', 'لوحة الادارة', 'प्रशासनिक समिति', 'ایڈمن پینل', '管理面板', '管理パネル', 'Painel de administração', 'Панель администратора', 'panneau d\'administration', '관리자 패널', 'Administrationsmenü', 'Pannello di Amministrazione', '', 'Adminisztrációs Panel', 'Administratie Paneel', 'Admin Panel', 'panel admin', 'Admin Paneli', 'Πίνακας Διαχειριστή', 'پنل مدیریت', 'Panel Pentadbir', '', '', 'એડમિન પેનલ', 'Panel administratora', 'Панель адміністратора', 'ਐਡਮਿਨ ਪੈਨਲ', 'Panoul Administratorului', '', 'Igbimọ Abojuto', 'Admin Panel', NULL),
(718, 'guardian_exist', 'Guardian Exist', 'বিদ্যমান অভিভাবক', 'Guardian Exist', 'الجارديان موجود', 'संरक्षक अस्तित्व', 'سرپرست موجود ہے', '守护者存在', 'ガーディアンの存在', 'O guardião existe', 'Guardian Exist', 'Guardian Exist', '보호자 존재', 'Wächter existiert', 'Esistente guardiano', '', 'Guardian létezik', 'Guardian Exist', 'custos est', 'Eksistensi Penjaga', 'Koruyucu Var', 'Υπάρχει φύλακας', 'نگهبان وجود دارد', 'Penjaga Ada', '', '', 'વાલી અસ્તિત્વમાં છે', 'Guardian Exist', 'Охоронець існує', 'ਸਰਪ੍ਰਸਤ ਮੌਜੂਦ ਹੈ', 'Gardianul există', '', 'Oludari Olutọju', 'Mai kula da kasancewar', NULL),
(719, 'is_guardian', 'Is Guardian?', 'অভিভাবক?', 'Es guardián?', 'هل الوصي؟', 'गार्जियन है?', 'گارڈین ہے؟', '是监护人吗？', '保護者ですか？', 'Guardião é?', 'Страж?', 'Est Guardian?', '보호자는?', 'Ist Guardian?', 'Guardian è?', '', 'Guardian?', 'Is Guardian?', 'Custos est?', 'Apakah Wali?', 'Guardian mı?', 'Είναι ο Guardian;', 'نگهبان است؟', 'Adakah Penjaga?', '', '', 'વાલી છે?', 'Czy Guardian?', 'Опікун?', 'ਕੀ ਸਰਪ੍ਰਸਤ ਹੈ?', 'Guardian este?', '', 'Ṣe Olutọju?', 'Shin Mai Tsaro?', NULL),
(720, 'receipt', 'Receipt', 'রসিদ', 'Recibo', 'إيصال', 'रसीद', 'رسید', '收据', '領収書', 'Recibo', 'Чек', 'Le reçu', '영수증', 'Kassenbon', 'Ricevuta', '', 'Nyugta', 'Bon', 'Acceptum', 'Resi', 'Fiş', 'Παραλαβή', 'اعلام وصول', 'Resit', '', '', 'રસીદ', 'Paragon', 'Квитанція', 'ਰਸੀਦ', 'primire', '', 'Gbigba', 'Mai karɓa', NULL),
(721, 'print_multi_invoice', 'Print Multi Invoice', 'একাধিক চালান মুদ্রণ করুন', 'Imprimir factura múltiple', 'طباعة فاتورة متعددة', 'मल्टी चालान प्रिंट करें', 'ملٹی انوائس پرنٹ کریں', '打印多张发票', 'マルチ請求書を印刷', 'Imprimir fatura múltipla', 'Печать нескольких счетов', 'Imprimer plusieurs factures', '다중 송장 인쇄', 'Multi-Rechnung drucken', 'Stampa fattura multipla', '', 'Több számla nyomtatása', 'Meerdere facturen afdrukken', 'Multi cautionem Print', 'Cetak Multi Faktur', 'Çoklu Fatura Yazdır', 'Εκτύπωση πολλαπλών τιμολογίων', 'چند فاکتور چاپ کنید', 'Cetak Pelbagai Invois', '', '', 'મલ્ટિ ઇન્વોઇસ છાપો', 'Wydrukuj Multi Fakturę', 'Роздрукувати багато рахунків-фактур', 'ਮਲਟੀ ਇਨਵੌਇਸ ਪ੍ਰਿੰਟ ਕਰੋ', 'Tipărire factură multiplu', '', 'Tẹjade Invoice pupọ', 'Buga Inviice mai yawa', NULL),
(722, 'school_setting', 'School Setting', 'স্কুল সেটিং', 'Entorno escolar', 'إعداد المدرسة', 'स्कूल की स्थापना', 'اسکول کی ترتیب', '学校环境', '学校の設定', 'Ambiente escolar', 'Настройка школы', 'Cadre scolaire', '학교 설정', 'Schulumgebung', 'Impostazione della scuola', '', 'Iskolai környezet', 'Schoolomgeving', 'Profecti School', 'Pengaturan sekolah', 'Okul ortamı', 'Σχολείο', 'تنظیم مدرسه', 'Persekolahan Sekolah', '', '', 'શાળા સેટિંગ', 'Ustawienie szkolne', 'Налаштування школи', 'ਸਕੂਲ ਸੈਟਿੰਗ', 'Amenajarea școlii', '', 'Eto ile-iwe', 'Tsarin Makaranta', NULL),
(723, 'payment_setting', 'Payment Setting', 'পেমেন্ট সেটিং', 'Configuración de pago', 'إعداد الدفع', 'भुगतान सेटिंग', 'ادائیگی کی ترتیب', '付款设定', 'お支払い設定', 'Configuração de pagamento', 'Настройка оплаты', 'Paramètre de paiement', '결제 설정', 'Zahlungseinstellung', 'Impostazioni di pagamento', '', 'Fizetés beállítása', 'Betalingsinstelling', 'Profecti Payment', 'Pengaturan Pembayaran', 'Ödeme Ayarı', 'Ρύθμιση πληρωμής', 'تنظیم پرداخت', 'Tetapan Pembayaran', '', '', 'ચુકવણી સેટિંગ', 'Ustawienie płatności', 'Налаштування оплати', 'ਭੁਗਤਾਨ ਸੈਟਿੰਗ', 'Setare de plată', '', 'Eto Isanwo', 'Saitin Biyan Kuɗi', NULL),
(724, 'sms_setting', 'SMS Setting', 'এসএমএস সেটিং', 'Configuración de SMS', 'إعداد SMS', 'एसएमएस सेटिंग', 'ایس ایم ایس کی ترتیب', '短信设置', 'SMS設定', 'Configuração de SMS', 'Настройка SMS', 'Paramètre SMS', 'SMS 설정', 'SMS-Einstellung', 'Impostazioni SMS', '', 'SMS beállítása', 'SMS-instelling', 'Profecti SMS', 'Pengaturan SMS', 'SMS Ayarı', 'Ρύθμιση SMS', 'تنظیم پیامک', 'Tetapan SMS', '', '', 'એસએમએસ સેટિંગ', 'Ustawienia SMS', 'Налаштування SMS', 'ਐਸਐਮਐਸ ਸੈਟਿੰਗ', 'Setare SMS', '', 'Eto Ṣiṣeto SMS', 'Saitin SMS', NULL),
(725, 'email_setting', 'Email Setting', 'ইমেল সেটিং', 'Configuración de correo electrónico', 'إعداد البريد الإلكتروني', 'ईमेल सेटिंग', 'ای میل کی ترتیب', '电邮设定', 'メール設定', 'Configuração de e-mail', 'Настройка электронной почты', 'Paramètres de messagerie', '이메일 설정', 'E-Mail-Einstellung', 'Impostazioni e-mail', '', 'E-mail beállítás', 'E-mailinstellingen', 'Profecti inscriptio', 'Pengaturan Email', 'E-posta Ayarı', 'Ρύθμιση email', 'تنظیم ایمیل', 'Tetapan E-mel', '', '', 'ઇમેઇલ સેટિંગ', 'Ustawienia e-mail', 'Налаштування електронної пошти', 'ਈਮੇਲ ਸੈਟਿੰਗ', 'Setare prin e-mail', '', 'Eto imeeli', 'Saitin Imel', NULL),
(726, 'email_protocol', 'Email Protocol', 'ইমেল প্রোটোকল', 'Protocolo de correo electrónico', 'بروتوكول البريد الإلكتروني', 'ईमेल प्रोटोकॉल', 'ای میل پروٹوکول', '电子邮件协议', 'メールプロトコル', 'Protocolo de email', 'Протокол электронной почты', 'Protocole de messagerie', '이메일 프로토콜', 'E-Mail-Protokoll', 'Protocollo e-mail', '', 'E-mail protokoll', 'E-mailprotocol', 'Email COMMENTARIUM', 'Protokol Email', 'E-posta Protokolü', 'Πρωτόκολλο email', 'پروتکل ایمیل', 'Protokol E-mel', '', '', 'ઇમેઇલ પ્રોટોકોલ', 'Protokół e-mail', 'Протокол електронної пошти', 'ਈਮੇਲ ਪ੍ਰੋਟੋਕੋਲ', 'Protocol de e-mail', '', 'Ilana Imeeli', 'Protocol Imel', NULL),
(727, 'smtp_host', 'SMTP Host', 'এসএমটিপি হোস্ট', 'Host SMTP', 'مضيف SMTP', 'SMTP होस्ट', 'ایس ایم ٹی پی میزبان', 'SMTP主机', 'SMTPホスト', 'Host SMTP', 'SMTP Host', 'Hôte SMTP', 'SMTP 호스트', 'SMTP-Host', 'Host SMTP', '', 'SMTP Host', 'SMTP-host', 'Populus ESMTP', 'Host SMTP', 'SMTP Ana Bilgisayarı', 'Κεντρικός υπολογιστής SMTP', 'میزبان SMTP', 'Host SMTP', '', '', 'એસએમટીપી હોસ્ટ', 'Host SMTP', 'SMTP хост', 'SMTP ਹੋਸਟ', 'Gazdă SMTP', '', 'Onilejo SMTP', 'SMTP Mai watsa shiri', NULL),
(728, 'smtp_port', 'SMTP Port', 'এসএমটিপি পোর্ট', 'Puerto SMTP', 'منفذ SMTP', 'SMTP पोर्ट', 'ایس ایم ٹی پی پورٹ', 'SMTP端口', 'SMTPポート', 'Porta SMTP', 'Порт SMTP', 'Port SMTP', 'SMTP 포트', 'SMTP-Port', 'Porta SMTP', '', 'SMTP-port', 'SMTP-poort', 'Portus ESMTP', 'Port SMTP', 'SMTP Bağlantı Noktası', 'Θύρα SMTP', 'درگاه SMTP', 'Pelabuhan SMTP', '', '', 'એસએમટીપી બંદર', 'Port SMTP', 'Порт SMTP', 'ਐਸਐਮਟੀਪੀ ਪੋਰਟ', 'Port SMTP', '', 'Ibudo SMTP', 'Tashar jiragen ruwa ta SMTP', NULL),
(729, 'smtp_username', 'SMTP Username', 'এসএমটিপি ইউজার নেম', 'Nombre de usuario SMTP', 'اسم مستخدم SMTP', 'SMTP उपयोगकर्ता नाम', 'SMTP صارف نام', 'SMTP用户名', 'SMTPユーザー名', 'Nome de usuário SMTP', 'Имя пользователя SMTP', 'Nom d\'utilisateur SMTP', 'SMTP 사용자 이름', 'SMTP-Benutzername', 'Nome utente SMTP', '', 'SMTP felhasználónév', 'SMTP-gebruikersnaam', 'Username ESMTP', 'Nama Pengguna SMTP', 'SMTP Kullanıcı Adı', 'Όνομα χρήστη SMTP', 'نام کاربری SMTP', 'Nama Pengguna SMTP', '', '', 'SMTP વપરાશકર્તા નામ', 'Nazwa użytkownika SMTP', 'Ім\'я користувача SMTP', 'SMTP ਉਪਭੋਗਤਾ ਨਾਮ', 'Nume utilizator SMTP', '', 'Orukọ olumulo SMTP', 'Sunan Masu amfani da SMTP', NULL),
(730, 'smtp_password', 'SMTP Password', 'এসএমটিপি পাসওয়ার্ড', 'Contraseña SMTP', 'كلمة مرور SMTP', 'SMTP पासवर्ड', 'ایس ایم ٹی پی پاس ورڈ', 'SMTP密码', 'SMTPパスワード', 'Senha SMTP', 'Пароль SMTP', 'Mot de passe SMTP', 'SMTP 비밀번호', 'SMTP-Passwort', 'Password SMTP', '', 'SMTP jelszó', 'SMTP-wachtwoord', 'ESMTP Password', 'Kata Sandi SMTP', 'SMTP Parolası', 'Κωδικός πρόσβασης SMTP', 'رمز عبور SMTP', 'Kata Laluan SMTP', '', '', 'SMTP પાસવર્ડ', 'Hasło SMTP', 'Пароль SMTP', 'SMTP ਪਾਸਵਰਡ', 'Parola SMTP', '', 'Ọrọ igbaniwọle SMTP', 'Kalmar sirri ta SMTP', NULL),
(731, 'smtp_security', 'SMTP Security', 'এসএমটিপি সুরক্ষা', 'Seguridad SMTP', 'أمان SMTP', 'SMTP सुरक्षा', 'ایس ایم ٹی پی سیکیورٹی', 'SMTP安全', 'SMTPセキュリティ', 'Segurança SMTP', 'Безопасность SMTP', 'Sécurité SMTP', 'SMTP 보안', 'SMTP-Sicherheit', 'Sicurezza SMTP', '', 'SMTP biztonság', 'SMTP-beveiliging', 'ESMTP Security', 'Keamanan SMTP', 'SMTP Güvenliği', 'Ασφάλεια SMTP', 'امنیت SMTP', 'Keselamatan SMTP', '', '', 'એસએમટીપી સુરક્ષા', 'Bezpieczeństwo SMTP', 'Безпека SMTP', 'SMTP ਸੁਰੱਖਿਆ', 'Securitate SMTP', '', 'Aabo SMTP', 'SMTP Tsaro', NULL),
(732, 'smtp_timeout', 'SMTP Timeout', 'এসএমটিপি টাইমআউট', 'Tiempo de espera de SMTP', 'مهلة SMTP', 'SMTP टाइमआउट', 'SMTP ٹائم آؤٹ', 'SMTP超时', 'SMTPタイムアウト', 'Tempo limite do SMTP', 'Тайм-аут SMTP', 'Délai d\'expiration SMTP', 'SMTP 시간 초과', 'SMTP-Zeitüberschreitung', 'Timeout SMTP', '', 'SMTP időtúllépés', 'SMTP-time-out', 'ESMTP Vicis', 'Batas Waktu SMTP', 'SMTP Zaman Aşımı', 'Χρονικό όριο SMTP', 'پایان زمان SMTP', 'Tamat Waktu SMTP', '', '', 'SMTP સમયસમાપ્તિ', 'Limit czasu SMTP', 'Час очікування SMTP', 'ਐਸਐਮਟੀਪੀ ਟਾਈਮਆ .ਟ', 'Timp de expirare SMTP', '', 'Akoko-iṣe SMTP', 'SMTP Fitar lokaci', NULL),
(733, 'email_type', 'Email Type', 'ইমেল টাইপ', 'Tipo de correo electrónico', 'نوع البريد الإلكتروني', 'ईमेल प्रकार', 'ای میل کی قسم', '电邮类型', 'メールの種類', 'Tipo de Email', 'Тип электронной почты', 'Type d\'e-mail', '이메일 유형', 'E-Mail-Typ', 'Tipo di email', '', 'E-mail típus', 'E-mailtype', 'Email Type', 'Jenis Email', 'E-posta Türü', 'Τύπος email', 'نوع ایمیل', 'Jenis E-mel', '', '', 'ઇમેઇલ પ્રકાર', 'Rodzaj e-maila', 'Тип електронної пошти', 'ਈਮੇਲ ਕਿਸਮ', 'Tip de e-mail', '', 'Iru Imeeli', 'Nau\'in Imel', NULL),
(734, 'from_name', 'From Name', 'ফ্রম নাম', 'Del nombre', 'من الاسم', 'नाम से', 'نام سے', '来自名字', '名前から', 'De nome', 'От имени', 'De nom', '이름에서', 'Von Namen', 'Dal nome', '', 'Névből', 'Van naam', 'De nomine', 'Dari nama', 'İsimden', 'Από όνομα', 'از نام', 'Dari Nama', '', '', 'નામ થી', 'Z nazwy', 'Від Імені', 'ਨਾਮ ਤੋਂ', 'Din Nume', '', 'Lati Orukọ', 'Daga Suna', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(735, 'from_email', 'From Email', 'ফ্রম ইমেইল', 'Desde el e-mail', 'من البريد الإلكترونى', 'ई - मेल से', 'ای میل سے', '从电子邮件', 'メールから', 'Do email', 'Из электронной почты', '', '이메일에서', 'Aus der Email', 'Dall\'email', '', 'Emailből', 'Van email', 'Email a', 'Dari email', 'E-postadan', 'Από email', 'از ایمیل', 'Dari E-mel', '', '', 'ઇમેઇલ દ્વારા', 'Z emaila', 'З електронної пошти', 'ਈਮੇਲ ਤੋਂ', 'De la email', '', 'Lati Imeeli', 'Daga Imel', NULL),
(736, 'general_setting', 'General Setting', 'সাধারণ সেটিংস', 'Ajustes generales', 'الإعداد العام', 'सामान्य सेटिंग', 'جنرل سیٹنگ', '通用设置', '一般的な設定', 'Configuração geral', 'Общие настройки', 'Réglage général', '일반 설정', 'Allgemeine Einstellung', 'Impostazioni generali', '', 'Általános beállítás', 'Algemene instelling', 'Profecti Generalis', 'Pengaturan umum', 'Genel ayarlar', 'Γενική ρύθμιση', 'تنظیمات عمومی', 'Tetapan Umum', '', '', 'જનરલ સેટિંગ', 'Ogólne ustawienia', 'Загальна установка', 'ਜਨਰਲ ਸੈਟਿੰਗ', 'Setări generale', '', 'Gbogbogbo Eto', 'Janar Saiti', NULL),
(737, 'unpublish_now', 'Unpublish Now', 'এখন অপ্রকাশিত করুন', 'Anular publicación ahora', 'غير منشور الآن', 'अब अप्रकाशित करें', 'ابھی شائع نہیں کریں', '立即取消发布', '今すぐ非公開にする', 'Cancelar publicação agora', 'Отменить публикацию сейчас', 'Annuler la publication maintenant', '지금 게시 취소', 'Jetzt nicht mehr veröffentlichen', 'Non pubblicare ora', '', 'Közzététel most', 'Maak de publicatie nu ongedaan', 'Nunc Unpublishway', 'Batalkan publikasi Sekarang', 'Şimdi Yayından Kaldır', 'Κατάργηση δημοσίευσης τώρα', 'اکنون منتشر کنید', 'Nyahterbitkan Sekarang', '', '', 'અપ્રકાશિત કરો', 'Cofnij publikację teraz', 'Скасувати публікацію зараз', 'ਹੁਣ ਪ੍ਰਕਾਸ਼ਤ ਨਾ ਕਰੋ', 'Anulează-te acum', '', 'Kọjade Bayi', 'Bugawa Yanzu', NULL),
(738, 'publish_now', 'Publish Now', 'এখন প্রকাশ করুন', 'Publica ahora', 'نشر الآن', 'अब प्रकाशित करें', 'ابھی شائع کریں', '立即发布', '今すぐ公開', 'Publicar agora', 'Опубликовать сейчас', 'Publier maintenant', '지금 게시', 'Jetzt veröffentlichen', 'Pubblica ora', '', 'Közzététel most', 'Publiceer nu', 'Nunc publish', 'Publikasikan Sekarang', 'Şimdi Yayınla', 'Δημοσίευση τώρα', 'اکنون انتشار دهید', 'Terbitkan Sekarang', '', '', 'હમણાં પ્રકાશિત કરો', 'Opublikuj teraz', 'Опублікувати зараз', 'ਹੁਣ ਪਬਲਿਸ਼', 'Publicați acum', '', 'Ṣe atẹjade Bayi', 'Buga Yanzu', NULL),
(739, 'visitor_purpose', 'Visitor Purpose', 'দর্শনার্থীর উদ্দেশ্য', 'Propósito del visitante', 'غرض الزائر', 'आगंतुक उद्देश्य', 'زائرین کا مقصد', '访客目的', '訪問者の目的', 'Objetivo do visitante', 'Цель посетителя', 'But du visiteur', '방문객 목적', 'Besucherzweck', 'Scopo del visitatore', '', 'Látogató célja', 'Doel van de bezoeker', 'propositum visitor', 'Tujuan Pengunjung', 'Ziyaretçi Amacı', 'Σκοπός επισκέπτη', 'هدف بازدید کننده', 'Tujuan Pelawat', '', '', 'મુલાકાતી હેતુ', 'Cel gościa', 'Мета відвідувача', 'ਵਿਜ਼ਟਰ ਦਾ ਉਦੇਸ਼', 'Scopul vizitatorului', '', 'Purte Alejo', 'Dalilin Baƙi', NULL),
(740, 'postal_dispatch', 'Postal Dispatch', 'ডাক প্রেরণ', 'Despacho postal', 'الإرسال البريدي', 'डाक डिस्पैच', 'پوسٹل ڈسپیچ', '邮政派遣', '郵便発送', 'Envio postal', 'Почтовая рассылка', 'Envoi postal', '우편 발송', 'Postversand', 'Spedizione postale', '', 'Postai feladás', 'Postverzending', 'Expedite Zip', 'Pengiriman Pos', 'Posta Gönderimi', 'Ταχυδρομική αποστολή', 'اعزام پستی', 'Penghantaran Pos', '', '', 'ટપાલ રવાનગી', 'Wysyłka pocztowa', 'Поштова відправка', 'ਡਾਕ ਭੇਜਣ', 'Expediere poștală', '', 'Dispatch ifiweranse', 'Sassan Haraji', NULL),
(741, 'postal_receive', 'Postal Receive', 'ডাক প্রাপ্তি', 'Recibir por correo', 'الاستلام البريدي', 'डाक प्राप्त', 'ڈاک وصول', '邮政收据', '郵便受取', 'Recebimento postal', 'Почтовый Получатель', 'Réception postale', '우편 수신', 'Postempfang', 'Ricezione postale', '', 'Postai fogadás', 'Post ontvangen', 'accipite Zip', 'Menerima Pos', 'Posta Alma', 'Ταχυδρομική λήψη', 'دریافت پستی', 'Pos Terima', '', '', 'ટપાલ પ્રાપ્ત', 'Pocztowe Odbieranie', 'Поштова розписка', 'ਡਾਕ ਪ੍ਰਾਪਤ', 'Primire poștală', '', 'Gbigba ifiweranṣẹ', 'Karɓa Adireshin', NULL),
(742, 'receive_date', 'Receive Date', 'গ্রহণের তারিখ', 'Fecha de recepción', 'تاريخ الإستلام', 'मिली तिथि', 'تاریخ وصول کریں', '收到日期', '受け取り日', 'Data de Recebimento', 'Дата получения', 'date de réception', '수신 일', 'Datum des Empfangens', 'Data di Ricezione', '', 'Fogadás dátuma', 'Ontvangstdatum', 'accipite Date', 'Terima Tanggal', 'Alış Tarihi', 'Λήψη ημερομηνίας', 'تاریخ دریافت', 'Terima Tarikh', '', '', 'તારીખ પ્રાપ્ત કરો', 'Data otrzymania', 'Дата отримання', 'ਮਿਤੀ ਪ੍ਰਾਪਤ ਕਰੋ', 'Data de primire', '', 'Gba Ọjọ', 'Karɓi Kwanan wata', NULL),
(743, 'leave_type', 'Leave Type', 'ছুটির ধরণ', 'Dejar tipo', 'نوع الإجازة', 'टाइप छोड़ दें', 'رخصتی کی قسم', '休假类型', 'タイプを残す', 'Tipo de licença', 'Тип отпуска', 'Type de congé', '휴가 유형', 'Typ verlassen', 'Lascia il tipo', '', 'Hagyja típusát', 'Type verlaten', 'Type discede', 'Jenis Cuti', 'İzin Türü', 'Αποχώρηση τύπου', 'Leave Type', 'Jenis Cuti', '', '', 'રજા પ્રકાર', 'Zostaw typ', 'Тип відпустки', 'ਛੱਡਣ ਦੀ ਕਿਸਮ', 'Tip de concediu', '', 'Fi Iru silẹ', 'Barin Nau\'in', NULL),
(744, 'leave_application', 'Leave Application', 'ছুটির আবেদন', 'Deje la aplicación', 'اترك التطبيق', 'छुट्टी की अर्जी', 'چھٹی کی درخواست', '离开应用程序', 'アプリケーションを残す', 'Sair da aplicação', 'Оставить заявку', 'Quitter la demande', '신청서를 남겨주세요', 'Verlassen Anwendung', 'Lascia l\'applicazione', '', 'Alkalmazás elhagyása', 'Applicatie verlaten', 'discede Application', 'Tinggalkan Aplikasi', 'Uygulamayı terket', 'Αφήστε την αίτηση', 'برنامه را ترک کنید', 'Permohonan cuti', '', '', 'એપ્લિકેશન છોડો', 'Opuść aplikację', 'Залишити заявку', 'ਐਪਲੀਕੇਸ਼ਨ ਛੱਡੋ', 'Aplicația de concediu', '', 'Fi ohun elo silẹ', 'Bar Aikace-aikacen', NULL),
(745, 'waiting_application', 'Waiting Application', 'অপেক্ষার আবেদন', 'Solicitud de espera', 'انتظار التطبيق', 'प्रतीक्षारत आवेदन', 'انتظار کی درخواست', '等待申请', '待機中のアプリケーション', 'Aguardando inscrição', 'Ожидание Заявки', 'Application en attente', '대기 신청', 'Warten auf Bewerbung', 'Applicazione in attesa', '', 'Várakozó alkalmazás', 'Wachtende applicatie', 'Application Notes', 'Aplikasi Menunggu', 'Bekleyen Başvuru', 'Αίτηση αναμονής', 'در انتظار برنامه', 'Permohonan Menunggu', '', '', 'પ્રતીક્ષા પ્રતીક્ષા', 'Aplikacja oczekująca', 'Очікування програми', 'ਉਡੀਕ ਕਾਰਜ', 'Cerere de așteptare', '', 'Ohun elo durode', 'Aikace-aikacen jira', NULL),
(746, 'approved_application', 'Approved Application', 'অনুমোদিত আবেদন', 'Solicitud aprobada', 'طلب معتمد', 'स्वीकृत आवेदन', 'منظور شدہ درخواست', '批准的申请', '承認されたアプリケーション', 'Inscrição aprovada', 'Утвержденная заявка', 'Demande approuvée', '승인 된 신청', 'Genehmigter Antrag', 'Domanda approvata', '', 'Jóváhagyott alkalmazás', 'Goedgekeurde aanvraag', 'probatus Application', 'Aplikasi yang Disetujui', 'Onaylı Başvuru', 'Εγκεκριμένη εφαρμογή', 'برنامه تأیید شده', 'Permohonan yang Diluluskan', '', '', 'માન્ય એપ્લિકેશન', 'Zatwierdzone zgłoszenie', 'Затверджена заявка', 'ਮਨਜੂਰ ਐਪਲੀਕੇਸ਼ਨ', 'Cerere aprobată', '', 'Ohun elo ti a fọwọsi', 'Aikace-aikacen da aka yarda', NULL),
(747, 'declined_application', 'Declined Application', 'প্রত্যাখ্যান করা অ্যাপ্লিকেশন', 'Solicitud rechazada', 'التطبيق المرفوض', 'अस्वीकृत आवेदन', 'درخواست مسترد کردی', '申请被拒', '拒否されたアプリケーション', 'Aplicação recusada', 'Отклоненное заявление', 'Demande refusée', '거부 된 신청', 'Abgelehnte Anwendung', 'Applicazione rifiutata', '', 'Elutasított alkalmazás', 'Geweigerde aanvraag', 'Application declinavi ex ea', 'Aplikasi yang Ditolak', 'Reddedilen Uygulama', 'Απορρίφθηκε η αίτηση', 'برنامه رد شد', 'Permohonan Ditolak', '', '', 'અરજી નામંજૂર', 'Odrzucona aplikacja', 'Відхилено заявку', 'ਅਸਵੀਕਾਰ ਕਰ ਦਿੱਤਾ', 'Aplicație declinată', '', 'Ohun elo Kọ', 'Aikace-aikacen da aka ki', NULL),
(748, 'application_date', 'Application Date', 'আবেদনের তারিখ', 'Fecha de aplicacion', 'تاريخ تقديم الطلب', 'आवेदन तिथि', 'تاریخ درخواست', '申请日期', '出願日', 'Data da inscrição', 'Дата подачи заявки', 'Date de la demande', '지원 날짜', 'Antragsdatum', 'Data di applicazione', '', 'Jelentkezési dátum', 'Aanvraagdatum', 'application Date', 'Tanggal Aplikasi', 'Başvuru tarihi', 'Ημερομηνία αίτησης', 'تاریخ برنامه', 'Tarikh Permohonan', '', '', 'અરજી તારીખ', 'Termin składania wniosków', 'Дата подання заявки', 'ਅਰਜ਼ੀ ਦੀ ਮਿਤੀ', 'Data aplicării', '', 'Ọjọ Ohun elo', 'Kwanan Aikace-aikacen', NULL),
(749, 'study_material', 'Study Material', 'শিক্ষাসামগ্রী', 'Material de estudio', 'المواد الدراسية', 'अध्ययन सामग्री', 'مطالعہ کا مواد', '学习资料', '学習資料', 'Material de estudo', 'Учебный материал', 'Matériel d\'étude', '연구 자료', 'Studienmaterial', 'Materiale di studio', '', 'Tananyag', 'Studiemateriaal', 'studium Material', 'Bahan Belajar', 'Çalışma Materyali', 'Υλικό μελέτης', 'مطالب مطالعه', 'Bahan Kajian', '', '', 'અભ્યાસ સામગ્રી', 'Material do nauczenia', 'Навчальний матеріал', 'ਅਧਿਐਨ ਸਮੱਗਰੀ', 'Material de studiu', '', 'Ohun elo Ikẹkọ', 'Kayan Nazarin', NULL),
(750, 'student_type', 'Student Type', 'শিক্ষার্থী প্রকার', 'Tipo de estudiante', 'نوع الطالب', 'छात्र प्रकार', 'طالب علم کی قسم', '学生类型', '学生タイプ', 'Tipo de aluno', 'Тип студента', 'Type d\'élève', '학생 유형', 'Schülertyp', 'Tipo di studente', '', 'Diák típusa', 'Type student', 'Type discipulus', 'Tipe Siswa', 'Öğrenci Türü', 'Τύπος μαθητή', 'نوع دانشجویی', 'Jenis Pelajar', '', '', 'વિદ્યાર્થી પ્રકાર', 'Rodzaj studenta', 'Тип студента', 'ਵਿਦਿਆਰਥੀ ਦੀ ਕਿਸਮ', 'Tip de student', '', 'Ọmọ ile-iwe', 'Nau\'in Dalibi', NULL),
(751, 'student_list', 'Student List', 'ছাত্র তালিকা', 'Lista de estudiantes', 'قائمة الطلاب', 'छात्र सूची', 'طلباء کی فہرست', '学生名单', '学生リスト', 'Lista de Alunos', 'Список студентов', 'Liste des étudiants', '학생 목록', 'Studentenliste', 'Elenco studenti', '', 'Diáklista', 'Studentenlijst', 'List discipulus', 'Daftar Siswa', 'Öğrenci Listesi', 'Λίστα μαθητών', 'لیست دانشجویان', 'Senarai Pelajar', '', '', 'વિદ્યાર્થી યાદી', 'Lista studentów', 'Список студентів', 'ਵਿਦਿਆਰਥੀ ਸੂਚੀ', 'Lista studenților', '', 'Akojọ ọmọ ile-iwe', 'Jerin Dalibi', NULL),
(752, 'admit_student', 'Admit Student', 'ভর্তি ছাত্র', 'Admitir estudiante', 'قبول الطالب', 'एडमिट स्टूडेंट', 'طالب علم داخل کرو', '录取学生', '学生を認める', 'Admita Aluno', 'Впустить студента', 'Admettre un étudiant', '학생 입학', 'Student aufnehmen', 'Ammetti Studente', '', 'Adja be a hallgatót', 'Geef student toe', 'Discipulus fateri', 'Akui Siswa', 'Öğrenci Kabulü', 'Αποδοχή μαθητή', 'قبول دانشجو', 'Akui Pelajar', '', '', 'વિદ્યાર્થી પ્રવેશ', 'Przyznaj ucznia', 'Прийміть студента', 'ਦਾਖਲਾ ਵਿਦਿਆਰਥੀ', 'Admite student', '', 'Gba ọmọ ile-iwe gba', 'Yarda da Dalibin', NULL),
(753, 'bulk_admission', 'Bulk Admission', 'বাল্ক ভর্তি', 'Admisión masiva', 'القبول بالجملة', 'थोक प्रवेश', 'بلک داخلہ', '批量入场', '一括入場', 'Admissão em massa', 'Массовый прием', 'Admission en vrac', '대량 입학', 'Masseneintritt', 'Ammissione in blocco', '', 'Tömeges belépés', 'Bulktoegang', 'Praesent mole', 'Penerimaan Massal', 'Toplu Kabul', 'Μαζική είσοδος', 'پذیرش فله', 'Kemasukan Pukal', '', '', 'બલ્ક પ્રવેશ', 'Wstęp masowy', 'Масовий прийом', 'ਥੋਕ ਦਾਖਲਾ', 'Admitere în masă', '', 'Gbigbani Pupọ', 'Kaddamar da Girma', NULL),
(754, 'online_admission', 'Online Admission', 'অনলাইন ভর্তি', 'Admisión en línea', 'القبول عبر الإنترنت', 'ऑनलाइन प्रवेश', 'آن لائن داخلہ', '网上入场', 'オンライン入場', 'Admissão Online', 'Онлайн прием', 'dmission en ligne', '온라인 입학', 'Online-Zulassung', 'Ammissione online', '', 'Online belépés', 'Online toelating', 'Praesent Online', 'Pendaftaran Online', 'Online Kabul', 'Ηλεκτρονική είσοδος', 'پذیرش آنلاین', 'Kemasukan Dalam Talian', '', '', 'ઓનલાઇન પ્રવેશ', 'Wstęp online', 'Інтернет-прийом', 'ਆਨਲਾਈਨ ਦਾਖਲਾ', 'Admitere online', '', 'Gbigba wọle lori Ayelujara', 'Kudin shiga yanar gizo', NULL),
(755, 'student_activity', 'Student Activity', 'ছাত্রদের ক্রিয়াকলাপ', 'Actividad estudiantil', 'نشاط الطالب', 'छात्र गतिविधि', 'طلبا کی سرگرمی', '学生活动', '学生の活動', 'Atividade do aluno', 'Студенческая деятельность', 'Activité étudiante', '학생 활동', 'Schüleraktivität', 'Attività studentesca', '', 'Hallgatói tevékenység', 'Student Activiteit', 'Actio discipulus', 'Kegiatan Siswa', 'Öğrenci Etkinliği', 'Δραστηριότητα μαθητή', 'فعالیت دانشجویی', 'Aktiviti Pelajar', '', '', 'વિદ્યાર્થી પ્રવૃત્તિ', 'Aktywność studencka', 'Діяльність студентів', 'ਵਿਦਿਆਰਥੀ ਗਤੀਵਿਧੀ', 'Activitatea studenților', '', 'Iṣẹ-ṣiṣe ọmọ ile-iwe', 'Aikin Dalibi', NULL),
(756, 'student_attendance', 'Student Attendance', 'শিক্ষার্থীদের উপস্থিতি', 'Asistencia estudiantil', 'حضور الطالب', 'छात्र उपस्थिति', 'طلباء کی حاضری', '学生出勤', '学生の出席', 'Participação do aluno', 'Посещаемость студентов', 'Fréquentation des étudiants', '학생 출석', 'Teilnahme von Studenten', 'Frequenza degli studenti', '', 'Diákok jelenléte', 'Aanwezigheid van studenten', 'Attendance discipulus', 'Kehadiran Mahasiswa', 'Öğrenci Katılımı', 'Φοιτητική φοίτηση', 'حضور دانشجو', 'Kehadiran Pelajar', '', '', 'વિદ્યાર્થીઓની હાજરી', 'Obecność studentów', 'Відвідуваність студентів', 'ਵਿਦਿਆਰਥੀਆਂ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea studenților', '', 'Wiwa akeko', 'Halartar Dalibi', NULL),
(757, 'teacher_attendance', 'Teacher Attendance', 'শিক্ষক উপস্থিতি', 'Asistencia del maestro', 'حضور المعلم', 'शिक्षक की उपस्थिति', 'اساتذہ کی حاضری', '教师出勤', '教師の出席', 'Participação do Professor', 'Посещаемость учителей', 'Présence des enseignants', '교사 출석', 'Teilnahme des Lehrers', 'Frequenza dell\'insegnante', '', 'Tanári jelenlét', 'Aanwezigheid van de leraar', 'magister Attendance', 'Kehadiran Guru', 'Öğretmen Katılımı', 'Παρακολούθηση δασκάλου', 'حضور معلم', 'Kehadiran Guru', '', '', 'શિક્ષકની હાજરી', 'Obecność nauczyciela', 'Відвідуваність вчителя', 'ਅਧਿਆਪਕ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea profesorilor', '', 'Wiwa Olukọ', 'Halartar Malami', NULL),
(758, 'employee_attendance', 'Employee Attendance', 'কর্মচারী উপস্থিতি', 'Asistencia de empleados', 'حضور الموظف', 'कर्मचारी की उपस्थिति', 'ملازمین کی حاضری', '员工出勤', '従業員の出席', 'Participação dos funcionários', 'Посещаемость сотрудника', 'Présence des employés', '직원 출석', 'Mitarbeiterbetreuung', 'Partecipazione dei dipendenti', '', 'Munkavállalói jelenlét', 'Aanwezigheid van werknemers', 'Aliquam Attendance', 'Kehadiran Karyawan', 'Çalışan Katılımı', 'Συμμετοχή εργαζομένων', 'حضور و غیاب کارمندان', 'Kehadiran Pekerja', '', '', 'કર્મચારીની હાજરી', 'Obecność pracowników', 'Відвідуваність працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea angajaților', '', 'Wiwa si Oṣiṣẹ', 'Halartar Ma’aikata', NULL),
(759, 'sms_template', 'SMS Template', 'এসএমএস টেম্পলেট', 'Plantilla de SMS', 'قالب SMS', 'एसएमएस टेम्पलेट', 'ایس ایم ایس ٹیمپلیٹ', '短信模板', 'SMSテンプレート', 'Modelo SMS', 'Шаблон SMS', 'Modèle SMS', 'SMS 템플릿', 'SMS-Vorlage', 'Modello SMS', '', 'SMS sablon', 'SMS-sjabloon', 'Formula SMS', 'Template SMS', 'SMS Şablonu', 'Πρότυπο SMS', 'الگوی پیام کوتاه', 'Templat SMS', '', '', 'એસએમએસ Templateાંચો', 'Szablon SMS', 'Шаблон SMS', 'ਐਸਐਮਐਸ ਟੈਂਪਲੇਟ', 'Șablon SMS', '', 'SMS Awoṣe', 'Tsarin SMS', NULL),
(760, 'email_template', 'Email Template', 'ইমেল টেম্পলেট', 'Plantilla de correo electrónico', 'قالب البريد الإلكتروني', 'ईमेल टेम्पलेट', 'ای میل سانچہ', '电子邮件范本', 'メールテンプレート', 'Modelo de email', 'Шаблон электронной почты', 'Modèle d\'e-mail', '이메일 템플릿', 'E-Mail-Vorlage', 'Modello e-mail', '', 'E-mail sablon', 'Email sjabloon', 'Email Template', 'Template Email', 'E-posta şablonu', 'Πρότυπο ηλεκτρονικού ταχυδρομείου', 'الگوی ایمیل', 'Templat E-mel', '', '', 'ઇમેઇલ .ાંચો', 'Szablon e-maila', 'Шаблон електронної пошти', 'ਈਮੇਲ ਟੈਪਲੇਟ', 'Model de e-mail', '', 'Imeeli Awoṣe', 'Shafin imel', NULL),
(761, 'result_email', 'Result Email', 'ফলাফল ইমেল', 'Correo electrónico de resultados', 'نتيجة البريد الإلكتروني', 'परिणाम ईमेल', 'نتیجہ ای میل', '结果电子邮件', '結果メール', 'E-mail do resultado', 'Электронный адрес результата', 'Courriel du résultat', '결과 이메일', 'Ergebnis E-Mail', 'Risultato Email', '', 'E-mail', 'E-mail met resultaat', 'Email result', 'Email Hasil', 'Sonuç E-postası', 'Αποτέλεσμα Email', 'ایمیل نتیجه', 'Hasil E-mel', '', '', 'પરિણામ ઇમેઇલ', 'E-mail wynikowy', 'Результат електронної пошти', 'ਨਤੀਜਾ ਈ', 'Rezultat e-mail', '', 'Esi Esi', 'Sakamakon Sakamakon imel', NULL),
(762, 'result_sms', 'Result SMS', 'ফলাফল এসএমএস', 'SMS de resultado', 'نتيجة SMS', 'परिणाम एसएमएस', 'نتیجہ ایس ایم ایس', '结果短信', '結果SMS', 'Resultado SMS', 'Результат СМС', 'SMS de résultat', '결과 SMS', 'Ergebnis SMS', 'SMS di risultato', '', 'Eredmény SMS', 'Resultaat sms', 'effectus SMS', 'SMS hasil', 'Sonuç SMS\'i', 'Αποτέλεσμα SMS', 'پیام کوتاه', 'Hasil SMS', '', '', 'પરિણામ એસએમએસ', 'Wynikowy SMS', 'Результат SMS', 'ਨਤੀਜਾ ਐਸਐਮਐਸ', 'SMS rezultat', '', 'Esi Esi', 'Sakamakon Sakamako', NULL),
(763, 'send_email', 'Send Email', 'ইমেইল পাঠান', 'Enviar correo electrónico', 'ارسل بريد الكتروني', 'ईमेल भेजें', 'ای میل بھیجیں', '发电子邮件', 'メールを送る', 'Enviar email', 'Отправить письмо', 'Envoyer un e-mail', '이메일을 보내', 'E-Mail senden', 'Invia una email', '', 'Küldjön e-mailt', 'E-mail verzenden', 'Mittere email', 'Mengirim email', 'Eposta gönder', 'Να στείλετε e-mail', 'ایمیل بفرست', 'Menghantar e-mel', '', '', 'ઈ - મેલ મોકલો', 'Wysłać email', 'Відправити лист', 'ਈਮੇਲ ਭੇਜੋ', 'Trimite email', '', 'Firanṣẹ Imeeli', 'Aika Imel', NULL),
(764, 'send_sms', 'Send SMS', 'এসএমএস পাঠান', 'Enviar SMS', 'أرسل رسالة نصية قصيرة', 'संदेश भेजो', 'SMS بھیجیں', '发送短信', 'SMSを送信', 'Enviar SMS', 'Отправить смс', 'Envoyer un SMS', '문자를 보내다', 'SMS senden', 'Inviare SMS', '', 'SMS-t küldeni', 'Verstuur sms', 'mittere SMS', 'Kirim SMS', 'SMS gönder', 'Αποστολή SMS', 'ارسال پیامک', 'Hantar SMS', '', '', 'એસએમએસ મોકલો', 'Wyślij SMS', 'Надіслати SMS', 'ਐਸਐਮਐਸ ਭੇਜੋ', 'Trimite SMS', '', 'Firanṣẹ SMS', 'Aika SMS', NULL),
(765, 'result_send_by_email', 'Result Send by Email', 'ফলাফল ইমেল মাধ্যমে প্রেরণ', 'Resultado Enviar por correo electrónico', 'النتيجة إرسال بالبريد الإلكتروني', 'परिणाम ईमेल द्वारा भेजें', 'نتیجہ ای میل کے ذریعے بھیجیں', '结果通过电子邮件发送', '結果をメールで送信', 'Resultado Enviar por Email', 'Результат Отправить по электронной почте', 'Résultat Envoyer par e-mail', '결과 이메일로 보내기', 'Ergebnis Per E-Mail senden', 'Risultato Invia tramite e-mail', '', 'Eredmény Küldés e-mailben', 'Resultaat Verzenden via e-mail', 'Email a mitte Result', 'Hasil Kirim melalui Email', 'Sonuç E-posta ile Gönder', 'Αποτέλεσμα Αποστολή με email', 'نتیجه ارسال از طریق ایمیل', 'Hasil Hantar melalui E-mel', '', '', 'પરિણામ ઇમેઇલ દ્વારા મોકલો', 'Wynik Wyślij e-mailem', 'Результат Надіслати електронною поштою', 'ਨਤੀਜਾ ਈਮੇਲ ਦੁਆਰਾ ਭੇਜੋ', 'Rezultat Trimite prin e-mail', '', 'Esi Firanṣẹ nipasẹ Imeeli', 'Sakamakon Aika ta Imel', NULL),
(766, 'result_send_by_sms', 'Result Send by SMS', 'ফলাফল এসএমএসের মাধ্যমে প্রেরণ করুন', 'Resultado Enviar por SMS', 'النتيجة إرسال بواسطة SMS', 'परिणाम एसएमएस द्वारा भेजें', 'نتیجہ ایس ایم ایس کے ذریعہ ارسال کریں', '结果通过短信发送', '結果SMSで送信', 'Resultado Enviar por SMS', 'Результат Отправить по СМС', 'Résultat Envoyer par SMS', 'SMS로 결과 전송', 'Ergebnis Per SMS senden', 'Risultato Invia tramite SMS', '', 'Eredmény SMS-ben küldés', 'Resultaat Verzenden via sms', 'Result Mitte per SMS', 'Hasil Kirim melalui SMS', 'Sonuç SMS ile Gönder', 'Αποτέλεσμα Αποστολή με SMS', 'نتیجه ارسال از طریق پیامک', 'Hasil Hantar melalui SMS', '', '', 'પરિણામ એસએમએસ દ્વારા મોકલો', 'Wynik Wyślij SMS-em', 'Результат Надіслати SMS', 'ਨਤੀਜਾ ਐਸਐਮਐਸ ਦੁਆਰਾ ਭੇਜੋ', 'Rezultat Trimite prin SMS', '', 'Esi Firanṣẹ nipasẹ SMS', 'Sakamakon Aika ta SMS', NULL),
(767, 'due_fee_email', 'Due Fee Email', 'বকেয়া ফি ইমেল', 'Cargo por correo electrónico', 'البريد الإلكتروني لرسوم الاستحقاق', 'देय शुल्क ईमेल', 'واجب الادا ای میل', '应付费用电子邮件', '支払い手数料メール', 'E-mail da taxa devida', 'Электронный адрес', 'E-mail des frais dus', '회비 이메일', 'E-Mail mit fälliger Gebühr', 'Email dovuta', '', 'Esedékes díj e-mail', 'E-mail met verschuldigde vergoeding', 'Ob pretium Email', 'Email Biaya Hutang', 'Ödenmesi Gereken Ücret E-postası', 'Ηλεκτρονικό ταχυδρομείο προθεσμίας', 'ایمیل هزینه پرداختی', 'E-mel Bayaran Hutang', '', '', 'ફી ફી ઇમેઇલ', 'E-mail z należną opłatą', 'Належна плата за електронну пошту', 'ਬਕਾਇਆ ਫੀਸ ਈ', 'E-mail cu plată', '', 'Nitori Imeeli isanwo', 'Sakamakon kudin imel', NULL),
(768, 'due_fee_sms', 'Due Fee SMS', 'পারিশ্রমিক ফি এসএমএস', 'Cuota debida SMS', 'SMS رسوم الرسوم', 'देय शुल्क एसएमएस', 'واجب الادا ایس ایم ایس', '应付费用短信', '会費SMS', 'SMS de taxa de vencimento', 'Причитающаяся плата за SMS', 'SMS à payer', '회비 SMS', 'Fällige Gebühr SMS', 'SMS dovuti', '', 'Esedékes díj SMS', 'Verschuldigde sms', 'Ob pretium SMS', 'SMS Biaya Jatuh Tempo', 'Ödenmesi Gereken Ücret SMS\'i', 'Προθεσμία SMS', 'اس ام اس موقت', 'SMS Bayaran Hutang', '', '', 'ફી ફી એસએમએસ', 'Opłata za SMS', 'Сплата SMS', 'ਫੀਸ ਦੇ ਐਸ.ਐਮ.ਐੱਸ', 'SMS-uri cu taxă', '', 'Nitori Fee SMS', 'Sakamakon kudin SMS', NULL),
(769, 'absent_email', 'Absent Email', 'অনুপস্থিত ইমেল', 'Correo electrónico ausente', 'البريد الإلكتروني غير موجود', 'ईमेल अनुपस्थित है', 'غیر حاضر ای میل', '缺席电子邮件', 'メールがない', 'E-mail ausente', 'Отсутствующая электронная почта', 'E-mail absent', '결석 이메일', 'Fehlende E-Mail', 'Email assente', '', 'Nincs e-mail', 'Afwezige e-mail', 'absens Email', 'Email Tidak Ada', 'E-posta Yok', 'Απουσία email', 'پست الکترونیکی غایب', 'E-mel Tidak Ada', '', '', 'ગેરહાજર ઇમેઇલ', 'Nieobecny e-mail', 'Відсутня електронна пошта', 'ਗੈਰਹਾਜ਼ਰ ਈਮੇਲ', 'E-mail absent', '', 'Imeeli asan', 'Email ba ya nan', NULL),
(770, 'absent_sms', 'Absent SMS', 'অনুপস্থিত এসএমএস', 'SMS ausentes', 'SMS غائب', 'अनुपस्थित एसएमएस', 'غیر حاضر ایس ایم ایس', '短信缺失', 'SMSがない', 'SMS ausente', 'Отсутствующие СМС', 'SMS absent', '부재중 SMS', 'Fehlende SMS', 'SMS assente', '', 'Nincs SMS', 'Afwezig SMS', 'absens SMS', 'Tidak ada SMS', 'SMS yok', 'Απουσία SMS', 'پیامک غایب', 'Tidak ada SMS', '', '', 'ગેરહાજર એસ.એમ.એસ.', 'Nieobecny SMS', 'Відсутні SMS', 'ਗੈਰਹਾਜ਼ਰ ਐਸ.ਐਮ.ਐਸ.', 'SMS absente', '', 'Sọrọ SMS', 'SMS ba ya nan', NULL),
(771, 'absent_date', 'Absent Date', 'অনুপস্থিত তারিখ', 'Fecha de ausencia', 'تاريخ غائب', 'अनुपस्थित तिथि', 'غائب تاریخ', '缺席日期', '欠席日', 'Data de ausência', 'Дата отсутствия', 'Date d\'absence', '결석 일', 'Fehlendes Datum', 'Data assente', '', 'Hiányzó dátum', 'Afwezige datum', 'absens Date', 'Tanggal Tidak Ada', 'Bitiş Tarihi', 'Απουσία ημερομηνίας', 'تاریخ غایب', 'Tarikh Tidak hadir', '', '', 'ગેરહાજર રહેવાની તારીખ', 'Data nieobecności', 'Відсутня дата', 'ਗੈਰਹਾਜ਼ਰ ਤਾਰੀਖ', 'Data absenței', '', 'Ọjọ isanmọ', 'Kwanan Wata', NULL),
(772, 'exam_schedule', 'Exam Schedule', 'পরীক্ষার সময়সূচী', 'Calendario de exámenes', 'جدول الامتحانات', 'परीक्षा अनुसूची', 'امتحان کا نظام الاوقات', '考试时间表', '試験スケジュール', 'Horário do exame', 'Расписание экзаменов', 'Calendrier des examens', '시험 일정', 'Prüfungsplan', 'Programma degli esami', '', 'Vizsga ütemezése', 'Examenrooster', 'Morbi rhoncus nito', 'Jadwal Ujian', 'Sınav Takvimi', 'Πρόγραμμα εξετάσεων', 'برنامه آزمون', 'Jadual Peperiksaan', '', '', 'પરીક્ષાનું સમયપત્રક', 'Harmonogram egzaminów', 'Розклад іспитів', 'ਪ੍ਰੀਖਿਆ ਦਾ ਕਾਰਜਕਾਲ', 'Programul examenelor', '', 'Iṣeto Idanwo', 'Jadawalin jarrabawa', NULL),
(773, 'exam_suggestion', 'Exam Suggestion', 'পরীক্ষার পরামর্শ', 'Sugerencia de examen', 'اقتراح الامتحان', 'परीक्षा का सुझाव', 'امتحان کی تجویز', '考试建议', '試験の提案', 'Sugestão de exame', 'Предложение экзамена', 'Suggestion d\'examen', '시험 제안', 'Prüfungsvorschlag', 'Suggerimento dell\'esame', '', 'Vizsgajavaslat', 'Examen suggestie', 'nito Suggestion', 'Saran ujian', 'Sınav Önerisi', 'Πρόταση εξετάσεων', 'پیشنهاد آزمون', 'Cadangan Peperiksaan', '', '', 'પરીક્ષાનું સૂચન', 'Sugestia egzaminacyjna', 'Пропозиція до іспиту', 'ਪ੍ਰੀਖਿਆ ਸੁਝਾਅ', 'Sugestie de examen', '', 'Aba aba ayewo', 'Shawara ta Gwaji', NULL),
(774, 'exam_attendance', 'Exam Attendance', 'পরীক্ষার উপস্থিতি', 'Asistencia al examen', 'حضور الامتحان', 'परीक्षा में उपस्थिति', 'امتحان میں حاضری', '考试参加', '試験出席', 'Participação no Exame', 'Посещаемость экзамена', 'Participation aux examens', '시험 출석', 'Teilnahme an der Prüfung', 'Partecipazione all\'esame', '', 'Vizsga részvétel', 'Aanwezigheid bij het examen', 'nito Attendance', 'Kehadiran ujian', 'Sınava Katılım', 'Συμμετοχή στις εξετάσεις', 'حضور در آزمون', 'Kehadiran Peperiksaan', '', '', 'પરીક્ષાની હાજરી', 'Obecność na egzaminie', 'Навчання на іспиті', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ', 'Participarea la examene', '', 'Wiwa wiwa', 'Kasancewa na Jarrabawa', NULL),
(775, 'exam_term_result', 'Exam Term Result', 'পরীক্ষার টার্ম ফলাফল', 'Resultado del examen', 'نتيجة مصطلح الامتحان', 'परीक्षा शब्द का परिणाम', 'امتحان کی مدت کا نتیجہ', '考试学期成绩', '試験期間結果', 'Resultado do Exame', 'Экзамен Срок Результат', 'Résultat de l\'examen', '시험 기간 결과', 'Prüfungssemestergebnis', 'Risultato del termine dell\'esame', '', 'Vizsgaidő', 'Examen Term Resultaat', 'Term nito results', 'Hasil Jangka Waktu Ujian', 'Sınav Dönemi Sonucu', 'Αποτέλεσμα της εξέτασης', 'نتیجه ترم آزمون', 'Keputusan Jangka Masa Peperiksaan', '', '', 'પરીક્ષાનું ટર્મ પરિણામ', 'Wynik semestru egzaminacyjnego', 'Результат іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦੇ ਨਤੀਜੇ', 'Rezultatul termenului examenului', '', 'Esi Idaduro Akoko', 'Sakamakon Gwajin gwaji', NULL),
(776, 'certificate_type', 'Certificate Type', 'সনদপত্র ধরণ', 'tipo de certificado', 'نوع الشهادة', 'प्रमाणपत्र का प्रकार', 'سند کی قسم', '证书类别', '証明書の種類', 'tipo de certificado', 'Тип сертификата', 'Type de certificat', '증명서 종류', 'Art des Zertifikats', 'Tipo di certificato', '', 'Tanúsítvány típusa', 'Certificaattype', 'libellum Type', 'Tipe Sertifikat', 'Sertifika Türü', 'Τύπος πιστοποιητικού', 'نوع گواهینامه', 'Jenis Sijil', '', '', 'પ્રમાણપત્રનો પ્રકાર', 'Typ Certyfikatu', 'Тип сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦੀ ਕਿਸਮ', 'Tip de certificat', '', 'Iru Ijẹrisi', 'Nau\'in Shaida', NULL),
(777, 'certificate_name', 'Certificate Name', 'সনদপত্রের  নাম', 'Nombre del certificado', 'اسم الشهادة', 'प्रमाण - पत्र नाम', 'سند نام', '证书名称', '証明書名', 'nome válido', 'Название сертификата', 'Nom du certificat', '인증서 이름', 'Zertifikatname', 'Nome del certificato', '', 'Tanúsítvány neve', 'Certificaatnaam', 'libellum nomine', 'Nama sertifikat', 'Sertifika Adı', 'Όνομα πιστοποιητικού', 'نام گواهی', 'Nama Sijil', '', '', 'પ્રમાણપત્ર નામ', 'Nazwa certyfikatu', 'Назва сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦਾ ਨਾਮ', 'Numele certificatului', '', 'Orukọ ijẹrisi', 'Sunan Takaddun shaida', NULL),
(778, 'generate_certificate', 'Generate Certificate', 'সনদপত্র  তৈরি করুন', 'Generar certificado', 'إنشاء شهادة', 'सर्टिफिकेट जनरेट करें', 'سند بنائیں', '生成证书', '証明書を生成', 'Gerar certificado', 'Создать сертификат', 'Générer un certificat', '인증서 생성', 'Zertifikat generieren', 'Genera certificato', '', 'Létrehoz tanúsítványt', 'Genereer certificaat', 'Quisque generate', 'Hasilkan Sertifikat', 'Sertifika Oluştur', 'Δημιουργία πιστοποιητικού', 'تولید گواهی', 'Hasilkan Sijil', '', '', 'પ્રમાણપત્ર બનાવો', 'Wygeneruj certyfikat', 'Створити сертифікат', 'ਸਰਟੀਫਿਕੇਟ ਬਣਾਓ', 'Generați certificatul', '', 'Ina ijẹrisi', 'Haɓaka Takaddun shaida', NULL),
(779, 'library_member', 'Library Member', 'গ্রন্থাগার সদস্য', 'Miembro de la biblioteca', 'عضو المكتبة', 'पुस्तकालय सदस्य', 'لائبریری ممبر', '图书馆会员', '図書館員', 'Membro da biblioteca', 'Член библиотеки', 'Membre de la bibliothèque', '도서관 회원', 'Bibliotheksmitglied', 'Membro della biblioteca', '', 'Könyvtári tag', 'Bibliotheeklid', 'bibliotheca Member', 'Anggota Perpustakaan', 'Kütüphane Üyesi', 'Μέλος βιβλιοθήκης', 'Library Member', 'Ahli Perpustakaan', '', '', 'પુસ્તકાલય સભ્ય', 'Członek biblioteki', 'Член бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ', 'Membru al bibliotecii', '', 'Ọmọ ẹgbẹ Ile-ikawe', 'Member ɗakin karatu', NULL),
(780, 'transport_member', 'Transport Member', 'পরিবহন সদস্য', 'Miembro de transporte', 'عضو النقل', 'परिवहन सदस्य', 'ٹرانسپورٹ ممبر', '运输会员', '輸送メンバー', 'Membro de transporte', 'Транспортный участник', 'Membre Transport', '운송 회원', 'Transportmitglied', 'Membro dei trasporti', '', 'Közlekedési tag', 'Transportlid', 'onerariam Member', 'Anggota Transport', 'Nakliye Üyesi', 'Μέλος μεταφοράς', 'عضو حمل و نقل', 'Anggota Pengangkutan', '', '', 'પરિવહન સભ્ય', 'Członek transportu', 'Член транспорту', 'ਟਰਾਂਸਪੋਰਟ ਸਦੱਸ', 'Membru Transport', '', 'Member ọkọ', 'Member Kai Tsaye', NULL),
(781, 'hostel_member', 'Hostel Member', 'ছাত্রাবাস সদস্য', 'Miembro del albergue', 'عضو نزل', 'छात्रावास सदस्य', 'ہاسٹل ممبر', '宿舍会员', 'ホステルメンバー', 'Membro do Hostel', 'Хостел Member', 'Membre de l\'auberge', '호스텔 멤버', 'Hostel Mitglied', 'Membro dell\'ostello', '', 'Hostel tag', 'Lid van het hostel', 'Member Hostel', 'Anggota Hostel', 'Pansiyon Üyesi', 'Μέλος του ξενώνα', 'عضو خوابگاه', 'Ahli Asrama', '', '', 'છાત્રાલય સભ્ય', 'Członek Hostelu', 'Член гуртожитку', 'ਹੋਸਟਲ ਮੈਂਬਰ', 'Membru de pensiune', '', 'Omo egbe Alejo', 'Member Member', NULL),
(782, 'complain_type', 'Complain Type', 'অভিযোগের ধরণ', 'Tipo de queja', 'نوع الشكوى', 'शिकायत प्रकार', 'شکایت کی قسم', '投诉类型', '苦情の種類', 'Tipo de Reclamação', 'Пожаловаться тип', 'Type de plainte', '불만 유형', 'Beschwerde Typ', 'Tipo di reclamo', '', 'Panasz típusa', 'Klachttype', 'queri Type', 'Jenis Keluhan', 'Şikayet Tipi', 'Τύπος παραπόνου', 'نوع شکایت', 'Jenis Aduan', '', '', 'ફરિયાદ પ્રકાર', 'Rodzaj reklamacji', 'Тип скарги', 'ਸ਼ਿਕਾਇਤ ਕਿਸਮ', 'Tip de reclamație', '', 'Iru Ìráhùn', 'Nau\'in koke', NULL),
(783, 'complain_by', 'Complain By', 'অভিযোগকারী', 'Quejarse por', 'يشكو بواسطة', 'द्वारा शिकायत करें', 'بذریعہ شکایت', '投诉人', '不平', 'Reclamar por', 'Пожаловаться на', 'Se plaindre par', '에 의해 불평', 'Beschweren Sie sich durch', 'Protesta da', '', 'Panaszkodó', 'Klagen door', 'per queri', 'Diadukan oleh', 'Şikayetçi', 'Παράπονο από', 'شکایت توسط', 'Mengadu Oleh', '', '', 'દ્વારા ફરિયાદ કરો', 'Skarżyć się', 'Поскаржитися на', 'ਦੁਆਰਾ ਸ਼ਿਕਾਇਤ', 'Reclama prin', '', 'Figagbaga Nipa', 'Gunaguni Ta', NULL),
(784, 'complain_date', 'Complain Date', 'অভিযোগের তারিখ', 'Fecha de queja', 'تاريخ الشكوى', 'शिकायत की तारीख', 'شکایت کی تاریخ', '投诉日期', '苦情の日付', 'Data da Reclamação', 'Пожаловаться на дату', 'Date de plainte', '불만 날짜', 'Beschwerdedatum', 'Data di reclamo', '', 'Panasz dátuma', 'Klacht Datum', 'queri Date', 'Tanggal Keluhan', 'Şikayet Tarihi', 'Ημερομηνία καταγγελίας', 'تاریخ شکایت', 'Tarikh Aduan', '', '', 'ફરિયાદ તારીખ', 'Data złożenia skargi', 'Дата скарги', 'ਸ਼ਿਕਾਇਤ ਦੀ ਮਿਤੀ', 'Data reclamației', '', 'Ọjọ Ìráhùn', 'Ranar Kara', NULL),
(785, 'action_date', 'Action Date', 'অ্যাকশন তারিখ', 'Fecha de acción', 'تاريخ الإجراء', 'लड़ाई की तारीख', 'کارروائی کی تاریخ', '动作日期', '行動日', 'Data da ação', 'Дата действия', 'Date de l\'action', '행동 날짜', 'Aktionsdatum', 'Data dell\'azione', '', 'Akció dátuma', 'Actiedatum', 'actio Date', 'Tanggal Aksi', 'İşlem Tarihi', 'Ημερομηνία δράσης', 'تاریخ اقدام', 'Tarikh Tindakan', '', '', 'ક્રિયા તારીખ', 'Data działania', 'Дата дії', 'ਕਾਰਵਾਈ ਦੀ ਮਿਤੀ', 'Data acțiunii', '', 'Ọjọ Ise', 'Ranar Aiki', NULL),
(786, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'Estado de pago', 'حالة السداد', 'भुगतान की स्थिति', 'ادائیگی کی حیثیت', '支付状态', '支払い状況', 'Status do pagamento', 'Статус платежа', 'Statut de paiement', '지불 상태', 'Zahlungsstatus', 'Stato del pagamento', '', 'Fizetési állapot', 'Betalingsstatus', 'Status Payment', 'Status pembayaran', 'Ödeme Durumu', 'Κατάσταση πληρωμής', 'وضعیت پرداخت', 'Status bayaran', '', '', 'ચુકવણીની સ્થિતિ', 'Status płatności', 'Статус платежу', 'ਭੁਗਤਾਨ ਦੀ ਸਥਿਤੀ', 'Starea plății', '', 'Ipo isanwo', 'Matsayin Biyan', NULL),
(787, 'salary_payment', 'Salary Payment', 'বেতন প্রদান', 'Pago de salario', 'دفع المرتبات', 'तनख्वाह का भुगतान', 'تنخواہ کی ادائیگی', '工资支付', '給与支払い', 'Pagamento de Salário', 'Выплата зарплаты', 'Paiement du salaire', '급여 지불', 'Lohnauszahlung', 'Salario', '', 'Fizetés', 'Salaris betaling', 'Payment stipendio', 'Pembayaran Gaji', 'Maaş ödemesi', 'Πληρωμή μισθού', 'پرداخت حقوق', 'Bayaran Gaji', '', '', 'પગાર ચુકવણી', 'Wypłata wynagrodzenia', 'Оплата заробітної плати', 'ਤਨਖਾਹ ਅਦਾਇਗੀ', 'Plata salariului', '', 'Isanwo isanwo', 'Biyan Albashi', NULL),
(788, 'salary_history', 'Salary History', 'বেতন ইতিহাস', 'Historia salarial', 'سجل الرواتب', 'वेतन इतिहास', 'تنخواہ کی تاریخ', '工资历史', '給与履歴', 'Histórico Salarial', 'Зарплата История', 'Historique des salaires', '연혁', 'Gehaltsgeschichte', 'Storia salariale', '', 'Fizetési előzmények', 'Salaris geschiedenis', 'Historia stipendio', 'Sejarah Gaji', 'Maaş Geçmişi', 'Ιστορικό μισθών', 'تاریخچه حقوق', 'Sejarah Gaji', '', '', 'પગારનો ઇતિહાસ', 'Historia wynagrodzeń', 'Історія заробітної плати', 'ਤਨਖਾਹ ਦਾ ਇਤਿਹਾਸ', 'Istoric de salariu', '', 'Itan owo-ọya', 'Tarihin Albashi', NULL),
(789, 'fee_collection', 'Fee Collection', 'ফি সংগ্রহ', 'Cobro de tarifas', 'تحصيل الرسوم', 'शुल्क संग्रह', 'فیس جمع کرنا', '收费标准', '料金コレクション', 'Cobrança de taxas', 'Сбор платы', 'Collection de frais', '수수료 징수', 'Gebührenerhebung', 'Commissione di riscossione', '', 'Díj beszedése', 'Innen van vergoedingen', 'feodo Books', 'Pengumpulan Biaya', 'Ücret Tahsilatı', 'Συλλογή χρεώσεων', 'مجموعه هزینه', 'Kutipan Yuran', '', '', 'ફી સંગ્રહ', 'Pobieranie opłat', 'Збір зборів', 'ਫੀਸ ਇਕੱਠਾ ਕਰਨਾ', 'Încasare', '', 'Gbigba gbigba', 'Kudin tattara', NULL),
(790, 'invoice_receipt', 'Invoice Receipt', 'চালান প্রাপ্তি', 'Recepción de facturas', 'إيصال الفاتورة', 'चालान की रसीद', 'انوائس کی رسید', '发票收据', '請求書受領', 'Recebimento de fatura', 'Квитанция о получении счета', 'Reçu de facture', '송장 영수증', 'Rechnungsbeleg', 'Ricevuta fattura', '', 'Számla nyugtája', 'Factuurbewijs', 'Medicamentum cautionem', 'Penerimaan faktur', 'Fatura makbuzu', 'Τιμολόγιο', 'صورت حساب', 'Resit invois', '', '', 'ભરતિયું રસીદ', 'Potwierdzenie faktury', 'Квитанція про виставлення рахунків', 'ਇਨਵੌਇਸ ਰਸੀਦ', 'Nu stiu', '', 'Risiti risiti', 'Rashin Kashi', NULL),
(791, 'gallery_image', 'Gallery Image', 'গ্যালারী ইমেজ', 'Imagen de la galería', 'صورة المعرض', 'गैलरी छवि', 'گیلری ، نگارخانہ کی تصویر', '图库图片', 'ギャラリー画像', 'Imagem da Galeria', 'Галерея изображений', 'Image de la galerie', '갤러리 이미지', 'Galerie Bild', 'Galleria immagine', '', 'Galéria kép', 'Galerijafbeelding', 'gallery Image', 'Gambar Galeri', 'Galeri Resmi', 'Εικόνα γκαλερί', 'تصویر گالری', 'Gambar Galeri', '', '', 'ગેલેરી છબી', 'Obraz z galerii', 'Зображення галереї', 'ਗੈਲਰੀ ਚਿੱਤਰ', 'Galerie imagine', '', 'Aworan Gallery', 'Hoton Hoto', NULL),
(792, 'detail_information', 'Detail Information', 'বিস্তারিত তথ্য', 'Información detallada', 'معلومات مفصلة', 'विस्तार से जानकारी', 'تفصیل سے معلومات', '详细信息', '詳細情報', 'Informações detalhadas', 'Детальная информация', 'Informations détaillées', '자세한 정보', 'Detail Information', 'Informazioni dettagliate', '', 'Részletes információ', 'Gedetailleerde informatie', 'detail Information', 'Informasi detil', 'Detaylı Bilgi', 'Λεπτομερής πληροφορία', 'جزئیات اطلاعات', 'Maklumat terperinci', '', '', 'વિગતવાર માહિતી', 'Szczegółowe informacje', 'Детальна інформація', 'ਵੇਰਵਾ ਜਾਣਕਾਰੀ', 'Informații detaliate', '', 'Alaye Alaye', 'Cikakken Bayani', NULL),
(793, 'present_address', 'Present Address', 'বর্তমান ঠিকানা', 'La dirección actual', 'العنوان الحالي', 'वर्तमान पता', 'موجودہ پتہ', '现在的住址', '現住所', 'Endereço presente', 'Текущий адрес', 'Adresse actuelle', '현재 주소', 'Aktuelle Adresse', 'Indirizzo attuale', '', 'Jelenlegi cím', 'Huidig adres', 'Praesens address', 'Alamat sekarang', 'Güncel adres', 'Παρούσα διεύθυνση', 'آدرس فعلی', 'Alamat terkini', '', '', 'હાલનું સરનામું', 'Obecny adres', 'Присутні адреса', 'ਮੌਜੂਦਾ ਪਤਾ', 'Adresa actuala', '', 'Adirẹsi lọwọlọwọ', 'Adireshin yanzu', NULL),
(794, 'permanent_address', 'Permanent Address', 'স্থায়ী ঠিকানা', 'dirección permanente', 'العنوان الثابت', 'स्थाई पता', 'مستقل پتہ', '永久地址', '本籍地', 'Endereço Permanente', 'адрес постоянного проживания', 'Adresse permanente', '영구 주소', 'fester Wohnsitz', 'Residenza', '', 'Állandó lakcím', 'Vast Adres', 'Oratio permanent', 'alamat tetap', 'daimi Adres', 'Μόνιμη διεύθυνση', 'آدرس دائمی', 'Alamat tetap', '', '', 'કાયમી સરનામુ', 'Stały adres', 'Постійна адреса', 'ਪੱਕਾ ਪਤਾ', 'Adresa Peramanetă', '', 'Adirẹsi Yẹ', 'adireshin dindindin', NULL),
(795, 'basic_information', 'Basic Information', 'মৌলিক তথ্য', 'Información básica', 'معلومات اساسية', 'मूलभूत जानकारी', 'بنیادی معلومات', '基本信息', '基本情報', 'Informação básica', 'Основная информация', 'Informations de base', '기본 정보', 'Grundinformation', 'Informazioni di base', '', 'Alapinformációk', 'Basis informatie', 'Basic notitia', 'Informasi dasar', 'Temel Bilgiler', 'Βασικές πληροφορίες', 'اطلاعات اولیه', 'Maklumat asas', '', '', 'મૂળભૂત માહિતી', 'Podstawowe informacje', 'Основна інформація', 'ਮੁੱ Informationਲੀ ਜਾਣਕਾਰੀ', 'Informatii de baza', '', 'Alaye Ipilẹ', 'Bayanai na asali', NULL),
(796, 'contact_information', 'Contact Information', 'যোগাযোগের তথ্য', 'Información del contacto', 'معلومات للتواصل', 'संपर्क जानकारी', 'رابطے کی معلومات', '联系信息', '連絡先', 'Informações de Contato', 'Контакты', 'Informations de contact', '연락 정보', 'Kontakt Informationen', 'Informazioni sui contatti', '', 'Elérhetőség', 'Contactgegevens', 'Information Contact', 'Kontak informasi', 'İletişim bilgileri', 'Στοιχεία επικοινωνίας', 'اطلاعات تماس', 'Maklumat perhubungan', '', '', 'સંપર્ક માહિતી', 'Informacje kontaktowe', 'Контактна інформація', 'ਸੰਪਰਕ ਜਾਣਕਾਰੀ', 'Informatii de contact', '', 'Ibi iwifunni', 'Bayanin hulda', NULL),
(797, 'academic_information', 'Academic Information', 'একাডেমিক তথ্য', 'Información Académica', 'معلومات أكاديمية', 'शैक्षणिक सूचना', 'تعلیمی معلومات', '学术信息', '学術情報', 'informação académica', 'Академическая информация', 'Information Académique', '학업 정보', 'Akademische Informationen', 'informazione accademica', '', 'Tudományos információk', 'Academische informatie', 'academic Information', 'Informasi Akademik', 'Akademik bilgi', 'Ακαδημαϊκές πληροφορίες', 'اطلاعات علمی', 'Maklumat Akademik', '', '', 'શૈક્ષણિક માહિતી', 'Informacje akademickie', 'Наукова інформація', 'ਅਕਾਦਮਿਕ ਜਾਣਕਾਰੀ', 'informatii academice', '', 'Alaye Ile-iwe', 'Bayanin Ilimin', NULL),
(798, 'guardian_information', 'Guardian Information', 'অভিভাবকের  তথ্য', 'Información del tutor', 'معلومات الوصي', 'संरक्षक सूचना', 'گارڈین کی معلومات', '监护人信息', 'ガーディアン情報', 'Informações do Guardião', 'Хранитель информации', 'Informations sur le gardien', '가디언 정보', 'Guardian Informationen', 'Informazioni sul guardiano', '', 'Guardian információ', 'Guardian-informatie', 'custos Information', 'Informasi Wali', 'Guardian Bilgi', 'Πληροφορίες κηδεμόνα', 'اطلاعات نگهبان', 'Maklumat Penjaga', '', '', 'વાલીઓની માહિતી', 'Informacje o opiekunie', 'Інформація опікуна', 'ਸਰਪ੍ਰਸਤ ਦੀ ਜਾਣਕਾਰੀ', 'Informații tutore', '', 'Alaye Olutọju', 'Bayanin Sirrin', NULL),
(799, 'parent_information', 'Parent Information', 'মাতাপিতার তথ্য', 'Información para padres', 'معلومات الوالدين', 'जनक जानकारी', 'بنیادی معلومات', '家长信息', '親情報', 'Informações aos pais', 'Информация для родителей', 'Information des parents', '부모 정보', 'Übergeordnete Informationen', 'Informazioni sui genitori', '', 'Szülői információk', 'Ouderinformatie', 'parens Information', 'Informasi Induk', 'Veli Bilgileri', 'Πληροφορίες γονέα', 'اطلاعات والدین', 'Maklumat Ibu Bapa', '', '', 'પેરેંટલ માહિતી', 'Informacje dla rodziców', 'Інформація для батьків', 'ਮਾਪਿਆਂ ਦੀ ਜਾਣਕਾਰੀ', 'Informații despre părinți', '', 'Alaye ti obi', 'Bayanin Iyaye', NULL),
(800, 'setting_information', 'Setting Information', 'সেটিংস তথ্য', 'Información de configuración', 'إعداد المعلومات', 'सूचना सेट करना', 'معلومات کی ترتیب', '设置信息', '設定情報', 'Informações de configuração', 'Настройка информации', 'Réglage des informations', '설정 정보', 'Informationen einstellen', 'Informazioni sull\'impostazione', '', 'Beállítási információk', 'Instellingsinformatie', 'profecta Information', 'Pengaturan Informasi', 'Ayar Bilgileri', 'Ρύθμιση πληροφοριών', 'تنظیم اطلاعات', 'Menetapkan Maklumat', '', '', 'માહિતી સુયોજિત કરી રહ્યા છે', 'Informacje o ustawieniach', 'Інформація про налаштування', 'ਜਾਣਕਾਰੀ ਸੈੱਟ ਕਰਨਾ', 'Setarea informațiilor', '', 'Eto alaye', 'Kafa Bayani', NULL),
(801, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'पासवर्ड की पुष्टि कीजिये', 'پاس ورڈ کی تصدیق کریں', '确认密码', 'パスワードを認証する', 'Confirme a Senha', 'Подтвердите Пароль', 'Confirmez le mot de passe', '비밀번호 확인', 'Kennwort bestätigen', 'conferma password', '', 'Jelszó megerősítése', 'bevestig wachtwoord', 'Adfirmare Password', 'konfirmasi sandi', 'Şifreyi Onayla', 'Επιβεβαίωση Κωδικού', 'رمز عبور را تأیید کنید', 'Sahkan Kata Laluan', '', '', 'પાસવર્ડની પુષ્ટિ કરો', 'Potwierdź hasło', 'Підтвердьте пароль', 'ਪਾਸਵਰਡ ਪੱਕਾ ਕਰੋ', 'Confirmă parola', '', 'So ni pato orukoabawole re', 'tabbata kalmar shiga', NULL),
(802, 'leave_from', 'Leave From', 'লিভ ফ্রম', 'Salir de', 'يغادر من', 'से चला', 'سے چلے جانا', '离开', 'から出発', 'Sair de', 'Уйди от', 'Partir de', '로부터 떠나다', 'Abfahren von', 'Partire da', '', 'Indulás', 'Weg gaan van', 'Leave a', 'Pergi dari', 'Dan ayrılmak', 'Αναχώρηση από', 'ترک از', 'Bertolak Dari', '', '', 'થી છોડો', 'Wyjdź z', 'Вийти з', 'ਤੋਂ ਛੱਡੋ', 'A pleca din', '', 'Fi Lati', 'Bar Daga', NULL),
(803, 'leave_to', 'Leave To', 'লিভ টু', 'Dejar', 'اترك إلى', 'पर छोड़ दो', 'چھوڑ دو', '离开', '任します', 'Sair para', 'Покинуть', 'Laisser à', '로 떠나 가다', 'Verlassen, um', 'Lasciare', '', 'Hagyja', 'Laat aan', 'Ad discede', 'Tinggalkan untuk', 'Bırak', 'Αφησε σε', 'ترک به', 'Tinggalkan Ke', '', '', 'છોડો', 'Pozostawić do', 'Залишити до', 'ਛੱਡੋ', 'Lasă la', '', 'Fi Si Lati', 'Bar zuwa', NULL),
(804, 'leave_apply_for', 'Leave Apply for', 'ছুটির জন্য আবেদন', 'Deje Solicitar', 'اترك طلب للحصول على', 'के लिए आवेदन छोड़ दें', 'کے لئے درخواست دیں چھوڑ دیں', '离开申请', '申し込む', 'Deixe Aplicar para', 'Оставьте заявку на', 'Laissez demander', '신청을 남겨주세요', 'Lassen Sie sich bewerben für', 'Lascia fare domanda per', '', 'Hagyja jelentkezését', 'Laat solliciteren', 'Applicare pro relinquo', 'Biarkan Berlaku untuk', 'Başvuruyu Bırak', 'Αφήστε την αίτηση για', 'ترک درخواست کنید', 'Tinggalkan Memohon untuk', '', '', 'માટે અરજી કરો છોડી દો', 'Pozostaw Złóż wniosek o', 'Залиште подати заявку', 'ਲਈ ਅਰਜ਼ੀ ਛੱਡੋ', 'Lăsați să solicitați', '', 'Fi Kan Wa fun', 'Bar Aiwatar da', NULL),
(805, 'total_leave', 'Total Leave', 'মোট ছুটি', 'Licencia total', 'إجمالي الإجازة', 'कुल छुट्टी', 'کل رخصت', '总休假', '総休暇', 'Licença Total', 'Общий отпуск', 'Congé total', '총 휴가', 'Gesamturlaub', 'Congedo totale', '', 'Teljes szabadság', 'Totaal verlof', 'summa discede', 'Cuti Total', 'Toplam İzin', 'Συνολική άδεια', 'ترک کامل', 'Jumlah Cuti', '', '', 'કુલ રજા', 'Całkowity urlop', 'Загальна відпустка', 'ਕੁੱਲ ਛੁੱਟੀ', 'Concediu total', '', 'Lapapọ Lọ', 'Jimlar iznin', NULL),
(806, 'apply_leave', 'Apply Leave', 'ছুটি প্রয়োগ ', 'Aplicar licencia', 'قم باضافة المغادرة', 'छुट्टी लागू करें', 'رخصت کا اطلاق کریں', '申请请假', '休暇を申請する', 'Aplicar licença', 'Применить Оставить', 'Appliquer congé', '휴가 신청', 'Urlaub anwenden', 'Applica congedo', '', 'Alkalmazza a Leave-t', 'Verlof toepassen', 'Applicare discede', 'Terapkan Cuti', 'İzni Uygula', 'Εφαρμόστε άδεια', 'برگ را اعمال کنید', 'Memohon Cuti', '', '', 'રજા લાગુ કરો', 'Zastosuj urlop', 'Застосовуйте Leave', 'ਛੁੱਟੀ ਲਾਗੂ ਕਰੋ', 'Aplicați concediu', '', 'Waye Lọ', 'Aiwatar izni', NULL),
(807, 'leave_used', 'Leave Used', 'ছুটি ব্যবহৃত', 'Dejar usado', 'اترك المستخدم', 'उपयोग छोड़ दें', 'استعمال کریں چھوڑ دو', '保留使用状态', '使用したままにする', 'Deixar usado', 'Оставьте Использовано', 'Laisser utilisé', '사용 된 상태로 두십시오', 'Gebraucht lassen', 'Lascia usato', '', 'Hagyja használt', 'Laat gebruikt', 'New relinqueret', 'Biarkan Bekas', 'Kullanılmış Bırak', 'Αφήστε άδεια', 'استفاده را ترک کنید', 'Biarkan Digunakan', '', '', 'છોડો વપરાયેલ', 'Pozostaw używane', 'Залиште використане', 'ਛੱਡੋ ਵਰਤਿਆ', 'Lasă-te folosit', '', 'Fi Lo', 'Bar Amfani da', NULL),
(808, 'leave_remain', 'Leave Remain', 'ছুটি বাকি', 'Dejar permanecer', 'اترك البقاء', 'शेष रहना', 'باقی رہو', '留下来', '残ります', 'Deixar permanecer', 'Оставь Оставаться', 'Laisser rester', '남아', 'Lass bleiben', 'Lasciare rimasto', '', 'Hagyja hátra', 'Laat blijven', 'relinquam sustinete', 'Tinggalkan Tetap', 'Kalan', 'Αφήστε το παραμένον', 'باقی مانده است', 'Tinggalkan Kekal', '', '', 'રહેવા દો', 'Zostaw Pozostań', 'Залиште Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Lasă să rămână', '', 'Fi I silẹ', 'Bar Kasancewa', NULL),
(809, 'applicant_type', 'Applicant Type', 'আবেদনকারী প্রকার', 'Tipo de solicitante', 'نوع مقدم الطلب', 'आवेदक प्रकार', 'درخواست گزار کی قسم', '申请者类型', '応募者タイプ', 'Tipo de requerente', 'Тип заявителя', 'Type de demandeur', '신청자 유형', 'Bewerbertyp', 'Tipo di richiedente', '', 'Jelentkező típusa', 'aanvrager Type', 'Type applicant', 'Jenis Pemohon', 'Başvuru Sahibi Türü', 'Τύπος αιτούντος', 'نوع متقاضی', 'Jenis Pemohon', '', '', 'અરજદાર પ્રકાર', 'Typ Wnioskodawcy', 'Тип заявника', 'ਬਿਨੈਕਾਰ ਦੀ ਕਿਸਮ', 'Tipul solicitantului', '', 'Iru Ibẹwẹ', 'Nau\'in nema', NULL),
(810, 'father_name', 'Father Name', 'বাবার নাম', 'Nombre del Padre', 'اسم الأب', 'पिता का नाम', 'والد کا نام', '父亲姓名', '父の名前', 'Nome do pai', 'Имя Отца', 'Nom du père', '아버지의 이름', 'Der Name des Vaters', 'Nome del padre', '', 'Apa neve', 'Vader naam', 'nomine Patris', 'Nama ayah', 'Baba adı', 'Ονομα πατρός', 'نام پدر', 'Nama bapa', '', '', 'પિતાનું નામ', 'Imię Ojca', 'Ім\'я батька', 'ਪਿਤਾ ਦਾ ਨਾਮ', 'Numele tatălui', '', 'Oruko Baba', 'Sunan Uba', NULL),
(811, 'mother_name', 'Mother Name', 'মায়ের নাম', 'Nombre de la madre', 'اسم الأم', 'मां का नाम', 'ماں کا نام', '母亲名字', '母の名前', 'Nome da mãe', 'Имя матери', 'Nom de la mère', '엄마 이름', 'Name der Mutter', 'Nome della madre', '', 'Anyja neve', 'Naam moeder', 'nomen matris', 'Nama ibu', 'Anne adı', 'Όνομα μητέρας', 'نام مادر', 'Nama Ibu', '', '', 'માતાનું નામ', 'Imię matki', 'Ім\'я матері', 'ਮਾਂ ਦਾ ਨਾਮ', 'Numele mamei', '', 'Orukọ iya', 'Sunan Uwar', NULL),
(812, 'father_phone', 'Father Phone', 'বাবার ফোন', 'Teléfono padre', 'هاتف الأب', 'पिता का फोन', 'فادر فون', '父亲电话', '父の電話', 'Telefone do pai', 'Телефон отца', 'Téléphone du père', '아버지 전화', 'Vater Telefon', 'Father Phone', '', 'Apa telefon', 'Vader telefoon', 'Pater Phone', 'Telepon ayah', 'Baba Telefonu', 'Πατέρα τηλέφωνο', 'تلفن تلفنی', 'Telefon Bapa', '', '', 'ફાધર ફોન', 'Telefon Ojca', 'Телефон батька', 'ਪਿਤਾ ਫੋਨ', 'Tatăl Telefon', '', 'Baba foonu', 'Waya Baba', NULL),
(813, 'mother_phone', 'Mother Phone', 'মায়ের ফোন', 'Teléfono madre', 'هاتف الأم', 'मदर फोन', 'ماں فون', '母电话', '母の電話', 'Telefone Mãe', 'Мать Телефон', 'Téléphone mère', '어머니 전화', 'Muttertelefon', 'Telefono Madre', '', 'Anya telefon', 'Moeder telefoon', 'Mater Phone', 'Telepon ibu', 'Ana Telefon', 'Μητέρα τηλέφωνο', 'تلفن مادر', 'Telefon Ibu', '', '', 'મધર ફોન', 'Telefon macierzysty', 'Матері телефон', 'ਮਾਂ ਫੋਨ', 'Telefonul mamei', '', 'Foonu Iya', 'Wayar Iya', NULL),
(814, 'father_education', 'Father Education', 'বাবার শিক্ষা', 'Padre, educación', 'تعليم الأب', 'पिता की शिक्षा', 'والد کی تعلیم', '父亲教育', '父の教育', 'Educação do Pai', 'Образование Отца', 'Éducation du père', '아버지 교육', 'Vaterbildung', 'Padre Istruzione', '', 'Apa oktatás', 'Vader Onderwijs', 'Pater Education', 'Pendidikan Ayah', 'Baba Eğitimi', 'Εκπαίδευση πατέρα', 'آموزش پدر', 'Pendidikan Bapa', '', '', 'પિતા શિક્ષણ', 'Edukacja Ojca', 'Освіта батька', 'ਪਿਤਾ ਸਿੱਖਿਆ', 'Educația părintelui', '', 'Baba Eko', 'Uba Ilimi', NULL),
(815, 'mother_education', 'Mother Education', 'মায়ের শিক্ষা', 'Educación de la madre', 'تعليم الأم', 'माता की शिक्षा', 'ماں تعلیم', '母亲教育', '母親の教育', 'Mãe Educação', 'Мать Образование', 'Éducation de la mère', '어머니 교육', 'Muttererziehung', 'Educazione Madre', '', 'Anya oktatás', 'Moeder onderwijs', 'Mater Education', 'Pendidikan Ibu', 'Anne Eğitimi', 'Εκπαίδευση στη Μητέρα', 'آموزش مادر', 'Pendidikan Ibu', '', '', 'માતા શિક્ષણ', 'Edukacja matek', 'Освіта матері', 'ਮਾਂ ਸਿੱਖਿਆ', 'Educația mamelor', '', 'Iya Eko', 'Ilimin Uwar', NULL),
(816, 'father_profession', 'Father Profession', 'বাবার পেশা', 'Padre Profesion', 'مهنة الأب', 'पिता का पेशा', 'والد کا پیشہ', '父亲职业', '父の職業', 'Profissão Pai', 'Профессия отца', 'Profession de père', '아버지 직업', 'Vater Beruf', 'Professione del padre', '', 'Apa szakma', 'Vader Beroep', 'Pater Sollemnis Professio', 'Profesi Ayah', 'Baba Mesleği', 'Πατέρας επάγγελμα', 'حرفه پدر', 'Profesion Bapa', '', '', 'ફાધર પ્રોફેશન', 'Zawód ojca', 'Професія батька', 'ਪਿਤਾ ਪੇਸ਼ੇ', 'Tatăl Profesie', '', 'Baba oojọ', 'Uba Kwarewa', NULL),
(817, 'father_designation', 'Father Designation', 'বাবার উপাধি', '', 'تعيين الأب', 'पिता पदनाम', 'والد کا عہدہ', '父亲指定', '父の指定', 'Designação do Pai', 'Обозначение отца', 'Désignation du père', '아버지 지정', 'Vaterbezeichnung', 'Designazione del padre', '', 'Apák megnevezése', 'Vader aanwijzing', 'Pater VOCABULUM', 'Penunjukan Ayah', 'Baba Adı', 'Ορισμός του πατέρα', 'نامگذاری پدر', 'Jawatan Bapa', '', '', 'ફાધર હોદ્દો', 'Oznaczenie Ojca', 'Призначення батька', 'ਪਿਤਾ ਅਹੁਦਾ', 'Desemnarea părintelui', '', 'Apẹrẹ Baba', 'Tsarin Uba', NULL),
(818, 'mother_designation', 'Mother Designation', 'মায়ের উপাধি', 'Designación de madre', 'تسمية الأم', 'माँ पदनाम', 'ماں کا عہدہ', '母亲指定', '母の指定', 'Designação Mãe', 'Обозначение матери', 'Désignation de la mère', '어머니 지정', 'Mutterbezeichnung', 'Designazione madre', '', 'Anya jelölése', 'Moeder aanduiding', 'Mater VOCABULUM', 'Penunjukan Ibu', 'Anne Tanımı', 'Ορισμός της μητέρας', 'نامگذاری مادر', 'Jawatan Ibu', '', '', 'માતા હોદ્દો', 'Oznaczenie matki', 'Призначення матері', 'ਮਾਂ ਦਾ ਅਹੁਦਾ', 'Desemnarea mamei', '', 'Apẹrẹ Iya', 'Tsarin Iya', NULL),
(819, 'father_photo', 'Father Photo', 'বাবার ছবি', 'Foto del padre', 'صورة الأب', 'पिता फोटो', 'فادر فوٹو', '父亲照片', '父の写真', 'Foto do pai', 'Фото отца', 'Photo du père', '아버지 사진', 'Vater Foto', 'Foto del padre', '', 'Apa fotó', 'Vader foto', 'Pater Image', 'Foto Ayah', 'Baba Fotoğraf', 'Πατέρα Φωτογραφία', 'عکس پدر', 'Foto Bapa', '', '', 'ફાધર ફોટો', 'Zdjęcie ojca', 'Фото батька', 'ਪਿਤਾ ਦੀ ਤਸਵੀਰ', 'Foto tată', '', 'Fọto baba', 'Uba Hoto', NULL),
(820, 'mother_photo', 'Mother Photo', 'মায়ের ছবি', 'Foto de la madre', 'صور الأم', 'माँ की फोटो', 'ماں تصویر', '母亲照片', '母の写真', 'Mãe Foto', 'Мать фото', 'Photo mère', '어머니 사진', 'Mutter Foto', 'Foto di madre', '', 'Anya fotó', 'Moeder foto', 'Mater Image', 'Foto Ibu', 'Anne Fotoğraf', 'Μητέρα Φωτογραφία', 'عکس مادر', 'Foto Ibu', '', '', 'મધર ફોટો', 'Zdjęcie matki', 'Фото матері', 'ਮਾਂ ਦੀ ਤਸਵੀਰ', 'Mama Foto', '', 'Fọto Iya', 'Uwar Hoto', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(821, 'numeric_name', 'Numeric Name', 'সংখ্যার নাম', 'Nombre numérico', 'الاسم الرقمي', 'न्यूमेरिक नाम', 'عددی نام', '数字名称', '数値名', 'Nome numérico', 'Numeric Name', 'Nom numérique', '숫자 이름', 'Numerischer Name', 'Nome numerico', '', 'Numerikus név', 'Numerieke naam', 'Ordo numerorum nomine', 'Nama Numerik', 'Sayısal Ad', 'Αριθμητικό όνομα', 'نام عددی', 'Numerik Nama', '', '', 'આંકડાકીય નામ', 'Nazwa numeryczna', 'Числове ім\'я', 'ਸੰਖਿਆਤਮਕ ਨਾਮ', 'Numeric Numeric', '', 'Orukọ Nọmba', 'Sunaye mai lamba', NULL),
(822, 'select_school', 'Select School', 'স্কুল নির্বাচন করুন', 'Seleccione escuela', 'حدد المدرسة', 'स्कूल का चयन करें', 'اسکول کا انتخاب کریں', '选择学校', '学校を選択', 'Selecionar escola', 'Выберите школу', 'Sélectionnez l\'école', '학교 선택', 'Wählen Sie Schule', 'Seleziona la scuola', '', 'Válassza az Iskola lehetőséget', 'Selecteer School', 'Select School', 'Pilih Sekolah', 'Okul Seçin', 'Επιλέξτε Σχολείο', 'مدرسه را انتخاب کنید', 'Pilih Sekolah', '', '', 'શાળા પસંદ કરો', 'Wybierz szkołę', 'Виберіть школу', 'ਸਕੂਲ ਚੁਣੋ', 'Selectați Școala', '', 'Yan Ile-iwe', 'Zaɓi Makaranta', NULL),
(823, 'subject_code', 'Subject Code', 'বিষয় কোড', 'Código sujeto', 'كود الموضوع', 'विषय कोड', 'موضوع کوڈ', '主题代码', '主題コード', 'Código do Assunto', 'Код темы', 'Code sujet', '주제 코드', 'Betreff Code', 'Codice soggetto', '', 'Tárgy kód', 'Onderwerpcode', 're Code', 'Kode Subjek', 'Konu Kodu', 'Κωδικός θέματος', 'کد موضوع', 'Kod Mata Pelajaran', '', '', 'વિષય કોડ', 'Kod przedmiotu', 'Предметний код', 'ਵਿਸ਼ਾ ਕੋਡ', 'Codul subiectului', '', 'Koodu Koko-ọrọ', 'Lambar Yada Labari', NULL),
(824, 'expenditure_method', 'Expenditure Method', 'ব্যয় পদ্ধতি', 'Método de gastos', 'طريقة الإنفاق', 'व्यय विधि', 'اخراجات کا طریقہ', '支出方式', '支出方法', 'Método de Despesas', 'Метод расходов', 'Méthode de dépenses', '지출 방법', 'Ausgabenmethode', 'Metodo di spesa', '', 'Kiadási módszer', 'Uitgavenmethode', 'Custus Ratio', 'Metode Pengeluaran', 'Harcama Yöntemi', 'Μέθοδος δαπανών', 'روش هزینه', 'Kaedah Perbelanjaan', '', '', 'ખર્ચની પદ્ધતિ', 'Metoda wydatków', 'Метод витрат', 'ਖਰਚ odੰਗ', 'Metoda cheltuielilor', '', 'Ọna inawo', 'Hanyar kashe kudi', NULL),
(825, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'Método de pago', 'طريقة الدفع او السداد', 'भुगतान का तरीका', 'ادائیگی کا طریقہ', '付款方法', '支払方法', 'Forma de pagamento', 'Способ оплаты', 'Mode de paiement', '결제 방법', 'Bezahlverfahren', 'Metodo di pagamento', '', 'Fizetési mód', 'Betalingswijze', 'solucionis methodo', 'Cara Pembayaran', 'Ödeme şekli', 'Μέθοδος πληρωμής', 'روش پرداخت', 'Kaedah Pembayaran', '', '', 'ચુકવણી પદ્ધતિ', 'Metoda płatności', 'Спосіб оплати', 'ਭੁਗਤਾਨੇ ਦੇ ਢੰਗ', 'Modalitate de plată', '', 'Eto isanwo', 'Hanyar Biyan Biya', NULL),
(826, 'income_method', 'Income Method', 'আয়ের পদ্ধতি', 'Método de ingreso', 'طريقة الدخل', 'आय विधि', 'آمدنی کا طریقہ', '收入法', '収入方法', 'Método de Renda', 'Метод дохода', 'Méthode du revenu', '소득 방법', 'Einkommensmethode', 'Metodo del reddito', '', 'Jövedelem módszer', 'Inkomen methode', 'Ratio reditus', 'Metode Penghasilan', 'Gelir Yöntemi', 'Μέθοδος εισοδήματος', 'روش درآمد', 'Kaedah Pendapatan', '', '', 'આવક પદ્ધતિ', 'Metoda dochodowa', 'Метод доходу', 'ਆਮਦਨੀ ਵਿਧੀ', 'Metoda venitului', '', 'Ọna Ọya', 'Hanyar shigowa', NULL),
(827, 'bank_name', 'Bank Name', 'ব্যাংকের নাম', 'Nombre del banco', 'اسم البنك', 'बैंक का नाम', 'بینک کا نام', '银行名', '銀行名', 'Nome do banco', 'Название банка', 'Nom de banque', '은행 이름', 'Bank Name', 'Nome della banca', '', 'A bank neve', 'Banknaam', 'nomen Bank', 'Nama Bank', 'Banka adı', 'Ονομα τράπεζας', 'نام بانک', 'Nama bank', '', '', 'બેંકનું નામ', 'Nazwa banku', 'Назва банку', 'ਬੈਂਕ ਦਾ ਨਾਮ', 'Numele băncii', '', 'Orukọ Bank', 'Sunan Banki', NULL),
(828, 'cheque_number', 'Cheque Number', 'চেক নম্বর', 'Número de cheque', 'رقم الشيك', 'चेक नंबर', 'نمبر چیک کریں', '支票号码', 'チェック番号', 'Número do cheque', 'Номер чека', 'Numéro du chèque', '수표 번호', 'Scheck-Nummer', 'Controlla il numero', '', 'Ellenőrző szám', 'Controleer nummer', 'reprehendo Number', 'Periksa Nomor', 'Numarayı kontrol et', 'Έλεγχος αριθμού', 'شماره را بررسی کنید', 'Nombor Periksa', '', '', 'નંબર તપાસો', 'Numer czeku', 'Номер перевірки', 'ਚੈੱਕ ਨੰਬਰ', 'Numărul de verificare', '', 'Nọmba Ṣayẹwo', 'Duba Lamba', NULL),
(829, 'paid_status', 'Paid Status', 'প্রদত্ত  অবস্থা', 'Estado pagado', 'الحالة المدفوعة', 'अदा की स्थिति', 'ادا کی حیثیت', '付费状态', '有料ステータス', 'Status pago', 'Платный статус', 'Statut payé', '유료 상태', 'Bezahlter Status', 'Stato pagato', '', 'Fizetett állapot', 'Betaalde status', 'Status solvit', 'Status Dibayar', 'Ücretli Durum', 'Κατάσταση επί πληρωμή', 'وضعیت پرداخت شده', 'Status Berbayar', '', '', 'ચૂકવેલ સ્થિતિ', 'Status płatny', 'Платний статус', 'ਅਦਾਇਗੀ ਸਥਿਤੀ', 'Stare plătită', '', 'Ipo Ti San', 'Halin da ake biya', NULL),
(830, 'paid_amount', 'Paid Amount', 'প্রদত্ত পরিমাণ', 'Monto de pago', 'المبلغ المدفوع', 'भरी गई राशि', 'ادا شدہ رقم', '已付金额', '支払金額', 'Quantidade paga', 'Выплаченная сумма', 'Montant payé', '유료 금액', 'Bezahlte Menge', 'Importo pagato', '', 'Fizetett mennyiség', 'Betaald bedrag', 'Aliquam pretium', 'Jumlah pembayaran', 'Ödenen miktar', 'Πληρωμένο ποσό', 'مقدار پرداخت شده', 'Jumlah bayaran', '', '', 'ચૂકવેલ રકમ', 'Zapłacona kwota', 'Сума сплачена', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਕਮ', 'Suma plătită', '', 'San isanwo', 'Kudaden da aka biya', NULL),
(831, 'card_number', 'Card Number', 'কার্ড নম্বর', 'Número de tarjeta', 'رقم البطاقة', 'कार्ड नंबर', 'کارڈ نمبر', '卡号', 'カード番号', 'Número do cartão', 'Номер карты', 'Numéro de carte', '카드 번호', 'Kartennummer', 'Numero di carta', '', 'Kártyaszám', 'Kaartnummer', 'Numerus chartulae electronicae', 'Nomor kartu', 'Kart numarası', 'Αριθμός κάρτας', 'شماره کارت', 'Nombor kad', '', '', 'કાર્ડ ક્રમાંક', 'Numer karty', 'Номер картки', 'ਕਾਰਡ ਨੰਬਰ', 'Număr de card', '', 'Nomba kaadi', 'Lambar kati', NULL),
(832, 'backup_database', 'Backup Database', 'ব্যাকআপ ডাটাবেস', 'Base de datos de respaldo', 'قاعدة بيانات النسخ الاحتياطي', 'बैकअप डेटाबेस', 'بیک اپ ڈیٹا بیس', '备份资料库', 'データベースのバックアップ', 'Banco de dados de backup', 'Резервная база данных', 'Sauvegarder la base de données', '백업 데이터베이스', 'Backup-Datenbank', 'Database di backup', '', 'Biztonsági mentési adatbázis', 'Back-updatabase', 'tergum Database', 'Backup Database', 'Yedek veritabanı', 'Εφεδρική βάση δεδομένων', 'بانک اطلاعات پشتیبان', 'Pangkalan Data Sandaran', '', '', 'બેકઅપ ડેટાબેસ', 'Zapasowa baza danych', 'Резервне копіювання бази даних', 'ਬੈਕਅਪ ਡਾਟਾਬੇਸ', 'Baza de date de rezervă', '', 'Aaye data Afẹyinti', 'Bayanan Ajiyayyen', NULL),
(833, 'admission_now', 'Admission Now', 'এখনই ভর্তি হউন', 'Admisión ahora', 'القبول الآن', 'अब प्रवेश', 'ابھی داخلہ', '现在入场', '今すぐ入場', 'Admissão Agora', 'Вход сейчас', 'Admission maintenant', '지금 입장하십시오', 'Eintritt jetzt', 'Ammissione ora', '', 'Belépés most', 'Nu toelating', 'Susceptio autem', 'Masuk Sekarang', 'Şimdi Kabul', 'Είσοδος τώρα', 'پذیرش اکنون', 'Kemasukan Sekarang', '', '', 'હવે પ્રવેશ', 'Wstęp teraz', 'Прийом зараз', 'ਦਾਖਲਾ ਹੁਣ', 'Admitere acum', '', 'Gbigba Bayi', 'Shiga Yanzu', NULL),
(834, 'all_holiday', 'All Holiday', 'সমস্ত ছুটি', 'Todas las vacaciones', 'كل عطلة', 'सभी छुट्टी', 'تمام تعطیلات', '所有假期', 'すべての休日', 'Todas as férias', 'Весь праздник', 'Toutes les vacances', '모든 휴일', 'Alle Feiertage', 'Tutte le vacanze', '', 'Minden ünnep', 'Alle vakantie', 'omnes Feriae', 'Semua liburan', 'Tüm Tatil', 'Όλες οι διακοπές', 'همه تعطیلات', 'Semua Percutian', '', '', 'બધા રજા', 'Wszystkie wakacje', 'Все свято', 'ਸਾਰੇ ਛੁੱਟੀ', 'Toată vacanța', '', 'Gbogbo Isinmi', 'Duk Hutu', NULL),
(835, 'all_notice', 'All Notice', 'সমস্ত নোটিশ', 'Todo aviso', 'كل إشعار', 'सभी नोटिस', 'تمام نوٹس', '所有公告', 'すべての通知', 'Todos Aviso', 'Все уведомления', 'Tous les avis', '모든 공지', 'Alle Hinweis', 'Tutti gli avvisi', '', 'Minden értesítés', 'Alle kennisgeving', 'omnes Notitia', 'Semua Pemberitahuan', 'Tüm Bildirimler', 'Όλες οι ειδοποιήσεις', 'همه اعلامیه ها', 'Semua Makluman', '', '', 'બધી સૂચના', 'Wszystkie powiadomienia', 'Все Повідомлення', 'ਸਾਰੇ ਨੋਟਿਸ', 'Toate notificările', '', 'Gbogbo Akiyesi', 'Duk sanarwa', NULL),
(836, 'all_event', 'All Event', 'সমস্ত ইভেন্ট', 'Todos los eventos', 'كل حدث', 'सब घटना', 'تمام واقعہ', '所有活动', 'すべてのイベント', 'Todo o evento', 'Все событие', 'Tout événement', '모든 이벤트', 'Alle Ereignisse', 'Tutti gli eventi', '', 'Minden esemény', 'Alle evenementen', 'omnes Vicis', 'Semua Acara', 'Tüm Etkinlikler', 'Όλα τα γεγονότα', 'تمام رویداد', 'Semua Acara', '', '', 'બધા ઇવેન્ટ', 'Wszystkie wydarzenia', 'Всі події', 'ਸਾਰੀ ਘਟਨਾ', 'Tot evenimentul', '', 'Gbogbo Iṣẹlẹ', 'Duk taron', NULL),
(837, 'all_gallery', 'All Gallery', 'সমস্ত গ্যালারী', 'Toda la galeria', 'معرض الصور', 'सभी गैलरी', 'تمام گیلری', '所有画廊', 'すべてのギャラリー', 'Toda a Galeria', 'Вся Галерея', 'Galerie', '모든 갤러리', 'Alle Galerie', 'Tutta la galleria', '', 'Összes galéria', 'Alle galerij', 'omnes Gallery', 'Semua Galeri', 'Tüm Galeri', 'Όλη η γκαλερί', 'گالری', 'Semua Galeri', '', '', 'બધી ગેલેરી', 'Cała galeria', 'Вся галерея', 'ਸਾਰੀ ਗੈਲਰੀ', 'Toate Galerie', '', 'Gbogbo àwòrán', 'Duk Hoto', NULL),
(838, 'all_staff', 'All Staff', 'সমস্ত কর্মী', 'Todo el personal', 'جميع الموظفين', 'सभी कर्मचारी', 'تمام عملہ', '全体员工', 'すべてのスタッフ', 'Todos os funcionários', 'Все сотрудники', 'Tout le personnel', '전직원', 'Alle Mitarbeiter', 'Tutto il personale', '', 'Minden személyzet', 'Alle medewerkers', 'omnes Staff', 'Semua pegawai', 'Tüm çalışanlar', 'Ολο το προσωπικό', 'همه کارکنان', 'Semua Kakitangan', '', '', 'બધા સ્ટાફ', 'Cały personel', 'Весь персонал', 'ਸਾਰੇ ਸਟਾਫ', 'Tot personalul', '', 'Gbogbo Oṣiṣẹ', 'Duk Ma’aikata', NULL),
(839, 'all_teacher', 'All Teacher', 'সমস্ত শিক্ষক', 'Todo profesor', 'كل معلم', 'सभी शिक्षक', 'سب ٹیچر', '所有老师', 'すべての教師', 'All Teacher', 'Все учителя', 'Tous les enseignants', '모든 교사', 'Alle Lehrer', 'Tutti gli insegnanti', '', 'Minden tanár', 'Allemaal leraar', 'Omnia Inc', 'Semua guru', 'Tüm Öğretmenler', 'Όλοι οι δάσκαλοι', 'همه معلم', 'Semua Guru', '', '', 'બધા શિક્ષક', 'Wszyscy nauczyciele', 'Всі вчитель', 'ਸਾਰੇ ਅਧਿਆਪਕ', 'Tot învățătorul', '', 'Gbogbo Olukọni', 'Duk Malami', NULL),
(840, 'paypal_email', 'Paypal Email', 'পেপ্যাল ইমেইল', 'e-mail de Paypal', 'بريد باي بال', 'पे पल ईमेल', 'پے پال ای میل', '贝宝电子邮件', 'Paypalメール', 'Email do Paypal', 'Электронная почта Paypal', 'Email Paypal', '페이팔 이메일', 'Paypal Email', 'Email Paypal', '', 'Paypal e-mail', 'Paypal E-mail', 'Email Coin Paypal', 'Email Paypal', 'Paypal E-postası', 'Email μέσω Paypal', 'پی پال ایمیل', 'E-mel Paypal', '', '', 'પેપલ ઇમેઇલ', 'Paypal email', 'Paypal електронною поштою', 'ਪੇਪਾਲ ਈਮੇਲ', 'E-mail Paypal', '', 'Imeeli Imeeli', 'Imel na Paypal', NULL),
(841, 'payumoney_key', 'Payumoney Key', 'পে ইউ মানি কী', 'Payumoney Key', 'مفتاح Payumoney', 'पयूमनी की', 'پیومینی کی', '支付密钥', 'Payumoneyキー', 'Chave de Payumoney', 'Payumoney Key', 'Payumoney Key', 'Payumoney 키', 'Payumoney Key', 'Payumoney Key', '', 'Payumoney kulcs', 'Payumoney Key', 'Key Payumoney', 'Payumoney Key', 'Payumoney Anahtarı', 'Κλειδί Payumoney', 'Payumoney Key', 'Kunci Payumoney', '', '', 'પેયુમોની કી', 'Klucz Payumoney', 'Ключ Payumoney', 'ਪੇਯੂਮਨੀ ਕੁੰਜੀ', 'Cheia Payumoney', '', 'Bọtini Payumoney', 'Buga na Payumoney', NULL),
(842, 'ccavenue_key', 'CCavenue Key', 'সি সি এভিনিউ কী', 'Clave CCavenue', 'مفتاح CCavenue', 'CCavenue कुंजी', 'CCavenue کی', 'CCavenue密钥', 'CCavenue Key', 'CCavenue Key', 'CCavenue Key', 'Clé CCavenue', 'CCavenue 키', 'CCavenue-Schlüssel', 'CCavenue Key', '', 'CCavenue kulcs', 'CCavenue Key', 'Key Ccavenue', 'Kunci CCavenue', 'CCavenue Anahtarı', 'Κλειδί CCavenue', 'کلید CCavenue', 'Kunci CCavenue', '', '', 'સીકેવેન્યુ કી', 'CCavenue Key', 'CCavenue Key', 'ਸੀਕਵੇਨਿ Key ਕੁੰਜੀ', 'Cheia CCavenue', '', 'Bọtini CCavenue', 'Maɓallin CCavenue', NULL),
(843, 'registration_date', 'Registration Date', 'নিবন্ধনের তারিখ', 'Fecha de Registro', 'تاريخ التسجيل', 'पंजीकरण की तारीख', 'داخلے کی تاریخ', '登记日期', '登録日', 'data de registro', '', 'Date d\'inscription', '등록 날짜', 'Registrierungsdatum', 'Data di registrazione', '', 'Regisztráció dátuma', 'registratie datum', 'Registration Date', 'tanggal registrasi', 'Kayıt Tarihi', 'Ημερομηνία Εγγραφής', 'تاریخ ثبت نام', 'Tarikh pendaftaran', '', '', 'નોંધણી તારીખ', 'Data rejestracji', 'Дата Реєстрації', 'ਰਜਿਸਟਰੀਕਰਣ ਦੀ ਮਿਤੀ', 'Data Înregistrării', '', 'Ọjọ Iforukọsilẹ', 'Ranar Rajista', NULL),
(844, 'final_result_based_on', 'Based on Final Result', 'চূড়ান্ত ফলাফলের ভিত্তিতে', 'Resultado final basado en', 'النتيجة النهائية بناء على', 'अंतिम परिणाम के आधार पर', 'حتمی نتائج پر مبنی', '最终结果基于', 'に基づく最終結果', 'Resultado Final Baseado em', 'Окончательный результат на основе', 'Résultat final basé sur', '최종 결과', 'Endergebnis Basierend auf', 'Risultato finale basato su', '', 'Végső eredmény:', 'Eindresultaat op basis van', 'Ex captorum eventus superae', 'Hasil Akhir Berdasarkan', 'Son Sonuç Bazında', 'Με βάση το τελικό αποτέλεσμα', 'براساس نتیجه نهایی', 'Berdasarkan Keputusan Akhir', '', '', 'અંતિમ પરિણામ પર આધારિત', 'Na podstawie wyniku końcowego', 'На основі кінцевого результату', 'ਅੰਤਮ ਨਤੀਜੇ ਦੇ ਅਧਾਰ ਤੇ', 'Pe baza rezultatului final', '', 'Da lori Ik Esi', 'An kafa shi ne sakamakon sakamako', NULL),
(845, 'get_api_key', 'Get Api Key', 'গেট্ এ পি আই কী', 'Obtenga la clave Api', 'احصل على مفتاح Api', 'आपी कुंजी प्राप्त करें', 'آپ کی کلید حاصل کریں', '获取Api密钥', 'APIキーを取得', 'Obter Api Key', 'Получить ключ API', 'Obtenez la clé Api', 'API 키 받기', 'Holen Sie sich Api Key', 'Ottieni la chiave Api', '', 'Szerezd meg az Api kulcsot', 'Download Api Key', 'Get Key Api', 'Dapatkan Kunci Api', 'Api Anahtarını Alın', 'Αποκτήστε το Api Key', 'دریافت کلید API', 'Dapatkan Kunci Api', '', '', 'અપિ કી મેળવો', 'Zdobądź klucz API', 'Отримайте ключ Api', 'ਏਪੀਆਈ ਕੁੰਜੀ ਲਓ', 'Obțineți cheia Api', '', 'Gba Bọtini Api', 'Samu Api Key', NULL),
(846, 'frontend_logo', 'Frontend Logo', 'ফ্রন্টএন্ড লোগো', 'Logotipo frontend', 'شعار الواجهة الأمامية', 'फ्रंटेंड लोगो', 'فرنٹ اینڈ لوگو', '前端徽标', 'フロントエンドのロゴ', 'Logotipo Frontend', 'Логотип внешнего интерфейса', 'Logo frontal', '프론트 엔드 로고', 'Frontend-Logo', 'Logo frontend', '', 'Frontend logó', 'Frontend-logo', 'Search Frontend', 'Logo Frontend', 'Ön Uç Logosu', 'Λογότυπο Frontend', 'آرم جلوی', 'Logo Depan', '', '', 'અગ્ર લોગો', 'Logo frontendu', 'Логотип Frontend', 'ਫਰੰਟੈਂਡ ਲੋਗੋ', 'Logo Frontend', '', 'Logo iwaju', 'Logo na gaba', NULL),
(847, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'Logotipo de administrador', 'شعار المسؤول', 'व्यवस्थापक लोगो', 'ایڈمن لوگو', '管理员徽标', '管理ロゴ', 'Admin Logo', 'Логотип администратора', 'Logo administrateur', '관리자 로고', 'Admin-Logo', 'Logo amministratore', '', 'Rendszergazda logó', 'Admin Logo', 'Search Maecenas et ipsum', 'Logo Admin', 'Yönetici Logosu', 'Λογότυπο διαχειριστή', 'آرم مدیریت', 'Logo Pentadbir', '', '', 'એડમિન લોગો', 'Logo administratora', 'Логотип адміністратора', 'ਐਡਮਿਨ ਲੋਗੋ', 'Logo-ul Admin', '', 'Abojuto Logo', 'Admin Logo', NULL),
(848, 'total_amount', 'Total Amount', 'সর্বমোট পরিমাণ', 'Cantidad total', 'المبلغ الإجمالي', 'कुल रकम', 'کل رقم', '总金额', '合計金額', 'Valor total', 'Итого', 'Montant total', '총액', 'Gesamtmenge', 'Importo totale', '', 'Teljes összeg', 'Totaalbedrag', 'Summa', 'Jumlah total', 'Toplam tutar', 'Συνολικό ποσό', 'مقدار کل', 'Jumlah keseluruhan', '', '', 'કુલ રકમ', 'Kwota ogółem', 'Загальна кількість', 'ਕੁੱਲ ਮਾਤਰਾ', 'Valoare totală', '', 'Oye gbo e', 'Jimla', NULL),
(849, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'Fecha de pago', 'موعد الدفع', 'भुगतान तिथि', 'ادائیگی کی تاریخ', '付款日期', '支払期日', 'Data de pagamento', 'Дата оплаты', 'Date de paiement', '지불 일', 'Zahlungsdatum', 'Data di pagamento', '', 'Fizetés nap', 'Betaaldatum', 'Payment Date', 'Tanggal pembayaran', 'Ödeme tarihi', 'Ημερομηνία πληρωμής', 'تاریخ پرداخت', 'Tarikh pembayaran', '', '', 'ચુકવણીની તારીખ', 'Termin płatności', 'Дата оплати', 'ਭੁਗਤਾਨ ਦੀ ਮਿਤੀ', 'Data de plată', '', 'Ọjọ isanwo', 'Ranar biya', NULL),
(851, 'total_balance', 'Total Balance', 'মোট ব্যালেন্স', 'Balance total', 'إجمالي الرصيد', 'कुल शेष', 'کل بیلنس', '总余额', '総合収支', 'Balanço total', 'Итоговый баланс', 'Solde total', '전체 균형', 'Gesamtsaldo', 'Saldo totale', '', 'Teljes egyensúly', 'Eindbalans', 'summa Libra', 'Total Saldo', 'Toplam Bakiye', 'Συνολικό υπόλοιπο', 'مجموع موجودی', 'Jumlah baki', '', '', 'કુલ બેલેન્સ', 'Saldo ogółem', 'Загальний баланс', 'ਕੁਲ ਬਕਾਇਆ', 'Soldul total', '', 'Apapọ Iwontunws.funfun', 'Jimlar Balaki', NULL),
(852, 'total_subject', 'Total Subject', 'মোট বিষয়', 'Asunto total', 'مجموع الموضوع', 'कुल विषय', 'کل مضمون', '总科目', '総件名', 'Assunto total', 'Общая тема', 'Sujet total', '총 과목', 'Gesamtthema', 'Totale soggetto', '', 'Tárgy összesen', 'Totaal onderwerp', 'summa Subject', 'Subjek total', 'Toplam Konu', 'Σύνολο θέματος', 'موضوع کل', 'Jumlah Subjek', '', '', 'કુલ વિષય', 'Przedmiot ogółem', 'Загальний предмет', 'ਕੁੱਲ ਵਿਸ਼ਾ', 'Subiect total', '', 'Lapapọ Koko-ọrọ', 'Gabaɗaya Batutuwa', NULL),
(853, 'transport_allowance', 'Transport Allowance', 'পরিবহন ভাতা', 'Permiso de transporte', 'بدل النقل', 'परिवहन भत्ता', 'ٹرانسپورٹ الاؤنس', '运输津贴', '輸送手当', 'Subsídio de Transporte', 'Пособие на транспорт', 'Indemnité de transport', '운송 허용량', 'Transportkosten', 'Indennità di trasporto', '', 'Szállítási támogatás', 'Transportkostenvergoeding', 'onerariam Allocacio', 'Tunjangan Transportasi', 'Ulaşım Ödeneği', 'Επίδομα μεταφοράς', 'کمک هزینه حمل و نقل', 'Elaun Pengangkutan', '', '', 'પરિવહન ભથ્થું', 'Dodatek transportowy', 'Транспортна допомога', 'ਟਰਾਂਸਪੋਰਟ ਭੱਤਾ', 'Indemnizația de transport', '', 'Gbigbalaaye Irinna', 'Bada izinin sufuri', NULL),
(854, 'medical_allowance', 'Medical Allowance', 'মেডিকেল ভাতা', 'Subsidio médico', 'بدل الطبي', 'चिकित्सा भत्ता', 'میڈیکل الاؤنس', '医疗津贴', '医療手当', 'Subsídio Médico', 'Медицинское пособие', 'Allocation médicale', '의료 수당', 'Medizinische Zulage', 'Indennità medica', '', 'Orvosi ellátás', 'Medische vergoeding', 'Medical Allocacio', 'Tunjangan Medis', 'Tıbbi Yardım', 'Ιατρικό επίδομα', 'کمک هزینه پزشکی', 'Elaun Perubatan', '', '', 'તબીબી ભથ્થું', 'Zasiłek medyczny', 'Медична допомога', 'ਮੈਡੀਕਲ ਭੱਤਾ', 'Indemnizație medicală', '', 'Agbogi Iwosan', 'Izinin likita', NULL),
(855, 'total_allowance', 'Total Allowance', 'মোট ভাতা', 'Subsidio total', 'بدل كلي', 'कुल भत्ता', 'کل الاؤنس', '总津贴', '総手当', 'Provisão Total', 'Общее пособие', 'Allocation totale', '총 수당', 'Gesamtzulage', 'Indennità totale', '', 'Teljes juttatás', 'Totale vergoeding', 'summa Allocacio', 'Total Tunjangan', 'Toplam Ödenek', 'Συνολικό επίδομα', 'کمک هزینه کل', 'Jumlah Elaun', '', '', 'કુલ ભથ્થું', 'Całkowity zasiłek', 'Загальна допомога', 'ਕੁੱਲ ਭੱਤਾ', 'Indemnizație totală', '', 'Owo-ifunni lapapọ', 'Jimlar izini', NULL),
(856, 'total_deduction', 'Total Deduction', 'মোট ছাড়', 'Deducción total', 'إجمالي الخصم', 'कुल कटौती', 'کل کٹوتی', '总扣除额', '総控除', 'Dedução total', 'Всего вычетов', 'Déduction totale', '총 공제', 'Gesamtabzug', 'Detrazione totale', '', 'Teljes levonás', 'Totale aftrek', 'summa Deductio', 'Potongan Total', 'Toplam kesinti', 'Συνολική έκπτωση', 'کسر کل', 'Potongan Jumlah', '', '', 'કુલ કપાત', 'Totalna dedukcja', 'Загальна відрахування', 'ਕੁੱਲ ਕਟੌਤੀ', 'Deducere totală', '', 'Akopọ Akopọ', 'Gaba daya Rage kudi', NULL),
(857, 'detail_payment', 'Detail Payment', 'বিশদ  পেমেন্ট', 'Detalle de pago', 'دفع التفاصيل', 'विस्तार भुगतान', 'تفصیل سے ادائیگی', '详细付款', '詳細支払', 'Pagamento Detalhado', 'Детальный платеж', 'Paiement détaillé', '세부 지불', 'Detailzahlung', 'Pagamento dettagliato', '', 'Részletes fizetés', 'Detail betaling', 'detail Payment', 'Detail Pembayaran', 'Detay Ödeme', 'Λεπτομέρεια Πληρωμή', 'پرداخت جزئیات', 'Bayaran Perincian', '', '', 'વિગતવાર ચુકવણી', 'Szczegóły płatności', 'Детальна оплата', 'ਵੇਰਵਾ ਭੁਗਤਾਨ', 'Detaliu Plata', '', 'Alaye Isanwo', 'Cikakken Biyan', NULL),
(858, 'send_date', 'Send Date', 'প্রেরণ তারিখ', 'Fecha de envio', 'تاريخ إرسال', 'तारीख बताएं', 'تاریخ بھیجیں', '发送日期', '送信日', 'Data de envio', 'Дата отправки', 'Envoyer la date', '날짜 보내기', 'Sende Datum', 'Invia data', '', 'Küldés dátuma', 'Verstuur datum', 'Mitte Date', 'Kirim Tanggal', 'Gönderi tarihi', 'Ημερομηνία αποστολής', 'تاریخ ارسال', 'Tarikh Hantar', '', '', 'તારીખ મોકલો', 'Przyślij datę', 'Дата надсилання', 'ਤਾਰੀਖ ਭੇਜੋ', 'Trimite data', '', 'Firanṣẹ Ọjọ', 'Kwanan Wata', NULL),
(859, 'new_issue', 'New Issue', 'নতুন বিষয়', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا شمارہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', '', 'Új probléma', 'Nieuw probleem', 'New issue', 'Masalah Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'شماره جدید', 'Isu Baru', '', '', 'નવો અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮੁੱਦਾ', 'Problemă nouă', '', 'Oro tuntun', 'Sabon fitowa', NULL),
(860, 'leave_reason', 'Leave Reason', 'ছুটির কারণ', 'Dejar la razón', 'سبب الإجازة', 'कारण छोड़ो', 'چھوڑ دیں وجہ', '离开原因', '理由を残す', 'Motivo da licença', 'Оставьте причину', 'Laisser la raison', '이유를 떠나', 'Grund verlassen', 'Lascia motivo', '', 'Hagyja az okot', 'Reden verlaten', 'discede ratio', 'Tinggalkan Alasan', 'Ayrılma Nedeni', 'Αφήστε το λόγο', 'ترک دلیل', 'Tinggalkan Sebab', '', '', 'છોડી દો કારણ', 'Zostaw powód', 'Залиште причину', 'ਛੱਡੋ ਕਾਰਨ', 'Lasă rațiunea', '', 'Fi Idi silẹ', 'Bar Dalili', NULL),
(861, 'update_label', 'Update Label', 'আপডেট লেবেল', 'Actualizar etiqueta', 'تحديث التسمية', 'अद्यतन लेबल', 'اپ ڈیٹ لیبل', '更新标签', 'ラベルを更新', 'Atualizar etiqueta', 'Обновить ярлык', 'Mettre à jour l\'étiquette', '라벨 업데이트', 'Label aktualisieren', 'Etichetta di aggiornamento', '', 'Frissítse a címkét', 'Label bijwerken', 'Update Label', 'Perbarui Label', 'Etiketi Güncelle', 'Ενημέρωση ετικέτας', 'برچسب را به روز کنید', 'Kemas kini Label', '', '', 'અપડેટ લેબલ', 'Zaktualizuj etykietę', 'Оновити мітку', 'ਅਪਡੇਟ ਲੇਬਲ', 'Etichetă de actualizare', '', 'Label Imudojuiwọn', 'Label sabuntawa', NULL),
(862, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', 'اسم اللغة', 'भाषा का नाम', 'زبان کا نام', '语言名称', '言語名', 'Nome do idioma', 'Название языка', 'Nom de la langue', '언어 이름', 'Sprache Name', 'Nome lingua', '', 'Nyelv neve', 'Taal naam', 'lingua nomine', 'nama bahasa', 'dil adı', 'Όνομα γλώσσας', 'نام زبان', 'Nama Bahasa', '', '', 'ભાષા નામ', 'Nazwa języka', 'Назва мови', 'ਭਾਸ਼ਾ ਦਾ ਨਾਮ', 'Numele limbii', '', 'Oruko Ede', 'Sunan Harshe', NULL),
(863, 'select_hostel', 'Select Hostel', 'হোস্টেল নির্বাচন করুন', 'Seleccionar albergue', 'حدد Hostel', 'छात्रावास का चयन करें', 'ہاسٹل منتخب کریں', '选择旅馆', 'セレクトホステル', 'Selecione Hostel', 'Выберите Хостел', 'Sélectionnez l\'auberge', '셀렉트 호스텔', 'Wählen Sie Hostel', 'Seleziona ostello', '', 'Válassza a Hostel lehetőséget', 'Selecteer Hostel', 'Lego Hostel', 'Pilih Hostel', 'Pansiyon Seçiniz', 'Επιλέξτε Ξενώνας', 'خوابگاه را انتخاب کنید', 'Pilih Asrama', '', '', 'છાત્રાલય પસંદ કરો', 'Wybierz Hostel', 'Виберіть хостел', 'ਹੋਸਟਲ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Hostel', '', 'Yan Ile ayagbe', 'Zaɓi Dakunan kwanan dalibai', NULL),
(864, 'select_room_no', 'Select Room No', 'রুম নম্বর নির্বাচন করুন', 'Seleccionar habitación no', 'حدد رقم الغرفة', 'कक्ष क्रमांक का चयन करें', 'کمرہ نمبر منتخب کریں', '选择房间号', '部屋番号を選択', 'Selecionar quarto Não', 'Выберите номер', 'Sélectionnez la chambre non', '방 번호 선택', 'Wählen Sie Raum-Nr', 'Seleziona la camera n', '', 'Válassza a Szobát', 'Selecteer kamer nr', 'Select No Comments', 'Pilih Kamar No', 'Oda Seçiniz', 'Επιλέξτε Αρ. Δωματίου', 'اتاق شماره را انتخاب کنید', 'Pilih No Bilik', '', '', 'રૂમ નં', 'Wybierz numer pokoju', 'Виберіть номер номер', 'ਕਮਰਾ ਨੰ', 'Selectați camera nr', '', 'Yan Yara Bẹẹkọ', 'Zaɓi Room Ba', NULL),
(865, 'add_to_hostel', 'Add to Hostel', 'হোস্টেলে যোগ করুন', 'Añadir al albergue', 'أضف إلى نزل', 'छात्रावास में जोड़ें', 'ہاسٹل میں شامل کریں', '添加到旅馆', 'ホステルに追加', 'Adicionar ao Hostel', 'Добавить в хостел', 'Ajouter à l\'auberge', '호스텔에 추가', 'Zum Hostel hinzufügen', 'Aggiungi all\'ostello', '', 'Add hozzá a Hostelhez', 'Toevoegen aan hostel', 'Add to Hostel', 'Tambahkan ke Hostel', 'Hostel\'e ekle', 'Προσθήκη στον ξενώνα', 'اضافه کردن به Hostel', 'Tambah ke Asrama', '', '', 'છાત્રાલયમાં ઉમેરો', 'Dodaj do hostelu', 'Додати в хостел', 'ਹੋਸਟਲ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la Hostel', '', 'Fi si Ile ayagbe', 'Toara don Dakunan kwanan dalibai', NULL),
(866, 'room_type', 'Room Type', 'কক্ষ ধরণ', 'Tipo de habitación', 'نوع الغرفة', 'कमरे जैसा', 'کمرے کی قسم', '房型', '部屋タイプ', 'Tipo de sala', 'Тип номера', 'Type de chambre', '객실 유형', 'Zimmertyp', 'Tipo di stanza', '', 'Szoba típus', 'Kamertype', 'locus Type', 'Tipe ruangan', 'Oda tipi', 'Τύπος δωματίου', 'نوع اتاق', 'Jenis bilik', '', '', 'ઓરડા નો પ્રકાર', 'Rodzaj pokoju', 'Тип кімнати', 'ਕਮਰੇ ਦੀ ਕਿਸਮ', 'Tipul camerei', '', 'Iru Yara', 'Nau\'in Room', NULL),
(867, 'to_title', 'To Title', 'টু শিরোনাম', 'Titular', 'إلى العنوان', 'शीर्षक करने के लिए', 'عنوان سے', '到标题', 'タイトルへ', 'Para título', 'К названию', 'Au titre', '제목', 'Zum Titel', 'Al titolo', '', 'Címhez', 'Naar titel', 'Ad Titulus', 'Untuk Judul', 'Başlığa', 'Στον τίτλο', 'به عنوان', '', '', '', 'શીર્ષક માટે', 'Do tytułu', 'До заголовка', 'ਸਿਰਲੇਖ ਨੂੰ', 'La titlu', '', 'Si Akọle', 'Zuwa taken', NULL),
(868, 'from_title', 'From Title', 'থেকে শিরোনাম', 'Del título', 'من العنوان', 'शीर्षक से', 'عنوان سے', '从标题', 'タイトルから', 'Do título', 'Из заголовка', 'Du titre', '제목에서', 'Aus dem Titel', 'Dal titolo', '', 'Címből', 'Van titel', 'Ex Titulus', 'Dari Title', 'Başlıktan', 'Από τον τίτλο', 'از عنوان', 'Dari Tajuk', '', '', 'શીર્ષકમાંથી', 'Z tytułu', 'З назви', 'ਸਿਰਲੇਖ ਤੋਂ', 'Din titlu', '', 'Lati Akọle', 'Daga Take', NULL),
(869, 'dispatch_date', 'Dispatch Date', 'প্রেরণ  তারিখ', 'Fecha de envio', 'تاريخ الإرسال', 'प्रेषण तारीख', 'بھیجنے کی تاریخ', '发货日期', '発送日', 'Data de expedição', 'Дата отправки', 'Date d\'envoi', '파견 날짜', 'Versanddatum', 'Data di spedizione', '', 'Elküldési dátum', 'Verzendingsdatum', 'expedite Date', 'Tanggal pengiriman', 'Gönderme tarihi', 'Ημερομηνία αποστολής', 'تاریخ اعزام', 'Tarikh penghantaran', '', '', 'રવાનગી તારીખ', 'Termin wysyłki', 'Дата відправки', 'ਭੇਜਣ ਦੀ ਮਿਤੀ', 'Data expedierii', '', 'Ṣọjọ Ọjọ', 'Kwanan Wata', NULL),
(870, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear página', 'إنشاء صفحة', 'पेज बनाएं', 'صفحہ تخلیق کریں', '建立页面', 'ページを作成', 'Criar página', 'Создать страницу', 'Créer une page', '페이지 작성', 'Seite erstellen', 'Crea pagina', '', 'Oldal létrehozása', 'Maak pagina', 'Create Page', 'Membuat halaman', 'Sayfa oluştur', 'Δημιουργία σελίδας', 'ایجاد صفحه', 'Buat Halaman', '', '', 'પૃષ્ઠ બનાવો', 'Stwórz stronę', 'Створити сторінку', 'ਪੇਜ ਬਣਾਓ', 'Crează pagină', '', 'Ṣẹda Oju-iwe', 'Pageirƙiri Shafin', NULL),
(871, 'url_slug', 'Url Slug', 'ইউআরএল স্লাগ', 'Babosa de url', 'عنوان Url Slug', 'उर्ल स्लग', 'یو آر سلگ', '头子弹', 'URLスラッグ', 'Lesma de URL', 'Url Slug', 'Url Slug', 'URL 슬러그', 'URL-Schnecke', 'Url Slug', '', 'Url Slug', 'Url Slug', 'url limax', 'Slug Url', 'URL Slug', 'Url Slug', 'اسلایگ Url', 'Url Slug', '', '', 'યુઆરએલ ગોકળગાય', 'Url Slug', 'Url Slug', 'Lਰਲ ਸਲੱਗ', 'Url Slug', '', 'Bibẹrẹ Url', 'Url slug', NULL),
(872, 'select_student', 'Select Student', 'ছাত্র নির্বাচন করুন', 'Seleccionar estudiante', 'حدد الطالب', 'छात्र का चयन करें', 'طالب علم کو منتخب کریں', '选择学生', '学生を選択', 'Selecionar Aluno', 'Выберите студента', 'Sélectionnez un étudiant', '학생 선택', 'Wählen Sie Student', 'Seleziona studente', '', 'Válassza a Hallgató lehetőséget', 'Selecteer Student', 'Discipulus selecta', 'Pilih Siswa', 'Öğrenci Seçin', 'Επιλέξτε Φοιτητής', 'اسلایگ Url', 'Pilih Pelajar', '', '', 'વિદ્યાર્થી પસંદ કરો', 'Wybierz Student', 'Виберіть Учень', 'ਵਿਦਿਆਰਥੀ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Student', '', 'Yan Ọmọ ile-iwe', 'Zabi Dalibi', NULL),
(873, 'all_result_card', 'All Result Card', 'সমস্ত ফলাফল কার্ড', 'Tarjeta de todos los resultados', 'كل بطاقة النتيجة', 'सभी रिजल्ट कार्ड', 'تمام نتائج کارڈ', '所有结果卡', 'すべての結果カード', 'Cartão de todos os resultados', 'Карта всех результатов', 'Carte de tous les résultats', '모든 결과 카드', 'Alle Ergebniskarte', 'Tutte le carte risultato', '', 'Minden eredmény kártya', 'Alle resultaatkaart', 'Omnia Ex Card', 'Semua Kartu Hasil', 'Tüm Sonuç Kartı', 'Κάρτα όλων των αποτελεσμάτων', 'تمام کارت نتیجه', 'Semua Keputusan Kad', '', '', 'બધા પરિણામ કાર્ડ', 'Karta wyników wszystkich', 'Усі картки результатів', 'ਸਾਰੇ ਨਤੀਜੇ ਕਾਰਡ', 'Cartea cu toate rezultatele', '', 'Gbogbo Kaadi Esi', 'Duk Katin amsawa', NULL),
(874, 'student_mark', 'Student Mark', 'ছাত্র মার্ক', 'Marca de estudiante', 'مارك الطالب', 'छात्र मार्क', 'طالب علم کا نشان', '学生分数', '学生マーク', 'Student Mark', 'Студенческая марка', 'Étudiant Mark', '학생 마크', 'Student Mark', 'Studente Mark', '', 'Mark Mark', 'Student Mark', 'Mark discipulus', 'Tanda Mahasiswa', 'Öğrenci İşareti', 'Φοιτητής Mark', 'مارک دانشجویی', 'Markah Pelajar', '', '', 'વિદ્યાર્થી માર્ક', 'Mark Student', 'Студентська оцінка', 'ਵਿਦਿਆਰਥੀ ਮਾਰਕ', 'Marcajul studentului', '', 'Marku Akeko', 'Dalibi Mark', NULL),
(875, 'exam_title', 'Exam Title', 'পরীক্ষার শিরোনাম', 'Título del examen', 'عنوان الامتحان', 'परीक्षा का शीर्षक', 'امتحان کا عنوان', '考试标题', '試験のタイトル', 'Título do exame', 'Название экзамена', 'Titre de l\'examen', '시험 제목', 'Prüfungstitel', 'Titolo dell\'esame', '', 'Vizsga címe', 'Titel van examen', 'Title nito', 'Judul ujian', 'Sınav Başlığı', 'Τίτλος εξετάσεων', 'عنوان امتحان', 'Tajuk Peperiksaan', '', '', 'પરીક્ષાનું શીર્ષક', 'Tytuł egzaminu', 'Назва іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ', 'Titlul examenului', '', 'Akọle Idanwo', 'Take a jarrabawa', NULL),
(876, 'obtain_mark', 'Obtain Mark', 'প্রাপ্ত মার্ক', 'Obtener Mark', 'احصل على علامة', 'मार्क प्राप्त करें', 'مارک حاصل کریں', '获得标记', 'マークを取得', 'Obter marca', 'Получить марку', 'Obtenir Mark', '마크 획득', 'Mark erhalten', 'Ottieni Mark', '', 'Szerezz be Markot', 'Verkrijg Mark', 'Mark obtain', 'Dapatkan Mark', 'İşaret Al', 'Αποκτήστε το σήμα', 'به دست آوردن مارک', 'Dapatkan Mark', '', '', 'માર્ક મેળવો', 'Uzyskaj znak', 'Отримати позначку', 'ਮਾਰਕ ਪ੍ਰਾਪਤ ਕਰੋ', 'Obțineți marca', '', 'Gba Mark', 'Samu Mark', NULL),
(877, 'total_obtain_mark', 'Total Obtain Mark', 'মোট প্রাপ্তি  মার্ক', 'Total obtener marca', 'إجمالي الحصول على علامة', 'कुल प्राप्त मार्क', 'کل حاصل کریں', '总获得分数', '合計取得マーク', 'Marca de obtenção total', 'Всего Получить Марк', 'Total obtenir la note', '총 획득 마크', 'Total Mark erhalten', 'Punteggio totale ottenuto', '', 'Összesen szerezzen Mark', 'Total Obtain Mark', 'Vitam Mark summa', 'Total Mendapatkan Tanda', 'Toplam Elde Etme İşareti', 'Σύνολο απόκτησης σήματος', 'علامت گذاری به دست آمده', 'Jumlah Mendapatkan Markah', '', '', 'કુલ પ્રાપ્ત માર્ક', 'Łącznie uzyskaj ocenę', 'Загальна оцінка', 'ਕੁੱਲ ਪ੍ਰਾਪਤੀ ਮਾਰਕ', 'Total Obțineți nota', '', 'Lapapọ Gba Mark', 'Jimlar Samun Alama', NULL),
(878, 'total_mark', 'Total Mark', 'মোট  মার্ক', 'Marca total', 'مجموع مارك', 'कुल निशान', 'کل نشان', '总分', '合計マーク', 'Marca total', 'Общая оценка', 'Marque totale', '총 마크', 'Gesamtnote', 'Punteggio totale', '', 'Összesen Mark', 'Totaal cijfer', 'Mark summa', 'Total Mark', 'Toplam İşaret', 'Συνολικό σήμα', 'کل مارک', 'Jumlah Markah', '', '', 'કુલ માર્ક', 'Łączna ocena', 'Загальна оцінка', 'ਕੁੱਲ ਮਾਰਕ', 'Marcaj total', '', 'Marku lapapọ', 'Jimillar Alama', NULL),
(879, 'exam_date', 'Exam Date', 'পরীক্ষার তারিখ', 'Fecha de examen', 'موعد الامتحان', 'परीक्षा की तारीख', 'امتحان کی تاریخ', '考试日期', '試験日', 'Data do exame', 'Дата экзамена', 'Date de l\'examen', '시험 날짜', 'Prüfungsdatum', 'Data dell\'esame', '', 'Vizsga dátuma', 'Examendatum', 'nito Date', 'Tanggal ujian', 'Sınav Tarihi', 'Ημερομηνία εξέτασης', 'تاریخ امتحان', 'Tarikh Peperiksaan', '', '', 'પરીક્ષાની તારીખ', 'Data egzaminu', 'Дата іспиту', 'ਪ੍ਰੀਖਿਆ ਦੀ ਮਿਤੀ', 'Data examenului', '', 'Ọjọ kẹhìn', 'Kwanan gwaji', NULL),
(880, 'generate_card', 'Generate Card', 'জেনারেট কার্ড', 'Generar tarjeta', 'إنشاء بطاقة', 'कार्ड जनरेट करें', 'کارڈ بنائیں', '产生卡', 'カードを生成', 'Gerar cartão', 'Создать карту', 'Générer une carte', '카드 생성', 'Karte generieren', 'Genera carta', '', 'Készítsen kártyát', 'Genereer kaart', 'Card generate', 'Hasilkan Kartu', 'Kart Oluştur', 'Δημιουργία κάρτας', 'ایجاد کارت', 'Hasilkan Kad', '', '', 'કાર્ડ બનાવો', 'Wygeneruj kartę', 'Створення картки', 'ਕਾਰਡ ਬਣਾਓ', 'Generați card', '', 'Ina Kaadi', 'Kirkirar Katin', NULL),
(881, 'id_card_setting', 'ID Card Setting', 'আইডি কার্ড সেটিং', 'Configuración de tarjeta de identificación', 'إعداد بطاقة الهوية', 'आईडी कार्ड सेटिंग', 'شناختی کارڈ کی ترتیب', '身份证设置', 'IDカード設定', 'Configuração do cartão de identificação', 'Настройка удостоверения личности', 'Réglage de la carte d\'identité', 'ID 카드 설정', 'ID-Karteneinstellung', 'Impostazione della carta d\'identità', '', 'Azonosító kártya beállítása', 'ID-kaart instellen', 'Profecti id Card', 'Pengaturan Kartu ID', 'Kimlik Kartı Ayarı', 'Ρύθμιση ταυτότητας', 'تنظیم کارت شناسایی', 'Penetapan Kad Pengenalan', '', '', 'આઈડી કાર્ડ સેટિંગ', 'Ustawienie dowodu osobistego', 'Налаштування посвідчення особи', 'ਆਈਡੀ ਕਾਰਡ ਸੈਟਿੰਗ', 'Setarea cărții de identitate', '', 'Eto Kaadi ID', 'Saitin Katin ID', NULL),
(882, 'admit_card_setting', 'Admit Card Setting', 'এডমিট কার্ড সেটিং', 'Configuración de tarjeta de admisión', 'إعداد بطاقة القبول', 'एडमिट कार्ड सेटिंग', 'کارڈ سیٹنگ', '准卡设置', 'カード設定を認める', 'Configuração do cartão de admissão', 'Настройка карты допуска', 'Admettre le paramètre de la carte', '카드 설정 인정', 'Karteneinstellung zulassen', 'Ammetti impostazione carta', '', 'Fogadja el a kártya beállítását', 'Kaartinstelling toestaan', 'Profecti Card fateri', 'Pengaturan Kartu Akui', 'Kabul Kartı Ayarı', 'Ρύθμιση κάρτας αποδοχής', 'پذیرفتن تنظیم کارت', 'Tetapkan Kad Admit', '', '', 'પ્રવેશ કાર્ડ સેટિંગ', 'Przyznaj ustawienie karty', 'Налаштування картки', 'ਦਾਖਲਾ ਕਾਰਡ ਸੈਟਿੰਗ', 'Admitere Setare card', '', 'Gbigba Eto Kaadi', 'Sanya Kayan Katin', NULL),
(883, 'teacher_id_card', 'Teacher ID card', 'শিক্ষকের আইডি কার্ড', 'Tarjeta de identificación del maestro', 'بطاقة هوية المعلم', 'टीचर आईडी कार्ड', 'اساتذہ کا شناختی کارڈ', '教师证', '教師IDカード', 'Cartão de identificação do professor', 'Удостоверение личности учителя', 'Carte d\'identité de l\'enseignant', '교사 신분증', 'Lehrerausweis', 'Carta d\'identità dell\'insegnante', '', 'Tanár személyi igazolványa', 'Docent ID-kaart', 'ID card magister', 'Kartu identitas guru', 'Öğretmen kimlik kartı', 'Δελτίο ταυτότητας δασκάλου', 'شناسنامه معلم', 'Kad pengenalan guru', '', '', 'શિક્ષકનું આઈડી કાર્ડ', 'Dowód tożsamości nauczyciela', 'Посвідчення особи вчителя', 'ਅਧਿਆਪਕ ਦਾ ਆਈਡੀ ਕਾਰਡ', 'Cartea de identitate a profesorului', '', 'ID kaadi olukọ', 'Katin ID na malami', NULL),
(884, 'employee_id_card', 'Employee ID Card', 'কর্মচারী আইডি কার্ড', 'Tarjeta de identificación del empleado', 'بطاقة هوية الموظف', 'कर्मचारी आईडी कार्ड', 'ملازم شناختی کارڈ', '员工身份证', '社員証', 'Cartão de identificação do funcionário', 'Удостоверение личности сотрудника', 'Carte d\'identité d\'employé', '직원 ID 카드', 'Mitarbeiterausweis', 'Carta d\'identità del dipendente', '', 'Munkavállalói személyi igazolvány', 'ID-kaart werknemer', 'Aliquam id Card', 'Kartu ID Karyawan', 'Çalışan Kimlik Kartı', 'Κάρτα ταυτότητας υπαλλήλου', 'شناسنامه کارمند', 'Kad Pengenalan Pekerja', '', '', 'કર્મચારીનું આઈડી કાર્ડ', 'Dowód osobisty pracownika', 'Посвідчення особи працівника', 'ਕਰਮਚਾਰੀ ਆਈਡੀ ਕਾਰਡ', 'Cartea de identitate a angajaților', '', 'Kaadi ID agbanisiṣẹ', 'Katin ID na Ma\'aikata', NULL),
(885, 'student_id_card', 'Student ID Card', 'শিক্ষার্থী আইডি কার্ড', 'Credencial de estudiante', 'بطاقة هوية الطالب', 'छात्र आईडी कार्ड', 'طلباء کا شناختی کارڈ', '学生证', '学生証', 'Cartão de identificação de estudante', 'Студенческий билет', 'Carde d\'identité d\'étudiant', '학생증', 'Studentenausweis', 'Carta d\'identità dello studente', '', 'Diák személyi igazolvány', 'Student ID kaart', 'Studiosum ID Card', 'Kartu Identitas Mahasiswa', 'Öğrenci kimlik Kartı', 'Φοιτητική ταυτότητα', 'کارت دانشجویی', 'Kad Pengenalan Pelajar', '', '', 'વિદ્યાર્થી આઈડી કાર્ડ', 'Legitymacja studencka', 'Посвідчення особи студента', 'ਵਿਦਿਆਰਥੀ ID ਕਾਰਡ', 'Cartea de identitate a studentului', '', 'ID kaadi ọmọ ile-iwe', 'Katin ID na dalibi', NULL),
(886, 'student_admit_card', 'Student Admit Card', 'শিক্ষার্থী এডমিট কার্ড', 'Tarjeta de admisión de estudiante', 'بطاقة قبول الطالب', 'छात्र एडमिट कार्ड', 'طلباء کا داخلہ کارڈ', '学生录取卡', '学生入学カード', 'Cartão de Admissão de Estudante', 'Студенческий билет', 'Carte d\'admission étudiant', '학생 인정 카드', 'Student Admit Card', 'Student Admit Card', '', 'Hallgató befogadási kártya', 'Student geef kaart toe', 'Tamen scito Card discipulus', 'Kartu Penerimaan Mahasiswa', 'Öğrenci Kabul Kartı', 'Φοιτητική κάρτα αποδοχής', 'کارت اعتراف دانشجویی', 'Kad Pengenalan Pelajar', '', '', 'વિદ્યાર્થી પ્રવેશ કાર્ડ', 'Karta wstępu studenckiego', 'Картка прийому студентів', 'ਵਿਦਿਆਰਥੀ ਦਾਖਲਾ ਕਾਰਡ', 'Cartea de admitere a studentului', '', 'Ọmọ Kaadi Gbigbe', 'Katin Karatun Dalibi', NULL),
(887, 'border_color', 'Border Color', 'বর্ডার কালার', 'Color del borde', 'لون الحدود', 'किनारे का रंग', 'بارڈر کلر', '边框颜色', 'ボーダの色', 'Cor da borda', 'Цвет границы', 'Couleur de la bordure', '테두리 색', 'Randfarbe', 'Colore del bordo', '', 'Keretszín', 'Rand kleur', 'terminus Colo colui cultum', 'Warna perbatasan', 'Sınır rengi', 'Χρώμα πλαισίου', 'رنگ لبه', 'Warna Sempadan', '', '', 'બોર્ડર કલર', 'Kolor ramki', 'Колір кордону', 'ਬਾਰਡਰ ਰੰਗ', 'Culoare de graniță', '', 'Awọ Aala', 'Launin Kasa', NULL),
(888, 'top_background', 'Top Background', 'টপ ব্যাকগ্রাউন্ড', 'Fondo superior', 'الخلفية العليا', 'शीर्ष पृष्ठभूमि', 'سرفہرست پس منظر', '热门背景', '上の背景', 'Plano de fundo superior', 'Верхний фон', 'Contexte supérieur', '최고 배경', 'Top Hintergrund', 'Sfondo superiore', '', 'Felső háttér', 'Top achtergrond', 'Top nibh', 'Latar Belakang Atas', 'Üst Arka Plan', 'Κορυφαίο φόντο', 'پیش زمینه برتر', 'Latar Belakang Teratas', '', '', 'ટોચની પૃષ્ઠભૂમિ', 'Najlepsze tło', 'Топ фону', 'ਚੋਟੀ ਦਾ ਪਿਛੋਕੜ', 'Fundal de sus', '', 'Ile abẹlẹ', 'Manyan Bango', NULL),
(889, 'card_school_name', 'Card School Name', 'কার্ড স্কুলের নাম', 'Nombre de la escuela de la tarjeta', 'اسم مدرسة البطاقة', 'कार्ड स्कूल का नाम', 'کارڈ اسکول کا نام', '卡片学校名称', 'カードスクール名', 'Nome da escola do cartão', 'Название школы карты', 'Nom de l\'école de cartes', '카드 학교 이름', 'Name der Kartenschule', 'Nome scuola card', '', 'Kártyaiskola neve', 'Naam kaartschool', 'Card nomen School', 'Nama Sekolah Kartu', 'Kart Okulu Adı', 'Όνομα σχολικής κάρτας', 'نام مدرسه کارت', 'Nama Sekolah Kad', '', '', 'કાર્ડ શાળા નામ', 'Nazwa szkoły karcianej', 'Назва школи картки', 'ਕਾਰਡ ਸਕੂਲ ਦਾ ਨਾਮ', 'Numele școlii cardului', '', 'Orukọ Ile-iwe Kaadi', 'Katin Makaranta', NULL),
(890, 'card_logo', 'Card Logo', 'কার্ড লোগো', 'Logotipo de la tarjeta', 'شعار البطاقة', 'कार्ड लोगो', 'کارڈ لوگو', '卡徽标', 'カードのロゴ', 'Logotipo do cartão', 'Логотип карты', 'Logo de la carte', '카드 로고', 'Kartenlogo', 'Logo della carta', '', 'Kártya logó', 'Kaart Logo', 'Search Card', 'Logo Kartu', 'Kart Logosu', 'Λογότυπο κάρτας', 'آرم کارت', 'Logo Kad', '', '', 'કાર્ડ લોગો', 'Logo karty', 'Картка логотип', 'ਕਾਰਡ ਲੋਗੋ', 'Logo-ul cardului', '', 'Logo Kaadi', 'Logo Katin', NULL),
(891, 'school_name_font_size', 'School Name Font Size', 'স্কুল নাম ফন্ট সাইজ', 'Nombre de la escuela Tamaño de fuente', 'حجم الخط اسم المدرسة', 'स्कूल का नाम फ़ॉन्ट आकार', 'اسکول کا نام فونٹ سائز', '学校名称字体大小', '学校名のフォントサイズ', 'Nome da escola Tamanho da fonte', 'Название школы Размер шрифта', 'Nom de l\'école Taille de police', '학교 이름 글꼴 크기', 'Schulname Schriftgröße', 'Dimensione carattere nome scuola', '', 'Iskola neve Betűméret', 'Lettergrootte schoolnaam', 'Nomen schola Font Size', 'Ukuran Font Nama Sekolah', 'Okul Adı Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς Όνομα σχολείου', 'اندازه مدرسه قلم', 'Saiz Fon Nama Sekolah', '', '', 'શાળા નામ ફોન્ટ કદ', 'Rozmiar czcionki nazwy szkoły', 'Розмір шрифту назви школи', 'ਸਕੂਲ ਦਾ ਨਾਮ ਫੋਂਟ ਆਕਾਰ', 'Numele școlii Dimensiunea fontului', '', 'Iwọn Font School', 'Girman sunan Font', NULL),
(892, 'school_name_color', 'School Name Color', 'স্কুল নাম কালার', 'Nombre del colegio Color', 'لون اسم المدرسة', 'स्कूल का नाम रंग', 'اسکول کا نام رنگ', '学校名称颜色', '学校名の色', 'Nome da escola Cor', 'Название школы Цвет', 'Couleur du nom de l\'école', '학교 이름 색상', 'Schulname Farbe', 'Colore nome scuola', '', 'Iskola neve szín', 'Kleur schoolnaam', 'Nomen schola Colo colui cultum', 'Warna Nama Sekolah', 'Okul Adı Renk', 'Χρώμα ονόματος σχολείου', 'نام مدرسه رنگ', 'Warna Nama Sekolah', '', '', 'શાળા નામ રંગ', 'Kolor nazwy szkoły', 'Колір назви школи', 'ਸਕੂਲ ਦਾ ਨਾਮ ਰੰਗ', 'Numele școlii', '', 'Awọ Orukọ Ile-iwe', 'Sunan Makaranta mai launi', NULL),
(893, 'school_address', 'School Address', 'স্কুলের ঠিকানা', 'Dirección de Escuela', 'عنوان المدرسة', 'स्कूल का पता', 'اسکول کا پتہ', '学校地址', '学校の住所', 'Endereço escolar', 'Адрес школы', 'Adresse de l\'école', '학교 주소', 'Schuladresse', 'Indirizzo di scuola', '', 'Iskola címe', 'School adres', 'Oratio School', 'Alamat Sekolah', 'Okul adresi', 'Διεύθυνση σχολείου', 'آدرس مدرسه', 'Alamat Sekolah', '', '', 'શાળા સરનામું', 'Adres szkoły', 'Адреса школи', 'ਸਕੂਲ ਦਾ ਪਤਾ', 'Adresa școlii', '', 'Adirẹsi ile-iwe', 'Adireshin Makaranta', NULL),
(894, 'school_address_color', 'School Address Color', 'স্কুলের ঠিকানা কালার', 'Dirección de escuela Color', 'لون عنوان المدرسة', 'स्कूल का पता रंग', 'اسکول کا پتہ رنگ', '学校地址颜色', '学校の住所の色', 'Cor do endereço da escola', 'Адрес школы Цвет', 'Couleur de l\'adresse de l\'école', '학교 주소 색상', 'Farbe der Schuladresse', 'Colore indirizzo scuola', '', 'Iskola címének színe', 'Kleur schooladres', 'Oratio schola Colo colui cultum', 'Warna Alamat Sekolah', 'Okul Adresi Rengi', 'Χρώμα διεύθυνσης σχολείου', 'رنگ آدرس مدرسه', 'Warna Alamat Sekolah', '', '', 'શાળા સરનામું રંગ', 'Kolor adresu szkoły', 'Колір адреси школи', 'ਸਕੂਲ ਪਤਾ ਰੰਗ', 'Culoarea adresei școlii', '', 'Awọ Adirẹsi Ile-iwe', 'Launin Adireshin Makaranta', NULL),
(895, 'admit_title_font_size', 'Admit Title Font Size', 'এডমিট টাইটেল ফন্ট সাইজ', 'Admitir título Tamaño de fuente', 'الاعتراف بحجم خط العنوان', 'एडमिट शीर्षक फ़ॉन्ट का आकार', 'عنوان فونٹ سائز داخل کریں', '承认标题字体大小', 'タイトルのフォントサイズを認める', 'Tamanho da fonte do título de admissão', 'Допустить заголовок Размер шрифта', 'Admettre la taille de la police du titre', '제목 글꼴 크기 허용', 'Titel Schriftgröße zulassen', 'Ammetti la dimensione del carattere del titolo', '', 'Adja meg a cím betűméretét', 'Geef de lettertypegrootte van de titel toe', 'Font Size Title fateri', 'Akui Ukuran Font Judul', 'Başlık Adı Yazı Tipi Boyutu', 'Παραδοχή τίτλου Μέγεθος γραμματοσειράς', 'اندازه فونت عنوان را قبول کنید', 'Akui Ukuran Fon Tajuk', '', '', 'શીર્ષક ફontન્ટ કદ દાખલ કરો', 'Przyznaj rozmiar czcionki tytułu', 'Призначте розмір шрифту заголовка', 'ਸਿਰਲੇਖ ਫੋਂਟ ਆਕਾਰ ਦਾਖਲ ਕਰੋ', 'Admiterea titlului Dimensiunea fontului', '', 'Gbigbe Akọle Font Iwon', 'Shigar da Girman Harafi', NULL),
(896, 'id_no_font_size', 'ID No Font Size', 'আইডি ফন্ট সাইজ', 'ID sin tamaño de fuente', 'المعرف لا حجم الخط', 'आईडी नंबर फ़ॉन्ट आकार', 'ID کوئی فونٹ سائز نہیں', 'ID号字体大小', 'IDフォントサイズなし', 'ID Sem tamanho da fonte', 'ID без размера шрифта', 'ID Pas de taille de police', 'ID가없는 폰트 크기', 'ID Keine Schriftgröße', 'ID Nessuna dimensione carattere', '', 'Azonosító nem betűméret', 'ID Geen lettergrootte', 'Nemo id Font Size', 'ID No Ukuran Huruf', 'Kimlik No Yazı Tipi Boyutu', 'ID No Μέγεθος γραμματοσειράς', 'شناسه بدون اندازه قلم', 'Saiz Font No ID', '', '', 'આઈડી નો ફontન્ટ સાઇઝ', 'ID Brak rozmiaru czcionki', 'Ідентифікатор Без розміру шрифту', 'ID ਕੋਈ ਫੋਂਟ ਅਕਾਰ ਨਹੀਂ', 'ID Fără dimensiune font', '', 'ID Ko si Iwọn Font', 'ID Babu Girman Font', NULL),
(897, 'admit_title_color', 'Admit Title Color', 'এডমিট টাইটেল কালার', 'Admitir color del título', 'قبول لون العنوان', 'एडमिट टाइटल कलर', 'عنوان رنگ داخل کریں', '承认标题颜色', 'タイトルの色を認める', 'Confirmar cor do título', 'Признать цвет заголовка', 'Admettre la couleur du titre', '제목 색상 인정', 'Titelfarbe zugeben', 'Ammetti il colore del titolo', '', 'Adja meg a cím színét', 'Geef titelkleur toe', 'Title Colo colui cultum fateri', 'Akui Warna Judul', 'Başlık Rengi Kabul Et', 'Εισαγωγή χρώματος τίτλου', 'قبول عنوان رنگ', 'Akui Warna Tajuk', '', '', 'શીર્ષકનો રંગ સ્વીકારો', 'Przyznaj kolor tytułu', 'Призначте заголовок кольору', 'ਸਿਰਲੇਖ ਦਾ ਰੰਗ ਸਵੀਕਾਰ', 'Admiteti culoarea titlului', '', 'Gbigbe Awọ akọle', 'Sanya Launi mai Launi', NULL),
(898, 'id_no_color', 'ID No Color', 'আইডি  কালার', 'ID sin color', 'رقم التعريف لا لون', 'आईडी कोई रंग नहीं', 'شناختی رنگ نہیں', '身份证号码颜色', 'ID色なし', 'ID sem cor', 'ID нет цвета', 'ID Pas de couleur', '아이디 색상 없음', 'ID Keine Farbe', 'ID Nessun colore', '', 'Nem színes', 'ID Geen kleur', 'Nemo id Coloris', 'ID Tidak Berwarna', 'ID Renk Yok', 'Αναγνωριστικό χωρίς χρώμα', 'شناسه بدون رنگ', 'ID Tiada Warna', '', '', 'ID નો રંગ', 'Nr ID koloru', 'Ідентифікатор немає кольору', 'ਆਈਡੀ ਦਾ ਕੋਈ ਰੰਗ ਨਹੀਂ', 'ID nr de culoare', '', 'ID Ko si Awọ', 'ID Babu Launi', NULL),
(899, 'admit_title_background', 'Admit Title Background', 'এডমিট টাইটেল ব্যাকগ্রাউন্ড', 'Admitir fondo del título', 'قبول خلفية العنوان', 'एडमिट टाइटल बैकग्राउंड', 'عنوان کا پس منظر تسلیم کریں', '承认标题背景', 'タイトルの背景を認める', 'Admitir título fundo', 'Допустить название фона', 'Admettre l\'arrière-plan du titre', '제목 배경 인정', 'Titelhintergrund zugeben', 'Ammetti lo sfondo del titolo', '', 'Fogadja el a háttér hátterét', 'Geef titelachtergrond toe', 'Title fateri Maecenas vitae', 'Akui Latar Belakang Judul', 'Başlık Arka Planını Kabul Et', 'Παρακολούθηση ιστορικού τίτλου', 'پیشینه عنوان را بپذیرید', 'Akui Latar Belakang Tajuk', '', '', 'શીર્ષક પૃષ્ઠભૂમિ દાખલ કરો', 'Przyznaj tytuł tła', 'Призначте заголовок фону', 'ਸਿਰਲੇਖ ਦਾ ਪਿਛੋਕੜ ਦਾਖਲ ਕਰੋ', 'Admiteți fundalul titlului', '', 'Gba akọle abẹlẹ', 'Sanya taken Bango', NULL),
(900, 'id_no_background', 'ID No Background', 'আইডি ব্যাকগ্রাউন্ড', 'ID sin antecedentes', 'رقم التعريف الخلفية', 'आईडी कोई पृष्ठभूमि नहीं', 'ID کا کوئی پس منظر نہیں', '身份证号背景', 'ID背景なし', 'ID sem fundo', 'ID без фона', 'ID sans arrière-plan', '아이디 없음 배경', 'ID Kein Hintergrund', 'ID senza sfondo', '', 'Azonosító nem háttér', 'ID Geen achtergrond', 'Non id Maecenas vitae', 'ID No Background', 'Kimlik Arka Plan Yok', 'Αναγνωριστικό χωρίς φόντο', 'شناسه بدون سابقه', 'ID Tiada Latar Belakang', '', '', 'ID નો પૃષ્ઠભૂમિ', 'ID Bez tła', 'Ідентифікатор відсутній', 'ID ਕੋਈ ਪਿਛੋਕੜ ਨਹੀਂ', 'ID nr de fundal', '', 'ID Ko si abẹlẹ', 'ID Babu Fage', NULL),
(901, 'title_font_size', 'Title Font Size', 'টাইটেল ফন্ট সাইজ', 'Tamaño de fuente del título', 'حجم خط العنوان', 'शीर्षक फ़ॉन्ट आकार', 'عنوان فونٹ سائز', '标题字体大小', 'タイトルのフォントサイズ', 'Tamanho da fonte do título', 'Размер шрифта заголовка', 'Taille de la police du titre', '제목 글꼴 크기', 'Titel Schriftgröße', 'Dimensione carattere titolo', '', 'Cím betűméret', 'Titel Lettergrootte', 'Font Size Titulus', 'Ukuran Font Judul', 'Başlık Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τίτλου', 'اندازه فونت عنوان', 'Saiz Fon Tajuk', '', '', 'શીર્ષક ફontન્ટ કદ', 'Rozmiar czcionki tytułu', 'Розмір шрифту', 'ਸਿਰਲੇਖ ਫੋਂਟ ਅਕਾਰ', 'Titlu Dimensiunea fontului', '', 'Iwọn Font Akọle', 'Girman Font', NULL),
(902, 'title_color', 'Title Color', 'টাইটেল কালার', 'Color del título', 'لون العنوان', 'शीर्षक रंग', 'عنوان رنگین', '标题颜色', 'タイトルの色', 'Cor do título', 'Цвет заголовка', 'Couleur du titre', '타이틀 색상', 'Titelfarbe', 'Colore del titolo', '', 'Cím színe', 'Titelkleur', 'Title Colo colui cultum', 'Warna Judul', 'Başlık Rengi', 'Χρώμα τίτλου', 'عنوان رنگ', 'Warna Tajuk', '', '', 'શીર્ષક રંગ', 'Kolor tytułu', 'Колір заголовка', 'ਸਿਰਲੇਖ ਦਾ ਰੰਗ', 'Culoare titlu', '', 'Awọ akọle', 'Labaran Cinya', NULL),
(903, 'value_font_size', 'Value Font Size', 'ভ্যালু ফন্ট সাইজ', 'Tamaño de fuente de valor', 'حجم خط القيمة', 'मान फ़ॉन्ट आकार', 'قدر فونٹ کا سائز', '值字体大小', '値のフォントサイズ', 'Valor Tamanho da fonte', 'Значение Размер шрифта', 'Taille de la police de valeur', '값 글꼴 크기', 'Wert Schriftgröße', 'Dimensione carattere valore', '', 'Érték betűméret', 'Waarde Lettergrootte', 'Font Size pretii', 'Nilai Ukuran Huruf', 'Değer Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τιμής', 'اندازه قلم ارزش', 'Saiz Fon Nilai', '', '', 'મૂલ્ય ફontન્ટનું કદ', 'Wartość Rozmiar czcionki', 'Значення розміру шрифту', 'ਮੁੱਲ ਫੋਂਟ ਆਕਾਰ', 'Valoare Dimensiune font', '', 'Iwọn Font Iye', 'Girman Font darajar', NULL),
(904, 'value_color', 'Value Color', 'ভ্যালু কালার', 'Color de valor', 'لون القيمة', 'मूल्य रंग', 'قدر کا رنگ', '值颜色', '値の色', 'Valor Cor', 'Значение Цвет', 'Couleur de valeur', '가치 색상', 'Wert Farbe', 'Valore colore', '', 'Érték szín', 'Waarde kleur', 'Colo colui cultum pretii', 'Nilai Warna', 'Değer Rengi', 'Χρώμα τιμής', 'رنگ ارزش', 'Warna Nilai', '', '', 'મૂલ્યનો રંગ', 'Wartość koloru', 'Значення Колір', 'ਮੁੱਲ ਰੰਗ', 'Valoare Culoare', '', 'Awọ Iye', 'Launin darajar', NULL),
(905, 'signature_background', 'Signature Background', 'স্বাক্ষর ব্যাকগ্রাউন্ড', 'Fondo de firma', 'خلفية التوقيع', 'हस्ताक्षर पृष्ठभूमि', 'دستخط کا پس منظر', '签名背景', '署名の背景', 'Fundo de assinatura', 'Подпись Фон', 'Fond de signature', '서명 배경', 'Unterschrift Hintergrund', 'Sfondo della firma', '', 'Aláírás háttér', 'Handtekening achtergrond', 'Maecenas vitae signature', 'Latar Belakang Tanda Tangan', 'İmza Arka Planı', 'Ιστορικό υπογραφής', 'پیش زمینه امضا', 'Latar Belakang Tandatangan', '', '', 'સહી પૃષ્ઠભૂમિ', 'Tło podpisu', 'Фон підпису', 'ਦਸਤਖਤ ਪਿਛੋਕੜ', 'Fundal de semnătură', '', 'Ibuwọlu abẹlẹ', 'Sa hannu a bango', NULL),
(906, 'bottom_signature', 'Bottom Signature', 'বটম স্বাক্ষর', 'Firma inferior', 'التوقيع السفلي', 'नीचे का हस्ताक्षर', 'نیچے دستخط', '底部签名', '下署名', 'Assinatura inferior', 'Нижняя Подпись', 'Signature du bas', '하단 서명', 'Untere Unterschrift', 'Firma inferiore', '', 'Alsó aláírás', 'Onderste handtekening', 'imo Subscriptio', 'Tanda Tangan Bawah', 'Alt İmza', 'Κάτω υπογραφή', 'امضای پایین', 'Tandatangan Bawah', '', '', 'નીચે સહી', 'Podpis na dole', 'Нижній підпис', 'ਹੇਠਾਂ ਦਸਤਖਤ', 'Semnătura de jos', '', 'Ibuwọlu Isalẹ', 'Sa hannu ƙasa', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(907, 'signature_color', 'Signature Color', 'স্বাক্ষর কালার', 'Color de firma', 'لون التوقيع', 'हस्ताक्षर का रंग', 'دستخط کا رنگ', '签名色', '署名色', 'Cor da assinatura', 'Цвет подписи', 'Couleur de signature', '시그니처 컬러', 'Unterschriftenfarbe', 'Colore firma', '', 'Aláírás színe', 'Kenmerkende kleur', 'subscriptio Colo colui cultum', 'Warna tanda tangan', 'İmza Rengi', 'Χρώμα υπογραφής', 'رنگ امضا', 'Warna Tandatangan', '', '', 'સહીનો રંગ', 'Charakterystyczny kolor', 'Колір підпису', 'ਦਸਤਖਤ ਰੰਗ', 'Culoare semnătură', '', 'Awọ Ibuwọlu', 'Launin Sa hannu', NULL),
(908, 'signature_align', 'Signature Align', 'স্বাক্ষর এলাইন', 'Alineación de firma', 'محاذاة التوقيع', 'हस्ताक्षर संरेखित करें', 'دستخط سیدھ کریں', '签名对齐', '署名の整列', 'Alinhamento de assinatura', 'Подпись Выровнять', 'Signature Align', '서명 정렬', 'Signatur ausrichten', 'Allinea firma', '', 'Aláírás igazítás', 'Handtekening uitlijnen', 'subscriptio Conlinis', 'Tanda Tangan Align', 'İmza Hizalama', 'Υπογραφή Ευθυγράμμιση', 'امضا تراز', 'Tandatangan Selaraskan', '', '', 'સહી સંરેખિત કરો', 'Signature Align', 'Підпис Вирівняти', 'ਦਸਤਖਤ ਇਕਸਾਰ', 'Aliniere semnătură', '', 'Iforukọsilẹ Align', 'Sa hannu Align', NULL),
(909, 'exam_title_font_size', 'Exam Title Font Size', 'এক্সাম টাইটেল ফন্ট সাইজ', 'Título del examen Tamaño de fuente', 'حجم خط الامتحان', 'परीक्षा का शीर्षक फ़ॉन्ट आकार', 'امتحان کا عنوان فونٹ سائز', '考试标题字体大小', '試験タイトルのフォントサイズ', 'Tamanho da fonte do título do exame', 'Размер шрифта заголовка экзамена', 'Taille de la police du titre de l\'examen', '시험 제목 글꼴 크기', 'Prüfungstitel Schriftgröße', 'Dimensione carattere titolo esame', '', 'Vizsga címe Betűméret', 'Tekengrootte examentitel', 'Font Size Title nito', 'Ukuran Font Judul Ujian', 'Sınav Başlığı Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τίτλου εξέτασης', 'اندازه عنوان قلم امتحان', 'Saiz Fon Tajuk Peperiksaan', '', '', 'પરીક્ષાનું શીર્ષક ફontન્ટ કદ', 'Rozmiar czcionki tytułu egzaminu', 'Розмір шрифту заголовка іспиту', 'ਪਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ ਫੋਂਟ ਆਕਾਰ', 'Titlul examenului Dimensiunea fontului', '', 'Iwọn Font Title Exam', 'Girman Font jarrabawa', NULL),
(910, 'exam_title_color', 'Exam Title Color', 'এক্সাম টাইটেল কালার', 'Color del título del examen', 'لون عنوان الامتحان', 'परीक्षा का शीर्षक रंग', 'امتحان کا عنوان رنگین', '考试标题颜色', '試験タイトルの色', 'Cor do título do exame', 'Цвет заголовка экзамена', 'Couleur du titre de l\'examen', '시험 제목 색상', 'Prüfungstitel Farbe', 'Colore titolo esame', '', 'A vizsga címe színe', 'Kleur van titel van examen', 'Title Colo colui cultum nito', 'Warna Judul Ujian', 'Sınav Başlığı Rengi', 'Χρώμα τίτλου εξέτασης', 'عنوان عنوان آزمون رنگ', 'Warna Tajuk Peperiksaan', '', '', 'પરીક્ષાનું શીર્ષક રંગ', 'Kolor tytułu egzaminu', 'Колір іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ ਰੰਗ', 'Culoarea titlului examenului', '', 'Awọ akọle Ayẹwo', 'Launin Take na Jarrabawa', NULL),
(911, 'subject_font_size', 'Subject Font Size', 'সাবজেক্ট ফন্ট সাইজ', 'Tamaño de fuente del sujeto', 'حجم خط الموضوع', 'विषय फ़ॉन्ट आकार', 'موضوع فونٹ کا سائز', '主题字体大小', '件名のフォントサイズ', 'Tamanho da fonte do assunto', 'Размер шрифта', 'Taille de la police du sujet', '제목 글꼴 크기', 'Schriftgröße des Betreffs', 'Dimensione carattere soggetto', '', 'Tárgy betűméret', 'Lettergrootte van onderwerp', 'Font Size subiecti', 'Ukuran Huruf Subjek', 'Konu Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς θέματος', 'اندازه قلم موضوع', 'Saiz Fon Subjek', '', '', 'વિષય ફontન્ટનું કદ', 'Rozmiar czcionki tematu', 'Розмір шрифту предмета', 'ਵਿਸ਼ਾ ਫੋਂਟ ਆਕਾਰ', 'Dimensiunea fontului subiect', '', 'Iwọn Font Koko-ọrọ', 'Girman Font Girma', NULL),
(912, 'subject_color', 'Subject Color', 'সাবজেক্ট কালার', 'Color sujeto', 'لون الموضوع', 'विषय रंग', 'موضوع رنگین', '主题颜色', '対象色', 'Assunto Cor', 'Цвет предмета', 'Couleur du sujet', '피사체 색', 'Motivfarbe', 'Colore soggetto', '', 'Tárgy színe', 'Onderwerp kleur', 'sub colore', 'Warna Subjek', 'Konu Rengi', 'Χρώμα θέματος', 'رنگ موضوع', 'Warna Subjek', '', '', 'વિષયનો રંગ', 'Kolor przedmiotu', 'Колір теми', 'ਵਿਸ਼ਾ ਰੰਗ', 'Culoarea subiectului', '', 'Awọ Koko-ọrọ', 'Launin Labari', NULL),
(913, 'employee_id', 'Employee ID', 'কর্মচারী আইডি', 'ID de empleado', 'هوية الموظف', 'कर्मचारी कामतत्व', 'ملازم کی ID', '员工ID', '従業員ID', 'ID do Empregado', 'ID сотрудника', 'ID d\'employé', '직원 ID', 'Mitarbeiter-ID', 'Numero Identità dell\'impiegato', '', 'munkavállalói azonosító', 'Werknemers-ID', 'Aliquam id', 'identitas pegawai', 'Çalışan kimliği', 'Ταυτότητα Υπαλλήλου', 'شناسه کارمند', 'ID pekerja', '', '', 'કર્મચારી આઈ.ડી.', 'dowód pracownika', 'Ідентифікатор працівника', 'ਕਰਮਚਾਰੀ ਆਈ.ਡੀ.', 'card de identitate al angajatului', '', 'ID agbanisiṣẹ', 'ID na Ma\'aikaci', NULL),
(914, 'teacher_id', 'Teacher ID', 'শিক্ষক আইডি', 'ID del profesor', 'معرف المعلم', 'शिक्षक आईडी', 'اساتذہ کی شناخت', '老师ID', '教師ID', 'ID do professor', 'ID учителя', 'ID enseignant', '교사 ID', 'Lehrerausweis', 'ID insegnante', '', 'Tanári azonosító', 'Docent-ID', 'id magister', 'ID guru', 'Öğretmen Kimliği', 'Αναγνωριστικό δασκάλου', 'شناسه معلم', 'ID Guru', '', '', 'શિક્ષક આઈ.ડી.', 'ID nauczyciela', 'Ідентифікатор вчителя', 'ਅਧਿਆਪਕ ਆਈ.ਡੀ.', 'ID-ul profesorului', '', 'ID Olukọ', 'IDAN malami', NULL),
(915, 'student_id', 'Student ID', 'শিক্ষার্থী আইডি', 'Identificación del Estudiante', 'هوية الطالب', 'छात्र आईडी', 'طالب علم کی شناخت', '学生卡', '学生証', 'Identidade estudantil', 'Студенческий билет', 'Carte d\'étudiant', '학생 아이디', 'Studenten ID', 'ID studente', '', 'Diákigazolvány', 'Studenten-ID', 'studiosum ID', 'Identitas Siswa', 'Öğrenci Kimliği', 'Αναγνωριστικό μαθητή', 'شناسه دانشجویی', 'ID pelajar', '', '', 'વિદ્યાર્થી આઈ.ડી.', 'legitymacja studencka', 'Ідентифікатор студента', 'ਵਿਦਿਆਰਥੀ ID', 'Carnet de student', '', 'ID akeko', 'Dalibin Dalibi', NULL),
(916, 'generate_employee_id_card', 'Generate Employee ID Card', 'কর্মচারী আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación de empleado', 'إنشاء بطاقة هوية الموظف', 'कर्मचारी आईडी कार्ड जनरेट करें', 'ملازم شناختی کارڈ بنائیں', '生成员工身份证', '従業員IDカードを生成', 'Gerar cartão de identificação de funcionário', 'Генерация удостоверения личности сотрудника', 'Générer une carte d\'identité d\'employé', '직원 ID 카드 생성', 'Mitarbeiterausweis erstellen', 'Genera carta d\'identità dei dipendenti', '', 'Generáljon munkavállalói igazolványt', 'Genereer werknemer ID-kaart', 'Aliquam id generate Card', 'Hasilkan Kartu ID Karyawan', 'Çalışan Kimlik Kartı Oluşturun', 'Δημιουργία ταυτότητας υπαλλήλου', 'شناسنامه کارمند تولید کنید', 'Jana Kad Pengenalan Pekerja', '', '', 'કર્મચારીનું આઈડી કાર્ડ બનાવો', 'Wygeneruj kartę identyfikacyjną pracownika', 'Створення ідентифікаційної картки працівника', 'ਕਰਮਚਾਰੀ ਆਈਡੀ ਕਾਰਡ ਤਿਆਰ ਕਰੋ', 'Generați carte de identitate a angajaților', '', 'Ina Kaadi ID Kaadi abáni', 'Haɗa Katin Ma\'aikata', NULL),
(917, 'generate_teacher_id_card', 'Generate Teacher ID Card', 'শিক্ষকের আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación del maestro', 'إنشاء بطاقة هوية المعلم', 'शिक्षक आईडी कार्ड जनरेट करें', 'اساتذہ کا شناختی کارڈ بنائیں', '生成教师身份证', '教師IDカードを生成', 'Gerar cartão de identificação do professor', 'Создать удостоверение личности учителя', 'Générer une carte d\'identité d\'enseignant', '교사 ID 카드 생성', 'Lehrerausweis erstellen', 'Genera carta d\'identità per insegnante', '', 'Generáljon tanári személyi igazolványt', 'Genereer leraar ID-kaart', 'Id generate Teacher Card', 'Hasilkan Kartu ID Guru', 'Öğretmen Kimlik Kartı Oluştur', 'Δημιουργία ταυτότητας δασκάλου', 'شناسنامه معلم ایجاد کنید', 'Hasilkan Kad Pengenalan Guru', '', '', 'શિક્ષક આઈડી કાર્ડ બનાવો', 'Wygeneruj kartę identyfikacyjną nauczyciela', 'Створити посвідчення особи вчителя', 'ਅਧਿਆਪਕ ID ਕਾਰਡ ਬਣਾਓ', 'Generați carte de identitate pentru profesor', '', 'Ina kaadi Kaadi ID', 'Haɗa ID Card na Malami', NULL),
(918, 'generate_student_id_card', 'Generate Student ID Card', 'শিক্ষার্থী আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación de estudiante', 'إنشاء بطاقة هوية الطالب', 'छात्र आईडी कार्ड जनरेट करें', 'طلباء کا شناختی کارڈ بنائیں', '生成学生证', '学生証を生成する', 'Gerar carteira de estudante', 'Создать студенческий билет', 'Générer une carte d\'étudiant', '학생증 생성', 'Studentenausweis erstellen', 'Genera carta d\'identità per studenti', '', 'Készítsen hallgatói személyi igazolványt', 'Genereer een studentenkaart', 'Generate discipulo ID card', 'Hasilkan Kartu ID Pelajar', 'Öğrenci Kimlik Kartı Oluştur', 'Δημιουργία φοιτητικής ταυτότητας', 'شناسنامه دانشجویی تولید کنید', 'Hasilkan Kad Pengenalan Pelajar', '', '', 'વિદ્યાર્થી આઈડી કાર્ડ બનાવો', 'Wygeneruj legitymację studencką', 'Створіть посвідчення студента', 'ਵਿਦਿਆਰਥੀ ID ਕਾਰਡ ਤਿਆਰ ਕਰੋ', 'Generați carte de identitate pentru elev', '', 'Ina akeko ID Card', 'Haɗa Katin ID ɗin ɗalibi', NULL),
(919, 'generate_student_admit_card', 'Generate Student Admit Card', 'শিক্ষার্থী এডমিট  কার্ড তৈরি করুন', 'Generar tarjeta de admisión de estudiante', 'إنشاء بطاقة قبول الطالب', 'छात्र एडमिट कार्ड जनरेट करें', 'طلباء کا داخلہ کارڈ بنائیں', '生成学生录取卡', '学生許可証を生成', 'Gerar Cartão de Admissão de Estudante', 'Создать студенческий билет', 'Générer une carte d\'admission d\'étudiant', '학생 인정 카드 생성', 'Student Admit Card generieren', 'Genera Student Admit Card', '', 'Generáljon hallgatói felvételi kártyát', 'Genereer een studentenkaart', 'Discipulus ipse fatebere maius Card generate', 'Hasilkan Kartu Penerimaan Mahasiswa', 'Öğrenci Kabul Kartı Oluştur', 'Δημιουργία φοιτητικής κάρτας αποδοχής', 'کارت اعتراف دانشجویی ایجاد کنید', 'Hasilkan Kad Pengenalan Pelajar', '', '', 'વિદ્યાર્થી પ્રવેશ કાર્ડ બનાવો', 'Wygeneruj legitymację studencką', 'Створення картки прийому студентів', 'ਵਿਦਿਆਰਥੀ ਦਾਖਲਾ ਕਾਰਡ ਬਣਾਓ', 'Generați cardul de admitere pentru studenți', '', 'Ina Kaadi Gbigbawọle Kaadi', 'Haɗa Katin Studentalibin Studentauki', NULL),
(920, 'income_report', 'Income Report', 'আয় রিপোর্ট', 'Informe de ingresos', 'تقرير الدخل', 'आय की रिपोर्ट', 'انکم رپورٹ', '收入报告', '収入レポート', 'Relatório de Renda', 'Отчет о доходах', 'Rapport de revenus', '소득 보고서', 'Einkommensbericht', 'Rapporto sul reddito', '', 'Jövedelemjelentés', 'Inkomensrapport', 'reditus Report', 'Laporan Penghasilan', 'Gelir Raporu', 'Αναφορά εισοδήματος', 'گزارش درآمد', 'Laporan Pendapatan', '', '', 'આવક અહેવાલ', 'Raport o dochodach', 'Звіт про доходи', 'ਆਮਦਨੀ ਰਿਪੋਰਟ', 'Raport de venit', '', 'Ijabọ owo oya', 'Rahoton Mai shigowa', NULL),
(921, 'expenditure_report', 'Expenditure Report', 'ব্যয় রিপোর্ট', 'Informe de gastos', 'تقرير الإنفاق', 'व्यय रिपोर्ट', 'اخراجات کی رپورٹ', '支出报告', '支出レポート', 'Relatório de Despesas', 'Отчет о расходах', 'Rapport de dépenses', '지출 보고서', 'Ausgabenbericht', 'Rapporto di spesa', '', 'Kiadási jelentés', 'Uitgavenverslag', 'Custus Report', 'Laporan Pengeluaran', 'Harcama Raporu', 'Αναφορά εισοδήματος', 'گزارش هزینه', 'Laporan Perbelanjaan', '', '', 'ખર્ચ અહેવાલ', 'Raport wydatków', 'Звіт про витрати', 'ਖਰਚਾ ਰਿਪੋਰਟ', 'Raport de cheltuieli', '', 'Ijabọ inawo', 'Rahoton kashe kudi', NULL),
(922, 'invoice_report', 'Invoice Report', 'চালান রিপোর্ট', 'Informe de factura', 'تقرير الفاتورة', 'चालान रिपोर्ट', '', '发票报告', '請求書レポート', 'Relatório de fatura', 'Отчет о счете', 'Rapport de facture', '송장 보고서', 'Rechnungsbericht', 'Rapporto fattura', '', 'Számlajelentés', 'Factuurrapport', 'cautionem Report', 'Laporan Faktur', 'Fatura Raporu', 'Αναφορά τιμολογίου', 'گزارش فاکتور', 'Laporan Invois', '', '', 'ભરતિયું અહેવાલ', 'Raport na fakturze', 'Звіт про рахунок-фактуру', 'ਚਲਾਨ ਦੀ ਰਿਪੋਰਟ', 'Raport factură', '', 'Ijabọ Invoice', 'Rahoton Invoice', NULL),
(923, 'due_fee_report', 'Due Fee Report', 'বকেয়া ফি রিপোর্ট', 'Informe de honorarios adeudados', 'تقرير الرسوم المستحقة', 'देय शुल्क रिपोर्ट', 'فیس واجبات', '到期费用报告', '会費報告書', 'Relatório de taxas devidas', 'Отчет об оплате', 'Rapport sur les frais dus', '회비 보고서', 'Fälliger Gebührenbericht', 'Rapporto sulle commissioni dovute', '', 'Esedékes díjjelentés', 'Due Fee Report', 'Ob pretium Report', 'Laporan Biaya Jatuh Tempo', 'Ödenmesi Gereken Ücret Raporu', 'Αναφορά προθεσμίας', 'گزارش هزینه پرداخت', 'Laporan Bayaran Hutang', '', '', 'ફી ફી રિપોર્ટ', 'Raport opłat', 'Звіт про сплату збору', 'ਬਕਾਇਆ ਫੀਸ ਦੀ ਰਿਪੋਰਟ', 'Raport cu taxele scadente', '', 'Ijabọ Owo isanwo', 'Rahoton Kiyama', NULL),
(924, 'fee_collection_report', 'Fee Collection Report', 'ফি সংগ্রহের রিপোর্ট', 'Informe de cobro de tarifas', 'تقرير تحصيل الرسوم', 'शुल्क संग्रह रिपोर्ट', 'فیس جمع کرنے کی رپورٹ', '收费报告', '料金徴収レポート', 'Relatório de cobrança de taxas', 'Отчет о сборе платежей', 'Rapport de perception des frais', '수수료 징수 보고서', 'Gebührenerhebungsbericht', 'Rapporto sulla riscossione delle commissioni', '', 'Díjbeszedési jelentés', 'Kosteninzamelingsrapport', 'Books feodo Report', 'Laporan Penagihan Biaya', 'Ücret Toplama Raporu', 'Αναφορά συλλογής χρεώσεων', 'گزارش جمع آوری هزینه', 'Laporan Pungutan Yuran', '', '', 'ફી કલેક્શન રિપોર્ટ', 'Raport dotyczący pobierania opłat', 'Звіт про стягнення плати', 'ਫੀਸ ਇਕੱਠੀ ਕਰਨ ਦੀ ਰਿਪੋਰਟ', 'Raport de colectare a taxelor', '', 'Ijabọ Gbigba owo', 'Rahoton tattara kuɗi', NULL),
(925, 'accounting_balance_report', 'Accounting Balance Report', 'অ্যাকাউন্টিং ব্যালেন্স রিপোর্ট', 'Informe de saldo contable', 'تقرير الميزان المحاسبي', 'लेखा संतुलन रिपोर्ट', 'اکاؤنٹنگ بیلنس رپورٹ', 'Accounting Balance Report', '会計残高レポート', 'Relatório de Saldo Contábil', 'Бухгалтерский баланс', 'Rapport sur le solde comptable', '회계 잔액 보고서', 'Bilanzsaldobericht', 'Rapporto sul saldo contabile', '', 'Számviteli mérleg jelentés', 'Boekhoudsaldo rapport', 'Libra ratio Report', 'Laporan Neraca Akuntansi', 'Muhasebe Dengesi Raporu', 'Αναφορά υπολοίπου λογιστικής', 'گزارش مانده حسابداری', 'Laporan Imbangan Perakaunan', '', '', 'એકાઉન્ટિંગ બેલેન્સ રિપોર્ટ', 'Raport bilansu księgowego', 'Звіт про баланс бухгалтерського обліку', 'ਲੇਖਾ ਬਕਾਇਆ ਰਿਪੋਰਟ', 'Raportul soldului contabil', '', 'Ijabọ Iwontunwosi iṣiro', 'Rahoton Balaguro na Lissafi', NULL),
(926, 'library_report', 'Library Report', 'লাইব্রেরি রিপোর্ট', 'Informe de la biblioteca', 'تقرير المكتبة', 'लाइब्रेरी रिपोर्ट', 'لائبریری رپورٹ', '图书馆报告', 'ライブラリレポート', 'Relatório da Biblioteca', 'Отчет библиотеки', 'Rapport de bibliothèque', '도서관 보고서', 'Bibliotheksbericht', 'Rapporto della biblioteca', '', 'Könyvtári jelentés', 'Bibliotheekrapport', 'bibliotheca Report', 'Laporan Perpustakaan', 'Kütüphane Raporu', 'Αναφορά βιβλιοθήκης', 'گزارش کتابخانه', 'Laporan Perpustakaan', '', '', 'પુસ્તકાલય અહેવાલ', 'Raport biblioteczny', 'Звіт про бібліотеку', 'ਲਾਇਬ੍ਰੇਰੀ ਰਿਪੋਰਟ', 'Raport de bibliotecă', '', 'Ijabọ Ile-ikawe', 'Rahoton Laburare', NULL),
(927, 'student_attendance_report', 'Student Attendance Report', 'ছাত্র উপস্থিতি রিপোর্ট', 'Informe de asistencia estudiantil', 'تقرير حضور الطالب', 'छात्र उपस्थिति रिपोर्ट', 'طلبہ کی حاضری کی رپورٹ', '学生出勤报告', '学生出席レポート', 'Relatório de Participação do Aluno', 'Отчет о посещаемости студентов', 'Rapport de fréquentation scolaire', '학생 출석 보고서', 'Anwesenheitsbericht für Studenten', 'Rapporto sulla partecipazione degli studenti', '', 'Hallgatói jelenléti jelentés', 'Aanwezigheidsrapport voor studenten', 'Attendance discipulus Report', 'Laporan Kehadiran Mahasiswa', 'Öğrenci Devam Raporu', 'Έκθεση παρακολούθησης φοιτητών', 'گزارش حضور و غیاب دانشجویان', 'Laporan Kehadiran Pelajar', '', '', 'વિદ્યાર્થી હાજરી અહેવાલ', 'Raport obecności studentów', 'Звіт про відвідування студентів', 'ਵਿਦਿਆਰਥੀ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raport de prezență la elevi', '', 'Ijabọ Wiwa Ọmọ ile-iwe', 'Rahoton Halartar Dalibi', NULL),
(928, 'student_yearly_attendance_report', 'Student Yearly Attendance Report', 'ছাত্র  বার্ষিক উপস্থিতি রিপোর্ট', 'Informe de asistencia anual del estudiante', 'تقرير الحضور السنوي للطالب', 'छात्र वार्षिक उपस्थिति रिपोर्ट', 'طلبہ کی سالانہ حاضری کی رپورٹ', '学生年度出勤报告', '学生の年次出席レポート', 'Relatório Anual de Participação do Aluno', 'Ежегодный отчет о посещаемости студентов', 'Rapport annuel de fréquentation scolaire', '학생 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht für Studenten', 'Rapporto sulla frequenza annuale degli studenti', '', 'A hallgatói éves látogatottsági jelentés', 'Jaarlijks aanwezigheidsrapport voor studenten', 'Quot annis discipulus Attendance Report', 'Laporan Kehadiran Tahunan Siswa', 'Öğrenci Yıllık Devam Raporu', 'Ετήσια έκθεση παρακολούθησης φοιτητών', 'گزارش حضور و غیاب سالانه دانشجویان', 'Laporan Kehadiran Tahunan Pelajar', '', '', 'વિદ્યાર્થી વાર્ષિક હાજરી અહેવાલ', 'Raport rocznej frekwencji studenckiej', 'Щорічний звіт про відвідування студентів', 'ਵਿਦਿਆਰਥੀ ਸਾਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de prezență al studenților anual', '', 'Ijabọ Wiwa wiwa Ọmọ-iwe ti Ọmọ ọdun', 'Rahoton Halarci Studentan Dalibi na shekara', NULL),
(929, 'teacher_attendance_report', 'Teacher Attendance Report', 'শিক্ষক উপস্থিতি রিপোর্ট', 'Informe de asistencia del maestro', 'تقرير حضور المعلم', 'शिक्षक उपस्थिति रिपोर्ट', 'اساتذہ کی حاضری کی رپورٹ', '教师出勤报告', '教師出席レポート', 'Relatório de presença do professor', 'Отчет посещаемости учителей', 'Rapport de présence des enseignants', '교사 출석 보고서', 'Anwesenheitsbericht für Lehrer', 'Rapporto sulla partecipazione degli insegnanti', '', 'Tanári jelenléti jelentés', 'Aanwezigheidsrapport voor leerkrachten', 'Magister Attendance Report', 'Laporan Kehadiran Guru', 'Öğretmen Katılım Raporu', 'Αναφορά παρακολούθησης καθηγητών', 'گزارش حضور و غیاب معلمان', 'Laporan Kehadiran Guru', '', '', 'શિક્ષકની હાજરી અહેવાલ', 'Raport obecności nauczyciela', 'Звіт про відвідування вчителів', 'ਅਧਿਆਪਕ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de prezență a profesorilor', '', 'Ijabọ Wiwa Olukọ', 'Rahoton Halartar Malami', NULL),
(930, 'teacher_yearly_attendance_report', 'Teacher Yearly Attendance Report', 'শিক্ষক বার্ষিক উপস্থিতি রিপোর্ট', 'Informe de asistencia anual del maestro', 'تقرير الحضور السنوي للمعلم', 'शिक्षक वार्षिक उपस्थिति रिपोर्ट', 'اساتذہ کی سالانہ حاضری کی رپورٹ', '教师年度出勤报告', '教師の年次出席レポート', 'Relatório anual de frequência do professor', 'Ежегодный отчет о посещаемости учителя', 'Rapport annuel de présence des enseignants', '교사 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht des Lehrers', 'Rapporto di frequenza annuale dell\'insegnante', '', 'Tanári éves jelenléti jelentés', 'Jaarlijks aanwezigheidsrapport voor de leerkracht', 'Magister quotannis exspectare Attendance Report', 'Laporan Kehadiran Guru Tahunan', 'Öğretmen Yıllık Katılım Raporu', 'Ετήσια έκθεση παρακολούθησης δασκάλων', 'گزارش حضور و غیاب سالانه معلمان', 'Laporan Kehadiran Tahunan Guru', '', '', 'શિક્ષકનો વાર્ષિક હાજરી અહેવાલ', 'Roczne sprawozdanie z obecności nauczyciela', 'Щорічний звіт про відвідування вчителів', 'ਅਧਿਆਪਕ ਦੀ ਸਾਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de participare anual al profesorului', '', 'Ijabọ Wiwa wiwa Olukọ lododun', 'Rahoton Halartar Malami na Shekara', NULL),
(931, 'employee_attendance_report', 'Employee Attendance Report', 'কর্মচারী উপস্থিতি রিপোর্ট', 'Informe de asistencia del empleado', 'تقرير حضور الموظف', 'कर्मचारी उपस्थिति रिपोर्ट', 'ملازمین کی حاضری کی رپورٹ', '员工出勤报告', '従業員出席レポート', 'Relatório de presença do funcionário', 'Отчет о посещаемости сотрудников', 'Rapport de présence des employés', '직원 출석 보고서', 'Anwesenheitsbericht der Mitarbeiter', 'Rapporto sulla partecipazione dei dipendenti', '', 'Munkavállalói jelenléti jelentés', 'Aanwezigheidsrapport', 'Aliquam Report Attendance', 'Laporan Kehadiran Karyawan', 'Çalışan Katılım Raporu', 'Έκθεση παρακολούθησης εργαζομένων', 'گزارش حضور و غیاب کارمندان', 'Laporan Kehadiran Pekerja', '', '', 'કર્મચારીની હાજરી અહેવાલ', 'Raport obecności pracowników', 'Звіт про відвідування працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raport de prezență a angajaților', '', 'Ijabọ Wiwa Abáni', 'Rahoton Halartar Ma\'aikata', NULL),
(932, 'employee_yearly_attendance_report', 'Employee Yearly Attendance Report', 'কর্মচারীর বার্ষিক উপস্থিতি প্রতিবেদন', 'Informe de asistencia anual del empleado', 'تقرير الحضور السنوي للموظف', 'कर्मचारी वार्षिक उपस्थिति रिपोर्ट', 'ملازم کی سالانہ حاضری کی رپورٹ', '员工年度出勤报告', '従業員の年次出席レポート', 'Relatório anual de presença do funcionário', 'Ежегодный отчет о посещаемости сотрудников', 'Rapport annuel de présence des employés', '직원 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht der Mitarbeiter', 'Rapporto di frequenza annuale dei dipendenti', '', 'Munkavállalói éves jelenléti jelentés', 'Jaarlijks aanwezigheidsrapport werknemer', 'Aliquam Report quotannis exspectare Attendance', 'Laporan Kehadiran Tahunan Karyawan', 'Çalışan Yıllık Katılım Raporu', 'Ετήσια έκθεση παρακολούθησης εργαζομένων', 'گزارش حضور و غیاب سالانه کارمندان', 'Laporan Kehadiran Tahunan Pekerja', '', '', 'કર્મચારીનો વાર્ષિક હાજરી અહેવાલ', 'Roczny raport obecności pracowników', 'Щорічний звіт про відвідування працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਸਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul anual de prezență a angajaților', '', 'Ijabọ Wiwa wiwa Oṣiṣẹ ti Ọdun', 'Rahoton Halartar Ma\'aikata na Shekara', NULL),
(933, 'student_invoice_report', 'Student Invoice Report', 'ছাত্র চালান রিপোর্ট', 'Informe de factura estudiantil', 'تقرير فاتورة الطالب', 'छात्र चालान रिपोर्ट', 'اسٹوڈنٹ انوائس رپورٹ', '学生发票报告', '学生請求書レポート', 'Relatório da fatura do aluno', 'Отчет о студенческом счете', 'Rapport de facture étudiant', '학생 송장 보고서', 'Studentenrechnungsbericht', 'Rapporto sulla fattura dello studente', '', 'Hallgatói számlajelentés', 'Factuurrapport voor studenten', 'Cautionem discipulus Report', 'Laporan Faktur Mahasiswa', 'Öğrenci Fatura Raporu', 'Αναφορά τιμολογίου μαθητή', 'گزارش فاکتور دانشجویی', 'Laporan Invois Pelajar', '', '', 'વિદ્યાર્થી ભરતિયું અહેવાલ', 'Raport faktury studenckiej', 'Звіт про рахунки для студентів', 'ਵਿਦਿਆਰਥੀ ਚਲਾਨ ਰਿਪੋਰਟ', 'Raportul facturilor studenților', '', 'Ijabọ Invoice ọmọ ile-iwe', 'Rahoton Invoice Student', NULL),
(934, 'payroll_report', 'Payroll Report', 'বেতন তালিকা রিপোর্ট', 'Informe de nómina', 'تقرير كشوف المرتبات', 'पेरोल रिपोर्ट', 'پے رول', '工资报告', '給与レポート', 'Relatório de Folha de Pagamento', 'Отчет о заработной плате', 'Rapport de paie', '급여 보고서', 'Abrechnungsbericht', 'Rapporto sui salari', '', 'Bérszámfejtési jelentés', 'Payroll Report', 'Mauris scelerisque dapibus Report', 'Laporan Penggajian', 'Bordro Raporu', 'Αναφορά μισθοδοσίας', 'گزارش حقوق و دستمزد', 'Laporan Gaji', '', '', 'પેરોલ રિપોર્ટ', 'Raport płac', 'Звіт про оплату праці', 'ਤਨਖਾਹ ਰਿਪੋਰਟ', 'Raport de salarizare', '', 'Ijabọ isanwo', 'Rahoton Biyan Kuɗi', NULL),
(935, 'daily_transaction_report', 'Daily Transaction Report', 'দৈনিক লেনদেন রিপোর্ট', 'Informe diario de transacciones', 'تقرير المعاملات اليومية', 'दैनिक लेन-देन की रिपोर्ट', 'روزانہ لین دین کی رپورٹ', '每日交易报告', '日次トランザクションレポート', 'Relatório diário de transações', 'Ежедневный отчет о транзакциях', 'Rapport de transaction quotidien', '일일 거래 보고서', 'Täglicher Transaktionsbericht', 'Rapporto sulle transazioni giornaliere', '', 'Napi tranzakciós jelentés', 'Dagelijks transactierapport', 'Transactionis cotidie Report', 'Laporan Transaksi Harian', 'Günlük İşlem Raporu', 'Ημερήσια έκθεση συναλλαγών', 'گزارش معاملات روزانه', 'Laporan Transaksi Harian', '', '', 'દૈનિક વ્યવહાર અહેવાલ', 'Raport codziennych transakcji', 'Щоденний звіт про трансакції', 'ਰੋਜ਼ਾਨਾ ਲੈਣ-ਦੇਣ ਦੀ ਰਿਪੋਰਟ', 'Raport zilnic de tranzacții', '', 'Ijabọ Iṣowo ojoojumọ', 'Rahoton Kasuwanci na yau da kullun', NULL),
(936, 'daily_statement_report', 'Daily Statemen Report', 'দৈনিক স্টেটমেন রিপোর্ট', 'Informe diario de estado de cuenta', 'تقرير البيان اليومي', 'दैनिक विवरण रिपोर्ट', 'ڈیلی بیان', '每日报表报告', '日次報告書', 'Relatório Diário', 'Ежедневный отчет', 'Rapport de déclaration quotidien', '일일 보고서', 'Täglicher Kontoauszugsbericht', 'Rapporto giornaliero', '', 'Napi jelentés', 'Dagelijks overzichtsrapport', 'Editio cotidie Report', 'Laporan Pernyataan Harian', 'Günlük Bildirim Raporu', 'Αναφορά ημερήσιας δήλωσης', 'گزارش بیانیه روزانه', 'Laporan Penyata Harian', '', '', 'દૈનિક નિવેદન અહેવાલ', 'Raport dzienny wyciąg', 'Щоденний звіт про звіт', 'ਰੋਜ਼ਾਨਾ ਬਿਆਨ', 'Raport zilnic de declarații', '', 'Ijabọ Gbójoojumọ', 'Rahoton sanarwa na yau da kullun', NULL),
(937, 'exam_result_report', 'Exam Result Report', 'পরীক্ষার ফলাফল রিপোর্ট', 'Informe de resultados del examen', 'تقرير نتيجة الامتحان', 'परीक्षा परिणाम की रिपोर्ट', 'امتحان کے نتائج کی رپورٹ', '考试成绩报告', '試験結果レポート', 'Relatório de resultado do exame', 'Отчет о результатах экзамена', 'Rapport des résultats d\'examen', '시험 결과 보고서', 'Prüfungsergebnisbericht', 'Rapporto sui risultati dell\'esame', '', 'Vizsga eredményjelentése', 'Onderzoeksresultatenrapport', 'Report nito results', 'Laporan Hasil Ujian', 'Sınav Sonuç Raporu', 'Αναφορά αποτελεσμάτων εξετάσεων', 'گزارش نتیجه آزمون', 'Laporan Keputusan Peperiksaan', '', '', 'પરીક્ષાનું પરિણામ અહેવાલ', 'Raport z wyników egzaminu', 'Звіт про результати іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਰਿਪੋਰਟ', 'Raportul rezultatului examenului', '', 'Ijabọ Esi Iroyin', 'Rahoton Sakamakon jarrabawa', NULL),
(938, 'tabular_report', 'Tabular Report', 'সারণী রিপোর্ট', 'Informe tabular', 'تقرير جدولي', 'सारणीबद्ध रिपोर्ट', 'ٹیبلر رپورٹ', '表格报告', '表形式レポート', 'Relatório tabular', 'Табличный отчет', 'Rapport tabulaire', '테이블 형식 보고서', 'Tabellarischer Bericht', 'Rapporto tabulare', '', 'Táblázatos jelentés', 'Rapport in tabelvorm', 'Expositio canonica Report', 'Laporan Tabular', 'Tablo Raporu', 'Πίνακας αναφοράς', 'گزارش جدول', 'Laporan Jadual', '', '', 'કોષ્ટક અહેવાલ', 'Raport tabelaryczny', 'Табличний звіт', 'ਸਾਰਣੀਕ ਰਿਪੋਰਟ', 'Raport tabular', '', 'Ijabọ Tabular', 'Rahoton Tabular', NULL),
(939, 'graphical_report', 'Graphical Report', 'গ্রাফিকাল রিপোর্ট', 'Informe gráfico', 'تقرير رسومي', 'ग्राफिकल रिपोर्ट', 'گرافیکل رپورٹ', '图形报告', 'グラフィカルレポート', 'Relatório Gráfico', 'Графический отчет', 'Rapport graphique', '그래픽 보고서', 'Grafischer Bericht', 'Rapporto grafico', '', 'Grafikus jelentés', 'Grafisch rapport', 'graphical Report', 'Laporan Grafik', 'Grafik Raporu', 'Γραφική αναφορά', 'گزارش گرافیکی', 'Laporan Grafik', '', '', 'ગ્રાફિકલ અહેવાલ', 'Raport graficzny', 'Графічний звіт', 'ਗ੍ਰਾਫਿਕਲ ਰਿਪੋਰਟ', 'Raport grafic', '', 'Iroyin ayaworan', 'Rahoton Zane', NULL),
(940, 'manage_frontend', 'Manage Frontend', 'সম্মুখভাগ পরিচালনা করুন', 'Administrar frontend', 'إدارة الواجهة الأمامية', 'फ्रंटेंड प्रबंधित करें', 'فرنٹ اینڈ کا انتظام کریں', '管理前端', 'フロントエンドを管理', 'Gerenciar Frontend', 'Управление интерфейсом', 'Gérer le frontend', '프론트 엔드 관리', 'Frontend verwalten', 'Gestisci frontend', '', 'Kezelje a Frontend-et', 'Beheer Frontend', 'curo Frontend', 'Kelola Frontend', 'Kullanıcı Arabirimini Yönet', 'Διαχείριση Frontend', 'مدیریت Frontend', 'Urus Frontend', '', '', 'અગ્ર મેનેજ કરો', 'Zarządzaj Frontendem', 'Управління Frontend', 'ਫਰੰਟੈਂਡ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează Frontend', '', 'Ṣakoso Frontend', 'Sarrafa Frontend', NULL),
(941, 'student_report', 'Student Report', 'ছাত্র রিপোর্ট', 'Informe del alumno', 'تقرير الطالب', 'छात्र की रिपोर्ट', 'طلبہ کی رپورٹ', '学生报告', '学生レポート', 'Relatório do Aluno', 'Студенческий отчет', 'Rapport étudiant', '학생 보고서', 'Studentenbericht', 'Rapporto dello studente', '', 'Hallgatói jelentés', 'Student Report', 'Report discipulus', 'Laporan Siswa', 'Öğrenci Raporu', 'Αναφορά μαθητών', 'گزارش دانشجویی', 'Laporan Pelajar', '', '', 'વિદ્યાર્થી અહેવાલ', 'Raport studenta', 'Звіт студентів', 'ਵਿਦਿਆਰਥੀ ਰਿਪੋਰਟ', 'Raport studențesc', '', 'Iroyin ọmọ ile-iwe', 'Rahoton Dalibi', NULL),
(942, 'student_activity_report', 'Student Activity Report', 'শিক্ষার্থীদের ক্রিয়াকলাপের রিপোর্ট', 'Informe de actividad del alumno', 'تقرير نشاط الطالب', 'छात्र गतिविधि रिपोर्ट', 'طلبا کی سرگرمی کی رپورٹ', '学生活动报告', '学生活動レポート', 'Relatório de Atividades do Aluno', 'Отчет о деятельности студентов', 'Rapport d\'activité des élèves', '학생 활동 보고서', 'Schüleraktivitätsbericht', 'Rapporto sull\'attività degli studenti', '', 'Hallgatói tevékenységi jelentés', 'Activiteitenrapport voor studenten', 'Actio discipulus Report', 'Laporan Kegiatan Siswa', 'Öğrenci Faaliyet Raporu', 'Αναφορά δραστηριοτήτων μαθητή', 'گزارش فعالیت دانشجویی', 'Laporan Aktiviti Pelajar', '', '', 'વિદ્યાર્થી પ્રવૃત્તિ અહેવાલ', 'Raport aktywności studenckiej', 'Звіт про діяльність студентів', 'ਵਿਦਿਆਰਥੀ ਗਤੀਵਿਧੀ ਰਿਪੋਰਟ', 'Raport de activitate a studenților', '', 'Ijabọ Iṣẹ-ṣiṣe ọmọ ile-iwe', 'Rahoton Ayyukan ɗalibai', NULL),
(943, 'web', 'Web', 'ওয়েব', 'Web', 'الويب', 'वेब', 'ویب', '网页', 'ウェブ', 'Rede', 'Web', 'la toile', '편물', 'Netz', 'ragnatela', '', 'háló', 'Web', 'Web', 'Web', 'ağ', 'Ιστός', 'وب', 'Web', '', '', 'વેબ', 'Sieć', 'Веб', 'ਵੈੱਬ', 'Web', '', 'Oju opo wẹẹbu', 'Yanar gizo', NULL),
(944, 'global_language', 'Global Language', 'গ্লোবাল ভাষা', 'Lenguaje global', 'لغة عالمية', 'वैश्विक भाषा', 'عالمی زبان', '全球语言', 'グローバル言語', 'Linguagem global', 'Глобальный язык', 'Langue mondiale', '글로벌 언어', 'Weltsprache', 'Linguaggio globale', '', 'Globális nyelv', 'Wereldwijde taal', 'Global Language', 'Bahasa Global', 'Evrensel dil', 'Παγκόσμια γλώσσα', 'زبان جهانی', 'Bahasa Global', '', '', 'વૈશ્વિક ભાષા', 'Globalny język', 'Глобальна мова', 'ਗਲੋਬਲ ਭਾਸ਼ਾ', 'Limba globală', '', 'Ede Kariaye', 'Harshen Duniya', NULL),
(945, 'please_set_language', 'Please Set language. For Super admin at Global Setting  and for school at school setting.', 'ভাষা সেট করুন। গ্লোবাল সেটিং এ সুপার অ্যাডমিনের জন্য এবং স্কুল সেটিং এ স্কুলের জন্য।', 'Por favor, configure el idioma. Para Super admin en Global Setting y para la escuela en el entorno escolar.', 'يرجى ضبط اللغة. لـ Super admin في Global Setting وللمدرسة في المدرسة.', 'कृपया भाषा सेट करें। ग्लोबल सेटिंग में सुपर एडमिन के लिए और स्कूल सेटिंग में स्कूल के लिए।', 'برائے مہربانی زبان طے کریں۔ گلوبل سیٹنگ میں سپر ایڈمن اور اسکول کی ترتیب میں اسکول کیلئے۔', 'Please Set language. For Super admin at Global Setting  and for school at school setting.', '言語を設定してください。 グローバル設定のスーパー管理者および学校設定の学校向け。', 'Defina o idioma. Para Superadministrador na Configuração Global e para a escola na escola.', 'Пожалуйста, установите язык. Для супер администратора в глобальной обстановке и для школы в школьной обстановке.', 'Veuillez définir la langue. Pour le super administrateur au Global Setting et pour l\'école au milieu scolaire.', '언어를 설정하십시오. 글로벌 설정의 최고 관리자 및 학교 설정의 학교.', 'Bitte Sprache einstellen. Für Superadministratoren bei Global Setting und für School at School Setting.', 'Si prega di impostare la lingua. Per i super amministratori a livello globale e per la scuola a scuola.', '', 'Kérjük, állítsa be a nyelvet. Szuper adminnak a globális környezetben és az iskola az iskolában.', 'Gelieve taal in te stellen. Voor Super admin op Global Setting en voor school op school setting.', 'Quaesumus eam selige lingua. Iisque ad Occasum et Administrator Super turpis studia occidunt.', 'Silakan Tetapkan bahasa. Untuk Super admin di Pengaturan Global dan untuk sekolah di pengaturan sekolah.', 'Lütfen dili ayarlayın. Global Ortamda Süper Yönetici ve Okul Ortamında Okul için.', 'Ορίστε γλώσσα. Για Super admin στο Global Setting και για σχολείο στο σχολείο.', 'لطفاً زبان تنظیم کنید. برای مدیر فوق العاده در تنظیمات جهانی و مدرسه در محیط مدرسه.', 'Sila Tetapkan bahasa. Untuk pentadbir Super di Global Setting dan untuk sekolah di sekolah.', '', '', 'કૃપા કરીને ભાષા સેટ કરો. ગ્લોબલ સેટિંગમાં સુપર એડમિન માટે અને સ્કૂલ સેટિંગમાં.', 'Proszę ustawić język. Dla superadministratora w Global Setting i dla szkoły w otoczeniu szkolnym.', 'Будь ласка, встановіть мову. Для супер-адміністратора в Global Setting та для школи в школі.', 'ਕਿਰਪਾ ਕਰਕੇ ਭਾਸ਼ਾ ਨਿਰਧਾਰਤ ਕਰੋ. ਗਲੋਬਲ ਸੈਟਿੰਗ ਵਿਖੇ ਸੁਪਰ ਐਡਮਿਨਿਸਟ੍ਰੇਟਰ ਲਈ ਅਤੇ ਸਕੂਲ ਸੈਟਿੰਗ \'ਤੇ.', 'Vă rugăm să setați limba. Pentru super admin la Global Setting și pentru școală la școala.', '', 'Jọwọ Ṣeto ede. Fun abojuto abojuto ni Ṣiṣeto Agbaye ati fun ile-iwe ni eto ile-iwe.', 'Da fatan za a sa harshe Na Super admin a Duniyar Kafa kuma ga makaranta a tsarin makaranta.', NULL),
(946, 'social_information', 'Social Information', 'সামাজিক তথ্য', 'Informacion social', 'المعلومات الاجتماعية', 'सामाजिक जानकारी', 'سماجی معلومات', '社会资讯', '社会情報', 'Informação Social', 'Социальная информация', 'Informations sociales', '사회 정보', 'Soziale Informationen', 'Informazioni sociali', '', 'Társadalmi információk', 'Sociale informatie', 'Social Information', 'Informasi Sosial', 'Sosyal Bilgilendirme', 'Κοινωνικές πληροφορίες', 'اطلاعات اجتماعی', 'Maklumat Sosial', '', '', 'સામાજિક માહિતી', 'Informacje społeczne', 'Соціальна інформація', 'ਸਮਾਜਿਕ ਜਾਣਕਾਰੀ', 'Informații sociale', '', 'Alaye ti Awujọ', 'Bayanin zamantakewa', NULL),
(947, 'address_information', 'Address Information', 'ঠিকানার তথ্য', 'Datos del Domicilio', 'معلومات العنوان', 'पते की जानकारी', 'ایڈریس کی معلومات', '地址信息', '住所情報', 'Informação de Endereço', 'информация об адресе', 'Information sur l\'adresse', '주소 정보', 'Adresse', 'Informazioni sull\'indirizzo', '', 'cím információ', 'adres informatie', 'oratio Information', 'Informasi alamat', 'adres bilgisi', 'πληροφορίες διεύθυνσης', 'اطلاعات نشانی', 'Maklumat Alamat', '', '', 'સરનામાં માહિતી', 'Informacje adresowe', 'Інформація про адресу', 'ਪਤਾ ਜਾਣਕਾਰੀ', 'infornații despre adresă', '', 'Alaye adirẹsi', 'Bayanin Adireshin', NULL),
(948, 'view_all', 'View All', 'সব দেখ', 'Ver todo', 'عرض الكل', 'सभी देखें', 'سب دیکھیں', '查看全部', 'すべてを見る', 'Ver tudo', 'Посмотреть все', 'Voir tout', '모두보기', 'Alle ansehen', 'Mostra tutto', '', 'Összes megtekintése', 'Bekijk alles', 'Vide omnes', 'Lihat semua', 'Hepsini gör', 'Προβολή όλων', 'مشاهده همه', 'Lihat semua', '', '', 'બધુજ જુઓ', 'Pokaż wszystkie', 'Подивитись все', 'ਸਾਰੇ ਵੇਖੋ', 'A vedea tot', '', 'Wo Gbogbo', 'Duba Duk', NULL),
(949, 'daily', 'Daily', 'দৈনন্দিন', 'Diario', 'اليومي', 'रोज', 'روزانہ', '日常', '毎日', 'Diariamente', 'Ежедневно', 'du quotidien', '매일', 'Täglich', 'Quotidiana', '', 'Napi', 'Dagelijks', 'Daily', 'Harian', 'Günlük', 'Καθημερινά', 'روزانه', 'Setiap hari', '', '', 'દૈનિક', 'Codziennie', 'Щодня', 'ਰੋਜ਼ਾਨਾ', 'Zilnic', '', 'Ojoojumọ', 'Kullum', NULL),
(950, 'yearly', 'Yearly', 'বার্ষিক', 'Anual', 'سنوي', 'सालाना', 'سالانہ', '每年', '毎年', 'Anual', 'каждый год', 'Annuelle', '매년', 'Jährlich', 'Annuale', '', 'Évi', 'Jaarlijks', 'quot annis', 'Tahunan', 'Yıllık', 'Ετήσια', 'سالانه', 'Tahunan', '', '', 'વાર્ષિક', 'Rocznie', 'Щорічно', 'ਸਲਾਨਾ', 'Anual', '', 'Lododun', 'Kowace shekara', NULL),
(951, 'generate', 'Generate', 'জেনারেট করুন', 'Generar', 'انشاء', 'उत्पन्न', 'پیدا کرنا', '生成', '生む', 'Gerar', 'генерировать', 'produire', '일으키다', 'Generieren', 'creare', '', 'generál', 'Genereer', 'generate', 'Menghasilkan', 'üretmek', 'Παράγω', 'تولید می کنند', 'Menjana', '', '', 'પેદા', 'Generować', 'Створювати', 'ਤਿਆਰ ਕਰੋ', 'Genera', '', 'Ina', 'Haɓaka', NULL),
(952, 'student_promotion', 'Student Promotion', 'ছাত্র পদোন্নতি', 'Promoción estudiantil', 'ترقية الطالب', 'छात्र संवर्धन', 'طلبا کی تشہیر', '学生升学', '学生プロモーション', 'Promoção de Estudantes', 'Студенческое продвижение', 'Promotion étudiante', '학생 프로모션', 'Studentenförderung', 'Promozione studentesca', '', 'Diákösztönzés', 'Promotie voor studenten', 'Promotio discipulus', 'Promosi Mahasiswa', 'Öğrenci Tanıtımı', 'Προώθηση φοιτητών', 'ارتقاء دانشجویی', 'Promosi Pelajar', '', '', 'વિદ્યાર્થી બotionતી', 'Promocja studencka', 'Промоція студентів', 'ਵਿਦਿਆਰਥੀ ਤਰੱਕੀ', 'Promovarea studenților', '', 'Igbega omo ile-iwe', 'Karatun Dalibi', NULL),
(953, 'mother_profession', 'Mother Profession', 'মায়ের পেশা', 'Profesión de madre', 'مهنة الأم', 'माता का पेशा', 'ماں کا پیشہ', '母亲职业', '母の職業', 'Profissão Mãe', 'Мать Профессия', 'Profession mère', '어머니 직업', 'Mutterberuf', 'Professione madre', '', 'Anya szakma', 'Moeder Beroep', 'Mater Sollemnis Professio', 'Profesi Ibu', 'Anne Mesleği', 'Μητέρα επάγγελμα', 'حرفه مادر', 'Profesion Ibu', '', '', 'માતા વ્યવસાય', 'Zawód matki', 'Професія матері', 'ਮਾਂ ਪੇਸ਼ੇ', 'Mama Profesie', '', 'Akose iya', 'Mahaifiyar Iya', NULL),
(954, 'router', 'Router', 'রাউটার', 'Enrutador', 'جهاز التوجيه', 'रूटर', 'راؤٹر', '路由器', 'ルーター', 'Roteador', 'маршрутизатор', 'Routeur', '라우터', 'Router', 'Router', '', 'Router', 'Router', 'iter itineris', 'Router', 'Yönlendirici', 'Δρομολογητής', 'روتر', 'Penghala', '', '', 'રાઉટર', 'Router', 'Маршрутизатор', 'ਰਾterਟਰ', 'Router', '', 'Olulana', 'Mai ba da hanya tsakanin hanyoyin sadarwa', NULL),
(955, 'bulk_pk', 'Bulk PK', 'বাল্ক পিকে', 'PK a granel', 'PK السائبة', 'थोक पी.के.', 'بلک پی کے', '散装PK', 'バルクPK', 'PK em massa', 'Bulk PK', 'PK en vrac', '벌크 PK', 'Bulk PK', 'Bulk PK', '', 'Ömlesztett PK', 'Bulk PK', 'mole PK', 'PK Massal', 'Toplu PK', 'Μαζικό PK', 'فله PK', 'PK Pukal', '', '', 'જથ્થાબંધ પી.કે.', 'Luzem PK', 'Навальний ПК', 'ਥੋਕ ਪੀ.ਕੇ.', 'Bulk PK', '', 'Olopobo PK', 'Babbar PK', NULL),
(956, 'sms_custer', 'SMS Cluster', 'এসএমএস ক্লাস্টার', 'SMS Custer', 'SMS Custer', 'एसएमएस कस्टर', 'ایس ایم ایس کاسٹر', '短信卡斯特', 'SMSカスター', 'SMS Custer', 'СМС Кастер', 'SMS Custer', 'SMS 커 스터', 'SMS Custer', 'SMS Custer', '', 'SMS Custer', 'SMS Custer', 'SMS Custodi', 'SMS Custer', 'SMS Kümesi', 'Σύμπλεγμα SMS', 'خوشه پیامکی', 'Kluster SMS', '', '', 'એસએમએસ ક્લસ્ટર', 'Klaster SMS', 'Кластер SMS', 'ਐਸਐਮਐਸ ਕਲੱਸਟਰ', 'SMS Cluster', '', 'Ẹrọ SMS', 'Cluster SMS', NULL),
(957, 'alpha_net', 'Alpha.net', 'আলফা.নেট', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', '', 'Alpha.net', 'Alpha.net', 'Alpha.net', '', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', '', '', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', '', 'Alpha.net', 'Alpha.net', NULL),
(958, 'bd_bulk', 'BD Bulk', 'বিডি বাল্ক', 'BD Bulk', 'BD BD', 'बीडी थोक', 'بی ڈی بلک', 'BD散装', 'BDバルク', 'BD Bulk', 'BD Bulk', 'BD Bulk', 'BD 벌크', 'BD Bulk', 'BD Bulk', '', 'BD Bulk', 'BD Bulk', 'BD, Volume', 'BD Massal', 'BD Toplu', 'BD χύμα', 'BD فله', 'Pukal BD', '', '', 'બીડી બલ્ક', 'BD Bulk', 'BD Насип', 'ਬੀਡੀ ਬਲਕ', 'BD Bulk', '', 'BD Bulk', 'BD Bulk', NULL),
(959, 'mim_sms', 'Mim SMS', 'মিম এসএমএস', 'Mim SMS', 'ميم SMS', 'मीम एसएमएस', 'Mim SMS', 'Mim短信', 'Mim SMS', 'Mim SMS', 'Мим смс', 'Mim SMS', 'Mim SMS', 'Mim SMS', 'Mim SMS', '', 'Mim SMS', 'Mim SMS', 'SMS mim', 'Mim SMS', 'Mim SMS', 'Μίμη SMS', 'پیام کوتاه', 'Mim SMS', '', '', 'મીમ એસએમએસ', 'Naśladuj SMS', 'Mim SMS', 'ਮਿਮ ਐਸਐਮਐਸ', 'SMS Mim', '', 'Mim SMS', 'Mim SMS', NULL),
(960, 'sms_type', 'SMS Type', 'এসএমএস প্রকার', 'Tipo de SMS', 'نوع الرسائل القصيرة', 'एसएमएस प्रकार', 'ایس ایم ایس کی قسم', '短信类型', 'SMSタイプ', 'Tipo de SMS', 'Тип СМС', 'Type de SMS', 'SMS 유형', 'SMS-Typ', 'Tipo di SMS', '', 'SMS típus', 'SMS-type', 'SMS Type', 'Jenis SMS', 'SMS Türü', 'Τύπος SMS', 'نوع پیامک', 'Jenis SMS', '', '', 'એસએમએસ પ્રકાર', 'Rodzaj SMS', 'Тип SMS', 'ਐਸਐਮਐਸ ਦੀ ਕਿਸਮ', 'Tip SMS', '', 'SMS Iru', 'Nau\'in SMS', NULL),
(961, 'text', 'Text', 'টেক্সট', 'Texto', 'نص', 'टेक्स्ट', 'متن', '文本', 'テキスト', 'Texto', 'Текст', 'Texte', '본문', 'Text', '', '', 'Szöveg', 'Tekst', 'text', 'Teks', 'Metin', 'Κείμενο', 'متن', 'Teks', '', '', 'ટેક્સ્ટ', 'Tekst', 'Текст', 'ਟੈਕਸਟ', 'Text', '', 'Ọrọ', 'Rubutu', NULL),
(962, 'unicode', 'Unicode', 'ইউনিকোড', 'Unicode', 'يونيكود', 'यूनिकोड', 'یونیکوڈ', '统一码', 'Unicode', 'Unicode', 'Unicode', 'Unicode', '유니 코드', 'Unicode', 'Unicode', '', 'Unicode', 'Unicode', 'forms', 'Unicode', 'Unicode', 'Unicode', 'یونیکد', 'Unikod', '', '', 'યુનિકોડ', 'Unicode', 'Unicode', 'ਯੂਨੀਕੋਡ', 'Unicode', '', 'Unicode', 'Unicode', NULL),
(963, 'more', 'More', 'অধিক', 'Más', 'أكثر', 'अधिक', 'مزید', '更多', 'もっと', 'Mais', 'Больше', 'Plus', '더', 'Mehr', 'Di Più', '', 'Több', 'Meer', 'More', 'Lebih', 'Daha', 'Περισσότερο', 'بیشتر', 'Lebih banyak lagi', '', '', 'વધુ', 'Więcej', 'Більше', 'ਹੋਰ', 'Mai Mult', '', 'Diẹ sii', 'Kara', NULL),
(964, 'all_student', 'All Student', 'সমস্ত ছাত্র', 'Todo estudiante', 'جميع الطلاب', 'सभी छात्र', 'تمام طالب علم', '所有学生', 'すべての学生', 'All Student', 'Все ученик', 'Tous les étudiants', '모든 학생', 'Alle Schüler', 'Tutti gli studenti', '', 'Minden hallgató', 'Alle studenten', 'Discipulus omnes', 'Semua Siswa', 'Tüm Öğrenci', 'Όλοι οι μαθητές', 'همه دانش آموزان', 'Semua Pelajar', '', '', 'બધા વિદ્યાર્થી', 'Wszyscy studenci', 'Всі Студент', 'ਸਾਰੇ ਵਿਦਿਆਰਥੀ', 'Tot student', '', 'Gbogbo akeko', 'Duk Dalibi', NULL),
(965, 'all_employee', 'All Employee', 'সমস্ত কর্মচারী', 'Todo empleado', 'جميع الموظفين', 'सभी कर्मचारी', 'تمام ملازم', '所有员工', '全社員', 'Todos os funcionários', 'Все сотрудники', 'Tous les employés', '모든 직원', 'Alle Mitarbeiter', 'Tutti i dipendenti', '', 'Minden alkalmazott', 'Alle medewerkers', 'Aliquam omnes', 'Seluruh Karyawan', 'Tüm Çalışanlar', 'Όλοι οι υπάλληλοι', 'همه کارمند', 'Semua Pekerja', '', '', 'બધા કર્મચારી', 'Wszyscy pracownicy', 'Всі працівники', 'ਸਾਰੇ ਕਰਮਚਾਰੀ', 'Tot angajatul', '', 'Gbogbo Abáni', 'Duk Ma’aikata', NULL),
(966, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'अन्य', 'دیگر', '其他', 'その他の', 'De outros', 'Другой', 'Autre', '다른', 'Andere', 'Altra', '', 'Egyéb', 'Andere', 'alius', 'Lain', 'Diğer', 'Αλλα', 'دیگر', 'Yang lain', '', '', 'અન્ય', 'Inny', 'Інший', 'ਹੋਰ', 'Alte', '', 'Omiiran', 'Sauran', NULL),
(967, 'same_as_guarduan_address', 'Same as Guarduan Address', 'গার্ডিয়ান ঠিকানা একই', 'Lo mismo que la dirección del tutor', 'نفس عنوان الوصي', 'अभिभावक के पते के रूप में भी', 'گارڈین ایڈریس کی طرح', '与监护人地址相同', '保護者の住所と同じ', 'Igual ao endereço do responsável', 'То же, что и адрес Хранителя', 'Identique à l\'adresse du gardien', '보호자 주소와 동일', 'Entspricht der Guardian-Adresse', 'Come l\'indirizzo del tutore', '', 'Ugyanaz, mint a Guardian címe', 'Hetzelfde als Guardian Address', 'Sicut custos Oratio', 'Sama seperti Alamat Wali', 'Guardian Adresi ile aynı', 'Το ίδιο με τη διεύθυνση φύλακα', 'همان آدرس Guardian', 'Sama seperti Alamat Penjaga', '', '', 'વાલી સરનામું સમાન', 'Taki sam jak adres opiekuna', 'Те саме, що адреса опікуна', 'ਸਰਪ੍ਰਸਤ ਦੇ ਪਤੇ ਵਾਂਗ ਹੀ', 'La fel ca adresa de gardian', '', 'Kanna bi Adirẹsi adirẹsi', 'Yayi daidai da Adireshin Dandana', NULL),
(968, 'find_guardian_by_phone', 'Find Guardian by Phone', 'ফোনে অভিভাবক সন্ধান করুন', 'Encuentra Guardian por teléfono', 'البحث عن الوصي عبر الهاتف', 'फोन द्वारा अभिभावक का पता लगाएं', 'فون کے ذریعہ گارڈین تلاش کریں', '通过电话查找监护人', '電話でガーディアンを探す', 'Encontre o Guardian por telefone', 'Найти Стража по телефону', 'Trouver Guardian par téléphone', '전화로 가디언 찾기', 'Finden Sie Guardian per Telefon', 'Trova Guardian per telefono', '', 'Keresse meg a Guardian telefonon', 'Vind Guardian via de telefoon', 'Find a Guardiano Phone', 'Temukan Wali melalui Telepon', 'Telefonla Koruyucu Bul', 'Βρείτε το Guardian μέσω τηλεφώνου', 'Guardian را از طریق تلفن پیدا کنید', 'Cari Penjaga melalui Telefon', '', '', 'ફોન દ્વારા વાલી શોધો', 'Znajdź opiekuna przez telefon', 'Знайти опікуна по телефону', 'ਫੋਨ ਦੁਆਰਾ ਸਰਪ੍ਰਸਤ ਲੱਭੋ', 'Găsiți gardianul prin telefon', '', 'Wa Olutọju nipasẹ Foonu', 'Nemo Guardian ta Waya', NULL),
(969, 'transfer_certificate', 'Transfer Certificate', 'ট্রান্সফার সার্টিফিকেট', 'Certificado de transferencia', 'شهادة نقل', 'स्थानांतरण प्रमाण पत्र', 'سندی سند منتقل کریں', '转让证明', '譲渡証書', 'Certificado de Transferência', 'Сертификат передачи', 'Certificat de transfert', '양도 증명서', 'Überweisungsbescheinigung', 'Certificato di trasferimento', '', 'Átutalási igazolás', 'Overdrachtcertificaat', 'bus Quisque', 'Sertifikat Transfer', 'Transfer Sertifikası', 'Πιστοποιητικό μεταφοράς', 'گواهی انتقال', 'Sijil Pindah', '', '', 'ટ્રાન્સફર સર્ટિફિકેટ', 'Przekaż certyfikat', 'Свідоцтво про передачу', 'ਟ੍ਰਾਂਸਫਰ ਸਰਟੀਫਿਕੇਟ', 'Certificat de transfer', '', 'Ijẹrisi Gbe', 'Canja wurin Takaddun shaida', NULL),
(970, 'drop', 'Drop', 'ড্রপ', 'soltar', 'قطرة', 'ड्रॉप', 'ڈراپ', '下降', '落とす', 'Solta', 'Капля', 'Laissez tomber', '하락', 'Fallen', 'Far cadere', '', 'Csepp', 'Laten vallen', 'drop', 'Penurunan', 'Düşürmek', 'Πτώση', 'رها کردن', 'Jatuhkan', '', '', 'છોડો', 'Upuszczać', 'Крапля', 'ਸੁੱਟੋ', 'cădere brusca', '', 'Ju silẹ', 'Faduwa', NULL),
(971, 'transfer', 'Transfer', 'ট্রান্সফার', 'Transferir', 'نقل', 'स्थानांतरण', 'منتقلی', '传递', '転送', 'Transferir', 'Перечислить', 'Transfert', '이전', 'Transfer', 'Trasferimento', '', 'Átutalás', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ΜΕΤΑΦΟΡΑ', 'انتقال', 'Pindah', '', '', 'સ્થાનાંતરણ', 'Transfer', 'Передача', 'ਟ੍ਰਾਂਸਫਰ', 'Transfer', '', 'Gbe', 'Canja wuri', NULL),
(972, 'regular', 'Regular', 'নিয়মিত', 'Regular', 'منتظم', 'नियमित', 'باقاعدہ', '定期', '定期的', 'Regular', 'регулярное', 'Ordinaire', '정규병', 'Regulär', 'Regolare', '', 'Szabályos', 'Regelmatig', 'iusto', 'Reguler', 'Düzenli', 'Τακτικός', 'منظم', 'Biasa', '', '', 'નિયમિત', 'Regularny', 'Регулярні', 'ਰੋਜਾਨਾ', 'Regulat', '', 'Deede', 'Kaya', NULL),
(973, 'update_order', 'Update Order', 'আপডেট অর্ডার', 'Orden de actualización', 'أجل التحديث', 'आर्डर का अद्यतन करें', 'آرڈر کو اپ ڈیٹ کریں', '更新顺序', '注文を更新', 'Atualizar pedido', 'Обновить заказ', 'Mise à jour de la commande', '주문 업데이트', 'Bestellung aktualisieren', 'Ordine di aggiornamento', '', 'Frissítse a rendelést', 'Order bijwerken', 'Update Ordinis', 'Perbarui Pesanan', 'Siparişi Güncelle', 'Ενημέρωση παραγγελίας', 'به روزرسانی سفارش', 'Kemas kini Pesanan', '', '', 'Updateર્ડર અપડેટ કરો', 'Zaktualizuj zamówienie', 'Оновити замовлення', 'ਅਪਡੇਟ ਆਰਡਰ', 'Comanda de actualizare', '', 'Bere fun Imudojuiwọn', 'Sabunta Sabuntawa', NULL),
(974, 'display_order', 'Display Order', 'ডিসপ্লে অর্ডার', 'Orden de visualización', 'ترتيب العرض', 'प्रस्तुति का क्रम', 'آرڈر ڈسپلے کریں', '显示顺序', '表示順', 'Ordem de exibição', 'Отобразить заказ', 'Ordre d\'affichage', '주문 표시', 'Bestellung anzeigen', 'Ordine di visualizzazione', '', 'megjelenítési sorrend', 'Weergavevolgorde', 'display Ordinis', 'Urutan Tampilan', 'Görüntüleme sırası', 'Σειρά εμφάνισης', 'ترتیب نمایش', 'Pesanan Paparan', '', '', 'ડિસ્પ્લે ઓર્ડર', 'Kolejność wyświetlania', 'Показати замовлення', 'ਡਿਸਪਲੇਅ ਆਰਡਰ', 'Comanda afișată', '', 'Bere fun Ifihan', 'Umarni Nuna', NULL),
(975, 'select_class', 'Select Class', 'ক্লাস নির্বাচন করুন', 'Seleccione clase', 'حدد Class', 'कक्षा का चयन करें', 'منتخب کلاس', '选择班级', 'クラスを選択', 'Selecionar classe', 'Выберите класс', 'Sélectionnez la classe', '수업 선택', 'Wählen Sie Klasse', 'Seleziona la classe', '', 'Válassza az Osztályt', 'Selecteer Klasse', 'Select Class', 'Pilih Kelas', 'Sınıf Seçin', 'Επιλέξτε τάξη', 'کلاس را انتخاب کنید', 'Pilih Kelas', '', '', 'વર્ગ પસંદ કરો', 'Wybierz klasę', 'Виберіть Клас', 'ਕਲਾਸ ਚੁਣੋ', 'Selectați clasa', '', 'Yan Kilasi', 'Zaɓi Class', NULL),
(976, 'you_have_remain_leave', 'You have remain leave', 'আপনার ছুটি রয়েছে', 'Tienes que quedarte', 'لقد بقيت إجازة', 'आप छुट्टी रह गए हैं', 'تمہیں چھٹی باقی ہے', '你有请假', 'あなたは残ります', 'Você permaneceu em licença', 'Вы остались уйти', 'Vous avez rester congé', '당신은 휴가를 남아있다', 'Du bist verlassen geblieben', 'Devi rimanere', '', 'Végig maradsz', 'Je moet verlof blijven', 'Maneant tibi relinquo', 'Anda tetap pergi', 'İzniniz kaldı', 'Έχετε παραμείνει άδεια', 'شما مرخصی مانده اید', 'Anda masih ada cuti', '', '', 'તમે રજા બાકી છે', 'Pozostałaś na urlopie', 'У вас залишилися відпустки', 'ਤੁਹਾਨੂੰ ਛੁੱਟੀ ਰਹਿ ਗਈ ਹੈ', 'Ai rămas concediu', '', 'O ti wa ni isinmi', 'Kun ci gaba da tafiya', NULL),
(977, 'language_name_note', 'No Space, No Capital Letter, No Special Character. Ex: english', 'No Space, No Capital Letter, No Special Character. Ex: english', 'Sin espacio, sin mayúscula, sin caracteres especiales. Ej: inglés', 'بدون مسافة أو حرف كبير أو حرف خاص. مثال: الإنجليزية', 'नो स्पेस, नो कैपिटल लेटर, नो स्पेशल कैरेक्टर। Ex: अंग्रेजी', 'کوئی جگہ نہیں ، کوئی بڑا حرف نہیں ، کوئی خاص حرف نہیں۔ مثال کے طور پر: انگریزی', '没有空格，没有大写字母，没有特殊字符。 例如：英语', 'スペースなし、大文字なし、特殊文字なし。 例：英語', 'Sem espaço, sem letra maiúscula, sem caracteres especiais. Ex: inglês', 'Нет пробела, нет заглавной буквы, нет специального символа. Пример: английский', 'Pas d\'espace, pas de majuscule, pas de caractère spécial. Ex: anglais', '공백 없음, 대문자 없음, 특수 문자 없음. 예 : 영어', 'Kein Leerzeichen, kein Großbuchstabe, kein Sonderzeichen. Beispiel: Englisch', 'Nessuno spazio, nessuna lettera maiuscola, nessun carattere speciale. Es: inglese', '', 'Nincs hely, nincs nagybetű, nincs különleges karakter. Pl .: angol', 'Geen spatie, geen hoofdletter, geen speciaal karakter. Vb: Engels', 'Non Rursus locus non Capital has Litteras resumere, non distinguunt. Ex: anglicus', 'Tanpa Spasi, Tanpa Huruf Besar, Tanpa Karakter Khusus. Mis: bahasa Inggris', 'Boşluk Yok, Büyük Harf Yok, Özel Karakter Yok. Örn: İngilizce', 'Χωρίς Διάστημα, Χωρίς Κεφαλαίο Γράμμα, Χωρίς Ειδικό Χαρακτήρα. Π.χ .: Αγγλικά', 'بدون فضا ، بدون نامه سرمایه ، بدون شخصیت خاص. مثال: انگلیسی', 'Tanpa Ruang, Tanpa Huruf Besar, Tidak Ada Perwatakan Khas. Cth: bahasa inggeris', '', '', 'કોઈ જગ્યા નહીં, કોઈ મૂડી પત્ર નહીં, વિશેષ પાત્ર નહીં. ઉદા: અંગ્રેજી', 'Bez spacji, bez dużej litery, bez znaków specjalnych. Np .: angielski', 'Ні місця, ні великої літери, ні спеціального персонажа. Наприклад: англійська', 'ਕੋਈ ਸਪੇਸ, ਕੋਈ ਪੂੰਜੀ ਪੱਤਰ, ਕੋਈ ਵਿਸ਼ੇਸ਼ ਅੱਖਰ. ਉਦਾਹਰਣ: ਅੰਗਰੇਜ਼ੀ', 'Fără spațiu, fără literă capitală, fără caracter special. Ex: engleză', '', 'Ko si aaye, Ko si Lẹta Olu, Ko si Ohun kikọ pataki. Ex: Gẹẹsi', 'Babu Sarari, Babu Harafin Harafi, Babu Babban Harafi. Ex: harshen Turanci', NULL),
(978, 'discount_type', 'Discount Type', 'ছাড়ের ধরণ', 'Tipo de descuento', 'نوع الخصم', 'डिस्काउंट प्रकार', 'ڈسکاؤنٹ کی قسم', '优惠类型', '割引タイプ', 'Tipo de desconto', 'Тип скидки', 'Type de remise', '할인 유형', 'Rabattart', 'Tipo di sconto', '', 'Kedvezmény típusa', 'Kortingstype', 'Buy Type', 'Jenis Diskon', 'İndirim Türü', 'Τύπος έκπτωσης', 'نوع تخفیف', 'Jenis Diskaun', '', '', 'ડિસ્કાઉન્ટનો પ્રકાર', 'Rodzaj rabatu', 'Тип знижки', 'ਛੂਟ ਦੀ ਕਿਸਮ', 'Tipul reducerii', '', 'Iru ẹdinwo', 'Nau\'in Ragewa', NULL),
(979, 'flat_amount', 'Flat Amount', 'ফ্ল্যাট পরিমাণ', 'Cantidad fija', 'مبلغ مقطوع', 'सीधी रकम', 'فلیٹ کی رقم', '固定金额', '定額', 'Quantia fixa', 'Фиксированная сумма', 'Montant forfaitaire', '납작 금액', 'Pauschalbetrag', 'Importo forfettario', '', 'Lapos összeg', 'Vast bedrag', 'Aliquam flat', 'Jumlah Rata', 'Sabit Tutar', 'Κατ \'αποκοπή ποσό', 'مبلغ تخت', 'Jumlah Rata', '', '', 'ફ્લેટ રકમ', 'Wyrównana ilość', 'Плоска сума', 'ਫਲੈਟ ਦੀ ਮਾਤਰਾ', 'Suma plană', '', 'Iye owo Alapin', 'Adadin kuɗi', NULL);
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `mylang`) VALUES
(980, 'percentage_amount', 'Percentage Amount', 'শতাংশের পরিমাণ', 'Porcentaje Cantidad', 'النسبة المئوية', 'प्रतिशत राशि', 'فیصد رقم', '百分比金额', 'パーセント額', 'Valor percentual', 'Процентная сумма', 'Montant en pourcentage', '백분율 금액', 'Prozentualer Betrag', 'Importo percentuale', '', 'Százalékos összeg', 'Percentage Bedrag', 'Aliquam CENTESIMA', 'Jumlah Persentase', 'Yüzde Tutarı', 'Ποσοστό ποσοστού', 'مقدار درصد', 'Jumlah Peratusan', '', '', 'ટકાવારી રકમ', 'Kwota procentowa', 'Відсоткова сума', 'ਪ੍ਰਤੀਸ਼ਤ ਰਕਮ', 'Suma procentuală', '', 'Iye ogorun', 'Adadin Kashi dari', NULL),
(981, 'bank_receipt', 'Bank Receipt', 'ব্যাংক রশিদ', 'Recibo del banco', 'إيصال البنك', 'बैंक रसीद', 'بینک کی رسید', '银行单据', '銀行の領収書', 'Recibo bancário', 'Банковская квитанция', 'Reçu de banque', '은행 영수증', 'Bankbeleg', 'Ricevuta bancaria', '', 'Banki átvétel', 'Bankafschrift', 'Medicamentum Bank', 'Tanda Terima Bank', 'Banka dekontu', 'ΑΠΟΔΕΙΞΗ ΤΡΑΠΕΖΑΣ', 'رسید بانک', 'Resit bank', '', '', 'બેંક રસીદ', 'Wyciąg z banku', 'Квитанція банку', 'ਬੈਂਕ ਦੀ ਰਸੀਦ', 'Chitanta bancara', '', 'Ile-ifowopamọ Gba', 'Rashin karɓar banki', NULL),
(982, 'manage_paid_receipt', 'Manage Paid Receipt', 'প্রদত্ত রসিদ পরিচালনা করুন', 'Gestionar recibo pagado', 'إدارة الإيصال المدفوع', 'पेड रसीद का प्रबंधन करें', 'ادا شدہ رسید کا انتظام کریں', '管理收据', '支払い済み領収書を管理する', 'Gerenciar recibo pago', 'Управление оплаченной квитанцией', 'Gérer les reçus payés', '유료 영수증 관리', 'Bezahlte Quittung verwalten', 'Gestisci ricevuta a pagamento', '', 'Fizetett átvétel kezelése', 'Beheer betaald betalingsbewijs', 'Curo Paid Receptio', 'Kelola Tanda Terima Berbayar', 'Ücretli Makbuzu Yönet', 'Διαχείριση απόδειξης επί πληρωμή', 'رسید رسید پرداخت کنید', 'Urus Resit Berbayar', '', '', 'ચૂકવેલ રસીદ મેનેજ કરો', 'Zarządzaj płatnym pokwitowaniem', 'Управління оплаченою квитанцією', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਸੀਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați primirea plătită', '', 'Ṣakoso owo isanwo ti o san', 'Gudanar da Risu Mai biya', NULL),
(983, 'manage_due_receipt', 'Manage Due Receipt', 'প্রাপ্য রসিদ পরিচালনা করুন', 'Gestionar recibo vencido', 'إدارة إيصال الاستحقاق', 'नियत रसीद का प्रबंधन करें', 'موصولہ رسید کا انتظام کریں', '管理到期收据', '期日管理の管理', 'Gerenciar recebimento devido', 'Управлять должным поступлением', 'Gérer le reçu dû', '적법한 영수증 관리', 'Fälligen Beleg verwalten', 'Gestisci ricevuta dovuta', '', 'Az esedékes átvétel kezelése', 'Beheer verschuldigde ontvangst', 'Ob Curo Receptio', 'Kelola Tanda Terima Karena', 'Ödenmesi Alındı Makbuzunu Yönet', 'Διαχείριση οφειλόμενης απόδειξης', 'رسید دریافتی را مدیریت کنید', 'Urus Resit Hutang', '', '', 'નિયત રસીદ મેનેજ કરો', 'Zarządzaj należnymi pokwitowaniami', 'Управління належним надходженням', 'ਬਕਾਇਆ ਰਸੀਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează primirea cuvenită', '', 'Ṣakoso gbigba Gbigba', 'Gudanar da Rashin karɓa', NULL),
(984, 'paid_receipt', 'Paid Receipt', 'প্রদত্ত রসিদ', 'Recibo pagado', 'إيصال مدفوع', 'भुगतान की रसीद', 'ادا کی رسید', '收据收据', '有償領収書', 'Recibo pago', 'Оплаченная квитанция', 'Reçu payé', '유료 영수증', 'Bezahlte Quittung', 'Ricevuta a pagamento', '', 'Fizetett átvétel', 'Betaald ontvangstbewijs', 'Medicamentum solvit', 'Kwitansi Dibayar', 'Ücretli Makbuz', 'Πληρωμή απόδειξης', 'رسید پرداخت شده', 'Resit Berbayar', '', '', 'ચૂકવેલ રસીદ', 'Płatny pokwitowanie', 'Оплачена квитанція', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਸੀਦ', 'Primire plătită', '', 'Isanwo ti o sanwo', 'Kudin da aka biya', NULL),
(985, 'due_receipt', 'Due Receipt', 'প্রাপ্য রসিদ', 'Recibo', 'إيصال مستحق', 'प्राप्ति', 'وصولی', '到期收据', '納期', 'Entrega devido', 'Должная квитанция', 'Réception due', '영수증', 'Fälliger Eingang', 'Ricevuta dovuta', '', 'Esedékes átvétel', 'Verschuldigde ontvangst', 'ob Receptio', 'Tanda terima jatuh tempo', 'Teslim Alındı Belgesi', 'Οφειλόμενη απόδειξη', 'رسید مقرر', 'Resit Mesti', '', '', 'મળતી રસીદ', 'Termin wymagalności', 'Належне отримання', 'ਬਕਾਇਆ ਰਸੀਦ', 'Primirea cuvenită', '', 'Gbigba Gbigba', 'Rashin karɓa', NULL),
(986, 'school_copy', 'School Copy', 'স্কুল কপি', 'Copia de la escuela', 'نسخة مدرسية', 'स्कूल की कॉपी', 'اسکول کاپی', '学校副本', '学校のコピー', 'Cópia da escola', 'Школьная копия', 'Copie de l\'école', '학교 사본', 'Schulkopie', 'Copia di scuola', '', 'Iskolai másolat', 'School kopie', 'Exemplar School', 'Copy Sekolah', 'Okul Kopyası', 'Αντίγραφο σχολείου', 'کپی مدرسه', 'Salinan Sekolah', '', '', 'શાળાની નકલ', 'Szkolna kopia', 'Шкільна копія', 'ਸਕੂਲ ਕਾੱਪੀ', 'Copie școlară', '', 'Ẹda Ile-iwe', 'Kwafin Makaranta', NULL),
(987, 'bank_copy', 'Bank Copy', 'ব্যাংক কপি', 'Copia bancaria', 'نسخة مصرفية', 'बैंक की प्रति', 'بینک کاپی', '银行副本', '銀行コピー', 'Cópia bancária', 'Банк Копировать', 'Copie bancaire', '은행 복사', 'Bankkopie', 'Copia bancaria', '', 'Bank másolat', 'Bank kopiëren', 'Exemplar Bank', 'Copy Bank', 'Banka Kopyası', 'Αντίγραφο τράπεζας', 'کپی بانک', 'Salinan Bank', '', '', 'બેંક ક Copyપિ', 'Kopia banku', 'Копія банку', 'ਬੈਂਕ ਕਾੱਪੀ', 'Copie bancară', '', 'Daakọ Bank', 'Kwafin Banki', NULL),
(988, 'reference', 'Reference', 'রেফারেন্স', 'Referencia', 'مرجع', 'संदर्भ', 'حوالہ۔', '参考', '参照', 'Referência', 'Ссылка', 'Référence', '참고', 'Referenz', 'Riferimento', 'การอ้างอิง', 'Referencia', 'Referentie', 'Reference', 'Referensi', 'Referans', 'Αναφορά', 'ارجاع', 'Rujukan', 'సూచన', 'குறிப்பு', 'સંદર્ભ', 'Odniesienie', 'Довідково', 'ਹਵਾਲਾ', 'Referinţă', 'အညွှန်း', 'Ifilo', 'Tunani', NULL),
(989, 'submission', 'Submission', 'উপস্থাপন', 'Sumisión', 'تسليم', 'प्रस्तुत करने', 'عرض کرنا', '投稿', '提出', 'Submissão', 'представление', 'Soumission', '제출', 'Einreichung', 'Presentazione', NULL, 'Benyújtása', 'Inzending', 'submission', 'pengajuan', 'boyun eğme', 'Υποβολή', 'ارسال', 'Penyerahan', NULL, NULL, 'રજૂઆત', 'Zgłoszenie', 'Подання', 'ਅਧੀਨਗੀ', 'supunere', NULL, 'Ifakalẹ', '.Addamarwa', NULL),
(990, 'manage_submission', 'Manage Submission', 'জমা দেওয়ার পরিচালনা করুন', 'Gestionar envío', 'إدارة التقديم', 'सबमिशन प्रबंधित करें', 'جمع کرانے کا انتظام کریں', '管理提交', '提出の管理', 'Gerenciar envio', 'Управление представлением', 'Gérer la soumission', '제출 관리', 'Übermittlung verwalten', 'Gestisci invio', NULL, 'A benyújtás kezelése', 'Inzending beheren', 'curo Submission', 'Kelola Pengajuan', 'Gönderimi Yönet', 'Διαχείριση υποβολής', 'مدیریت ارسال را مدیریت کنید', 'Uruskan Penyerahan', NULL, NULL, 'સબમિશન મેનેજ કરો', 'Zarządzaj przesyłaniem', 'Управління поданням', 'ਅਧੀਨਗੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați trimiterea', NULL, 'Ṣakoso Ifisilẹ', 'Sarrafa ƙaddamarwa', NULL),
(991, 'submitted_at', 'Submitted At', 'জমা দেওয়া তারিখ', 'Enviado a', 'تم الإرسال في', 'पर प्रस्तुत किया गया', 'پیش کیا گیا', '提交于', '提出日', 'Enviado em', 'Отправлено в', 'Soumis à', '에 제출', 'Eingereicht bei', 'Inviato a', NULL, 'Beküldés időpontja:', 'Ingediend bij', 'In summitto', 'Diserahkan pada', 'Gönderme Tarihi', 'Υποβλήθηκε στις', 'ارسال شده در', 'Dihantar pada', NULL, NULL, 'સબમિટ મુ', 'Przesłano o', 'Надіслано в', 'ਪੇਸ਼ ਕੀਤਾ', 'Înscris la At', NULL, 'Silẹ Ni', 'Sallama a', NULL),
(992, 'submitted_by', 'Submitted By', 'জমাদানকারী', 'Presentado por', 'مقدم من', 'द्वारा प्रस्तुत', 'کی طرف سے پیش', '由...所提交', 'から提出された', 'Enviado por', 'Представленный', 'Proposé par', '에 의해 제출 된', 'Eingereicht von', 'Inviato da', NULL, 'Által benyújtott', 'Ingediend door', 'Subjuncta', 'Disampaikan oleh', 'Tarafından gönderilmiştir', 'Που υποβάλλονται από', 'ارسال شده توسط', 'Dikemukakan oleh', NULL, NULL, 'દ્રારા રજુ કરેલ', 'Przesłane przez', 'Представлений', 'ਦੁਆਰਾ ਭੇਜਿਆ', 'Trimis de', NULL, 'Silẹ Nipa', 'Tedaddamar da Ta', NULL),
(993, 'video_id', 'Video ID', 'ভিডিও আইডি', 'ID de video', 'معرف الفيديو', 'वीडियो आईडी', 'ویڈیو ID', '影片编号', 'ビデオID', 'ID do vídeo', 'Идентификатор видео', 'ID vidéo', '비디오 ID', 'Video ID', 'ID video', NULL, 'Videó azonosítója', 'Video-ID', 'id Video', 'ID video', 'Video Kimliği', 'Αναγνωριστικό βίντεο', 'شناسه فیلم', 'ID Video', NULL, NULL, 'વિડિઓ આઈડી', 'Identyfikator wideo', 'Ідентифікатор відео', 'ਵੀਡੀਓ ਆਈਡੀ', 'ID video', NULL, 'ID fidio', 'Bidiyo na Bidiyo', NULL),
(994, 'lecture_ppt', 'Lecture PPT', 'লেকচার পিপিটি', 'Conferencia PPT', 'محاضرة PPT', 'व्याख्यान पीपीटी', 'لیکچر پی پی ٹی', '讲座PPT', '講義PPT', 'Palestra PPT', 'Лекция ППТ', 'Conférence PPT', '강의 PPT', 'Vorlesung PPT', 'Conferenza PPT', NULL, 'PPT előadás', 'Lezing PPT', 'Lectio ppt', 'Kuliah PPT', 'Ders PPT', 'Διάλεξη PPT', 'سخنرانی PPT', 'PPT Kuliah', NULL, NULL, 'વ્યાખ્યાન પીપીટી', 'Wykład PPT', 'Лекція PPT', 'ਲੈਕਚਰ ਪੀ.ਪੀ.ਟੀ.', 'Lectură PPT', NULL, 'Ẹkọ PPT', 'Lakcar da PPT', NULL),
(995, 'class_lecture', 'Class Lecture', 'ক্লাস লেকচার', 'Conferencia de clase', 'محاضرة الصف', 'कक्षा व्याख्यान', 'کلاس لیکچر', '课堂讲义', 'クラス講義', 'Aula de Aula', 'Класс Лекция', 'Conférence en classe', '수업 강의', 'Vorlesung', 'Lezione di classe', NULL, 'Osztály előadás', 'Klasse Lezing', 'Lectio genus', 'Kuliah Kelas', 'Ders anlatımı', 'Διάλεξη τάξης', 'سخنرانی کلاس', 'Kuliah Kelas', NULL, NULL, 'વર્ગ વ્યાખ્યાન', 'Wykład klasowy', 'Класна лекція', 'ਕਲਾਸ ਲੈਕਚਰ', 'Curs de curs', NULL, 'Kika kilasi', 'Karatun Class', NULL),
(996, 'manage_class_lecture', 'Manage Class Lecture', 'ক্লাস লেকচার পরিচালনা করুন', 'Administrar clase', 'إدارة محاضرة الفصل', 'कक्षा व्याख्यान का प्रबंधन करें', 'کلاس لیکچر کا انتظام کریں', '管理课堂演讲', 'クラスの講義を管理する', 'Gerenciar palestra em classe', 'Лекция по классу', 'Gérer la conférence en classe', '수업 강의 관리', 'Klassenvortrag verwalten', 'Gestisci lezione di classe', NULL, 'Kezelje az előadást', 'Beheer klassencollege', 'Lectio Curo Paleonemertea Class', 'Kelola Kuliah Kelas', 'Sınıf Dersini Yönet', 'Διαχείριση διαλέξεων τάξης', 'مدیریت سخنرانی کلاس', 'Urus Kuliah Kelas', NULL, NULL, 'વર્ગ વ્યાખ્યાન મેનેજ કરો', 'Zarządzaj wykładem klasowym', 'Управління лекцією класу', 'ਕਲਾਸ ਲੈਕਚਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează cursul clasei', NULL, 'Ṣakoso Ẹkọ Kilasi', 'Gudanar da Karatun Class', NULL),
(997, 'lecture_type', 'Lecture Type', ' লেকচার ধরন', 'Tipo de conferencia', 'نوع المحاضرة', 'व्याख्यान प्रकार', 'لیکچر کی قسم', '讲座类型', '講義タイプ', 'Tipo de Palestra', 'Тип лекции', 'Type de conférence', '강의 유형', 'Vorlesungstyp', 'Tipo di lezione', NULL, 'Előadás típusa', 'Lezingstype', 'Lectio Type', 'Jenis Kuliah', 'Ders Türü', 'Τύπος διάλεξης', 'نوع سخنرانی', 'Jenis Kuliah', NULL, NULL, 'વ્યાખ્યાન પ્રકાર', 'Rodzaj wykładu', 'Тип лекції', 'ਲੈਕਚਰ ਦੀ ਕਿਸਮ', 'Tipul cursului', NULL, 'Iru Ikawe', 'Nau\'in koyarwa', NULL),
(998, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'موقع يوتيوب', 'यूट्यूब', 'یوٹیوب', '优酷', 'Youtube', 'Youtube', 'YouTube', 'Youtube', '유튜브', 'Youtube', 'Youtube', NULL, 'Youtube', 'Youtube', 'video', 'Youtube', 'Youtube', 'Youtube', 'یوتیوب', 'Youtube', NULL, NULL, 'યુટ્યુબ', 'youtube', 'Youtube', 'ਯੂਟਿubeਬ', 'Youtube', NULL, 'Youtube', 'Youtube', NULL),
(999, 'vimeo', 'Vimeo', 'ভিমিও', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'ヴィメオ', 'Vimeo', 'Vimeo', 'Vimeo', '비 메오', 'Vimeo', 'Vimeo', NULL, 'Vimeo', 'Vimeo', 'Video', 'Vimeo', 'Vimeo', 'Vimeo', 'ویمئو', 'Vimeo', NULL, NULL, 'Vimeo', 'Vimeo', 'Вімео', 'Vimeo', 'Vimeo', NULL, 'Vimeo', 'Vimeo', NULL),
(1000, 'power_point', 'Power Point', 'পাওয়ার পয়েন্ট', 'PowerPoint', 'عرض تقديمي', 'पावर प्वाइंट', 'پاور پوائنٹ', '微软幻灯片软件', 'パワーポイント', 'Power Point', 'Силовая установка', 'Power Point', '파워 포인트', 'Power Point', 'Presa della corrente', NULL, 'Power Point', 'Power Point', 'PunctumPotentiae', 'Power Point', 'Priz', 'Power Point', 'پاورپوینت', 'Titik Kuasa', NULL, NULL, 'પાવર પોઇન્ટ', 'Power Point', 'Штепсельна розетка', 'ਪਾਵਰ ਪਵਾਇੰਟ', 'Power Point', NULL, 'Sọkẹti Ogiri fun ina', 'Wutar Lantarki', NULL),
(1001, 'valid_file_format_lecture', 'Please select a valid file format. Ex: ppt, pptx.', 'একটি বৈধ ফাইল ফর্ম্যাট নির্বাচন করুন। উদাঃ পিটিপি, পিপিটিএক্স', 'Por favor seleccione un formato de archivo válido. Ej: ppt, pptx.', 'يرجى تحديد تنسيق ملف صالح. مثال: ppt ، pptx.', 'कृपया एक मान्य फ़ाइल प्रारूप चुनें। Ex: पीपीटी, पीपीटीएक्स।', 'براہ کرم ایک درست فائل فارمیٹ منتخب کریں۔ مثال کے طور پر: ppt ، pptx', '请选择有效的文件格式。 例如：ppt，pptx。', '有効なファイル形式を選択してください。 例：ppt、pptx。', 'Por favor, selecione um formato de arquivo válido. Ex .: ppt, pptx.', 'Пожалуйста, выберите правильный формат файла. Пример: ppt, pptx.', 'Veuillez sélectionner un format de fichier valide. Ex: ppt, pptx.', '유효한 파일 형식을 선택하십시오. 예 : ppt, pptx.', 'Bitte wählen Sie ein gültiges Dateiformat. Beispiel: ppt, pptx.', 'Seleziona un formato file valido. Es: ppt, pptx.', NULL, 'Válasszon érvényes fájlformátumot. Pl .: ppt, pptx.', 'Selecteer een geldig bestandsformaat. Bijvoorbeeld: ppt, pptx.', 'Placere eligere formae q.e. valet. Ex: ppt, PPTX.', 'Silakan pilih format file yang valid. Mis: ppt, pptx.', 'Lütfen geçerli bir dosya biçimi seçin. Örn: ppt, pptx.', 'Επιλέξτε μια έγκυρη μορφή αρχείου. Π.χ .: ppt, pptx.', 'لطفا یک قالب پرونده معتبر انتخاب کنید. مثال: ppt ، pptx.', 'Sila pilih format fail yang sah. Cth: ppt, pptx.', NULL, NULL, 'કૃપા કરી માન્ય ફાઇલ ફોર્મેટ પસંદ કરો. ભૂતપૂર્વ: ppt, pptx.', 'Wybierz prawidłowy format pliku. Np .: ppt, pptx.', 'Виберіть правильний формат файлу. Наприклад: ppt, pptx.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਈਲ ਫੌਰਮੈਟ ਦੀ ਚੋਣ ਕਰੋ. ਉਦਾਹਰਣ: ppt, pptx.', 'Vă rugăm să selectați un format de fișier valid. Ex: ppt, pptx.', NULL, 'Jọwọ yan ọna kika faili to wulo. Mofi: ppt, pptx.', 'Da fatan za a zabi ingataccen tsarin fayil. Ex: ppt, pptx.', NULL),
(1002, 'valid_file_format_submission', 'Valid file format submission. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'বৈধ ফাইল ফর্ম্যাট জমা । উদা: ডক, ডকএক্স, জেপিজি, জেপিগ, পিডিএফ, পিপিটি, পিপিটিএক্স।', 'Envío de formato de archivo válido. Ej: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'إرسال تنسيق ملف صالح. مثال: doc و docx و jpg و jpeg و pdf و ppt و pptx.', 'मान्य फ़ाइल प्रारूप सबमिशन। Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx', 'درست فائل فارمیٹ جمع کرانا۔ مثال کے طور پر: doc ، docx ، jpg ، jpeg ، pdf ، ppt ، pptx', '有效的文件格式提交。 例如：doc，docx，jpg，jpeg，pdf，ppt，pptx。', '有効なファイル形式の送信。 例：doc、docx、jpg、jpeg、pdf、ppt、pptx。', 'Envio de formato de arquivo válido. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Допустимый формат файла представления. Например: документ, документ, JPG, JPEG, PDF, PPT, PPTX.', 'Soumission de format de fichier valide. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', '유효한 파일 형식 제출 예 : doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Gültige Einreichung des Dateiformats. Beispiel: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Invio del formato file valido. Es: doc, docx, jpg, jpeg, pdf, ppt, pptx.', NULL, 'Érvényes fájlformátum-benyújtás. Pl .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Geldige indiening van bestandsindeling. Bijvoorbeeld: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Verum formae q.e. obediens gauderet exerceri. Ex: doc: docx: jpg JPEG pdf, ppt, PPTX.', 'Pengiriman format file yang valid. Contoh: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Geçerli dosya biçimi gönderimi. Örn: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Έγκυρη υποβολή μορφής αρχείου. Π.χ .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'ارسال فرمت فایل معتبر است. مثال: doc، docx، jpg، jpeg، pdf، ppt، pptx.', 'Penyerahan format fail yang sah. Cth: doc, docx, jpg, jpeg, pdf, ppt, pptx.', NULL, NULL, 'માન્ય ફાઇલ ફોર્મેટ સબમિશન. દા.ત.: ડ docક, ડ docકએક્સ, જેપીજી, જેપીએજી, પીડીએફ, પીપીટી, પીટીટીએક્સ.', 'Prawidłowy format pliku. Np .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Дійсне подання формату файлу. Наприклад: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'ਵੈਧ ਫੌਰਮੈਟ ਸਬਮਿਸ਼ਨ. ਉਦਾਹਰਣ: ਡੌਕ, ਡੌਕਸ, ਜੇਪੀਜੀ, ਜੇਪੀਜੀ, ਪੀਡੀਐਫ, ਪੀਟੀਪੀ, ਪੀਟੀਐਫਐਕਸ.', 'Trimitere valabilă în format de fișier. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', NULL, 'Ifisilẹ ọna kika faili afọmọ. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Missionaddamar da tsarin fayil mai inganci. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', NULL),
(1003, 'reset_username', 'Reset Username', 'ব্যবহারকারীর নাম পুনরায় সেট করুন', 'Restablecer nombre de usuario', 'إعادة تعيين اسم المستخدم', 'उपयोगकर्ता नाम को रीसेट करें', 'صارف کا نام دوبارہ ترتیب دیں', '重置用户名', 'ユーザー名をリセット', 'Redefinir nome de usuário', 'Сбросить имя пользователя', 'Reset Username', '사용자 이름 재설정', 'Benutzername zurücksetzen', 'Reimposta nome utente', NULL, 'Felhasználónév visszaállítása', 'Gebruikersnaam opnieuw instellen', 'Reddere praeferentias Username', 'Setel Ulang Nama Pengguna', 'Kullanıcı Adını Sıfırla', 'Επαναφορά ονόματος χρήστη', 'تنظیم مجدد نام کاربری', 'Tetapkan semula Nama Pengguna', NULL, NULL, 'વપરાશકર્તા નામ ફરીથી સેટ કરો', 'Zresetuj nazwę użytkownika', 'Скинути ім\'я користувача', 'ਉਪਯੋਗਕਰਤਾ ਨਾਮ ਰੀਸੈਟ ਕਰੋ', 'Resetare nume utilizator', NULL, 'Tun olumulo Olumulo', 'Sake saita Sunan mai amfani', NULL),
(1004, 'global_search', 'Global Search', 'গ্লোবাল অনুসন্ধান', 'Búsqueda global', 'البحث العالمي', 'वैश्विक खोज', 'عالمی تلاش', '全球搜寻', 'グローバル検索', 'Pesquisa global', 'Глобальный поиск', 'Recherche globale', '글로벌 검색', 'Globale Suche', 'Ricerca globale', NULL, 'Globális keresés', 'Wereldwijd zoeken', 'Global Quaerere', 'Pencarian Global', 'Global Arama', 'Καθολική αναζήτηση', 'جستجوی جهانی', 'Carian Global', NULL, NULL, 'વૈશ્વિક શોધ', 'Wyszukiwanie globalne', 'Глобальний пошук', 'ਗਲੋਬਲ ਖੋਜ', 'Căutare globală', NULL, 'Wiwa Agbaye', 'Binciken Duniya', NULL),
(1005, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'Ver perfil', 'عرض الصفحة الشخصية', 'प्रोफाइल देखिये', 'پروفائل کا مشاھدہ کریں', '查看资料', 'プロフィールを見る', 'Ver perfil', 'Просмотреть профиль', 'Voir le profil', '프로필보기', 'Profil anzeigen', 'Visualizza profilo', NULL, 'Profil megtekintése', 'Bekijk profiel', 'View profile', 'Tampilkan profil', 'Profili Görüntüle', 'Εμφάνιση προφίλ', 'مشاهده پروفایل', 'Lihat profil', NULL, NULL, 'પ્રોફાઇલ જુઓ', 'Zobacz profil', 'Перегляд профілю', 'ਪ੍ਰੋਫਾਈਲ ਵੇਖੋ', 'Vezi profil', NULL, 'Wo Profaili', 'Duba Bayanan martaba', NULL),
(1006, 'type_atleast_3_characters', 'Type at least 3 characters', 'কমপক্ষে 3 টি অক্ষর টাইপ করুন', 'Escriba al menos 3 caracteres', 'اكتب 3 أحرف على الأقل', 'कम से कम 3 अक्षर टाइप करें', 'کم از کم 3 حرف ٹائپ کریں', '输入至少3个字符', '3文字以上入力してください', 'Digite pelo menos 3 caracteres', 'Введите не менее 3 символов', 'Tapez au moins 3 caractères', '3 자 이상 입력', 'Geben Sie mindestens 3 Zeichen ein', 'Digita almeno 3 caratteri', NULL, 'Írjon be legalább 3 karaktert', 'Typ minimaal 3 karakters', 'Typus III characters certe', 'Ketik setidaknya 3 karakter', 'En az 3 karakter yazın', 'Πληκτρολογήστε τουλάχιστον 3 χαρακτήρες', 'حداقل 3 کاراکتر تایپ کنید', 'Taip sekurang-kurangnya 3 aksara', NULL, NULL, 'ઓછામાં ઓછા 3 અક્ષરો લખો', 'Wpisz co najmniej 3 znaki', 'Введіть щонайменше 3 символи', 'ਘੱਟੋ ਘੱਟ 3 ਅੱਖਰ ਟਾਈਪ ਕਰੋ', 'Tastați cel puțin 3 caractere', NULL, 'Tẹ o kere 3 ohun kikọ', 'Rubuta aƙalla haruffa 3', NULL),
(1007, 'no_search_result_found', 'No search result found', 'কোন অনুসন্ধান ফলাফল পাওয়া যায় নি', 'No se encontraron resultados de búsqueda', 'لم يتم العثور على نتيجة بحث', 'कोई खोज परिणाम नहीं मिला', 'تلاش کا کوئی نتیجہ نہیں ملا', '找不到搜索结果', '検索結果は見つかりませんでした', 'Nenhum resultado de pesquisa encontrado', 'Результаты поиска не найдены', 'Aucun résultat de recherche trouvé', '검색 결과가 없습니다', 'Kein Suchergebnis gefunden', 'Nessun risultato di ricerca trovato', NULL, 'Nincs találat', 'Geen zoekresultaat gevonden', 'Quaerere exitum non invenit', 'Tidak ditemukan hasil pencarian', 'Arama sonucu bulunamadı', 'Δεν βρέθηκε αποτέλεσμα αναζήτησης', 'هیچ نتیجه ای یافت نشد', 'Hasil carian tidak dijumpai', NULL, NULL, 'કોઈ શોધ પરિણામ મળ્યું નથી', 'Nie znaleziono wyników wyszukiwania', 'Не знайдено результатів пошуку', 'ਕੋਈ ਖੋਜ ਨਤੀਜਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu a fost găsit niciun rezultat al căutării', NULL, 'A ko ri abajade wiwa', 'Babu sakamakon bincike', NULL),
(1008, 'search_result_found', 'Search result found', 'অনুসন্ধানের ফলাফল পাওয়া গেছে', 'Resultado de búsqueda encontrado', 'تم العثور على نتيجة البحث', 'खोज परिणाम मिला', 'تلاش کا نتیجہ ملا', '找到搜索结果', '検索結果が見つかりました', 'Resultado da pesquisa encontrado', 'Результат поиска найден', 'Résultat de recherche trouvé', '검색 결과를 찾았습니다', 'Suchergebnis gefunden', 'Risultato della ricerca trovato', NULL, 'Talált keresési eredmény', 'Zoekresultaat gevonden', 'Quaerentis refert found', 'Hasil pencarian ditemukan', 'Arama sonucu bulundu', 'Βρέθηκε το αποτέλεσμα αναζήτησης', 'نتیجه جستجو یافت شد', 'Hasil carian dijumpai', NULL, NULL, 'શોધ પરિણામ મળ્યું', 'Znaleziono wynik wyszukiwania', 'Знайдено результат пошуку', 'ਖੋਜ ਨਤੀਜਾ ਮਿਲਿਆ', 'Rezultatul căutării a fost găsit', NULL, 'Wa abajade wiwa', 'An samo sakamakon nema', NULL),
(1009, 'frontend_splash_image', 'Frontend splash image', 'ফ্রন্টএন্ড স্প্ল্যাশ ইমেজ', 'Imagen de bienvenida frontal', 'صورة البداية الأمامية', 'सामने की छप छवि', 'فرنٹ اینڈ سپلیش امیج', '前端启动画面', 'フロントエンドのスプラッシュ画像', 'Imagem inicial de front-end', 'Внешний вид заставки', 'Image de démarrage frontend', '프런트 엔드 스플래시 이미지', 'Frontend-Splash-Bild', 'Immagine splash frontend', NULL, 'Frontend splash kép', 'Frontend splash-afbeelding', 'Frontend imaginem adipiscing', 'Frontend splash image', 'Ön uç splash görüntüsü', 'Εικόνα splend frontend', 'تصویر چلپ چلوپ جلویی', 'Gambar percikan depan', NULL, NULL, 'અગ્ર સ્પ્લેશ છબી', 'Obraz powitalny frontonu', 'Frontend сплеск зображення', 'ਫਰੰਟੈਂਡ ਸਪਲੈਸ਼ ਚਿੱਤਰ', 'Imagine de splash frontend', NULL, 'Aworan asesejade iwaju', 'Hoton fesa ruwayar gaba', NULL),
(1010, 'delete_student_of_this_guardian', 'Delete Student of this Guardian', 'এই অভিভাবকের ছাত্র মুছুন', 'Eliminar estudiante de esta tutora', 'حذف الطالب من هذا الوصي', 'इस अभिभावक के छात्र को हटाएँ', 'اس سرپرست کے طالب علم کو حذف کریں', '删除该监护人的学生', 'この保護者の生徒を削除', 'Excluir aluno deste responsável', 'Удалить ученика этого хранителя', 'Supprimer l\'élève de ce gardien', '이 보호자의 학생 삭제', 'Schüler dieses Wächters löschen', 'Elimina Student of this Guardian', NULL, 'Törölje a gyám hallgatóját', 'Leerling van deze voogd verwijderen', 'Delete Discipulus autem huius custodis', 'Hapus Siswa dari Wali ini', 'Bu Vasinin Öğrencisini Sil', 'Διαγραφή μαθητή αυτού του κηδεμόνα', 'دانشجو این نگهبان را حذف کنید', 'Padamkan Pelajar Penjaga ini', NULL, NULL, 'આ વાલીનો વિદ્યાર્થી કા Deleteી નાખો', 'Usuń ucznia tego opiekuna', 'Видалити студента цього Опікуна', 'ਇਸ ਸਰਪ੍ਰਸਤ ਦੇ ਵਿਦਿਆਰਥੀ ਨੂੰ ਮਿਟਾਓ', 'Ștergeți studentul acestui tutore', NULL, 'Pa ọmọ ile-iwe ti Olutọju yii', 'Share Dalibin wannan jami’in', NULL),
(1011, 'this_student_have_unpaid_invoice', 'This Student have unpaid Invoice', 'এই শিক্ষার্থীর অপরিশোধিত চালান রয়েছে', 'Este estudiante tiene factura sin pagar', 'هذا الطالب لديه فاتورة غير مدفوعة', 'इस छात्र के पास अवैतनिक चालान है', 'اس طالب علم کے پاس بلا معاوضہ انوائس ہے', '该学生有未付款的发票', 'この学生は未払いの請求書を持っています', 'Este aluno recebeu uma fatura não paga', 'Этот студент имеет неоплаченный счет', 'Cet étudiant a une facture impayée', '이 학생에게는 미지급 인보이스가 있습니다', 'Dieser Student hat eine unbezahlte Rechnung', 'Questo studente ha fattura non pagata', NULL, 'Ennek a hallgatónak fizetetlen számlája van', 'Deze student heeft een onbetaalde factuur', 'Discipulus Hoc non est constitutus enim cautionem', 'Siswa ini memiliki Faktur yang belum dibayar', 'Bu Öğrencinin ödenmemiş Faturası var', 'Αυτός ο μαθητής έχει απλήρωτο τιμολόγιο', 'این دانشجو دارای فاکتور پرداخت نشده است', 'Pelajar ini mempunyai Invois yang belum dibayar', NULL, NULL, 'આ વિદ્યાર્થી પાસે અવેતન ચૂકવણી છે', 'Ten uczeń ma niezapłaconą fakturę', 'Цей студент має неоплачені рахунки-фактури', 'ਇਸ ਵਿਦਿਆਰਥੀ ਦਾ ਅਦਾਇਗੀ ਚਲਾਨ ਹੈ', 'Acest student are factură neplătită', NULL, 'Omo ile-iwe yii ni Invoice isanwo-ọja', 'Wannan Dalibin yana da Invoice wanda ba\'a biya kudi ba', NULL),
(1012, 'bulk_student_instruction_8', 'Take the Dsicount ID from here', 'এখান থেকে ডিসকাউন্ট আইডি নিন', 'Tome el descuento IS de la lista de descuentos', 'خذ الخصم من قائمة الخصم', 'डिस्काउंट सूची से डिस्काउंट आईएस ले लो', 'ڈسکاؤنٹ کی فہرست سے ڈسکاؤنٹ IS لیں', '从折扣清单中获取折扣IS', '割引リストから割引ISを取得', 'Pegue o desconto IS da lista de descontos', 'Возьмите скидку IS из списка скидок', 'Prenez le rabais IS de la liste de rabais', '할인 목록에서 할인 IS 가져 오기', 'Nehmen Sie den Rabatt IS aus der Rabattliste', 'Prendi lo sconto IS dall\'elenco degli sconti', NULL, 'Vegye ki a Kedvezményes IS elemet a Kedvezmény listából', 'Neem de korting IS van de kortingslijst', 'Take a discount in discount est album', 'Ambil IS Diskon dari sini', 'İndirim IS\'sini buradan alın', 'Πάρτε την έκπτωση IS από εδώ', 'تخفیف را از اینجا بگیرید', 'Ambil Potongan IS dari sini', NULL, NULL, 'અહીંથી ડિસ્કાઉન્ટ IS લો', 'Weź zniżkę IS stąd', 'Візьміть Знижку IS тут', 'ਛੂਟ ਇਥੋਂ ਲਓ', 'Ia Discount IS de aici', NULL, 'Mu ẹdinwo WA lati ibi', 'Theauki Discount IS daga nan', NULL),
(1013, 'hi', 'Hi', 'ওহে', 'Hola', 'مرحبا', 'नमस्ते', 'ہائے', '你好', 'こんにちは', 'Oi', 'Привет', 'salut', '안녕', 'Hallo', 'Ciao', NULL, 'Szia', 'Hoi', 'Salve', 'Hai', 'Selam', 'γεια', 'سلام', 'Hai', NULL, NULL, 'હાય', 'cześć', 'Привіт', 'ਹਾਇ', 'Salut', NULL, 'Bawo', 'Barka dai', NULL),
(1014, 'for', 'For', 'জন্য', 'por', 'إلى عن على', 'के लिये', 'کے لئے', '对于', 'ために', 'Para', 'За', 'Pour', '에 대한', 'Zum', 'Per', NULL, 'mert', 'Voor', 'quia', 'Untuk', 'İçin', 'Για', 'برای', 'Untuk', NULL, NULL, 'માટે', 'Dla', 'Для', 'ਲਈ', 'Pentru', NULL, 'Fun', 'Don', NULL),
(1015, 'thank_you', 'Thank you', 'ধন্যবাদ', 'Gracias', 'شكرا لك', 'धन्यवाद', 'شکریہ', '谢谢', 'ありがとうございました', 'Obrigado', 'Спасибо', 'Je vous remercie', '감사합니다', 'Vielen Dank', 'Grazie', NULL, 'Köszönöm', 'Dank u', 'Gratias tibi', 'Terima kasih', 'teşekkür ederim', 'Ευχαριστώ', 'متشکرم', 'Terima kasih', NULL, NULL, 'આભાર', 'Dziękuję Ci', 'Дякую', 'ਤੁਹਾਡਾ ਧੰਨਵਾਦ', 'Mulțumesc', NULL, 'e dupe', 'na gode', NULL),
(1016, 'following_is_your_login_credential', 'Following is your login credential', 'নিম্নলিখিত আপনার লগইন ক্রেডেনশিয়াল', 'La siguiente es su credencial de inicio de sesión', 'فيما يلي بيانات اعتماد تسجيل الدخول الخاصة بك', 'इसके बाद आपका लॉगिन क्रेडेंशियल है', 'مندرجہ ذیل آپ کے لاگ ان کی سند ہے', '以下是您的登录凭证', '以下はログイン認証情報です', 'A seguir está sua credencial de login', 'Ниже приведены ваши учетные данные', 'Voici vos informations de connexion', '다음은 로그인 자격 증명입니다', 'Im Folgenden finden Sie Ihre Anmeldeinformationen', 'Di seguito sono riportate le credenziali di accesso', NULL, 'Az alábbiakban bemutatjuk a bejelentkezési adatait', 'Hieronder volgt uw inloggegevens', 'Post vestri login MANDATUM', 'Berikut ini adalah kredensial masuk Anda', 'Giriş bilgileriniz aşağıdadır', 'Ακολουθεί το διαπιστευτήριο σύνδεσης', 'در زیر اعتبار ورود به سیستم است', 'Berikut adalah kelayakan log masuk anda', NULL, NULL, 'તમારું લ yourગિન ઓળખપત્ર નીચે આપેલ છે', 'Poniżej znajduje się twoje dane logowania', 'Далі йде ваш обліковий запис для входу', 'ਹੇਠਾਂ ਤੁਹਾਡਾ ਲੌਗਇਨ ਪ੍ਰਮਾਣ ਪੱਤਰ ਹੈ', 'Urmează datele de autentificare', NULL, 'Atẹle ni ẹri iwọle rẹ', 'Mai biye shine shaidar shiga', NULL),
(1017, 'to_reset_password', 'To reset your password plese click following url', 'আপনার পাসওয়ার্ড পুনরায় সেট করতে, দয়া করে নিম্নলিখিত url ক্লিক করুন', 'Para restablecer su contraseña, haga clic en la siguiente URL', 'لإعادة تعيين كلمة المرور الخاصة بك ، انقر فوق عنوان url التالي', 'अपना पासवर्ड रीसेट करने के लिए यूआरएल पर क्लिक करें', 'اپنے پاس ورڈ کی درخواست کو دوبارہ ترتیب دینے کے لئے درج ذیل یو آر ایل پر کلک کریں', '要重置密码，请点击以下网址', 'パスワードをリセットするには、次のURLをクリックしてください。', 'Para redefinir sua senha, clique no seguinte URL', 'Чтобы сбросить пароль, пожалуйста, нажмите следующий URL', 'Pour réinitialiser votre mot de passe, cliquez sur l\'URL suivante', '비밀번호를 재설정하려면 다음 URL을 클릭하십시오.', 'Um Ihr Passwort zurückzusetzen, klicken Sie bitte auf folgende URL', 'Per reimpostare la password, fare clic sul seguente URL', NULL, 'A jelszó visszaállításához kattintson a következő URL-re', 'Klik op de volgende url om uw wachtwoord opnieuw in te stellen', 'Ut reset vestri password placere click sequenti URL', 'Untuk mengatur ulang kata sandi Anda, klik url berikut', 'Parolanızı sıfırlamak için aşağıdaki URL\'yi tıklayın', 'Για να επαναφέρετε τον κωδικό πρόσβασής σας, κάντε κλικ στο ακόλουθο url', 'برای تنظیم مجدد کلمه عبور خود ، روی آدرس اینترنتی زیر کلیک کنید', 'Untuk menetapkan semula kata laluan anda, sila klik url berikut', NULL, NULL, 'તમારો પાસવર્ડ ફરીથી સેટ કરવા માટે નીચે આપેલ url ને ક્લિક કરો', 'Aby zresetować hasło, kliknij następujący adres URL', 'Щоб скинути пароль, натисніть наступну URL-адресу', 'ਆਪਣੇ ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਹੇਠਾਂ ਦਿੱਤੇ url ਤੇ ਕਲਿਕ ਕਰੋ', 'Pentru a reseta parola, faceți clic pe următorul URL', NULL, 'Lati ṣatunṣe ọrọ igbaniwọle ọrọ igbaniwọle tẹ atẹle url', 'Don sake saita kalmar izinin shiga danna latsa url', NULL),
(1018, 'if_not_request_just_ignore', 'If you did not request to reset your password, Please ignore this email', 'আপনি যদি নিজের পাসওয়ার্ডটি পুনরায় সেট করার অনুরোধ না করেন তবে দয়া করে এই ইমেলটি উপেক্ষা করুন', 'Si no solicitó restablecer su contraseña, Plesae ignorará este correo electrónico', 'إذا لم تطلب إعادة تعيين كلمة المرور الخاصة بك ، فتجاهل Plesae هذا البريد الإلكتروني', 'यदि आपने अपना पासवर्ड रीसेट करने का अनुरोध नहीं किया है, तो इस ईमेल को नजरअंदाज करें', 'اگر آپ نے اپنا پاس ورڈ دوبارہ ترتیب دینے کی درخواست نہیں کی تو پلیسی نے اس ای میل کو نظر انداز کردیا', '如果您不要求重设密码，Plesae将忽略此电子邮件', 'パスワードのリセットをリクエストしていない場合、Plesaeはこのメールを無視します', 'Se você não solicitou a redefinição de sua senha, ignore este e-mail.', 'Если вы не просили сбросить пароль, Plesae игнорирует это письмо', 'Si vous n\'avez pas demandé à réinitialiser votre mot de passe, Plesae ignore cet e-mail', '비밀번호 재설정을 요청하지 않은 경우 Plesae는이 이메일을 무시합니다.', 'Wenn Sie nicht aufgefordert haben, Ihr Passwort zurückzusetzen, ignoriert Plesae diese E-Mail', 'Se non hai richiesto di reimpostare la password, Plesae ignora questa email', NULL, 'Ha nem kérte a jelszó visszaállítását, a Plesae figyelmen kívül hagyja ezt az e-mailt', 'Als je niet hebt gevraagd om je wachtwoord opnieuw in te stellen, negeert Plesae deze e-mail', 'f petentibus non reset vestri password huic inscriptioni ignorare Plesae', 'Jika Anda tidak meminta untuk mereset kata sandi Anda, Abaikan email ini', 'Şifrenizi sıfırlamayı istemediyseniz, lütfen bu e-postayı dikkate almayın', 'Εάν δεν ζητήσατε να επαναφέρετε τον κωδικό πρόσβασής σας, αγνοήστε αυτό το μήνυμα ηλεκτρονικού ταχυδρομείου', 'اگر درخواست تنظیم مجدد رمز ورود خود را نکردید ، لطفاً این ایمیل را نادیده بگیرید', 'Sekiranya anda tidak meminta untuk menetapkan semula kata laluan anda, abaikan e-mel ini', NULL, NULL, 'જો તમે તમારો પાસવર્ડ ફરીથી સેટ કરવાની વિનંતી કરી નથી, તો કૃપા કરીને આ ઇમેઇલને અવગણો', 'Jeśli nie poprosiłeś o zresetowanie hasła, zignoruj ten e-mail', 'Якщо ви не просили скинути свій пароль, проігноруйте цей електронний лист', 'ਜੇ ਤੁਸੀਂ ਆਪਣਾ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰਨ ਦੀ ਬੇਨਤੀ ਨਹੀਂ ਕੀਤੀ, ਤਾਂ ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਈਮੇਲ ਨੂੰ ਨਜ਼ਰਅੰਦਾਜ਼ ਕਰੋ', 'Dacă nu ați solicitat să vă resetați parola, ignorați acest e-mail', NULL, 'Ti o ko ba beere lati tun ọrọ igbaniwọle rẹ pada, Jọwọ foju imeeli yii', 'Idan bakayi buƙatar sake saita kalmar wucewa ba, Da fatan za a kula da wannan imel ɗin', NULL),
(1019, 'you_have_a_assignment_submission', 'You have a assignment submission from the following student.', 'আপনার নিম্নলিখিত শিক্ষার্থীর কাছ থেকে একটি এসাইনমেন্ট জমা রয়েছে।', 'Tiene una presentación de tarea del siguiente estudiante.', 'لديك تقديم مهمة من الطالب التالي.', 'आपके पास निम्नलिखित छात्र से एक असाइनमेंट जमा है।', 'آپ کے پاس مندرجہ ذیل طالب علم کی طرف سے ایک اسائنمنٹیشن جمع کروانا ہے۔', '您有以下学生提交的作业。', '次の学生からの課題提出があります。', 'Você tem um envio de tarefa do aluno a seguir.', 'У вас есть задание от следующего студента.', 'Vous avez une soumission de travail de l\'étudiant suivant.', '다음 학생의 과제 제출물이 있습니다.', 'Sie haben eine Aufgabenübermittlung vom folgenden Schüler.', 'Hai un compito inviato dal seguente studente.', NULL, 'A következő hallgató benyújtja a megbízás benyújtását.', 'Je hebt een opdrachtinzending van de volgende student.', 'Sit tibi munus ab obsequio haec discipulus.', 'Anda memiliki pengajuan tugas dari siswa berikut.', 'Aşağıdaki öğrenciden ödev teslimi var.', 'Έχετε μια υποβολή εργασίας από τον ακόλουθο μαθητή.', 'شما از دانش آموز زیر یک ارسال تکلیف دارید.', 'Anda mempunyai penghantaran tugasan dari pelajar berikut.', NULL, NULL, 'તમારી પાસે નીચેના વિદ્યાર્થી તરફથી એક સોંપણી સબમિશન છે.', 'Przesłano zadanie od następującego ucznia.', 'У вас є подання завдання від наступного студента.', 'ਤੁਹਾਡੇ ਕੋਲ ਹੇਠਾਂ ਦਿੱਤੇ ਵਿਦਿਆਰਥੀ ਦੁਆਰਾ ਇਕ ਅਸਾਈਨਮੈਂਟ ਸਬਮਿਸ਼ਨ ਹੈ.', 'Aveți o trimitere de sarcini de la următorul student.', NULL, 'O ni ifakalẹ iṣẹ iyansilẹ lati ọmọ ile-iwe atẹle.', 'Kuna da ƙaddamar da aiki daga ɗalibin da ke biye.', NULL),
(1020, 'sent', 'Sent', 'প্রেরিত', 'Expedida', 'أرسلت', 'भेज दिया', 'بھیجا گیا', '已发送', '送信しました', 'Enviei', 'Отправлено', 'Envoyée', '보냄', 'Geschickt', 'Inviata', NULL, 'Küldött', 'Verzonden', 'missus', 'Terkirim', 'Gönderilen', 'Απεσταλμένα', 'ارسال شد', 'Dihantar', NULL, NULL, 'મોકલેલો', 'Wysłano', 'Надісланий', 'ਭੇਜਿਆ', 'Trimis', NULL, 'Ti firanṣẹ', 'An aika', NULL),
(1021, 'id_no_title_background', 'ID NO Title Background', 'আইডি নম্বর টাইটেল ব্যাকগ্রাউন্ড', 'ID NO Título Antecedentes', 'رقم التعريف خلفية العنوان', 'आईडी नंबर शीर्षक पृष्ठभूमि', 'ID NO عنوان کا پس منظر', '编号标题背景', 'ID NOタイトルの背景', 'ID NO Título Fundo', 'ID NO Название фона', 'ID NO Titre Contexte', 'ID NO 타이틀 배경', 'ID NO Titel Hintergrund', 'ID NO Sfondo del titolo', NULL, 'ID NO Cím háttér', 'ID GEEN Titelachtergrond', 'Id nibh nulla Titulus', 'ID NO Latar Belakang Judul', 'ID NO Başlık Arka Plan', 'ID ΟΧΙ Τίτλος Ιστορικό', 'شناسه بدون سابقه', 'ID NO Latar Belakang Tajuk', NULL, NULL, 'ID કોઈ શીર્ષક પૃષ્ઠભૂમિ', 'ID nr Tytuł Tło', 'Ідентифікатор НІ', 'ID ਕੋਈ ਸਿਰਲੇਖ ਦਾ ਪਿਛੋਕੜ', 'ID NU Istoric de titlu', NULL, 'ID KO akọle abẹlẹ', 'IDAN KAI NUFIN Farko', NULL),
(1023, 'live_class', 'Live Class', 'লাইভ ক্লাস', 'Clase en vivo', 'فئة حية', 'लाइव क्लास', 'براہ راست کلاس', '现场课', 'ライブクラス', 'Live Class', 'Живой класс', 'Cours en direct', '라이브 클래스', 'Live-Klasse', 'Classe dal vivo', NULL, 'Élő osztály', 'Live klasse', 'Vivamus Paleonemertea Class', 'Kelas Langsung', 'Canlı Sınıf', 'Ζωντανή τάξη', 'کلاس زنده', 'Kelas Langsung', NULL, NULL, 'જીવંત વર્ગ', 'Klasa na żywo', 'Живий клас', 'ਲਾਈਵ ਕਲਾਸ', 'Clasa live', NULL, 'Kilasi Live', 'Class', NULL),
(1024, 'manage_live_class', 'Manage Live Class', 'লাইভ ক্লাস পরিচালনা করুন', 'Administrar clase en vivo', 'إدارة Live Class', 'लाइव क्लास का प्रबंधन करें', 'لائیو کلاس انتظام کریں', '管理现场课堂', 'ライブクラスの管理', 'Gerenciar classe ao vivo', 'Управлять живым классом', 'Gérer les cours en direct', '라이브 클래스 관리', 'Live-Klasse verwalten', 'Gestisci la lezione dal vivo', NULL, 'Kezelje az élő osztályt', 'Beheer Live Class', 'Curo vive Paleonemertea Class', 'Kelola Kelas Langsung', 'Canlı Sınıfı Yönet', 'Διαχείριση ζωντανής τάξης', 'کلاس زنده را مدیریت کنید', 'Urus Kelas Langsung', NULL, NULL, 'લાઇવ ક્લાસ મેનેજ કરો', 'Zarządzaj klasą na żywo', 'Управління живим класом', 'ਲਾਈਵ ਕਲਾਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați clasa live', NULL, 'Ṣakoso kilasi Kilasi', 'Sarrafa Class Class', NULL),
(1025, 'class_date', 'Class Date', 'ক্লাসের তারিখ', 'Fecha de clase', 'تاريخ الفصل', 'कक्षा की तारीख', 'کلاس کی تاریخ', '上课日期', 'クラス日付', 'Data da turma', 'Дата урока', 'Date du cours', '수업 날짜', 'Klassendatum', 'Data della classe', NULL, 'Osztály dátuma', 'Klasse Datum', 'classis Date', 'Tanggal Kelas', 'Sınıf Tarihi', 'Ημερομηνία τάξης', 'تاریخ کلاس', 'Tarikh Kelas', NULL, NULL, 'વર્ગ તારીખ', 'Data zajęć', 'Дата заняття', 'ਕਲਾਸ ਦੀ ਤਾਰੀਖ', 'Data clasei', NULL, 'Ọjọ Kilasi', 'Kwanan Kwana', NULL),
(1026, 'meeting_id', 'Meeting ID', 'মিটিং আইডি', 'ID de la reunión', 'معرف الاجتماع', 'बैठक आईडी', 'میٹنگ کی شناخت', '会议编号', '会議ID', 'ID da reunião', 'ID встречи', 'ID de réunion', '회의 ID', 'Konferenz-ID', 'ID riunione', NULL, 'Találkozóazonosító', 'Meeting ID', 'id testimonii', 'ID Rapat', 'Toplantı kimliği', 'Αναγνωριστικό σύσκεψης', 'شناسه جلسه', 'ID Mesyuarat', NULL, NULL, 'મીટિંગ આઈડી', 'Identyfikator spotkania', 'Ідентифікатор наради', 'ਮੀਟਿੰਗ ID', 'ID-ul ședinței', NULL, 'ID ipade', 'ID gamuwa', NULL),
(1027, 'meeting_password', 'Meeting Password', 'মিটিং পাসওয়ার্ড', 'Contraseña de reunión', 'كلمة مرور الاجتماع', 'बैठक का पासवर्ड', 'میٹنگ پاس ورڈ', '会议密码', '会議パスワード', 'Senha da Reunião', 'Пароль встречи', 'Mot de passe de réunion', '회의 비밀번호', 'Meeting-Passwort', 'Riunione password', NULL, 'Találkozó jelszava', 'Wachtwoord voor vergadering', 'Password testimonii', 'Kata Sandi Rapat', 'Toplantı Şifresi', 'Κωδικός συνάντησης', 'رمز عبور', 'Kata Laluan Mesyuarat', NULL, NULL, 'મીટિંગ પાસવર્ડ', 'Hasło spotkania', 'Пароль зустрічі', 'ਮੁਲਾਕਾਤ ਪਾਸਵਰਡ', 'Parola de întâlnire', NULL, 'Ọrọ igbaniwọle Ipade', 'Kalmar wucewa', NULL),
(1028, 'join_class', 'Join Class', 'ক্লাসে যোগদান করুন', 'Unirse a clase', 'انضم إلى الفصل الدراسي', 'कक्षा में शामिल हों', 'کلاس میں شامل ہوں', '参加课程', 'クラスに参加', 'Participar da aula', 'Присоединиться к классу', 'Rejoignez la classe', '수업 참여', 'Klasse beitreten', 'Unisciti alla classe', NULL, 'Csatlakozzon az osztályhoz', 'Word lid van de klas', 'iungere Paleonemertea Class', 'Bergabunglah dengan Kelas', 'Sınıfa Katılın', 'Εγγραφείτε στην τάξη', 'به کلاس بپیوندید', 'Sertailah Kelas', NULL, NULL, 'વર્ગ જોડાઓ', 'Dołącz do klasy', 'Приєднуйтесь до класу', 'ਕਲਾਸ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ', 'Alăturați-vă clasei', NULL, 'Darapọ mọ Kilasi', 'Hada Class', NULL),
(1029, 'host_class', 'Host Class', 'হোস্ট ক্লাস', 'Clase de anfitrión', 'فئة المضيف', 'मेजबान वर्ग', 'میزبان کلاس', '主机类', 'ホストクラス', 'Classe Host', 'Host Class', 'Classe hôte', '호스트 클래스', 'Host-Klasse', 'Classe host', NULL, 'Host osztály', 'Hostklasse', 'exercitum Paleonemertea Class', 'Kelas Tuan Rumah', 'Ana Bilgisayar Sınıfı', 'Κατηγορία υποδοχής', 'کلاس میزبان', 'Kelas Tuan Rumah', NULL, NULL, 'યજમાન વર્ગ', 'Klasa gospodarza', 'Хост-клас', 'ਹੋਸਟ ਕਲਾਸ', 'Clasa de gazdă', NULL, 'Alejo Gbalejo', 'Mai watsa shiri Class', NULL),
(1030, 'live', 'Live', 'লাইভ', 'En Vivo', 'حي', 'लाइव', 'جیو', '生活', '住む', 'Viver', 'Жить', 'Vivre', '라이브', 'Leben', 'Vivere', NULL, 'Élő', 'Leven', 'vivet', 'Hidup', 'Canlı', 'Ζω', 'زنده', 'Langsung', NULL, NULL, 'જીવંત', 'Relacja na żywo', 'Наживо', 'ਜੀ', 'Trăi', NULL, 'Gbe', 'Rayuwa', NULL),
(1031, 'send_notification', 'Send Notification', 'সেন্ড নোটিফিকেশন', 'Enviar notificación', 'إرسال إشعار', 'अधिसूचना भेजें', 'اطلاع بھیجیں', '发送通知', '通知を送信', 'Enviar notificação', 'Отправить уведомление', 'Envoyer une notification', '알림 보내기', 'Benachrichtigung senden', 'Invia notifica', NULL, 'Értesítés küldése', 'Melding verzenden', 'mittito', 'Kirim Pemberitahuan', 'Bildirim Gönder', 'Αποστολή ειδοποίησης', 'ارسال اعلان', 'Hantar Pemberitahuan', NULL, NULL, 'સૂચના મોકલો', 'Wyślij powiadomienie', 'Надіслати повідомлення', 'ਨੋਟੀਫਿਕੇਸ਼ਨ ਭੇਜੋ', 'Trimiteți notificare', NULL, 'Firanṣẹ Ifiranṣẹ', 'Aika Sanarwa', NULL),
(1032, 'zoom_api_key', 'Zoom Api Key', 'জুম এপিআই কী', 'Zoom Api Key', 'تكبير مفتاح Api', 'झूम आपी की', 'زوم آپی کی', '缩放Api键', 'ズームAPIキー', 'Zoom Api Key', 'Zoom Api Key', 'Zoom Api Key', '줌 API 키', 'Zoom Api Key', 'Tasto Zoom Api', NULL, 'Zoom Api Key', 'Zoom Api Key', 'API key Romani Zoom', 'Tombol Zoom Api', 'Zoom Api Anahtarı', 'Πλήκτρο ζουμ Api', 'بزرگنمایی کلید API', 'Zum Api Kekunci', NULL, NULL, 'ઝૂમ અપિ કી', 'Zoom Api Key', 'Кнопка масштабування Api', 'ਜ਼ੂਮ ਆਪਿ ਕੀ', 'Zoom cheie Api', NULL, 'Sun-un Api bọtini', 'Matsa Api Key', NULL),
(1033, 'zoom_secret', 'Zoom Secret', 'জুম সিক্রেট', 'Zoom secreto', 'Zoom Secret', 'ज़ूम सीक्रेट', 'زوم راز', '变焦秘密', 'ズームシークレット', 'Zoom Secret', 'Увеличить секрет', 'Zoom secret', '줌 비밀', 'Zoom Secret', 'Zoom segreto', NULL, 'Titkos zoom', 'Zoom geheim', 'Secret Romani Zoom', 'Rahasia Zoom', 'Gizli Sır', 'Zoom Secret', 'راز بزرگنمایی', 'Zum Rahsia', NULL, NULL, 'ઝૂમ સિક્રેટ', 'Zoom Secret', 'Збільшити секрет', 'ਜ਼ੂਮ ਸੀਕ੍ਰੇਟ', 'Secretul Zoom-ului', NULL, 'Asiri Sisun', 'Sirrin zuƙowa', NULL),
(1034, 'following_is_your_live_class_schedule', 'Following is your live class schedule', 'আপনার লাইভ ক্লাসের শিডিউলটি নীচে দেওয়া হয়েছে', 'El siguiente es su horario de clases en vivo', 'فيما يلي جدول الحصص الحية الخاصة بك', 'निम्नलिखित आपके लाइव क्लास का कार्यक्रम है', 'آپ کا رواں طبقاتی شیڈول مندرجہ ذیل ہے', '以下是您的现场课程表', '以下はあなたのライブクラススケジュールです', 'A seguir, é o seu horário de aula ao vivo', 'Следуйте вашему расписанию в прямом эфире', 'Voici votre horaire de cours en direct', '다음은 라이브 수업 일정입니다', 'Im Folgenden finden Sie Ihren Stundenplan', 'Di seguito è riportato l\'orario delle lezioni dal vivo', NULL, 'Az alábbiakban látható az élő óráid', 'Hieronder volgt je live lesrooster', 'Post Vivamus sit amet genus schedule', 'Berikut ini adalah jadwal kelas live Anda', 'Canlı ders programınız aşağıdadır', 'Ακολουθεί το πρόγραμμα ζωντανών μαθημάτων', 'برنامه زیر کلاس زندگی شما است', 'Berikut adalah jadual kelas langsung anda', NULL, NULL, 'તમારું લાઇવ ક્લાસ શેડ્યૂલ નીચે મુજબ છે', 'Oto harmonogram zajęć na żywo', 'Далі йде ваш графік живих занять', 'ਹੇਠਾਂ ਤੁਹਾਡਾ ਲਾਈਵ ਕਲਾਸ ਸ਼ਡਿ .ਲ ਹੈ', 'Urmează programul clasei tale live', NULL, 'Atẹle ni iṣeto kilasi kilasi rẹ', 'Mai biyo baya shine tsarin karatun ku na yau da kullun', NULL),
(1035, 'following_is_your_child_live_class_schedule', 'Following is your child live class schedule', 'আপনার সন্তানের লাইভ ক্লাসের সময়সূচীটি নিম্নলিখিত', 'El siguiente es el horario de clases en vivo de su hijo', 'فيما يلي الجدول الزمني لطفلك الحي', 'निम्नलिखित आपके बच्चे का लाइव क्लास शेड्यूल है', 'آپ کے بچے کا براہ راست کلاس شیڈول مندرجہ ذیل ہے', '以下是您的孩子的现场课程表', '以下はあなたの子供のライブクラススケジュールです', 'A seguir está o horário das aulas ao vivo do seu filho', 'Ниже приводится расписание занятий вашего ребенка', 'Voici l\'horaire des cours en direct de votre enfant', '다음은 자녀의 라이브 수업 일정입니다', 'Im Folgenden finden Sie den Stundenplan für Ihr Kind', 'Di seguito è riportato il programma delle lezioni dal vivo di tuo figlio', NULL, 'Az alábbiakban látható a gyermek élő órája', 'Hieronder volgt het live lesschema van uw kind', 'Post puer est vivere genus schedule', 'Berikut ini adalah jadwal kelas langsung anak Anda', 'Çocuğunuzun canlı sınıf programı aşağıdadır', 'Ακολουθεί το πρόγραμμα ζωντανής τάξης του παιδιού σας', 'جدول زیر برنامه کلاس زندگی کودک شما است', 'Berikut adalah jadual kelas langsung anak anda', NULL, NULL, 'તમારા બાળકનું લાઇવ ક્લાસ શેડ્યૂલ નીચે મુજબ છે', 'Oto harmonogram zajęć na żywo dla Twojego dziecka', 'Далі йде розклад живих занять у вашої дитини', 'ਤੁਹਾਡੇ ਬੱਚੇ ਦਾ ਲਾਈਵ ਕਲਾਸ ਦਾ ਸਮਾਂ-ਸਾਰਣੀ ਹੇਠਾਂ ਦਿੱਤਾ ਹੈ', 'Urmează programul clasei în direct pentru copii', NULL, 'Atẹle ni iṣeto kilasi laaye ọmọ rẹ', 'Mai zuwa shine jadawalin aji na rayuwar yaran ku', NULL),
(1036, 'live_class_type', 'Live Class Type', 'লাইভ ক্লাস টাইপ', 'Tipo de clase en vivo', 'نوع الفصل المباشر', 'लाइव क्लास टाइप', 'براہ راست کلاس کی قسم', '現場課堂類型', 'ライブクラスタイプ', 'Tipo de classe ao vivo', 'Тип Живого Класса', 'Type de cours en direct', '라이브 클래스 유형', 'Live-Klassentyp', 'Tipo di lezione dal vivo', 'ประเภทคลาสสด', 'Élő osztály típusa', 'Live klassetype', 'Vivamus Type Paleonemertea Class', 'Jenis Kelas Langsung', 'Canlı Sınıf Tipi', 'Τύπος ζωντανής τάξης', 'نوع کلاس زنده', 'Jenis Kelas Langsung', 'లైవ్ క్లాస్ రకం', 'நேரடி வகுப்பு வகை', 'જીવંત વર્ગ પ્રકાર', 'Typ klasy na żywo', 'Тип живого класу', 'ਲਾਈਵ ਕਲਾਸ ਦੀ ਕਿਸਮ', 'Tip de clasă în direct', 'Live Class အမျိုးအစား', 'Iru Class', 'Nauin Kiran Kira', NULL);
-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_day` int(11) NOT NULL,
  `leave_reason` text,
  `leave_note` text,
  `leave_date` datetime NOT NULL,
  `leave_status` tinyint(1) NOT NULL COMMENT '[0 = new ,1 = waiting, 2 = approved, 3 = decline]',
  `attachment` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `total_leave` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `written_mark` int(11) DEFAULT '0',
  `written_obtain` int(11) DEFAULT '0',
  `tutorial_mark` int(11) NOT NULL DEFAULT '0',
  `tutorial_obtain` int(11) NOT NULL DEFAULT '0',
  `practical_mark` int(11) NOT NULL DEFAULT '0',
  `practical_obtain` int(11) NOT NULL DEFAULT '0',
  `viva_mark` int(11) NOT NULL DEFAULT '0',
  `viva_obtain` int(11) NOT NULL DEFAULT '0',
  `exam_total_mark` int(11) NOT NULL DEFAULT '0',
  `obtain_total_mark` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mark_emails`
--

CREATE TABLE `mark_emails` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `receivers` text,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mark_smses`
--

CREATE TABLE `mark_smses` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `receivers` text NOT NULL,
  `sms_gateway` varchar(50) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `message_relationships`
--

CREATE TABLE `message_relationships` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `is_draft` smallint(1) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_slug`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Setting', 'setting', 1, '2017-11-13 22:55:19', '2017-11-13 22:57:10', 1, 1),
(2, 'Theme', 'theme', 1, '2017-12-12 13:34:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Language', 'language', 1, '2017-12-12 13:36:11', '0000-00-00 00:00:00', 1, 0),
(4, 'Administrator', 'administrator', 1, '2017-12-12 13:36:35', '0000-00-00 00:00:00', 1, 0),
(5, 'Human Resource', 'hrm', 1, '2017-12-12 13:38:30', '0000-00-00 00:00:00', 1, 0),
(6, 'Teacher', 'teacher', 1, '2017-12-12 13:39:01', '0000-00-00 00:00:00', 1, 0),
(7, 'Academic Activity', 'academic', 1, '2017-12-12 13:42:24', '0000-00-00 00:00:00', 1, 0),
(8, 'Guardian', 'guardian', 1, '2017-12-12 13:43:01', '0000-00-00 00:00:00', 1, 0),
(9, 'Student', 'student', 1, '2017-12-12 13:43:28', '0000-00-00 00:00:00', 1, 0),
(10, 'Attendance', 'attendance', 1, '2017-12-12 13:45:03', '0000-00-00 00:00:00', 1, 0),
(11, 'Assignment', 'assignment', 1, '2017-12-12 13:45:45', '0000-00-00 00:00:00', 1, 0),
(12, 'Exam', 'exam', 1, '2017-12-12 13:46:13', '0000-00-00 00:00:00', 1, 0),
(14, 'Library', 'library', 1, '2017-12-12 13:46:33', '0000-00-00 00:00:00', 1, 0),
(15, 'Transport', 'transport', 1, '2017-12-12 13:46:52', '0000-00-00 00:00:00', 1, 0),
(16, 'Hostel', 'hostel', 1, '2017-12-12 13:47:15', '0000-00-00 00:00:00', 1, 0),
(17, 'Message, Email & SMS', 'message', 1, '2017-12-12 13:47:48', '2017-12-14 08:48:49', 1, 1),
(18, 'Announcement', 'announcement', 1, '2017-12-12 13:48:23', '0000-00-00 00:00:00', 1, 0),
(19, 'Event', 'event', 1, '2017-12-12 13:48:36', '0000-00-00 00:00:00', 1, 0),
(20, 'Front Office', 'frontoffice', 1, '2017-12-12 13:49:05', '2019-08-05 22:41:52', 1, 1),
(21, 'Accounting', 'accounting', 1, '2017-12-12 13:49:32', '0000-00-00 00:00:00', 1, 0),
(22, 'Report', 'report', 1, '2017-12-12 13:51:09', '0000-00-00 00:00:00', 1, 0),
(13, 'Exam Mark', 'exam', 1, '2017-12-14 00:00:00', '2017-12-14 09:07:46', 1, 1),
(23, 'Certificate', 'certificate', 1, '2018-03-17 16:27:14', '0000-00-00 00:00:00', 2, 0),
(24, 'Media Gallery', 'gallery', 1, '2018-03-22 06:46:46', '0000-00-00 00:00:00', 1, 0),
(25, 'Frontend', 'frontend', 1, '2018-03-23 03:40:22', '0000-00-00 00:00:00', 1, 0),
(26, 'Payroll', 'payroll', 1, '2018-03-25 02:07:46', '0000-00-00 00:00:00', 1, 0),
(27, 'Complain', 'complain', 1, '2019-04-10 00:00:00', '2019-04-10 00:00:00', 1, 1),
(28, 'User Complain', 'usercomplain', 1, '2019-07-20 19:39:44', '0000-00-00 00:00:00', 1, 0),
(29, 'User Leave', 'userleave', 1, '2019-07-24 21:53:30', '0000-00-00 00:00:00', 1, 0),
(30, 'Leave Management', 'leave', 1, '2019-07-24 21:53:59', '0000-00-00 00:00:00', 1, 0),
(31, 'ID Card & Admit Card', 'card', 1, '2019-07-28 23:36:16', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `news` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `notice` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `operation_name` varchar(50) NOT NULL,
  `operation_slug` varchar(50) NOT NULL,
  `is_view_vissible` tinyint(1) DEFAULT '0',
  `is_add_vissible` tinyint(1) DEFAULT '0',
  `is_edit_vissible` tinyint(1) DEFAULT '0',
  `is_delete_vissible` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `module_id`, `operation_name`, `operation_slug`, `is_view_vissible`, `is_add_vissible`, `is_edit_vissible`, `is_delete_vissible`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'General Setting (Only Admin)', 'setting', 1, 1, 1, NULL, 1, '2017-12-12 16:06:25', '2019-09-01 14:22:34', 1, 1),
(2, 1, 'Payment Setting (Only Admin)', 'payment', 1, 1, 1, NULL, 1, '2017-12-12 16:06:55', '2019-09-01 14:23:16', 1, 1),
(3, 1, 'SMS Setting (Only Admin)', 'sms', 1, 1, 1, NULL, 1, '2017-12-12 16:07:07', '2019-09-01 14:23:01', 1, 1),
(4, 2, 'Theme', 'theme', 1, 0, 1, 0, 1, '2017-12-12 16:08:39', '2018-01-03 07:02:51', 1, 1),
(5, 3, 'Language', 'language', 1, 1, 1, 1, 1, '2017-12-12 16:09:22', '2020-06-13 13:04:55', 1, 1),
(6, 4, 'Academic Year', 'year', 1, 1, 1, 1, 1, '2017-12-12 16:10:34', '2018-01-03 07:03:18', 1, 1),
(7, 4, 'User Role (Only Super Admin)', 'role', 1, 1, 1, 1, 1, '2017-12-12 16:10:55', '2019-09-01 15:07:08', 1, 1),
(8, 4, 'Role Permission (Only Super Admin)', 'permission', 1, NULL, 1, NULL, 1, '2017-12-12 16:12:10', '2019-09-01 14:24:55', 1, 1),
(64, 4, 'Reset User Password', 'password', 0, 0, 1, 0, 1, '2017-12-13 20:14:23', '2018-01-03 07:05:11', 1, 1),
(10, 5, 'Designation', 'designation', 1, 1, 1, 1, 1, '2017-12-12 16:15:38', '2018-01-03 07:07:38', 1, 1),
(11, 5, 'Employee', 'employee', 1, 1, 1, 1, 1, '2017-12-12 16:15:55', '2018-01-03 07:19:54', 1, 1),
(12, 6, 'Teacher', 'teacher', 1, 1, 1, 1, 1, '2017-12-12 16:17:22', '2018-01-03 07:25:07', 1, 1),
(14, 7, 'Classes', 'classes', 1, 1, 1, 1, 1, '2017-12-12 16:19:01', '2018-01-03 07:25:17', 1, 1),
(15, 7, 'Section', 'section', 1, 1, 1, 1, 1, '2017-12-12 16:19:24', '2018-01-03 07:25:24', 1, 1),
(16, 7, 'Subject', 'subject', 1, 1, 1, 1, 1, '2017-12-12 16:19:48', '2018-01-03 07:25:33', 1, 1),
(17, 7, 'Syllabus', 'syllabus', 1, 1, 1, 1, 1, '2017-12-12 16:20:32', '2018-01-03 07:25:54', 1, 1),
(18, 7, 'Class Routine', 'routine', 1, 1, 1, 1, 1, '2017-12-12 16:20:56', '2018-01-03 07:26:13', 1, 1),
(19, 7, 'Promotion', 'promotion', 1, 1, 0, 0, 1, '2017-12-12 16:21:17', '2018-02-09 01:42:57', 1, 1),
(20, 8, 'Guardian', 'guardian', 1, 1, 1, 1, 1, '2017-12-12 16:23:32', '2018-01-03 07:29:06', 1, 1),
(21, 9, 'Student', 'student', 1, 1, 1, 1, 1, '2017-12-12 17:58:56', '2018-01-03 07:29:15', 1, 1),
(65, 4, 'Backup Database (Only Super Admin)', 'backup', 1, NULL, NULL, NULL, 1, '2017-12-13 20:14:39', '2019-09-01 14:28:12', 1, 1),
(23, 10, 'Employee Attendance', 'employee', 1, 1, 1, 0, 1, '2017-12-12 18:00:10', '2018-01-03 07:30:19', 1, 1),
(24, 10, 'Teacher Attendance', 'teacher', 1, 1, 1, 0, 1, '2017-12-12 18:00:51', '2018-01-03 07:29:52', 1, 1),
(25, 10, 'Student Attendance', 'student', 1, 1, 1, 0, 1, '2017-12-12 18:01:17', '2018-01-03 07:30:01', 1, 1),
(26, 11, 'Assignment', 'assignment', 1, 1, 1, 1, 1, '2017-12-12 18:02:08', '2018-01-03 07:30:40', 1, 1),
(28, 12, 'Exam Term', 'exam', 1, 1, 1, 1, 1, '2017-12-12 18:03:30', '2018-02-09 01:49:25', 1, 1),
(29, 12, 'Exam Grade', 'grade', 1, 1, 1, 1, 1, '2017-12-12 18:03:56', '2018-01-03 07:31:56', 1, 1),
(30, 12, 'Exam Schedule', 'schedule', 1, 1, 1, 1, 1, '2017-12-12 18:04:58', '2018-01-03 07:32:14', 1, 1),
(31, 12, 'Exam Suggestion', 'suggestion', 1, 1, 1, 1, 1, '2017-12-12 18:05:18', '2018-01-03 07:32:30', 1, 1),
(32, 12, 'Exam Attendance', 'attendance', 1, 1, 1, 0, 1, '2017-12-12 18:05:43', '2018-01-03 07:32:58', 1, 1),
(33, 13, 'Exam Mark', 'mark', 1, 1, 1, 0, 1, '2017-12-12 18:06:04', '2018-01-03 07:33:16', 1, 1),
(34, 13, 'Mark Sheet', 'marksheet', 1, 1, 1, 0, 1, '2017-12-12 18:06:24', '2018-01-03 07:34:08', 1, 1),
(35, 13, 'Result', 'result', 1, 1, 1, NULL, 1, '2017-12-12 18:06:41', '2018-09-02 12:40:01', 1, 1),
(37, 14, 'Library Book', 'book', 1, 1, 1, 1, 1, '2017-12-12 18:09:17', '2018-01-03 07:36:02', 1, 1),
(38, 14, 'Library Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:09:33', '2018-01-03 07:36:24', 1, 1),
(66, 14, 'Issue & Return', 'issue', 1, 1, 1, 0, 1, '2017-12-14 08:46:37', '2018-01-03 07:37:01', 1, 1),
(40, 15, 'Vehicle', 'vehicle', 1, 1, 1, 1, 1, '2017-12-12 18:10:49', '2018-01-03 07:37:11', 1, 1),
(41, 15, 'Transport Route', 'route', 1, 1, 1, 1, 1, '2017-12-12 18:11:17', '2018-01-03 07:41:27', 1, 1),
(42, 15, 'Transport Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:11:39', '2018-01-03 07:41:46', 1, 1),
(43, 16, 'Hostel', 'hostel', 1, 1, 1, 1, 1, '2017-12-12 18:12:16', '2018-01-03 07:41:55', 1, 1),
(44, 16, 'Hostel Room', 'room', 1, 1, 1, 1, 1, '2017-12-12 18:12:37', '2018-01-03 07:42:02', 1, 1),
(45, 16, 'Hostel Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:13:00', '2018-01-03 07:42:23', 1, 1),
(47, 17, 'Email', 'mail', 1, 1, 0, 1, 1, '2017-12-12 18:15:57', '2018-01-03 07:44:16', 1, 1),
(48, 17, 'Text SMS', 'text', 1, 1, 0, 1, 1, '2017-12-12 18:16:17', '2018-01-03 07:44:25', 1, 1),
(50, 18, 'Notice', 'notice', 1, 1, 1, 1, 1, '2017-12-12 18:20:38', '2018-01-03 07:47:39', 1, 1),
(51, 18, 'News', 'news', 1, 1, 1, 1, 1, '2017-12-12 18:20:54', '2018-01-03 07:47:46', 1, 1),
(52, 18, 'Holiday', 'holiday', 1, 1, 1, 1, 1, '2017-12-12 18:21:08', '2018-01-03 07:47:53', 1, 1),
(53, 19, 'Event', 'event', 1, 1, 1, 1, 1, '2017-12-12 18:21:35', '2018-01-03 07:48:00', 1, 1),
(54, 20, 'Visitor', 'visitor', 1, 1, 1, 1, 1, '2017-12-12 18:22:05', '2019-08-05 22:43:00', 1, 1),
(56, 21, 'Expenditure Head', 'exphead', 1, 1, 1, 1, 1, '2017-12-12 18:23:51', '2018-01-03 07:48:23', 1, 1),
(57, 21, 'Expenditure', 'expenditure', 1, 1, 1, 1, 1, '2017-12-12 18:24:14', '2018-01-03 07:48:32', 1, 1),
(58, 21, 'Income Head', 'incomehead', 1, 1, 1, 1, 1, '2017-12-12 18:24:42', '2018-01-03 07:48:39', 1, 1),
(59, 21, 'Income', 'income', 1, 1, 1, 1, 1, '2017-12-12 18:24:54', '2018-01-03 07:48:59', 1, 1),
(60, 21, 'Invoice', 'invoice', 1, 1, 1, 1, 1, '2017-12-12 18:25:16', '2018-01-03 07:49:12', 1, 1),
(61, 21, 'Payment', 'payment', 1, 1, 0, 0, 1, '2017-12-12 18:25:34', '2018-01-03 07:49:47', 1, 1),
(62, 22, 'Report', 'report', 1, 0, 0, 0, 1, '2017-12-12 18:26:16', '2018-01-03 07:50:00', 1, 1),
(63, 4, 'Manage User', 'user', 1, 0, 1, 0, 1, '2017-12-13 20:13:49', '2018-01-03 07:35:43', 1, 1),
(67, 13, 'Mark send by SMS', 'text', 1, 1, 0, 1, 1, '2017-12-14 09:09:58', '2018-01-03 07:34:45', 1, 1),
(68, 13, 'Mark send by Email', 'mail', 1, 1, 0, 1, 1, '2017-12-14 09:10:15', '2018-01-03 07:35:13', 1, 1),
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, '2018-01-13 08:53:53', '2018-01-13 09:06:22', 2, 2),
(70, 23, 'CertificateType', 'type', 1, 1, 1, 1, 1, '2018-03-17 16:28:43', '0000-00-00 00:00:00', 2, 0),
(71, 23, 'Certificate', 'certificate', 1, NULL, NULL, NULL, 1, '2018-03-18 09:06:40', '0000-00-00 00:00:00', 1, 0),
(72, 24, 'Gallery', 'gallery', 1, 1, 1, 1, 1, '2018-03-22 06:47:27', '2018-03-22 06:48:03', 1, 1),
(73, 24, 'Image', 'image', 1, 1, 1, 1, 1, '2018-03-22 06:47:51', '0000-00-00 00:00:00', 1, 0),
(74, 25, 'Frontend', 'frontend', 1, 1, 1, 1, 1, '2018-03-23 05:06:49', '0000-00-00 00:00:00', 1, 0),
(75, 26, 'Salary Grade', 'grade', 1, 1, 1, 1, 1, '2018-03-25 02:08:21', '0000-00-00 00:00:00', 1, 0),
(76, 26, 'Payment', 'payment', 1, 1, 1, 1, 1, '2018-03-25 02:09:05', '0000-00-00 00:00:00', 1, 0),
(77, 25, 'Home Slider', 'slider', 1, 1, 1, 1, 1, '2018-03-27 18:04:48', '0000-00-00 00:00:00', 1, 0),
(78, 26, 'History', 'history', 1, NULL, NULL, NULL, 1, '2018-04-01 00:39:23', '0000-00-00 00:00:00', 1, 0),
(79, 4, 'School (Only Super Admin)', 'school', 1, 1, 1, 1, 1, '2018-05-08 18:57:28', '2019-09-01 14:26:34', 1, 1),
(81, 4, 'Payment (Only Super Admin)', 'payment', 1, 1, 1, 1, 1, '2018-08-15 00:43:44', '2019-09-01 14:27:09', 1, 1),
(82, 4, 'SMS (Only Super Admin)', 'sms', 1, 1, 1, 1, 1, '2018-08-15 00:43:58', '2019-09-01 14:27:35', 1, 1),
(83, 4, 'SMS Template', 'smstemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:20', '0000-00-00 00:00:00', 1, 0),
(84, 4, 'Email Template', 'emailtemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:46', '0000-00-00 00:00:00', 1, 0),
(85, 4, 'Activity Log', 'activitylog', 1, NULL, NULL, 1, 1, '2018-08-24 18:42:49', '0000-00-00 00:00:00', 1, 0),
(86, 9, 'Bulk Import', 'bulk', 1, 1, NULL, NULL, 1, '2018-08-28 21:13:45', '0000-00-00 00:00:00', 1, 0),
(87, 9, 'Student Activity', 'activity', 1, 1, 1, 1, 1, '2018-08-28 21:14:33', '0000-00-00 00:00:00', 1, 0),
(88, 10, 'Absent Email', 'absentemail', 1, 1, NULL, 1, 1, '2018-09-01 08:51:33', '0000-00-00 00:00:00', 1, 0),
(89, 10, 'Absent SMS', 'absentsms', 1, 1, NULL, 1, 1, '2018-09-01 08:51:50', '0000-00-00 00:00:00', 1, 0),
(90, 13, 'Exam Result', 'examresult', 1, 1, 1, NULL, 1, '2018-09-02 12:38:31', '0000-00-00 00:00:00', 1, 0),
(91, 13, 'Final Result', 'finalresult', 1, 1, 1, NULL, 1, '2018-09-02 12:41:39', '0000-00-00 00:00:00', 1, 0),
(92, 13, 'Merit List', 'meritlist', 1, NULL, NULL, NULL, 1, '2018-09-02 12:42:23', '0000-00-00 00:00:00', 1, 0),
(93, 13, 'Result Email', 'resultemail', 1, 1, NULL, 1, 1, '2018-09-02 12:43:23', '0000-00-00 00:00:00', 1, 0),
(94, 13, 'Result SMS', 'resultsms', 1, 1, NULL, 1, 1, '2018-09-02 12:43:44', '0000-00-00 00:00:00', 1, 0),
(95, 13, 'Result Card', 'resultcard', 1, NULL, NULL, NULL, 1, '2018-09-02 12:44:43', '0000-00-00 00:00:00', 1, 0),
(96, 21, 'Discount', 'discount', 1, 1, 1, 1, 1, '2018-09-10 12:33:45', '0000-00-00 00:00:00', 1, 0),
(97, 21, 'Fee Type', 'feetype', 1, 1, 1, 1, 1, '2018-09-10 12:37:06', '0000-00-00 00:00:00', 1, 0),
(98, 21, 'Due Fee Email', 'duefeeemail', 1, 1, NULL, 1, 1, '2018-09-10 12:37:40', '0000-00-00 00:00:00', 1, 0),
(99, 21, 'Due Fee SMS', 'duefeesms', 1, 1, NULL, 1, 1, '2018-09-10 12:38:04', '0000-00-00 00:00:00', 1, 0),
(100, 4, 'Super Admin (Only Super Admin)', 'superadmin', 1, 1, 1, 1, 1, '2018-09-14 17:50:59', '2019-09-01 14:23:46', 1, 1),
(101, 4, 'Guardian Feedback', 'feedback', 1, NULL, 1, 1, 1, '2018-09-14 17:55:09', '0000-00-00 00:00:00', 1, 0),
(102, 8, 'Feedback', 'feedback', 1, 1, 1, 1, 1, '2018-09-14 18:07:45', '0000-00-00 00:00:00', 1, 0),
(103, 4, 'General Setting (Only Super Admin)', 'setting', 1, 1, 1, NULL, 1, '2018-09-15 16:00:20', '2019-09-01 14:25:47', 1, 1),
(104, 25, 'About', 'about', 1, 1, 1, NULL, 1, '2018-10-10 18:16:05', '0000-00-00 00:00:00', 1, 0),
(105, 4, 'Email Setting (Only Super Admin)', 'emailsetting', 1, 1, 1, 1, 1, '2019-04-09 13:57:32', '2019-09-01 14:26:08', 1, 1),
(106, 1, 'Email Setting (Only Admin)', 'emailsetting', 1, 1, 1, NULL, 1, '2019-04-09 13:58:35', '2019-09-01 14:22:46', 1, 1),
(107, 27, 'Complain', 'complain', 1, 1, 1, 1, 1, '2019-04-10 16:22:48', '0000-00-00 00:00:00', 1, 0),
(108, 7, 'Material', 'material', 1, 1, 1, 1, 1, '2019-07-05 21:41:34', '0000-00-00 00:00:00', 1, 0),
(109, 14, 'e-book', 'ebook', 1, 1, 1, 1, 1, '2019-07-07 00:03:59', '0000-00-00 00:00:00', 1, 0),
(110, 9, 'Online Admission', 'admission', 1, NULL, 1, 1, 1, '2019-07-08 20:14:31', '2019-07-13 14:17:27', 1, 1),
(111, 27, 'Complain Type', 'type', 1, 1, 1, 1, 1, '2019-07-19 17:49:08', '0000-00-00 00:00:00', 1, 0),
(112, 28, 'User Complain (Except Super Admin)', 'usercomplain', 1, 1, 1, 1, 1, '2019-07-20 19:40:21', '2019-09-01 15:06:04', 1, 1),
(113, 29, 'User Leave (Except Super Admin)', 'userleave', 1, 1, 1, 1, 1, '2019-07-24 21:54:41', '2019-09-01 15:05:38', 1, 1),
(114, 30, 'Leave Management', 'leave', 1, 1, 1, 1, 1, '2019-07-24 21:55:23', '0000-00-00 00:00:00', 1, 0),
(115, 30, 'Leave Type', 'type', 1, 1, 1, 1, 1, '2019-07-24 21:55:51', '0000-00-00 00:00:00', 1, 0),
(116, 30, 'Leave Application', 'application', 1, 1, 1, 1, 1, '2019-07-25 16:59:43', '2019-07-25 18:21:20', 1, 1),
(117, 30, 'Waiting Leave', 'waiting', 1, NULL, 1, 1, 1, '2019-07-28 13:21:16', '0000-00-00 00:00:00', 1, 0),
(118, 30, 'Approve Leave', 'approve', 1, NULL, 1, 1, 1, '2019-07-28 13:21:46', '0000-00-00 00:00:00', 1, 0),
(119, 30, 'Decline Leave', 'decline', 1, NULL, 1, 1, 1, '2019-07-28 13:22:11', '0000-00-00 00:00:00', 1, 0),
(120, 31, 'ID & Admit card', 'card', 1, NULL, NULL, NULL, 1, '2019-07-28 23:44:54', '0000-00-00 00:00:00', 1, 0),
(121, 31, 'Teacher ID card', 'teacher', 1, NULL, NULL, NULL, 1, '2019-07-28 23:45:36', '0000-00-00 00:00:00', 1, 0),
(122, 31, 'Employee ID Card', 'employee', 1, NULL, NULL, NULL, 1, '2019-07-28 23:46:01', '0000-00-00 00:00:00', 1, 0),
(123, 31, 'Student ID card', 'student', 1, NULL, NULL, NULL, 1, '2019-07-28 23:46:40', '2019-08-03 15:23:48', 1, 1),
(124, 31, 'ID Card Setting (Only Super Admin)', 'idsetting', 1, 1, 1, 1, 1, '2019-07-30 17:27:20', '2019-09-01 15:02:05', 1, 1),
(125, 31, 'Admit Card Setting (Only Super Admin)', 'admitsetting', 1, 1, 1, 1, 1, '2019-08-03 15:25:20', '2019-09-01 15:01:35', 1, 1),
(126, 31, 'Admit card', 'admit', 1, NULL, NULL, NULL, 1, '2019-08-03 15:25:53', '0000-00-00 00:00:00', 1, 0),
(127, 31, 'School ID Setting (Only Admin)', 'schoolidsetting', 1, 1, 1, NULL, 1, '2019-08-04 13:14:03', '2019-09-01 14:21:14', 1, 1),
(128, 31, 'School Admit Setting (Only Admin)', 'schooladmitsetting', 1, 1, 1, NULL, 1, '2019-08-04 13:14:35', '2019-09-01 14:20:45', 1, 1),
(129, 20, 'Visitor Purpose', 'purpose', 1, 1, 1, 1, 1, '2019-08-05 22:43:33', '0000-00-00 00:00:00', 1, 0),
(130, 20, 'Call Logs', 'calllog', 1, 1, 1, 1, 1, '2019-08-05 22:44:06', '0000-00-00 00:00:00', 1, 0),
(131, 20, 'Postal Dispatch', 'dispatch', 1, 1, 1, 1, 1, '2019-08-05 22:44:49', '0000-00-00 00:00:00', 1, 0),
(132, 20, 'Postal Receive', 'receive', 1, 1, 1, 1, 1, '2019-08-05 22:45:19', '0000-00-00 00:00:00', 1, 0),
(133, 20, 'Front Office', 'frontoffice', 1, 1, 1, 1, 1, '2019-08-05 22:45:47', '0000-00-00 00:00:00', 1, 0),
(134, 9, 'Student Type', 'type', 1, 1, 1, 1, 1, '2019-08-17 23:11:18', '0000-00-00 00:00:00', 1, 0),
(135, 4, 'User Credential', 'usercredential', 1, NULL, NULL, NULL, 1, '2019-08-18 23:54:14', '2019-09-05 13:47:12', 1, 132),
(136, 21, 'Invoice Receipt', 'receipt', 1, NULL, NULL, NULL, 1, '2020-04-17 16:27:36', '0000-00-00 00:00:00', 1, 0),
(137, 11, 'Assignment Submission', 'submission', 1, 1, 1, 1, 1, '2020-05-03 02:02:10', '0000-00-00 00:00:00', 1, 0),
(138, 6, 'Teacher Lecture', 'lecture', 1, 1, 1, 1, 1, '2020-05-03 02:06:11', '0000-00-00 00:00:00', 1, 0),
(139, 4, 'Username', 'username', NULL, NULL, 1, NULL, 1, '2020-05-26 10:34:38', '0000-00-00 00:00:00', 1, 0),
(140, 1, 'Global Search', 'globalsearch', 1, NULL, NULL, NULL, 1, '2020-06-03 14:06:16', '0000-00-00 00:00:00', 1, 0),
(141, 1, 'Global Session Change', 'sessionchange', 1, NULL, NULL, NULL, 1, '2020-06-03 14:07:05', '0000-00-00 00:00:00', 1, 0),
(142, 7, 'Live Class', 'liveclass', 1, 1, 1, 1, 1, '2020-06-20 14:51:21', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `page_location` varchar(50) NOT NULL,
  `page_slug` varchar(100) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_description` text,
  `page_image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `paypal_api_username` varchar(100) DEFAULT NULL,
  `paypal_api_password` varchar(100) DEFAULT NULL,
  `paypal_api_signature` varchar(100) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `paypal_demo` tinyint(1) DEFAULT NULL,
  `paypal_extra_charge` double(10,2) DEFAULT NULL,
  `paypal_status` tinyint(1) DEFAULT NULL,
  `stripe_secret` varchar(100) DEFAULT NULL,
  `stripe_demo` tinyint(1) DEFAULT NULL,
  `stripe_extra_charge` double(10,2) DEFAULT NULL,
  `stripe_status` tinyint(1) DEFAULT NULL,
  `payumoney_key` varchar(100) DEFAULT NULL,
  `payumoney_salt` varchar(100) DEFAULT NULL,
  `payumoney_demo` tinyint(1) DEFAULT NULL,
  `payu_extra_charge` double(10,2) DEFAULT NULL,
  `payumoney_status` tinyint(1) DEFAULT NULL,
  `ccavenue_key` varchar(100) DEFAULT NULL,
  `ccavenue_salt` varchar(100) DEFAULT NULL,
  `ccavenue_demo` tinyint(1) DEFAULT NULL,
  `ccavenue_extra_charge` double(10,2) DEFAULT NULL,
  `ccavenue_status` tinyint(1) DEFAULT NULL,
  `paytm_merchant_key` varchar(100) DEFAULT NULL,
  `paytm_merchant_mid` varchar(100) DEFAULT NULL,
  `paytm_merchant_website` text,
  `paytm_industry_type` text,
  `paytm_demo` tinyint(1) DEFAULT NULL,
  `paytm_extra_charge` double(10,2) DEFAULT NULL,
  `paytm_status` tinyint(1) DEFAULT NULL,
  `stack_secret_key` varchar(120) DEFAULT NULL,
  `stack_public_key` varchar(120) DEFAULT NULL,
  `stack_demo` tinyint(1) DEFAULT NULL,
  `stack_extra_charge` decimal(3,2) DEFAULT NULL,
  `stack_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `phone_call_logs`
--

CREATE TABLE `phone_call_logs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `call_type` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `call_duration` varchar(50) DEFAULT NULL,
  `call_date` date DEFAULT NULL,
  `next_follow_up` date DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `postal_dispatches`
--

CREATE TABLE `postal_dispatches` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `to_title` varchar(120) DEFAULT NULL,
  `reference` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `from_title` varchar(120) DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `attachment` varchar(120) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `postal_receives`
--

CREATE TABLE `postal_receives` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `from_title` varchar(120) DEFAULT NULL,
  `reference` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `to_title` varchar(120) NOT NULL,
  `attachment` varchar(120) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `is_add` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_view` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 0, 0, 0, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 0, 0, 0, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(3, 1, 3, 0, 0, 0, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(4, 1, 4, 0, 1, 1, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(5, 1, 5, 1, 1, 1, 1, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(6, 1, 6, 1, 1, 1, 1, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(7, 1, 7, 1, 1, 1, 1, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(8, 1, 8, 0, 1, 1, 0, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(9, 1, 64, 0, 1, 0, 0, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(10, 1, 65, 0, 0, 1, 0, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(11, 1, 63, 0, 1, 1, 0, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(12, 1, 10, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(13, 1, 11, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(14, 1, 12, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(15, 1, 14, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(16, 1, 15, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(17, 1, 16, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(18, 1, 17, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(19, 1, 18, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(20, 1, 19, 1, 0, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(21, 1, 20, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(22, 1, 21, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(23, 1, 23, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(24, 1, 24, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(25, 1, 25, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(26, 1, 26, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(27, 1, 27, 1, 1, 1, 1, 1, '2018-01-13 09:07:29', '0000-00-00 00:00:00', 2, 0),
(28, 1, 28, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(29, 1, 29, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(30, 1, 30, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(31, 1, 31, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(32, 1, 32, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(33, 1, 33, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(34, 1, 34, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(35, 1, 35, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(36, 1, 67, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(37, 1, 68, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(38, 1, 37, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(39, 1, 38, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(40, 1, 66, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(41, 1, 40, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(42, 1, 41, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(43, 1, 42, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(44, 1, 43, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(45, 1, 44, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(46, 1, 45, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(47, 1, 46, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(48, 1, 47, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(49, 1, 48, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(50, 1, 50, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(51, 1, 51, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(52, 1, 52, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(53, 1, 53, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(54, 1, 54, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(55, 1, 55, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(56, 1, 56, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(57, 1, 57, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(58, 1, 58, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(59, 1, 59, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(60, 1, 60, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(61, 1, 61, 1, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(62, 1, 62, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(63, 3, 1, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(64, 3, 2, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(65, 3, 3, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(66, 3, 4, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(67, 3, 5, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(68, 3, 6, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(69, 3, 7, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(70, 3, 8, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(71, 3, 64, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(72, 3, 65, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(73, 3, 63, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(74, 3, 10, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(75, 3, 11, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(76, 3, 12, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(77, 3, 14, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(78, 3, 15, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(79, 3, 16, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(80, 3, 17, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(81, 3, 18, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(82, 3, 19, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(83, 3, 20, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(84, 3, 21, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(85, 3, 23, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(86, 3, 24, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(87, 3, 25, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(88, 3, 26, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(89, 3, 27, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(90, 3, 28, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(91, 3, 29, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(92, 3, 30, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(93, 3, 31, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(94, 3, 32, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(95, 3, 33, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(96, 3, 34, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(97, 3, 35, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(98, 3, 67, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(99, 3, 68, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(100, 3, 37, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(101, 3, 38, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(102, 3, 66, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(103, 3, 40, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(104, 3, 41, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(105, 3, 42, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(106, 3, 43, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(107, 3, 44, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(108, 3, 45, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(109, 3, 46, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(110, 3, 47, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(111, 3, 48, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(112, 3, 50, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(113, 3, 51, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(114, 3, 52, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(115, 3, 53, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(116, 3, 54, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(117, 3, 55, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(118, 3, 56, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(119, 3, 57, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(120, 3, 58, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(121, 3, 59, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(122, 3, 60, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(123, 3, 61, 1, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(124, 3, 62, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(125, 1, 69, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(126, 5, 1, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(127, 5, 2, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(128, 5, 3, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(129, 5, 4, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(130, 5, 5, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(131, 5, 6, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(132, 5, 7, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(133, 5, 8, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(134, 5, 64, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(135, 5, 65, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(136, 5, 63, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(137, 5, 10, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(138, 5, 11, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(139, 5, 12, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(140, 5, 14, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(141, 5, 15, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(142, 5, 16, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(143, 5, 17, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(144, 5, 18, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(145, 5, 19, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(146, 5, 20, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(147, 5, 21, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(148, 5, 23, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(149, 5, 24, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(150, 5, 25, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(151, 5, 26, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(152, 5, 27, 1, 1, 1, 0, 1, '2018-01-13 09:46:35', '0000-00-00 00:00:00', 1, 0),
(153, 5, 28, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(154, 5, 29, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(155, 5, 30, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(156, 5, 31, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(157, 5, 32, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(158, 5, 33, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(159, 5, 34, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(160, 5, 35, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(161, 5, 67, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(162, 5, 68, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(163, 5, 37, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(164, 5, 38, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(165, 5, 66, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(166, 5, 40, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(167, 5, 41, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(168, 5, 42, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(169, 5, 43, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(170, 5, 44, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(171, 5, 45, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(172, 5, 47, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(173, 5, 48, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(174, 5, 69, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(175, 5, 50, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(176, 5, 51, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(177, 5, 52, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(178, 5, 53, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(179, 5, 54, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(180, 5, 56, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(181, 5, 57, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(182, 5, 58, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(183, 5, 59, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(184, 5, 60, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(185, 5, 61, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(186, 5, 62, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(187, 13, 1, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(188, 13, 2, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(189, 13, 3, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(190, 13, 4, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(191, 13, 5, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(192, 13, 6, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(193, 13, 7, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(194, 13, 8, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(195, 13, 64, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(196, 13, 65, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(197, 13, 63, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(198, 13, 10, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(199, 13, 11, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(200, 13, 12, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(201, 13, 14, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(202, 13, 15, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(203, 13, 16, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(204, 13, 17, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(205, 13, 18, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(206, 13, 19, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(207, 13, 20, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(208, 13, 21, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(209, 13, 23, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(210, 13, 24, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(211, 13, 25, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(212, 13, 26, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(213, 13, 27, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(214, 13, 28, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(215, 13, 29, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(216, 13, 30, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(217, 13, 31, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(218, 13, 32, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(219, 13, 33, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(220, 13, 34, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(221, 13, 35, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(222, 13, 67, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(223, 13, 68, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(224, 13, 37, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(225, 13, 38, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(226, 13, 66, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(227, 13, 40, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(228, 13, 41, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(229, 13, 42, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(230, 13, 43, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(231, 13, 44, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(232, 13, 45, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(233, 13, 47, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(234, 13, 48, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(235, 13, 69, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(236, 13, 50, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(237, 13, 51, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(238, 13, 52, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(239, 13, 53, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(240, 13, 54, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(241, 13, 56, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(242, 13, 57, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(243, 13, 58, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(244, 13, 59, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(245, 13, 60, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(246, 13, 61, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(247, 13, 62, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(248, 3, 69, 1, 1, 1, 1, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(249, 2, 1, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(250, 2, 2, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(251, 2, 3, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(252, 2, 4, 0, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(253, 2, 5, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(254, 2, 6, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(255, 2, 7, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(256, 2, 8, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(257, 2, 64, 0, 1, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(258, 2, 65, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(259, 2, 63, 0, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(260, 2, 10, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(261, 2, 11, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(262, 2, 12, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(263, 2, 14, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(264, 2, 15, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(265, 2, 16, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(266, 2, 17, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(267, 2, 18, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(268, 2, 19, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(269, 2, 20, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(270, 2, 21, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(271, 2, 23, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(272, 2, 24, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(273, 2, 25, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(274, 2, 26, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(275, 2, 28, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(276, 2, 29, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(277, 2, 30, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(278, 2, 31, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(279, 2, 32, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(280, 2, 33, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(281, 2, 34, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(282, 2, 35, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(283, 2, 67, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(284, 2, 68, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(285, 2, 37, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(286, 2, 38, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(287, 2, 66, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(288, 2, 40, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(289, 2, 41, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(290, 2, 42, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(291, 2, 43, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(292, 2, 44, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(293, 2, 45, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(294, 2, 47, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(295, 2, 48, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(296, 2, 69, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(297, 2, 50, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(298, 2, 51, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(299, 2, 52, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(300, 2, 53, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(301, 2, 54, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(302, 2, 56, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(303, 2, 57, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(304, 2, 58, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(305, 2, 59, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(306, 2, 60, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(307, 2, 61, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(308, 2, 62, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(309, 4, 1, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(310, 4, 2, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(311, 4, 3, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(312, 4, 4, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(313, 4, 5, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(314, 4, 6, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(315, 4, 7, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(316, 4, 8, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(317, 4, 64, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(318, 4, 65, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(319, 4, 63, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(320, 4, 10, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(321, 4, 11, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(322, 4, 12, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(323, 4, 14, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(324, 4, 15, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(325, 4, 16, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(326, 4, 17, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(327, 4, 18, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(328, 4, 19, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(329, 4, 20, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(330, 4, 21, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(331, 4, 23, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(332, 4, 24, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(333, 4, 25, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(334, 4, 26, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(335, 4, 28, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(336, 4, 29, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(337, 4, 30, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(338, 4, 31, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(339, 4, 32, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(340, 4, 33, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(341, 4, 34, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(342, 4, 35, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(343, 4, 67, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(344, 4, 68, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(345, 4, 37, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(346, 4, 38, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(347, 4, 66, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(348, 4, 40, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(349, 4, 41, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(350, 4, 42, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(351, 4, 43, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(352, 4, 44, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(353, 4, 45, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(354, 4, 47, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(355, 4, 48, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(356, 4, 69, 1, 1, 1, 1, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(357, 4, 50, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(358, 4, 51, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(359, 4, 52, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(360, 4, 53, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(361, 4, 54, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(362, 4, 56, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(363, 4, 57, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(364, 4, 58, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(365, 4, 59, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(366, 4, 60, 0, 0, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(367, 4, 61, 1, 0, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(368, 4, 62, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(369, 6, 1, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(370, 6, 2, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(371, 6, 3, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(372, 6, 4, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(373, 6, 5, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(374, 6, 6, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(375, 6, 7, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(376, 6, 8, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(377, 6, 64, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(378, 6, 65, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(379, 6, 63, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(380, 6, 10, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(381, 6, 11, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(382, 6, 12, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(383, 6, 14, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(384, 6, 15, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(385, 6, 16, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(386, 6, 17, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(387, 6, 18, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(388, 6, 19, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(389, 6, 20, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(390, 6, 21, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(391, 6, 23, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(392, 6, 24, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(393, 6, 25, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(394, 6, 26, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(395, 6, 28, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(396, 6, 29, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(397, 6, 30, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(398, 6, 31, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(399, 6, 32, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(400, 6, 33, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(401, 6, 34, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(402, 6, 35, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(403, 6, 67, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(404, 6, 68, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(405, 6, 37, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(406, 6, 38, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(407, 6, 66, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(408, 6, 40, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(409, 6, 41, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(410, 6, 42, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(411, 6, 43, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(412, 6, 44, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(413, 6, 45, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(414, 6, 47, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(415, 6, 48, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(416, 6, 69, 1, 1, 1, 1, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(417, 6, 50, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(418, 6, 51, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(419, 6, 52, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(420, 6, 53, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(421, 6, 54, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(422, 6, 56, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(423, 6, 57, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(424, 6, 58, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(425, 6, 59, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(426, 6, 60, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(427, 6, 61, 1, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(428, 6, 62, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(429, 7, 1, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(430, 7, 2, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(431, 7, 3, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(432, 7, 4, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(433, 7, 5, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(434, 7, 6, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(435, 7, 7, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(436, 7, 8, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(437, 7, 64, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(438, 7, 65, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(439, 7, 63, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(440, 7, 10, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(441, 7, 11, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(442, 7, 12, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(443, 7, 14, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(444, 7, 15, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(445, 7, 16, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(446, 7, 17, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(447, 7, 18, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(448, 7, 19, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(449, 7, 20, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(450, 7, 21, 0, 0, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(451, 7, 23, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(452, 7, 24, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(453, 7, 25, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(454, 7, 26, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(455, 7, 28, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(456, 7, 29, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(457, 7, 30, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(458, 7, 31, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(459, 7, 32, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(460, 7, 33, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(461, 7, 34, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(462, 7, 35, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(463, 7, 67, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(464, 7, 68, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(465, 7, 37, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(466, 7, 38, 1, 0, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(467, 7, 66, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(468, 7, 40, 0, 0, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(469, 7, 41, 0, 0, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(470, 7, 42, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(471, 7, 43, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(472, 7, 44, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(473, 7, 45, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(474, 7, 47, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(475, 7, 48, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(476, 7, 69, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(477, 7, 50, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(478, 7, 51, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(479, 7, 52, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(480, 7, 53, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(481, 7, 54, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(482, 7, 56, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(483, 7, 57, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(484, 7, 58, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(485, 7, 59, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(486, 7, 60, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(487, 7, 61, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(488, 7, 62, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(489, 8, 1, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(490, 8, 2, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(491, 8, 3, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(492, 8, 4, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(493, 8, 5, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(494, 8, 6, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(495, 8, 7, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(496, 8, 8, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(497, 8, 64, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(498, 8, 65, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(499, 8, 63, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(500, 8, 10, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(501, 8, 11, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(502, 8, 12, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(503, 8, 14, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(504, 8, 15, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(505, 8, 16, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(506, 8, 17, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(507, 8, 18, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(508, 8, 19, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(509, 8, 20, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(510, 8, 21, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(511, 8, 23, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(512, 8, 24, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(513, 8, 25, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(514, 8, 26, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(515, 8, 28, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(516, 8, 29, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(517, 8, 30, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(518, 8, 31, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(519, 8, 32, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(520, 8, 33, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(521, 8, 34, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(522, 8, 35, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(523, 8, 67, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(524, 8, 68, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(525, 8, 37, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(526, 8, 38, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(527, 8, 66, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(528, 8, 40, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(529, 8, 41, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(530, 8, 42, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(531, 8, 43, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(532, 8, 44, 0, 0, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(533, 8, 45, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(534, 8, 47, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(535, 8, 48, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(536, 8, 69, 1, 1, 1, 1, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(537, 8, 50, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(538, 8, 51, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(539, 8, 52, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(540, 8, 53, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(541, 8, 54, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(542, 8, 56, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(543, 8, 57, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(544, 8, 58, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(545, 8, 59, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(546, 8, 60, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(547, 8, 61, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(548, 8, 62, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(549, 9, 1, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(550, 9, 2, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(551, 9, 3, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(552, 9, 4, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(553, 9, 5, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(554, 9, 6, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(555, 9, 7, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(556, 9, 8, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(557, 9, 64, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(558, 9, 65, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(559, 9, 63, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(560, 9, 10, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(561, 9, 11, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(562, 9, 12, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(563, 9, 14, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(564, 9, 15, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(565, 9, 16, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(566, 9, 17, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(567, 9, 18, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(568, 9, 19, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(569, 9, 20, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(570, 9, 21, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(571, 9, 23, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(572, 9, 24, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(573, 9, 25, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(574, 9, 26, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(575, 9, 28, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(576, 9, 29, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(577, 9, 30, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(578, 9, 31, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(579, 9, 32, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(580, 9, 33, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(581, 9, 34, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(582, 9, 35, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(583, 9, 67, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(584, 9, 68, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(585, 9, 37, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(586, 9, 38, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(587, 9, 66, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(588, 9, 40, 0, 0, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(589, 9, 41, 0, 0, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(590, 9, 42, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(591, 9, 43, 0, 0, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(592, 9, 44, 0, 0, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(593, 9, 45, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(594, 9, 47, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(595, 9, 48, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(596, 9, 69, 1, 1, 1, 1, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(597, 9, 50, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(598, 9, 51, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(599, 9, 52, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(600, 9, 53, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(601, 9, 54, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(602, 9, 56, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(603, 9, 57, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(604, 9, 58, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(605, 9, 59, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(606, 9, 60, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(607, 9, 61, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(608, 9, 62, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(609, 1, 70, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(610, 1, 71, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(611, 1, 72, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(612, 1, 73, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(613, 1, 74, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(614, 1, 75, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(615, 1, 76, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(616, 1, 77, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(617, 1, 78, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(618, 4, 70, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(619, 4, 71, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(620, 4, 72, 0, 0, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(621, 4, 73, 0, 0, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(622, 4, 74, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(623, 4, 77, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(624, 4, 75, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(625, 4, 76, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(626, 4, 78, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(1224, 7, 101, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1223, 7, 100, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1222, 7, 85, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1221, 7, 84, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1220, 7, 83, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1219, 7, 82, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1218, 7, 81, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1217, 7, 79, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1216, 7, 106, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1215, 6, 128, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1214, 6, 127, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1213, 6, 126, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1212, 6, 125, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1211, 6, 124, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1210, 6, 123, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1209, 6, 122, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1208, 6, 121, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1207, 6, 120, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1206, 6, 119, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1205, 6, 118, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1204, 6, 117, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1203, 6, 116, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1202, 6, 115, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1201, 6, 114, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1200, 6, 113, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1199, 6, 112, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1198, 6, 111, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1197, 6, 107, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1196, 6, 104, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1195, 6, 99, 1, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1194, 6, 98, 1, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1193, 6, 97, 1, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1192, 6, 96, 1, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1191, 6, 133, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1190, 6, 132, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1189, 6, 131, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1188, 6, 130, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1187, 6, 129, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1186, 6, 109, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1185, 6, 95, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1184, 6, 94, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1183, 6, 93, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1182, 6, 92, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1181, 6, 91, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1180, 6, 90, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1179, 6, 89, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1178, 6, 88, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1177, 6, 134, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1176, 6, 110, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1175, 6, 87, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1174, 6, 86, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1173, 6, 102, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1172, 6, 108, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1171, 6, 135, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1170, 6, 105, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1169, 6, 103, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1168, 6, 101, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1167, 6, 100, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1166, 6, 85, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1165, 6, 84, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1164, 6, 83, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1163, 6, 82, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1162, 6, 81, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1161, 6, 79, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1160, 6, 106, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1159, 5, 128, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1158, 5, 127, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1157, 5, 126, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1156, 5, 125, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(696, 3, 70, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(697, 3, 71, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(698, 3, 72, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(699, 3, 73, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(700, 3, 74, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(701, 3, 77, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(702, 3, 75, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(703, 3, 76, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(704, 3, 78, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(705, 9, 70, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(706, 9, 71, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(707, 9, 72, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(708, 9, 73, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(709, 9, 74, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(710, 9, 77, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(711, 9, 75, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(712, 9, 76, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(713, 9, 78, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(714, 8, 70, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(715, 8, 71, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(716, 8, 72, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(717, 8, 73, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(718, 8, 74, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(719, 8, 77, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(720, 8, 75, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(721, 8, 76, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(722, 8, 78, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(723, 7, 70, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(724, 7, 71, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(725, 7, 72, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(726, 7, 73, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(727, 7, 74, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(728, 7, 77, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(729, 7, 75, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(730, 7, 76, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(731, 7, 78, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(732, 6, 70, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(733, 6, 71, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(734, 6, 72, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(735, 6, 73, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(736, 6, 74, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(737, 6, 77, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(738, 6, 75, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(739, 6, 76, 1, 1, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(740, 6, 78, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(741, 2, 70, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(742, 2, 71, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(743, 2, 72, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(744, 2, 73, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(745, 2, 74, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(746, 2, 77, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(747, 2, 75, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(748, 2, 76, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(749, 2, 78, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(750, 13, 70, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(751, 13, 71, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(752, 13, 72, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(753, 13, 73, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(754, 13, 74, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(755, 13, 77, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(756, 13, 75, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(757, 13, 76, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(758, 13, 78, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(759, 5, 70, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(760, 5, 71, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(761, 5, 72, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(762, 5, 73, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(763, 5, 74, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(764, 5, 77, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(765, 5, 75, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(766, 5, 76, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(767, 5, 78, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(768, 1, 79, 1, 1, 1, 1, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(769, 2, 79, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(770, 1, 80, 1, 1, 1, 1, 1, '2018-10-09 13:40:38', '0000-00-00 00:00:00', 1, 0),
(771, 1, 81, 1, 1, 1, 1, 1, '2020-06-20 14:51:50', '0000-00-00 00:00:00', 1, 0),
(772, 1, 82, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(773, 2, 80, 0, 0, 0, 0, 1, '2018-10-09 16:08:37', '0000-00-00 00:00:00', 1, 0),
(774, 2, 81, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(775, 2, 82, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(776, 1, 83, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(777, 1, 84, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(778, 1, 85, 0, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(779, 1, 100, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(780, 1, 101, 0, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(781, 1, 103, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(782, 1, 102, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(783, 1, 86, 1, 0, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(784, 1, 87, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(785, 1, 88, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(786, 1, 89, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(787, 1, 90, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(788, 1, 91, 1, 1, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(789, 1, 92, 0, 0, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(790, 1, 93, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(791, 1, 94, 1, 0, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(792, 1, 95, 0, 0, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(793, 1, 96, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(794, 1, 97, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(795, 1, 98, 1, 0, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(796, 1, 99, 1, 0, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(797, 1, 104, 1, 1, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(798, 3, 79, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(799, 3, 81, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(800, 3, 82, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(801, 3, 83, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(802, 3, 84, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(803, 3, 85, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(804, 3, 100, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(805, 3, 101, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(806, 3, 103, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(807, 3, 102, 1, 1, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(808, 3, 86, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(809, 3, 87, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(810, 3, 88, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(811, 3, 89, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(812, 3, 90, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(813, 3, 91, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(814, 3, 92, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(815, 3, 93, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(816, 3, 94, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(817, 3, 95, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(818, 3, 96, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(819, 3, 97, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(820, 3, 98, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(821, 3, 99, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(822, 3, 104, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(823, 2, 83, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(824, 2, 84, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(825, 2, 85, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(826, 2, 100, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(827, 2, 101, 0, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(828, 2, 103, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(829, 2, 102, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(830, 2, 86, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(831, 2, 87, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(832, 2, 88, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(833, 2, 89, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(834, 2, 90, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(835, 2, 91, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(836, 2, 92, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(837, 2, 93, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(838, 2, 94, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(839, 2, 95, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(840, 2, 96, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(841, 2, 97, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(842, 2, 98, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(843, 2, 99, 1, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(844, 2, 104, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(845, 1, 106, 0, 0, 0, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(846, 1, 105, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(847, 2, 106, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(848, 2, 105, 0, 0, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(849, 2, 107, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(850, 1, 107, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(851, 1, 108, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(852, 1, 109, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(853, 1, 110, 0, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(854, 1, 111, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(855, 2, 108, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(856, 2, 110, 0, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(857, 2, 109, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(858, 2, 111, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(859, 2, 112, 1, 1, 1, 1, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(860, 1, 112, 0, 0, 0, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(861, 1, 113, 0, 0, 0, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(862, 1, 114, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(863, 1, 115, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(864, 2, 113, 1, 1, 1, 1, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(865, 2, 114, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(866, 2, 115, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(867, 1, 116, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(868, 1, 117, 0, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(869, 1, 118, 0, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(870, 1, 119, 0, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(871, 2, 116, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(872, 2, 117, 0, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(873, 2, 118, 0, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(874, 2, 119, 0, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(875, 1, 120, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(876, 1, 121, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(877, 1, 122, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(878, 1, 123, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(879, 1, 124, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(880, 1, 125, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(881, 1, 126, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(882, 2, 120, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(883, 2, 121, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(884, 2, 122, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(885, 2, 123, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(886, 2, 124, 0, 0, 0, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(887, 2, 125, 0, 0, 0, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(888, 2, 126, 0, 0, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(889, 2, 127, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(890, 2, 128, 1, 1, 1, 0, 1, '2020-06-20 14:52:19', '0000-00-00 00:00:00', 1, 0),
(891, 1, 129, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(892, 1, 130, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(893, 1, 131, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(894, 1, 132, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(895, 1, 133, 1, 1, 1, 1, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(896, 1, 127, 0, 0, 0, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(897, 1, 128, 0, 0, 0, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(898, 3, 106, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(899, 3, 105, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(900, 3, 108, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(901, 3, 110, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(902, 3, 109, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(903, 3, 129, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(904, 3, 130, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(905, 3, 131, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(906, 3, 132, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(907, 3, 133, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(908, 3, 107, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(909, 3, 111, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(910, 3, 112, 1, 1, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(911, 3, 113, 1, 1, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(912, 3, 114, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(913, 3, 115, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(914, 3, 116, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(915, 3, 117, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(916, 3, 118, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(917, 3, 119, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(918, 3, 120, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(919, 3, 121, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(920, 3, 122, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(921, 3, 123, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(922, 3, 124, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(923, 3, 125, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(924, 3, 126, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(925, 3, 127, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(926, 3, 128, 0, 0, 0, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(927, 4, 106, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(928, 4, 79, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(929, 4, 81, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(930, 4, 82, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(931, 4, 83, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(932, 4, 84, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(933, 4, 85, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(934, 4, 100, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(935, 4, 101, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(936, 4, 103, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(937, 4, 105, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(938, 4, 108, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(939, 4, 102, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(940, 4, 86, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(941, 4, 87, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(942, 4, 110, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(943, 4, 88, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(944, 4, 89, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(945, 4, 90, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(946, 4, 91, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(947, 4, 92, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(948, 4, 93, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(949, 4, 94, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(950, 4, 95, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(951, 4, 109, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(952, 4, 129, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(953, 4, 130, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(954, 4, 131, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(955, 4, 132, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(956, 4, 133, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(957, 4, 96, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(958, 4, 97, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(959, 4, 98, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(960, 4, 99, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(961, 4, 104, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(962, 4, 107, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(963, 4, 111, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(964, 4, 112, 1, 1, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(965, 4, 113, 1, 1, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(966, 4, 114, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(967, 4, 115, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(968, 4, 116, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(969, 4, 117, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(970, 4, 118, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(971, 4, 119, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(972, 4, 120, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(973, 4, 121, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(974, 4, 122, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(975, 4, 123, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(976, 4, 124, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(977, 4, 125, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(978, 4, 126, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(979, 4, 127, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(980, 4, 128, 0, 0, 0, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(981, 9, 106, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(982, 9, 79, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(983, 9, 81, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(984, 9, 82, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(985, 9, 83, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(986, 9, 84, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(987, 9, 85, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(988, 9, 100, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(989, 9, 101, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(990, 9, 103, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(991, 9, 105, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(992, 9, 108, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(993, 9, 102, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(994, 9, 86, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(995, 9, 87, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(996, 9, 110, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(997, 9, 88, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(998, 9, 89, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(999, 9, 90, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1000, 9, 91, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1001, 9, 92, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1002, 9, 93, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1003, 9, 94, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1004, 9, 95, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1005, 9, 109, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1006, 9, 129, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1007, 9, 130, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1008, 9, 131, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1009, 9, 132, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1010, 9, 133, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1011, 9, 96, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1012, 9, 97, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1013, 9, 98, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1014, 9, 99, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1015, 9, 104, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1016, 9, 107, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1017, 9, 111, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1018, 9, 112, 1, 1, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1019, 9, 113, 1, 1, 1, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1020, 9, 114, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1021, 9, 115, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1022, 9, 116, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1023, 9, 117, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1024, 9, 118, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1025, 9, 119, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1026, 9, 120, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1027, 9, 121, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1028, 9, 122, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1029, 9, 123, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1030, 9, 124, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1031, 9, 125, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1032, 9, 126, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1033, 9, 127, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1034, 9, 128, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1035, 1, 134, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1036, 2, 134, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1037, 2, 129, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1038, 2, 130, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1039, 2, 131, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1040, 2, 132, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1041, 2, 133, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1042, 1, 135, 0, 0, 1, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1043, 2, 135, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1155, 5, 124, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1154, 5, 123, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1153, 5, 122, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1152, 5, 121, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1151, 5, 120, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1150, 5, 119, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1149, 5, 118, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1148, 5, 117, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1147, 5, 116, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1146, 5, 115, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1145, 5, 114, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1144, 5, 113, 1, 1, 1, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1143, 5, 112, 1, 1, 1, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1142, 5, 111, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1141, 5, 107, 0, 0, 0, 0, 1, '2020-06-20 14:53:27', '0000-00-00 00:00:00', 1, 0),
(1140, 5, 104, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1139, 5, 99, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1138, 5, 98, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1137, 5, 97, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1136, 5, 96, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1135, 5, 133, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1134, 5, 132, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1133, 5, 131, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1132, 5, 130, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1131, 5, 129, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1130, 5, 109, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1129, 5, 95, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1128, 5, 94, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1127, 5, 93, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1126, 5, 92, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1125, 5, 91, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1124, 5, 90, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1123, 5, 89, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1122, 5, 88, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1121, 5, 134, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1120, 5, 110, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1119, 5, 87, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1118, 5, 86, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1117, 5, 102, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1116, 5, 108, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1115, 5, 135, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1114, 5, 105, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1113, 5, 103, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1112, 5, 101, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1111, 5, 100, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1110, 5, 85, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1109, 5, 84, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1108, 5, 83, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1107, 5, 82, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1106, 5, 81, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1105, 5, 79, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1104, 5, 106, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1103, 4, 134, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1102, 4, 135, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1101, 3, 134, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1100, 3, 135, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1225, 7, 103, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1226, 7, 105, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1227, 7, 135, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1228, 7, 108, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1229, 7, 102, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1230, 7, 86, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1231, 7, 87, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1232, 7, 110, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1233, 7, 134, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1234, 7, 88, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1235, 7, 89, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1236, 7, 90, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1237, 7, 91, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1238, 7, 92, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1239, 7, 93, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1240, 7, 94, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1241, 7, 95, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1242, 7, 109, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1243, 7, 129, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1244, 7, 130, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1245, 7, 131, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1246, 7, 132, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1247, 7, 133, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1248, 7, 96, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1249, 7, 97, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1250, 7, 98, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1251, 7, 99, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1252, 7, 104, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1253, 7, 107, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1254, 7, 111, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1255, 7, 112, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1256, 7, 113, 1, 1, 1, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1257, 7, 114, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1258, 7, 115, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1259, 7, 116, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1260, 7, 117, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1261, 7, 118, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1262, 7, 119, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1263, 7, 120, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1264, 7, 121, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1265, 7, 122, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1266, 7, 123, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1267, 7, 124, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1268, 7, 125, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1269, 7, 126, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1270, 7, 127, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1271, 7, 128, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1272, 8, 106, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1273, 8, 79, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1274, 8, 81, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1275, 8, 82, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1276, 8, 83, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1277, 8, 84, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1278, 8, 85, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1279, 8, 100, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1280, 8, 101, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1281, 8, 103, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1282, 8, 105, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1283, 8, 135, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1284, 8, 108, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1285, 8, 102, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1286, 8, 86, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1287, 8, 87, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1288, 8, 110, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1289, 8, 134, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1290, 8, 88, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1291, 8, 89, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1292, 8, 90, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1293, 8, 91, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1294, 8, 92, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1295, 8, 93, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1296, 8, 94, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1297, 8, 95, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1298, 8, 109, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1299, 8, 129, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1300, 8, 130, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1301, 8, 131, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1302, 8, 132, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1303, 8, 133, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1304, 8, 96, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1305, 8, 97, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1306, 8, 98, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1307, 8, 99, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1308, 8, 104, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1309, 8, 107, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1310, 8, 111, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1311, 8, 112, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1312, 8, 113, 1, 1, 1, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1313, 8, 114, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1314, 8, 115, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1315, 8, 116, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1316, 8, 117, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1317, 8, 118, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1318, 8, 119, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1319, 8, 120, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1320, 8, 121, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1321, 8, 122, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1322, 8, 123, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1323, 8, 124, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1324, 8, 125, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1325, 8, 126, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1326, 8, 127, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1327, 8, 128, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1328, 9, 135, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1329, 9, 134, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1330, 14, 1, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1331, 14, 2, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1332, 14, 3, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1333, 14, 106, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1334, 14, 4, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1335, 14, 5, 0, 0, 1, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1336, 14, 6, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1337, 14, 7, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1338, 14, 8, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1339, 14, 64, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1340, 14, 65, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1341, 14, 63, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1342, 14, 79, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1343, 14, 81, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1344, 14, 82, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1345, 14, 83, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1346, 14, 84, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1347, 14, 85, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1348, 14, 100, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1349, 14, 101, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1350, 14, 103, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1351, 14, 105, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1352, 14, 135, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1353, 14, 10, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1354, 14, 11, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1355, 14, 12, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1356, 14, 14, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1357, 14, 15, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1358, 14, 16, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1359, 14, 17, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1360, 14, 18, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1361, 14, 19, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1362, 14, 108, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1363, 14, 20, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1364, 14, 102, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1365, 14, 21, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1366, 14, 86, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1367, 14, 87, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1368, 14, 110, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1369, 14, 134, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1370, 14, 23, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1371, 14, 24, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1372, 14, 25, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1373, 14, 88, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1374, 14, 89, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1375, 14, 26, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1376, 14, 28, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1377, 14, 29, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1378, 14, 30, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1379, 14, 31, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1380, 14, 32, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1381, 14, 33, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1382, 14, 34, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1383, 14, 35, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1384, 14, 67, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1385, 14, 68, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1386, 14, 90, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1387, 14, 91, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1388, 14, 92, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1389, 14, 93, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1390, 14, 94, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1391, 14, 95, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1392, 14, 37, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1393, 14, 38, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1394, 14, 66, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1395, 14, 109, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1396, 14, 40, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1397, 14, 41, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1398, 14, 42, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1399, 14, 43, 0, 0, 0, 0, 1, '2019-09-09 19:57:03', '0000-00-00 00:00:00', 1, 0),
(1400, 14, 44, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1401, 14, 45, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1402, 14, 47, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1403, 14, 48, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1404, 14, 69, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1405, 14, 50, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1406, 14, 51, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1407, 14, 52, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1408, 14, 53, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1409, 14, 54, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1410, 14, 129, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1411, 14, 130, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1412, 14, 131, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1413, 14, 132, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1414, 14, 133, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1415, 14, 56, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1416, 14, 57, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1417, 14, 58, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1418, 14, 59, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1419, 14, 60, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1420, 14, 61, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1421, 14, 96, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1422, 14, 97, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1423, 14, 98, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1424, 14, 99, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1425, 14, 62, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1426, 14, 70, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1427, 14, 71, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1428, 14, 72, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1429, 14, 73, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1430, 14, 74, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1431, 14, 77, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1432, 14, 104, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1433, 14, 75, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1434, 14, 76, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1435, 14, 78, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1436, 14, 107, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1437, 14, 111, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1438, 14, 112, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1439, 14, 113, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1440, 14, 114, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1441, 14, 115, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1442, 14, 116, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1443, 14, 117, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1444, 14, 118, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1445, 14, 119, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1446, 14, 120, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1447, 14, 121, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1448, 14, 122, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1449, 14, 123, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1450, 14, 124, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1451, 14, 125, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1452, 14, 126, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1453, 14, 127, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1454, 14, 128, 0, 0, 0, 0, 1, '2019-09-09 19:57:04', '0000-00-00 00:00:00', 1, 0),
(1455, 1, 136, 0, 0, 1, 0, 1, '2020-06-20 14:51:52', '0000-00-00 00:00:00', 1, 0),
(1456, 1, 138, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1457, 1, 137, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1458, 2, 138, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1459, 2, 137, 1, 1, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1460, 2, 136, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1461, 3, 138, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1462, 3, 137, 1, 1, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(1463, 3, 136, 0, 0, 1, 0, 1, '2020-06-20 14:52:49', '0000-00-00 00:00:00', 1, 0),
(1464, 4, 138, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1465, 4, 137, 1, 1, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1466, 4, 136, 0, 0, 1, 0, 1, '2020-06-20 14:53:02', '0000-00-00 00:00:00', 1, 0),
(1467, 5, 138, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1468, 5, 137, 1, 1, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1469, 5, 136, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1470, 1, 139, 0, 1, 0, 0, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1471, 1, 140, 0, 0, 1, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(1472, 1, 141, 0, 0, 1, 0, 1, '2020-06-20 14:51:49', '0000-00-00 00:00:00', 1, 0),
(1473, 2, 140, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1474, 2, 141, 0, 0, 1, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1475, 2, 139, 0, 1, 0, 0, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1476, 5, 140, 0, 0, 1, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1477, 5, 141, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1478, 5, 139, 0, 0, 0, 0, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0),
(1479, 3, 140, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1480, 3, 141, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1481, 3, 139, 0, 0, 0, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1482, 4, 140, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1483, 4, 141, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1484, 4, 139, 0, 0, 0, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1485, 6, 140, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1486, 6, 141, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1487, 6, 139, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1488, 6, 138, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1489, 6, 137, 0, 0, 0, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1490, 6, 136, 0, 0, 1, 0, 1, '2020-06-13 13:28:38', '0000-00-00 00:00:00', 1, 0),
(1491, 7, 140, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1492, 7, 141, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1493, 7, 139, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1494, 7, 138, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1495, 7, 137, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1496, 7, 136, 0, 0, 0, 0, 1, '2020-06-13 13:29:03', '0000-00-00 00:00:00', 1, 0),
(1497, 8, 140, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1498, 8, 141, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1499, 8, 139, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1500, 8, 138, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1501, 8, 137, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1502, 8, 136, 0, 0, 0, 0, 1, '2020-06-13 13:29:21', '0000-00-00 00:00:00', 1, 0),
(1503, 9, 140, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1504, 9, 141, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1505, 9, 139, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1506, 9, 138, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1507, 9, 137, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1508, 9, 136, 0, 0, 0, 0, 1, '2020-06-13 13:29:35', '0000-00-00 00:00:00', 1, 0),
(1509, 1, 142, 1, 1, 1, 1, 1, '2020-06-20 14:51:51', '0000-00-00 00:00:00', 1, 0),
(1510, 2, 142, 1, 1, 1, 1, 1, '2020-06-20 14:52:18', '0000-00-00 00:00:00', 1, 0),
(1511, 3, 142, 0, 0, 1, 0, 1, '2020-06-20 14:52:48', '0000-00-00 00:00:00', 1, 0),
(1512, 4, 142, 0, 0, 1, 0, 1, '2020-06-20 14:53:01', '0000-00-00 00:00:00', 1, 0),
(1513, 5, 142, 1, 1, 1, 1, 1, '2020-06-20 14:53:26', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `body` text,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `exam_total_mark` int(11) NOT NULL,
  `obtain_total_mark` int(11) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `note`, `is_default`, `is_super_admin`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', 1, 1, 1, '2017-08-13 12:15:17', '2018-02-09 01:58:57', 0, 1),
(2, 'admin', 'Admin', 'Admin User', 1, 0, 1, '2017-08-13 13:01:36', '0000-00-00 00:00:00', 0, 0),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', 1, 0, 1, '2017-08-13 13:02:05', '2018-02-09 01:59:22', 0, 1),
(4, 'student', 'Student', 'Student User', 1, 0, 1, '2017-08-13 13:02:24', '2018-02-09 01:59:34', 0, 1),
(5, 'teacher', 'Teacher', 'Teacher User', 1, 0, 1, '2017-08-13 13:02:51', '2018-02-09 01:59:46', 0, 1),
(6, 'accountant', 'Accountant', 'Accountant User', 1, 0, 1, '2017-08-13 13:04:00', '2018-02-09 02:00:07', 0, 1),
(7, 'librarian', 'Librarian', 'Librarian User', 1, 0, 1, '2017-08-13 13:04:18', '2018-02-09 02:00:22', 0, 1),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', 1, 0, 1, '2017-08-13 13:04:36', '2018-02-09 02:02:30', 0, 1),
(9, 'staff', 'Staff', 'General Staff User', 0, 0, 1, '2017-08-13 13:05:01', '2018-02-09 02:02:48', 0, 1),
(13, 'servent', 'Servent', 'Servant User', 0, 0, 1, '2018-02-04 04:40:37', '2018-02-09 02:03:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `room_type` varchar(10) NOT NULL,
  `total_seat` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `vehicle_ids` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `route_start` varchar(255) NOT NULL,
  `route_end` varchar(255) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `route_stops`
--

CREATE TABLE `route_stops` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_name` varchar(255) NOT NULL,
  `stop_km` varchar(20) NOT NULL,
  `stop_fare` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `salary_grades`
--

CREATE TABLE `salary_grades` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `grade_name` varchar(50) NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `salary_payments`
--

CREATE TABLE `salary_payments` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_id` int(11) NOT NULL,
  `salary_type` varchar(20) NOT NULL,
  `salary_month` varchar(100) NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `bonus` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `over_time_total_hour` double(10,2) NOT NULL,
  `over_time_amount` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `penalty` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) DEFAULT '0.00',
  `total_hour` double(10,2) DEFAULT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `cheque_no` varchar(50) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `payment_to` varchar(20) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_code` varchar(100) DEFAULT NULL,
  `registration_date` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_symbol` varchar(10) NOT NULL,
  `footer` text NOT NULL,
  `logo` varchar(120) DEFAULT NULL,
  `frontend_logo` varchar(120) DEFAULT NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `school_fax` varchar(50) DEFAULT NULL,
  `school_lat` varchar(100) DEFAULT NULL,
  `school_lng` varchar(100) DEFAULT NULL,
  `map_api_key` varchar(255) DEFAULT NULL,
  `zoom_api_key` varchar(120) DEFAULT NULL,
  `zoom_secret` varchar(150) DEFAULT NULL,
  `enable_frontend` tinyint(1) DEFAULT '1',
  `enable_online_admission` tinyint(1) NOT NULL DEFAULT '0',
  `final_result_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= Final Exam, 0 = Average all Exam',
  `language` varchar(25) DEFAULT NULL,
  `theme_name` varchar(50) DEFAULT NULL,
  `about_text` text,
  `about_image` varchar(100) DEFAULT NULL,
  `enable_rtl` tinyint(1) DEFAULT '0',
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `school_name`, `school_code`, `registration_date`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `footer`, `logo`, `frontend_logo`, `academic_year_id`, `academic_year`, `school_fax`, `school_lat`, `school_lng`, `map_api_key`, `zoom_api_key`, `zoom_secret`, `enable_frontend`, `enable_online_admission`, `final_result_type`, `language`, `theme_name`, `about_text`, `about_image`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Windsor Park High School', 'ASD23CR', '01-01-2019', '10433 Wolverine Way  Bellevue, CA 98456', '0123456789', 'info@gmsms.com', 'USD', '$', 'Copyright © Windsor Park High School 2020', '1591107182-school-admin-logo.png', '1591107037-school-front-logo.png', 2, '2019 - 2020', '25435345', '', '', '', '', '', 1, 1, 1, 'english', 'rebecca-purple', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', '1591557275-about-image.jpg', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2017-08-23 09:40:28', '2020-06-13 18:48:40', 1, 132);


--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `clickatell_username` varchar(100) DEFAULT NULL,
  `clickatell_password` varchar(100) DEFAULT NULL,
  `clickatell_api_key` varchar(100) DEFAULT NULL,
  `clickatell_from_number` varchar(50) DEFAULT NULL,
  `clickatell_status` tinyint(1) DEFAULT NULL,
  `twilio_account_sid` varchar(100) DEFAULT NULL,
  `twilio_auth_token` varchar(100) DEFAULT NULL,
  `twilio_from_number` varchar(100) DEFAULT NULL,
  `clickatell_mo_no` varchar(50) DEFAULT NULL,
  `twilio_status` tinyint(1) DEFAULT NULL,
  `bulk_username` varchar(100) DEFAULT NULL,
  `bulk_password` varchar(100) DEFAULT NULL,
  `bulk_status` tinyint(1) DEFAULT NULL,
  `msg91_auth_key` varchar(100) DEFAULT NULL,
  `msg91_sender_id` varchar(100) DEFAULT NULL,
  `msg91_status` tinyint(1) DEFAULT NULL,
  `plivo_auth_id` varchar(100) DEFAULT NULL,
  `plivo_auth_token` varchar(100) DEFAULT NULL,
  `plivo_from_number` varchar(50) DEFAULT NULL,
  `plivo_status` tinyint(1) DEFAULT NULL,
  `textlocal_username` varchar(50) DEFAULT NULL,
  `textlocal_hash_key` varchar(100) DEFAULT NULL,
  `textlocal_sender_id` varchar(50) DEFAULT NULL,
  `textlocal_status` tinyint(1) DEFAULT NULL,
  `smscountry_username` varchar(50) DEFAULT NULL,
  `smscountry_password` varchar(100) DEFAULT NULL,
  `smscountry_sender_id` varchar(50) DEFAULT NULL,
  `smscountry_status` tinyint(1) DEFAULT NULL,
  `betasms_username` varchar(100) DEFAULT NULL,
  `betasms_password` varchar(100) DEFAULT NULL,
  `betasms_sender_id` varchar(100) DEFAULT NULL,
  `betasms_status` tinyint(1) NOT NULL,
  `bulk_pk_username` varchar(50) DEFAULT NULL,
  `bulk_pk_password` varchar(50) DEFAULT NULL,
  `bulk_pk_sender_id` varchar(50) DEFAULT NULL,
  `bulk_pk_status` tinyint(1) DEFAULT NULL,
  `cluster_auth_key` varchar(50) DEFAULT NULL,
  `cluster_sender_id` varchar(50) DEFAULT NULL,
  `cluster_router` varchar(10) DEFAULT NULL,
  `cluster_status` tinyint(1) DEFAULT NULL,
  `alpha_username` varchar(50) DEFAULT NULL,
  `alpha_hash` varchar(50) DEFAULT NULL,
  `alpha_type` varchar(10) DEFAULT NULL,
  `alpha_status` tinyint(1) DEFAULT NULL,
  `bdbulk_hash` varchar(50) DEFAULT NULL,
  `bdbulk_type` varchar(10) DEFAULT NULL,
  `bdbulk_status` tinyint(1) DEFAULT NULL,
  `mim_api_key` varchar(50) DEFAULT NULL,
  `mim_type` varchar(10) DEFAULT NULL,
  `mim_sender_id` varchar(50) DEFAULT NULL,
  `mim_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `admission_no` varchar(50) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `guardian_id` int(11) NOT NULL,
  `relation_with` varchar(100) DEFAULT NULL,
  `registration_no` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `caste` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `age` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `other_info` text,
  `is_library_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_hostel_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_transport_member` tinyint(1) NOT NULL DEFAULT '0',
  `discount_id` int(11) DEFAULT '0',
  `previous_school` varchar(255) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `transfer_certificate` varchar(100) DEFAULT NULL,
  `health_condition` text,
  `national_id` varchar(100) DEFAULT NULL,
  `second_language` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `father_designation` varchar(100) DEFAULT NULL,
  `father_photo` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_designation` varchar(100) DEFAULT NULL,
  `mother_photo` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `status_type` varchar(50) DEFAULT 'regular' COMMENT 'regular, drop, transfer,passed',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `activity` text NOT NULL,
  `activity_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `student_types`
--

CREATE TABLE `student_types` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `material` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_estonian_ci,
  `suggestion` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `syllabus` varchar(255) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Table structure for table `system_admin`
--

CREATE TABLE `system_admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `national_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `salary_type` varchar(20) NOT NULL,
  `responsibility` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `blood_group` varchar(15) NOT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `other_info` text,
  `display_order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `teacher_attendances`
--

CREATE TABLE `teacher_attendances` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `text_messages`
--

CREATE TABLE `text_messages` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text,
  `academic_year_id` int(11) NOT NULL,
  `sms_gateway` varchar(20) NOT NULL,
  `sms_type` varchar(50) NOT NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `body` text,
  `absent_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `color_code` varchar(10) NOT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL COMMENT '1 = Active, 0 = Inactive',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `color_code`, `description`, `is_active`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(13, 'SlateGray ', 'slate-gray', '#2A3F54', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(2, 'Black ', 'black', '#23282d', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(14, 'LightSeaGreen ', 'light-sea-green', '#20B2AA', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(4, 'MediumPurple ', 'medium-purple', '#9370DB', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(15, 'Navy Blue', 'navy-blue', '#001f67', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(6, 'RebeccaPurple ', 'rebecca-purple', '#663399', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(16, 'Red', 'red', '#e80000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(8, 'DodgerBlue', 'dodger-blue', '#1E90FF', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(9, 'Maroon', 'maroon', '#800000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(10, 'DarkOrange', 'dark-orange', '#FF8C00', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(11, 'DeepPink', 'deep-pink', '#FF1493', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(5, 'LimeGreen', 'lime-green', '#32CD32', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(1, 'Jazzberry Jam', 'jazzberry-jam', '#9F134E', 'Jazzberry Jam', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(3, 'Umber', 'umber', '#745D0B', 'Umber', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(12, 'Trinidad', 'trinidad', '#CC4F26', 'Trinidad', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 'Radical Red', 'radical-red', '#FB2E50', 'Radical Red', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `pum_first_name` varchar(50) DEFAULT NULL,
  `pum_email` varchar(50) DEFAULT NULL,
  `pum_phone` varchar(20) DEFAULT NULL,
  `stripe_card_number` varchar(50) DEFAULT NULL,
  `stack_email` varchar(100) DEFAULT NULL,
  `stack_reference` varchar(100) DEFAULT NULL,
  `bank_receipt` varchar(100) DEFAULT NULL,
  `card_cvv` varchar(20) DEFAULT NULL,
  `expire_month` varchar(20) DEFAULT NULL,
  `expire_year` varchar(20) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `transport_members`
--

CREATE TABLE `transport_members` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `route_stop_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `reset_key` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= Active, 0 = InActive',
  `last_logged_in` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `is_allocated` tinyint(1) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `video_lectures`
--

CREATE TABLE `video_lectures` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `lecture_type` varchar(50) NOT NULL,
  `lecture_title` varchar(255) NOT NULL,
  `video_id` varchar(50) DEFAULT NULL,
  `lecture_ppt` varchar(150) DEFAULT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `custom_id` (`custom_id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `library_member_id` (`library_member_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `complain_types`
--
ALTER TABLE `complain_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `sender_role_id` (`sender_role_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `designation_id` (`designation_id`),
  ADD KEY `salary_grade_id` (`salary_grade_id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `expenditure_head_id` (`expenditure_head_id`);

--
-- Indexes for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `fees_amount`
--
ALTER TABLE `fees_amount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `income_head_id` (`income_head_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `final_results`
--
ALTER TABLE `final_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `gallery_id` (`gallery_id`);

--
-- Indexes for table `global_setting`
--
ALTER TABLE `global_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `guardian_id` (`guardian_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `custom_member_id` (`custom_member_id`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `income_heads`
--
ALTER TABLE `income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `custom_invoice_id` (`custom_invoice_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `income_head_id` (`income_head_id`);


--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `label` (`label`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `custom_member_id` (`custom_member_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- Indexes for table `mark_emails`
--
ALTER TABLE `mark_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `sender_role_id` (`sender_role_id`);

--
-- Indexes for table `mark_smses`
--
ALTER TABLE `mark_smses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `sender_role_id` (`sender_role_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `message_relationships`
--
ALTER TABLE `message_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `postal_receives`
--
ALTER TABLE `postal_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `operation_id` (`operation_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_code` (`purchase_code`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `route_stops`
--
ALTER TABLE `route_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `salary_grades`
--
ALTER TABLE `salary_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `salary_payments`
--
ALTER TABLE `salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `salary_grade_id` (`salary_grade_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `expenditure_id` (`expenditure_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_name` (`school_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `guardian_id` (`guardian_id`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `student_types`
--
ALTER TABLE `student_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `system_admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `salary_grade_id` (`salary_grade_id`);

--
-- Indexes for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `text_messages`
--
ALTER TABLE `text_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `sender_role_id` (`sender_role_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `route_stop_id` (`route_stop_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id` (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `video_lectures`
--
ALTER TABLE `video_lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `purpose_id` (`purpose_id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `complain_types`
--
ALTER TABLE `complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `fees_amount`
--
ALTER TABLE `fees_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `final_results`
--
ALTER TABLE `final_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `global_setting`
--
ALTER TABLE `global_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `hostel_members`
--
ALTER TABLE `hostel_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `income_heads`
--
ALTER TABLE `income_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `mark_emails`
--
ALTER TABLE `mark_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `mark_smses`
--
ALTER TABLE `mark_smses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `message_relationships`
--
ALTER TABLE `message_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_receives`
--
ALTER TABLE `postal_receives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1509;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `route_stops`
--
ALTER TABLE `route_stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `salary_grades`
--
ALTER TABLE `salary_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `salary_payments`
--
ALTER TABLE `salary_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_types`
--
ALTER TABLE `student_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `system_admin`
--
ALTER TABLE `system_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `text_messages`
--
ALTER TABLE `text_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `transport_members`
--
ALTER TABLE `transport_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `video_lectures`
--
ALTER TABLE `video_lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

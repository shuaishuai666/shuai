package com.zhiyou100.video.service;


import java.util.List;

import com.zhiyou100.video.model.Course;
import com.zhiyou100.video.service.tools.Page;

public interface CourseService {

		Page<Course> selectCourse(Integer page);

		Course selectIdcourse(Integer id);

		void updateCourse(Course co);

		void deleteIdcourse(Integer id);

		void courseAdd(Course co);

		List<Course> selectCourseName();
}
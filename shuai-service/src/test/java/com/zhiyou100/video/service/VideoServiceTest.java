package com.zhiyou100.video.service;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring/applicationContext-*.xml")
public class VideoServiceTest {
	@Autowired
	CourseService vs;
	@Test
	public void test() {
		System.out.println(vs.selectCourse(null));
	}

}

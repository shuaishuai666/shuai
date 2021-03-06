package com.zhiyou100.video.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhiyou100.video.model.Course;
import com.zhiyou100.video.model.CourseTow;
import com.zhiyou100.video.model.Speaker;
import com.zhiyou100.video.model.Subject;
import com.zhiyou100.video.model.Video;
import com.zhiyou100.video.model.VideoAll;
import com.zhiyou100.video.service.CourseIndexService;
import com.zhiyou100.video.service.CourseService;
import com.zhiyou100.video.service.SpeakerService;
import com.zhiyou100.video.service.VideoService;

@Controller
public class CourseIndexController {
	@Autowired
	CourseIndexService cis;
	@Autowired
	VideoService vs;
	@Autowired
	CourseService cs;
	@Autowired
	SpeakerService ss;
	@RequestMapping(value="homepage/front/course/index.do",method=RequestMethod.GET)
	public String webCourse(int subjectId, Model md){
		Subject li = cis.selectCourse(subjectId);
//		List<Course> course=cs.selectCs(subjectId);
//		for (Course course2 : course) {
//			course2.setVideoList(vs.selectVideoP(course2.getId()));
//		}
	
		List<CourseTow> list= cs.selectVideoCourse(subjectId);
		md.addAttribute("subject", li);
		md.addAttribute("courses", list);
		return "/front/course/index";
		
	}
	
	@RequestMapping(value="homepage/front/video/index.do",method=RequestMethod.GET)
	public String videoIndex(int videoId,Model md,int subjectId){
		Subject li = cis.selectCourse(subjectId);
		md.addAttribute("subject", li);
		md.addAttribute("videoId", videoId);
		return "/front/video/index";
		
	}
	@RequestMapping(value="homepage/front/video/videoData.do",method=RequestMethod.GET)
	public String videoData(int videoId,Model md){
		Video video = vs.selectVideo(videoId);
		Speaker speaker=ss.selectId(video.getSpeakerId());
		Course course=cs.selectIdcourse(video.getCourseId());
		List<VideoAll> list = vs.selectContents(video.getCourseId());
		md.addAttribute("video", video);
		md.addAttribute("speaker", speaker);
		md.addAttribute("course", course);
		md.addAttribute("videoList", list);
		return "/front/video/content";
		
	}
	@RequestMapping(value="homepage/front/video/state.do",method=RequestMethod.GET)
	public void videoState(int videoId){
		
		vs.addVideoStateCount(videoId);
		
	}
}

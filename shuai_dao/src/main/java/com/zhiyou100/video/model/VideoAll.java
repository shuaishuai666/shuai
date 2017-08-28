package com.zhiyou100.video.model;

import java.util.Date;

public class VideoAll {
	 private Integer id;

	    private String videoTitle;

	    private Integer speakerId;

	    private Integer courseId;

	    private Integer videoLength;

	    private String videoImageUrl;

	    private String videoUrl;

	    private String videoDescr;

	    private Date insertTime;

	    private Date updateTime;
	    private Course  course;
	    private Speaker sperker;

	    private Integer videoPlayTimes;
	    private String speakerName;
	    private String courseName;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getVideoTitle() {
			return videoTitle;
		}
		public void setVideoTitle(String videoTitle) {
			this.videoTitle = videoTitle;
		}
		public Integer getSpeakerId() {
			return speakerId;
		}
		public void setSpeakerId(Integer speakerId) {
			this.speakerId = speakerId;
		}
		public Integer getCourseId() {
			return courseId;
		}
		public void setCourseId(Integer courseId) {
			this.courseId = courseId;
		}
		public Integer getVideoLength() {
			return videoLength;
		}
		public void setVideoLength(Integer videoLength) {
			this.videoLength = videoLength;
		}
		public String getVideoImageUrl() {
			return videoImageUrl;
		}
		public void setVideoImageUrl(String videoImageUrl) {
			this.videoImageUrl = videoImageUrl;
		}
		public String getVideoUrl() {
			return videoUrl;
		}
		public void setVideoUrl(String videoUrl) {
			this.videoUrl = videoUrl;
		}
		public String getVideoDescr() {
			return videoDescr;
		}
		public void setVideoDescr(String videoDescr) {
			this.videoDescr = videoDescr;
		}
		public Date getInsertTime() {
			return insertTime;
		}
		public void setInsertTime(Date insertTime) {
			this.insertTime = insertTime;
		}
		public Date getUpdateTime() {
			return updateTime;
		}
		public void setUpdateTime(Date updateTime) {
			this.updateTime = updateTime;
		}
		public Course getCourse() {
			return course;
		}
		public void setCourse(Course course) {
			this.course = course;
		}
		public Speaker getSperker() {
			return sperker;
		}
		public void setSperker(Speaker sperker) {
			this.sperker = sperker;
		}
		public Integer getVideoPlayTimes() {
			return videoPlayTimes;
		}
		public void setVideoPlayTimes(Integer videoPlayTimes) {
			this.videoPlayTimes = videoPlayTimes;
		}
		public String getSpeakerName() {
			return speakerName;
		}
		public void setSpeakerName(String speakerName) {
			this.speakerName = speakerName;
		}
		public String getCourseName() {
			return courseName;
		}
		public void setCourseName(String courseName) {
			this.courseName = courseName;
		}
		@Override
		public String toString() {
			return "VideoAll [id=" + id + ", videoTitle=" + videoTitle + ", speakerId=" + speakerId + ", courseId="
					+ courseId + ", videoLength=" + videoLength + ", videoImageUrl=" + videoImageUrl + ", videoUrl="
					+ videoUrl + ", videoDescr=" + videoDescr + ", insertTime=" + insertTime + ", updateTime="
					+ updateTime + ", course=" + course + ", sperker=" + sperker + ", videoPlayTimes=" + videoPlayTimes
					+ ", speakerName=" + speakerName + ", courseName=" + courseName + "]";
		}
		
	    
}

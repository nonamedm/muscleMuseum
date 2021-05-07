package com.green.user.vo;

public class FeedVo {
	private int feed_idx;
	private String board_name,feed_cont, user_id, user_name, feed_regdate, sphoto_name;
	public FeedVo() {}
	public FeedVo(int feed_idx, String board_name, String feed_cont, String user_id, String user_name,
			String feed_regdate, String sphoto_name) {
		this.feed_idx = feed_idx;
		this.board_name = board_name;
		this.feed_cont = feed_cont;
		this.user_id = user_id;
		this.user_name = user_name;
		this.feed_regdate = feed_regdate;
		this.sphoto_name = sphoto_name;
	}
	public int getFeed_idx() {
		return feed_idx;
	}
	public void setFeed_idx(int feed_idx) {
		this.feed_idx = feed_idx;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getFeed_cont() {
		return feed_cont;
	}
	public void setFeed_cont(String feed_cont) {
		this.feed_cont = feed_cont;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getFeed_regdate() {
		return feed_regdate;
	}
	public void setFeed_regdate(String feed_regdate) {
		this.feed_regdate = feed_regdate;
	}
	public String getSphoto_name() {
		return sphoto_name;
	}
	public void setSphoto_name(String sphoto_name) {
		this.sphoto_name = sphoto_name;
	}
	@Override
	public String toString() {
		return "FeedVo [feed_idx=" + feed_idx + ", board_name=" + board_name + ", feed_cont=" + feed_cont + ", user_id="
				+ user_id + ", user_name=" + user_name + ", feed_regdate=" + feed_regdate + ", sphoto_name="
				+ sphoto_name + "]";
	}	
}

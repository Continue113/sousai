package com.baidu.ueditor.upload;

import com.baidu.ueditor.define.AppInfo;
import com.baidu.ueditor.define.BaseState;
import com.baidu.ueditor.define.State;
import com.baidu.ueditor.hunter.FileManager;

import java.io.File;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;

public class Uploader {
	private HttpServletRequest request = null;
	private Map<String, Object> conf = null;

	public Uploader(HttpServletRequest request, Map<String, Object> conf) {
		this.request = request;
		this.conf = conf;
	}

	public final State doExec() {

		String filedName = (String) this.conf.get("fieldName");
		String savePath = (String) this.conf.get("savePath");
		State state = null;
		
		//先检验目录下图片数量是否已超过最大图片数
		if (Integer.parseInt((String) conf.get("maxCount")) > FileManager
				.countFile((String) this.conf.get("dir"))) {
			if ("true".equals(this.conf.get("isBase64"))) {
				state = Base64Uploader.save(
						this.request.getParameter(filedName), this.conf);
			} else {
				state = BinaryUploader.save(this.request, this.conf);
			}
		} else {
			state = new BaseState(false, AppInfo.MAX_COUNT_IN_FOLDER);
		}

		return state;
	}
}

package com.baidu.ueditor.hunter;

import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.sousai.common.Constant;

import com.baidu.ueditor.PathFormat;
import com.baidu.ueditor.define.AppInfo;
import com.baidu.ueditor.define.BaseState;
import com.baidu.ueditor.define.MultiState;
import com.baidu.ueditor.define.State;

public class FileManager {

	private String dir = null;
	private String rootPath = null;
	private String[] allowFiles = null;
	private int count = 0;

	public FileManager(Map<String, Object> conf) {

		this.rootPath = (String) conf.get("rootPath");
		this.dir = this.rootPath + (String) conf.get("dir");
		this.allowFiles = this.getAllowFiles(conf.get("allowFiles"));
		this.count = (Integer) conf.get("count");

	}

	public static int countFile(String dir) {
		File fileDir = new File(dir);
		// State state = null;
		// if ( !dir.exists()) {
		if (!fileDir.exists() || !fileDir.isDirectory()) {
			// return new BaseState( false, AppInfo.NOT_EXIST );
			return 0;
		}

		// if ( !dir.isDirectory() ) {
		// return new BaseState( false, AppInfo.NOT_DIRECTORY );
		// }

		Collection<File> list = FileUtils.listFiles(fileDir, null, true);
		return list.size();
	}

	public State listFile(int index, String typeAndIdPath) {

		System.out.println("dir = " + dir);
		File dir = new File(this.dir + "/" + typeAndIdPath);
		State state = null;

		if (!dir.exists()) {
			return new BaseState(false, AppInfo.NOT_EXIST);
		}

		if (!dir.isDirectory()) {
			return new BaseState(false, AppInfo.NOT_DIRECTORY);
		}

		Collection<File> list = FileUtils.listFiles(dir, this.allowFiles, true);

		if (index < 0 || index > list.size()) {
			state = new MultiState(true);
		} else {
			Object[] fileList = Arrays.copyOfRange(list.toArray(), index, index
					+ this.count);
			state = this.getState(fileList);
		}

		state.putInfo("start", index);
		state.putInfo("total", list.size());

		return state;

	}

	public String getOneFile(String typeAndIdPath) {
		String url = null;

		System.out.println("dir = " + dir);
		File dir = new File(this.dir + "/" + typeAndIdPath);

		if (!dir.exists() || !dir.isDirectory()) {
			return Constant.ERROR;
		}

		Collection<File> list = FileUtils.listFiles(dir, this.allowFiles, true);
		Object[] fileList = Arrays.copyOfRange(list.toArray(), 0, 1);
		for (Object obj : fileList) {
			if (obj == null) {
				break;
			}
			File file = (File) obj;
			url = PathFormat.format(this.getPath(file));

		}

		return url;
	}

	private State getState(Object[] files) {

		MultiState state = new MultiState(true);
		BaseState fileState = null;

		File file = null;

		for (Object obj : files) {
			if (obj == null) {
				break;
			}
			file = (File) obj;
			fileState = new BaseState(true);
			fileState.putInfo("url", PathFormat.format(this.getPath(file)));
			System.out.println("getState url=" + fileState.toString());
			state.addState(fileState);
		}

		return state;

	}

	private String getPath(File file) {

		String path = file.getAbsolutePath();

		return path.replace(this.rootPath.replace("/", "\\"), "/");

	}

	private String[] getAllowFiles(Object fileExt) {

		String[] exts = null;
		String ext = null;

		if (fileExt == null) {
			return new String[0];
		}

		exts = (String[]) fileExt;

		for (int i = 0, len = exts.length; i < len; i++) {

			ext = exts[i];
			exts[i] = ext.replace(".", "");

		}

		return exts;

	}

}

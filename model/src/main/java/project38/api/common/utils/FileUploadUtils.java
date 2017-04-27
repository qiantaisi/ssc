package project38.api.common.utils;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/**
 * Created by Administrator on 2016/5/27.
 */
public class FileUploadUtils {

    private static Log log = LogFactory.getLog(FileUploadUtils.class);

    public static MultipartFile getFileFromRequest(HttpServletRequest request) throws Exception {
        // 转换为文件类型的request
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

        // 获取对应file对象
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        Iterator<String> fileIterator = multipartRequest.getFileNames();

        while (fileIterator.hasNext()) {
            String fileKey = fileIterator.next();
            log.debug("文件名为：" + fileKey);

            // 获取对应文件
            MultipartFile multipartFile = fileMap.get(fileKey);
            return multipartFile;
        }

        return null;
    }

    public static UploadFile saveFile(HttpServletRequest request) throws Exception {

        // 转换为文件类型的request
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

        // 获取对应file对象
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        Iterator<String> fileIterator = multipartRequest.getFileNames();

        while (fileIterator.hasNext()) {
            String fileKey = fileIterator.next();
            log.debug("文件名为：" + fileKey);

            // 获取对应文件
            MultipartFile multipartFile = fileMap.get(fileKey);

            if (multipartFile.getSize() != 0L) {
                // 调用saveImage方法保存
                UploadFile file = saveImage(multipartFile, request);
                return file;
            }
        }

        return null;
    }


    private static UploadFile saveImage(MultipartFile image, HttpServletRequest request) throws IOException {
        String savePath = request.getSession(false).getServletContext().getRealPath("/uploads");

        String originalFilename = image.getOriginalFilename();
        log.debug("文件原始名称为:" + originalFilename);

        String contentType = image.getContentType();
        String type = contentType.substring(contentType.indexOf("/") + 1);
        String fileName = DateFormatUtils.format(new Date(), "yyyyMMddHHmmss") + new Random().nextInt(100) + "." + type;

        // 封装了一个简单的file对象，增加了几个属性
        UploadFile file = new UploadFile(savePath, fileName, "uploads");
        file.setContentType(contentType);
        log.debug("文件保存路径：" + file.getSaveDirectory());

        // 通过org.apache.commons.io.FileUtils的writeByteArrayToFile对图片进行保存
        FileUtils.writeByteArrayToFile(file.getFile(), image.getBytes());

        return file;
    }

    public static class UploadFile {
        /**
         * 物理路径（目录），如：c:\wqwq
         */
        private String saveDirectory;

        /**
         * 文件名
         */
        private String fileName;

        /**
         * 文件类型
         */
        private String contentType;

        /**
         * 目录
         */
        private String prePath;

        /**
         * 文件绝对地址
         */
        private String completeSavePath;

        /**
         * 文件相对地址（根）
         */
        private String relativeSavePath;

        public UploadFile(String saveDirectory, String filesystemName, String relativeSavePath) {
            setSaveDirectory(saveDirectory);
            setFileName(filesystemName);
            setCompleteSavePath(getSaveDirectory() + "/" + getFileName());
            setRelativeSavePath(relativeSavePath + "/" + getFileName());
        }

        public String getFileName() {
            return fileName;
        }

        public String getSaveDirectory() {
            return saveDirectory;
        }

        public String getContentType() {
            return contentType;
        }

        public void setContentType(String contentType) {
            this.contentType = contentType;
        }

        public String getPrePath() {
            if (prePath == null) {
                return "";
            }
            return prePath;
        }

        public void setPrePath(String prePath) {
            this.prePath = prePath;
            setCompleteSavePath(prePath + getRelativeSavePath());
        }

        public String getCompleteSavePath() {
            return completeSavePath;
        }

        public void setCompleteSavePath(String completeSavePath) {
            this.completeSavePath = completeSavePath;
        }

        public String getRelativeSavePath() {
            return relativeSavePath;
        }

        public void setRelativeSavePath(String relativeSavePath) {
            this.relativeSavePath = relativeSavePath;
        }

        public void setSaveDirectory(String saveDirectory) {
            this.saveDirectory = saveDirectory;
        }

        public void setFileName(String fileName) {
            this.fileName = fileName;
        }

        public File getFile() {
            if (getSaveDirectory() == null || getFileName() == null) {
                return null;
            } else {
                return new File(getCompleteSavePath());
            }
        }
    }
}

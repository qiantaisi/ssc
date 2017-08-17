package project38.api.result;

import project38.api.common.result.CommonResult;

import javax.persistence.Id;
import java.util.Date;
import java.util.List;

/**
 * Created by java1 on 2017/7/14.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class ArticleResult extends CommonResult {

    private List<Article> articleList;

    private Article article;

    public List<Article> getArticleList() { return articleList; }

    public void setArticleList(List<Article> articleList) { this.articleList = articleList; }

    public Article getArticle() { return article; }

    public void setArticle(Article article) { this.article = article; }

    public static class Article {
        /**
         *  id
         */
        private Long id;
        /**
         * 标题
         */
        private String title;
        /**
         * 类型
         */
        private String name;
        /**
         * 关键词
         */
        private String crux;
        /**
         * 描述
         */
        private String remarks;
        /**
         * 内容
         */
        private String content;
        /**
         * 排序
         */
        private Integer sort;
        /**
         * 发布时间
         */
        private Date createTime;
        /**
         * 修改时间
         */
        private Date updateTime;
        /**
         * 类别
         */
        private Integer categoryId;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getCrux() {
            return crux;
        }

        public void setCrux(String crux) {
            this.crux = crux;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public Integer getSort() {
            return sort;
        }

        public void setSort(Integer sort) {
            this.sort = sort;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public Date getUpdateTime() {
            return updateTime;
        }

        public void setUpdateTime(Date updateTime) {
            this.updateTime = updateTime;
        }

        public Integer getCategoryId() { return categoryId; }

        public void setCategoryId(Integer categoryId) { this.categoryId = categoryId; }

        public String getName() { return name; }

        public void setName(String name) { this.name = name; }
    }

}

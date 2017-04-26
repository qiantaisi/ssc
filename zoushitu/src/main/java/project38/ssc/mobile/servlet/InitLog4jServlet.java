package project38.ssc.mobile.servlet;

import org.apache.log4j.PropertyConfigurator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 * Created by Administrator on 2016/4/10.
 */
public class InitLog4jServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void destroy() {
        super.destroy();
    }

    public InitLog4jServlet() {
        super();
    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    public void init() throws ServletException {
        String file = this.getInitParameter("log4j");//从web.xml配置读取，名字一定要和web.xml配置一致
        if (file != null) {
            PropertyConfigurator.configure(file);
        }
    }

//    @Override
//    public void init() throws ServletException {
//        super.init();
//        org.apache.ibatis.logging.LogFactory.useLog4JLogging();
//        System.out.println("************tell mybatis use log4j************");
//    }

}

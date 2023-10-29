package my.company.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "initFilter", urlPatterns = "/*")
public class initFilter extends HttpFilter implements Filter {


	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		log.info("초기화 필터 생성");
	}

	@Override
	public void destroy() {
		log.info("초기화 필터 파괴");
	}


	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		ServletContext application = request.getServletContext();

		String contextPath = ((HttpServletRequest)request).getContextPath();

		application.setAttribute("contextPath", contextPath);

		chain.doFilter(request, response);
	}




}

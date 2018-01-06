package com.shoppingmart.webConfig;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Locale;
import java.util.Properties;

import javax.naming.NamingException;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;
import javax.sql.DataSource;

import org.apache.taglibs.standard.tlv.JstlBaseTLV;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.VelocityException;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.MethodInvokingFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.format.FormatterRegistry;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.freemarker.FreeMarkerConfigurationFactoryBean;
import org.springframework.ui.velocity.VelocityEngineFactory;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.shoppingmart.converter.RoleToUserProfileConverter;



@EnableWebMvc
@Configuration
@EnableTransactionManagement
@ComponentScan({"com.shoppingmart.*"})
@Import({SecurityConfiguration.class})
@ImportResource(value={})
@PropertySource(value= {"classpath:conf/jdbc.properties","classpath:conf/ApplicationAuthTocken.properties"})
public class WebConfig extends WebMvcConfigurerAdapter{
	static final Logger logger = LoggerFactory.getLogger(WebConfig.class);

	
	private BCryptPasswordEncoder encoder;
	 @Autowired
	 private Environment environment;
	 
	 @Autowired
		RoleToUserProfileConverter roleToUserProfileConverter;
	
	 @Override
	public void configureContentNegotiation(final ContentNegotiationConfigurer configurer) {
	        // Turn off suffix-based content negotiation
	        configurer.favorPathExtension(false);
	    }
	@Bean
	public DataSource getGataSource() throws NamingException, SQLException{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.DriverClassName"));
		dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
		 System.out.println(dataSource.getConnection());
		return dataSource;
	}
	
	 @Bean
	    public ReloadableResourceBundleMessageSource messageSource(){
	        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
	        messageSource.setBasenames("classpath:i18n/static/admin/login/messages","classpath:i18n/static/admin/login/Login");
	        messageSource.setDefaultEncoding("UTF-8");
	        return messageSource;
	    }

	    @Bean
	    public CookieLocaleResolver localeResolver(){
	        CookieLocaleResolver localeResolver = new CookieLocaleResolver();
	        localeResolver.setDefaultLocale(Locale.ENGLISH);
	        localeResolver.setCookieName("my-locale-cookie");
	        localeResolver.setCookieMaxAge(3600);
	        return localeResolver;
	    }

	    @Bean
	    public LocaleChangeInterceptor localeInterceptor(){
	        LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
	        interceptor.setParamName("lang");
	        return interceptor;
	    }

	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(localeInterceptor());
	    }
	    //@Bean
	    public MethodInvokingFactoryBean methodInvokingFactoryBean() {
	       MethodInvokingFactoryBean methodInvokingFactoryBean = new MethodInvokingFactoryBean();
	       // methodInvokingFactoryBean.setStaticMethod("com.shoppingmart.entity.converter.EntityUtils.getUserEntity");
	       // methodInvokingFactoryBean.setStaticMethod("com.shoppingmart.entity.converter.EntityUtils.getUserEntity");
	        //methodInvokingFactoryBean.setArguments(new Object[]{User});

	        return methodInvokingFactoryBean;
	    }
	
	@Bean
	public InternalResourceViewResolver viewResolver(){
		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	/* @Bean(name = "homeViewController")
	    public ParameterizableViewController getHomeViewController() {
	        ParameterizableViewController viewController = new ParameterizableViewController();
	        viewController.setViewName("/product/home");
	        return viewController;
	    }
	 @Bean(name = "mensViewController")
	    public ParameterizableViewController getMensViewController() {
	        ParameterizableViewController viewController = new ParameterizableViewController();
	        viewController.setViewName("/product/mens");
	        return viewController;
	    }
	 @Bean(name = "womensViewController")
	    public ParameterizableViewController getwomensViewController() {
	        ParameterizableViewController viewController = new ParameterizableViewController();
	        viewController.setViewName("/product/womens");
	        return viewController;
	    }
		@Bean
	    public CommonRedirectUrlController welcome() {
	        return new CommonRedirectUrlController();
	    }
	    @Bean
	    public SimpleUrlHandlerMapping getUrlHandlerMapping() {
	        SimpleUrlHandlerMapping handlerMapping = new SimpleUrlHandlerMapping();
	        Properties mappings = new Properties();
	        //mappings.put("/about.htm", "homeViewController");
	        //mappings.put("/contact.htm", "homeViewController");
	        //mappings.put("/home.htm", "homeViewController");
	        //mappings.put("/icons.htm", "homeViewController");
	        mappings.put("/mens.htm", "mensViewController");
	       // mappings.put("/single.htm", "homeViewController");
	        mappings.put("/womens.htm", "womensViewController");
	        mappings.put("/typography.htm", "homeViewController");
	         
	        handlerMapping.setMappings(mappings);
	        return handlerMapping;
	    }*/
		@Bean
		 public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
		  return new PropertySourcesPlaceholderConfigurer();
		 }
	 private Properties hibernateProperties() {
	        Properties properties = new Properties();
	        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
	        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
	        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
	        properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
	        properties.put("hibernate.jdbc.batch_size", environment.getRequiredProperty("hibernate.jdbc.batch_size"));
	        return properties;        
	    }
	 
	 @Bean
	    public LocalSessionFactoryBean sessionFactory() throws NamingException, SQLException {
	        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
	        sessionFactory.setDataSource(getGataSource());
	        sessionFactory.setPackagesToScan(new String[] { "com.shoppingmart.entities"});
	        sessionFactory.setHibernateProperties(hibernateProperties());
	        return sessionFactory;
	     }
	 
	 
	 /**
	     * Configure Converter to be used.
	     * In our example, we need a converter to convert string values[Roles] to UserProfiles in newUser.jsp
	     */
	    @Override
	    public void addFormatters(FormatterRegistry registry) {
	        registry.addConverter(roleToUserProfileConverter);
	    }
	 @Bean
	 @Autowired
	  public HibernateTransactionManager transactionManager(SessionFactory s) {
	       HibernateTransactionManager txManager = new HibernateTransactionManager();
	       txManager.setSessionFactory(s);
	       return txManager;
	    }

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**").addResourceLocations("/images/");
		registry.addResourceHandler("/conf/**").addResourceLocations("/conf/");
		registry.addResourceHandler("/css/**").addResourceLocations("/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("/js/");
		registry.addResourceHandler("/less/**").addResourceLocations("/less/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("/fonts/");
		registry.addResourceHandler("/scss/**").addResourceLocations("/scss/");
		registry.addResourceHandler("/icons/**").addResourceLocations("/icons/");
		registry.addResourceHandler("/plugins/**").addResourceLocations("/plugins/");
		registry.addResourceHandler("/bootstrap-less/**").addResourceLocations("/bootstrap-less/");
	}
	@Bean(name="multipartResolver")
    public StandardServletMultipartResolver resolver(){
        return new StandardServletMultipartResolver();
    }
	/*@Bean
    public MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setMaxFileSize("128KB");
        factory.setMaxRequestSize("128KB");
        return factory.createMultipartConfig();
    }*/
	/**Optional. It's only required when handling '.' in @PathVariables which otherwise ignore everything after last '.' in @PathVaidables argument.
     * It's a known bug in Spring [https://jira.spring.io/browse/SPR-6164], still present in Spring 4.1.7.
     * This is a workaround for this issue.
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer matcher) {
        matcher.setUseRegisteredSuffixPatternMatch(true);
    }
    // Put Other Application configuration here.
    
    @Bean
    public JavaMailSender getMailSender() {
    	//encoder=getBCryptPasswordEncoder();
    	/*if(encoder.matches("123456", environment.getRequiredProperty("password"))){
    		System.out.println("<<<<<<<<<=====Matched Password=======>>>>>");
    	}*/
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        
        // Using gmail.
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("purusottam16@gmail.com");
        mailSender.setPassword("123456");
 
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", "true");
        javaMailProperties.put("mail.smtp.auth", "true");
        javaMailProperties.put("mail.transport.protocol", "smtp");
        javaMailProperties.put("mail.debug", "true");
 
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }
 
    /*
     * FreeMarker configuration.
     */
    @Bean
    public FreeMarkerConfigurationFactoryBean getFreeMarkerConfiguration() {
        FreeMarkerConfigurationFactoryBean bean = new FreeMarkerConfigurationFactoryBean();
        bean.setTemplateLoaderPath("classpath:/fmtemplates/");
        return bean;
    }
 
    /*
     * Velocity configuration.
     */
    @Bean
    public VelocityEngine getVelocityEngine() throws VelocityException, IOException {
        VelocityEngineFactory factory = new VelocityEngineFactory();
        Properties props = new Properties();
        props.put("resource.loader", "class");
        props.put("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
 
        factory.setVelocityProperties(props);
        return factory.createVelocityEngine();
    }
}

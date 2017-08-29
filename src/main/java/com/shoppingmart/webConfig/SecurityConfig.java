package com.shoppingmart.webConfig;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.shoppingmart.service.LogInService;


//@Configuration
//@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	static final Logger logger = LoggerFactory.getLogger(SecurityConfig.class);
	@Autowired
	private LogInService logInService;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		BCryptPasswordEncoder encoder = passwordEncoder();
		auth.userDetailsService(logInService);
		auth.authenticationProvider(authenticationProvider());
		/*auth.inMemoryAuthentication()
        .passwordEncoder(encoder)
        .withUser("Puru").password(encoder.encode("123")).roles("ADMIN");*/
	}

	
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
		authenticationProvider.setUserDetailsService(logInService);
		authenticationProvider.setPasswordEncoder(passwordEncoder());
		return authenticationProvider;
	}
	
	/*@Override
    protected void registerAuthentication(AuthenticationRegistry registry) throws Exception {
        BCryptPasswordEncoder encoder = passwordEncoder();
        registry
                .inMemoryAuthentication()
                    .passwordEncoder(encoder)
                    .withUser("user").password(encoder.encode("password")).roles("USER")
    }*/

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//http.csrf().disable();
		http.authorizeRequests().antMatchers("/login").permitAll();
		http.authorizeRequests().antMatchers("/", "/home").hasAnyAuthority("ADMIN","USER");
		http.authorizeRequests().antMatchers("/", "/add-document-*").hasAnyAuthority("ADMIN","USER");
		http.authorizeRequests().and().formLogin().loginProcessingUrl("/j_spring_security_check").loginPage("/login")
				.defaultSuccessUrl("/home").failureUrl("/login?error=true").usernameParameter("username")
				.passwordParameter("password").and().logout().logoutUrl("/j_spring_security_logout")
				.logoutSuccessUrl("/login");

	}

}

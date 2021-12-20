package com.Store.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private UserDetailsService loginServiceImpl;
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		// 123456 -> asdaaszxcsdas
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(12);
		return bCryptPasswordEncoder;
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(loginServiceImpl).passwordEncoder(passwordEncoder());
	}
	
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/css/**", "/img/**", "/js/**", "/templateAdmin/**", "/images/**");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors().disable().csrf().disable().authorizeRequests().antMatchers("/danh-sach-san-pham").permitAll().antMatchers("/tim-kiem").permitAll().antMatchers("/san-pham/**").permitAll()
		.antMatchers("/admin").hasRole("ADMIN").anyRequest().
		authenticated().and().formLogin().loginPage("/dang-nhap").loginProcessingUrl("/dang-nhap").defaultSuccessUrl("/admin/san-pham/danh-sach-san-pham").failureUrl("/dang-nhap?error=error").permitAll().
		and().logout().permitAll().and().exceptionHandling().accessDeniedPage("/dang-nhap?/error=deny");
	}
}

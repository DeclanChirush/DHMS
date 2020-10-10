package com.dhms.config;

import org.springframework.context.annotation.*;
import org.springframework.security.authentication.dao.*;
import org.springframework.security.config.annotation.authentication.builders.*;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.dhms.service.UserDetailsServiceImpl;
 
@Configuration
@EnableWebSecurity
public class UsersLoginSecurityConfig extends WebSecurityConfigurerAdapter {
 
    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }
     
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
     
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
         
        return authProvider;
    }
 
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }
 
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
           //.antMatchers("/").hasAnyAuthority("USER", "CREATOR", "EDITOR", "ADMIN")
        	//Ashan
            .antMatchers("/addEmployee/**").hasAnyAuthority("ADMIN", "EMPLOYEE")
            .antMatchers("/editEmployee/**").hasAnyAuthority("ADMIN", "EMPLOYEE")
            .antMatchers("/deleteEmployee/**").hasAuthority("ADMIN")
            
            //Eranga
            .antMatchers("/newPurchase/**").hasAnyAuthority("ADMIN", "PURCHASING")
            .antMatchers("/purchaseList/**").hasAnyAuthority("ADMIN", "PURCHASING")
            .antMatchers("/savePurchase/**").hasAnyAuthority("ADMIN", "PURCHASING")
            .antMatchers("/deletePurchase/**").hasAuthority("ADMIN")
            
            //lankeesh
            .antMatchers("/addTransaction/**").hasAnyAuthority("ADMIN", "ACCOUNTS")
            .antMatchers("/insertTransaction/**").hasAnyAuthority("ADMIN", "ACCOUNTS")
            .antMatchers("/editTransaction/**").hasAnyAuthority("ADMIN", "ACCOUNTS")
            .antMatchers("/deleteTransaction/**").hasAuthority("ADMIN")
            
            .antMatchers("/deleteAdvertisement/**").hasAnyAuthority("ADMIN")
            .antMatchers("/addAdvertisement/**").hasAnyAuthority("ADMIN")
            
            .anyRequest().authenticated()
            .and()
            .formLogin().permitAll()
            .and()
            .logout().permitAll()
            .and()
            .exceptionHandling().accessDeniedPage("/403error")
            ;
    }
}
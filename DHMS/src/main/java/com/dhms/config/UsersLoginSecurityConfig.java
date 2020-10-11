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
           //.antMatchers("/processRetreive").hasAuthority("ADMIN")
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
            .antMatchers("/deleteTransaction/**").hasAnyAuthority("ADMIN")
            
            //hirush
            .antMatchers("/deleteAdvertisement/**").hasAnyAuthority("ADMIN")
            .antMatchers("/addAdvertisement/**").hasAnyAuthority("ADMIN")
            
            //ravindu 
            //countable items
            .antMatchers("/addCountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/addCountableItemPage").hasAnyAuthority("ADMIN")
            .antMatchers("/getCountableItem").hasAnyAuthority("ADMIN","INVENTORY")
            .antMatchers("/retrieveCountableItem").hasAnyAuthority("ADMIN","INVENTORY")
            .antMatchers("/processRetreive").hasAnyAuthority("ADMIN", "INVENTORY")
            
            .antMatchers("replenishCountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/processReplenish").hasAnyAuthority("ADMIN")
            .antMatchers("/deleteCountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/countableItemDeleteConfirm").hasAnyAuthority("ADMIN")
            .antMatchers("/viewAllCountableItems").hasAnyAuthority("ADMIN","INVENTORY")
            
            .antMatchers("/countableItemsAdvanced").hasAnyAuthority("ADMIN")
            .antMatchers("/editCountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/processEditCountabltItem").hasAnyAuthority("ADMIN")
            
            //countable low stock
            .antMatchers("/viewCountableLowStock").hasAnyAuthority("ADMIN","INVENTORY")
            
            
            //uncountable items
            .antMatchers("/addUncountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/getUncountableItem").hasAnyAuthority("ADMIN", "INVENTORY")
            .antMatchers("/retrieveUncountableItem").hasAnyAuthority("ADMIN","INVENTORY")
            .antMatchers("/processRetrieveU").hasAnyAuthority("ADMIN", "INVENTORY")
            
            .antMatchers("/replenishUncountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/processReplenishU").hasAnyAuthority("ADMIN")
            .antMatchers("/deleteUncountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/uncountableItemDeleteConfirm").hasAnyAuthority("ADMIN")
            .antMatchers("/viewAllUncountableItems").hasAnyAuthority("ADMIN","INVENTORY")
            
            .antMatchers("/uncountableItemsAdvanced").hasAnyAuthority("ADMIN")
            .antMatchers("/editUncountableItem").hasAnyAuthority("ADMIN")
            .antMatchers("/processEditUncountabltItem").hasAnyAuthority("ADMIN")
            
            //uncountable low stock
            .antMatchers("/viewUncountableLowStock").hasAnyAuthority("ADMIN","INVENTORY")
            
            .anyRequest().authenticated()
            .and()
            .formLogin().permitAll()
            .and()
            .logout().permitAll()
            .and()
            .exceptionHandling().accessDeniedPage("/403error")
            .and().csrf().disable()
            ;
    }
}
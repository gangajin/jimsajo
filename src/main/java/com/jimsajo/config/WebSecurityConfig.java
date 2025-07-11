package com.jimsajo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.jimsajo.Service.CustomOAuth2UserService;
import com.jimsajo.config.auth.CustomAuthFailureHandler;
import com.jimsajo.config.auth.LoginSuccessHandler;

import jakarta.servlet.DispatcherType;

@Configuration
public class WebSecurityConfig {

    @Autowired
    private CustomOAuth2UserService customOAuth2UserService;
    @Autowired
    private LoginSuccessHandler loginSuccessHandler;
    @Autowired
    private CustomAuthFailureHandler failureHandler;
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return NoOpPasswordEncoder.getInstance(); // 보안상 매우 위험
//    }
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable())
            .cors(cors -> cors.disable())
            .authorizeHttpRequests(request -> request
                .dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()



                .requestMatchers("/", "/assets/**" ,"/section/**").permitAll()
                .requestMatchers("/login", "/loginProcess", "/join", "/save", "/board/**","/packagelist/country","/review/reviewList","/review/reviewDetail/**").permitAll()
                .requestMatchers("/css/**", "/js/**", "/images/**","/package/**", "/checkId","/packageList").permitAll()

               .requestMatchers("/newBoard", "/boardSave","/package","orders/orderList").hasRole("admin")
                .requestMatchers("/admin/**").hasRole("admin")
                .anyRequest().authenticated()
            )
            .formLogin(form -> form
            	    .loginPage("/login")
            	    .loginProcessingUrl("/loginProcess")
            	    .usernameParameter("mId")
            	    .passwordParameter("mPasswd")
            	    .successHandler(loginSuccessHandler)
            	    .failureHandler(failureHandler)
            	    .permitAll()
            	)
            .oauth2Login(oauth2 -> oauth2
                .loginPage("/login")
                .defaultSuccessUrl("/", true)
                .userInfoEndpoint(userInfo -> userInfo.userService(customOAuth2UserService))
            )
            .logout(logout -> logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("https://kauth.kakao.com/oauth/logout?client_id=6c52da1feead9245c519b251ac53d0fc&logout_redirect_uri=http://localhost:8080/login")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .permitAll()
            );

        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}

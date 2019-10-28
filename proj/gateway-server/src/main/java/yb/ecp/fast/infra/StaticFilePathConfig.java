package yb.ecp.fast.infra;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@RefreshScope
@Slf4j
@Configuration
public class StaticFilePathConfig implements WebMvcConfigurer {////implements WebMvcConfigurer //extends WebMvcConfigurationSupport

    @Value("${xgit.outsideStatic}")
    private String outsideStatic;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("file:" + outsideStatic);
    }

}
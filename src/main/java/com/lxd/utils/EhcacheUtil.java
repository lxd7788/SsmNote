package com.lxd.utils;

import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import java.net.URL;
import net.sf.ehcache.Cache;
/**
 * 
* @ClassName: EhcacheUtil
* @Description: ehcache缓存方法
* @author lxd
* @date 2019年1月28日
*
 */
public class EhcacheUtil {  
    private static final String path = "/ehcache-setting.xml";  
    private URL url;  
    private CacheManager manager;  
    private static EhcacheUtil ehCache;  
    private EhcacheUtil(String path) {  
        url = getClass().getResource(path);  
        manager = CacheManager.create(url);  
    }  
    public static EhcacheUtil getInstance() {  
        if (ehCache== null) {  
            ehCache= new EhcacheUtil(path);  
        }  
        return ehCache;  
    }  
    public void put(String cacheName, String key, Object value) {  
        Cache cache = manager.getCache(cacheName);  
        Element element = new Element(key, value);  
        cache.put(element);  
    }  
    public Object get(String cacheName, String key) {  
        Cache cache = manager.getCache(cacheName);  
        Element element = cache.get(key);  
        return element == null ? null : element.getObjectValue();  
    }  
    public Cache get(String cacheName) {  
        return manager.getCache(cacheName);  
    }  
    public void remove(String cacheName, String key) {  
        Cache cache = manager.getCache(cacheName);  
        cache.remove(key);  
    }  
  
}  

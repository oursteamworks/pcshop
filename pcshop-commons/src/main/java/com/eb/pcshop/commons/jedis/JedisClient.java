package com.eb.pcshop.commons.jedis;

import java.util.List;

/**
 * Created by xhj on 2018/4/24/024.
 */
public interface JedisClient {
    //封装String类型
    String set(String key,String value);
    String get(String key);
    Boolean exists(String key);
    Long expire(String key,int seconds);
    Long ttl(String key);
    Long incr(String key);
    Long del(String key);
    //封装Hash类型
    Long hset(String set,String field,String value);
    String hget(String key,String field);
    Long hdel(String key,String... field);
    Boolean hexists(String key,String filed);
    List<String> hvals(String key);
}

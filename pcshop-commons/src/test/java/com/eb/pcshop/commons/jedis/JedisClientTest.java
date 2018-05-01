package com.eb.pcshop.commons.jedis;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.*;

/**
 * Created by xhj on 2018/4/24/024.
 */

/*
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-*.xml")
public class JedisClientTest {

    @Autowired
    private JedisClient jedisClient;

    @Test
    public void testGet() throws Exception {
        System.out.println(jedisClient.get("name"));
        System.out.println(jedisClient.get("hibbit"));
        System.out.println(jedisClient.get("age"));
        System.out.println(jedisClient.get("key2"));
    }

    @Test
    public void testSet() throws Exception {
        jedisClient.set("age","81");

    }
    @Test
    public void test1() throws IOException {
        Set<HostAndPort> nodes=new HashSet<HostAndPort>();
        nodes.add(new HostAndPort("47.98.199.218",9007));
        nodes.add(new HostAndPort("47.98.199.218",9002));
        nodes.add(new HostAndPort("47.98.199.218",9003));
        nodes.add(new HostAndPort("47.98.199.218",9004));
        nodes.add(new HostAndPort("47.98.199.218",9005));
        nodes.add(new HostAndPort("47.98.199.218",9006));
        JedisCluster jedisCluster=new JedisCluster(nodes);
        String name = jedisCluster.get("name");
        String age = jedisCluster.get("age");
        String hibbit = jedisCluster.get("hibbit");
        String key2 = jedisCluster.get("key2");
        System.out.println(name);
        System.out.println(age);
        System.out.println(hibbit);
        System.out.println(key2);

        jedisCluster.close();

    }
}

*/

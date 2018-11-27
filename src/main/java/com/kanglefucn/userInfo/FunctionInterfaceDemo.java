package com.kanglefucn.userInfo;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹金
 * @date 创建时间：2018/11/26 0026
 */
public class FunctionInterfaceDemo {
    @FunctionalInterface
    interface Predicate<T> {
        boolean test(T t);
    }

    /**2
     * 执行Predicate判断
     *
     * @param age       年龄
     * @param predicate Predicate函数式接口
     * @return 返回布尔类型结果
     */
    public static boolean doPredicate(int age, Predicate<Integer> predicate) {
        return predicate.test(age);
    }

    public static void main(String[] args) {
        boolean isAdult = doPredicate(20, x -> x >= 18);
        System.out.println(isAdult);
        List list = new ArrayList();
        list.add(1);
        list.forEach(System.out::println);
    }
}
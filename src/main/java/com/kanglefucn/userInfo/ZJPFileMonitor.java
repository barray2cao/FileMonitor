package com.kanglefucn.userInfo;

import org.apache.commons.io.monitor.FileAlterationListener;
import org.apache.commons.io.monitor.FileAlterationMonitor;
import org.apache.commons.io.monitor.FileAlterationObserver;

import java.io.File;
import java.io.InputStream;
import java.util.Properties;

public class ZJPFileMonitor {

    FileAlterationMonitor monitor = null;

    private Long interval;

    public FileAlterationMonitor getMonitor() {
        return monitor;
    }

    public void setMonitor(FileAlterationMonitor monitor) {
        this.monitor = monitor;
    }

    public Long getInterval() {
        return interval;
    }

    public void setInterval(Long interval) {
        this.interval = interval;
    }

    public ZJPFileMonitor() throws Exception {
        if (interval == null) {
            interval = 5000L;
        }
        monitor = new FileAlterationMonitor(interval);
    }

    public void monitor(String path, FileAlterationListener listener) {
        FileAlterationObserver observer = new FileAlterationObserver(new File(path));
        monitor.addObserver(observer);
        observer.addListener(listener);
    }

    public void stop() throws Exception {
        monitor.stop();
    }

    public void start() throws Exception {
        monitor.start();
    }

    public static void main(String[] args) throws Exception {
        Properties prop = new Properties();
        InputStream stream = ZJPFileMonitor.class.getClassLoader().getResourceAsStream("application.properties");
        prop.load(stream);
        String listenerPath = prop.getProperty("listener.path");
        listenerPath = new String(listenerPath.getBytes("ISO-8859-1"), "gbk");
        System.out.println(listenerPath);
        ZJPFileMonitor m = new ZJPFileMonitor();
        m.monitor(listenerPath, new ZJPFileListener());
        m.start();
    }
}
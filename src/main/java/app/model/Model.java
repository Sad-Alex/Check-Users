package app.model;

import java.lang.ProcessBuilder;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;

public class Model {
    private static Model instance = new Model();
    private ArrayList<String> users;
    
    private Model() {
        users = new ArrayList<String>();
        try {
            UpdateUsers();
        } catch (IOException ex) {
            Thread.currentThread().interrupt();
        }
    }

    public static Model getInstance() {
        return instance;
    }
    
    public boolean contains (String user) {
        return users.contains(user);
    }

    public ArrayList<String> list () {
        return users;
    }

    public void UpdateUsers() throws IOException, UnsupportedEncodingException {
        ProcessBuilder processBuilder = new ProcessBuilder("net","user"); 
        processBuilder.redirectErrorStream(true); 

        users.clear();
        Process process = processBuilder.start();
        InputStream stdin = process.getInputStream();
        InputStreamReader isr = new InputStreamReader(stdin, "cp866");
        BufferedReader reader = new BufferedReader(isr);
        ArrayList<String> lines = new ArrayList<String>();
        String line;

        while ((line = reader.readLine()) != null) {
            lines.add(line);
        }

        for (int i = 4; i < lines.size() - 2; ++i) {
            for (String str : lines.get(i).split("\\s+")) {
                String utf8String = new String(str.getBytes(), "cp1251");
                users.add(utf8String);
            }
        }
    }
}

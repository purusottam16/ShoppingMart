package com.shoppingmart.quartz.itemReader;

import java.beans.XMLDecoder;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.support.IteratorItemReader;

import com.shoppingmart.model.User;

public class CustomerItemReader implements ItemReader<User> {

    private final String filename;

    private ItemReader<User> delegate;

    public CustomerItemReader(final String filename) {
        this.filename = filename;
    }

    @Override
    public User read() throws Exception {
        if (delegate == null) {
            delegate = new IteratorItemReader<User>(users());
        }
        return delegate.read();
    }

    private List<User> users() throws FileNotFoundException {
        try (XMLDecoder decoder = new XMLDecoder(new FileInputStream(filename))) {
            return (List<User>) decoder.readObject();
        }
    }
}
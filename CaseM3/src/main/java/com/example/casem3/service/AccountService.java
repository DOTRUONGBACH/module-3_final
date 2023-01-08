package com.example.casem3.service;

import com.example.casem3.dao.AccountDao;
import com.example.casem3.model.Account;

import java.util.List;

public class AccountService {
    public static Account checkAccount(String username, String password) {
        return AccountDao.checkAccount(username, password);
    }

    public static Account checkLogin(String username, String password) {
        return AccountDao.checkLogin(username, password);
    }

    public static void add(Account account) {
        AccountDao.insert(account);
    }
}

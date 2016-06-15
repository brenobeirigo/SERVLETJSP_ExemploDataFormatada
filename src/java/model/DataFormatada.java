/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author BBEIRIGO
 */
public class DataFormatada {

    private String dateFormat;
    private Calendar data;

    public String getDateFormat() {
        return dateFormat;
    }

    public void setDateFormat(String format) {
        this.dateFormat = format;
    }

    public DataFormatada() {
        data = Calendar.getInstance();
    }
 
    public String getData() {
        SimpleDateFormat f = new SimpleDateFormat(this.dateFormat);
        return f.format(data.getTime());
    }

    public void setData(Calendar data) {
        this.data = data;
    }
}

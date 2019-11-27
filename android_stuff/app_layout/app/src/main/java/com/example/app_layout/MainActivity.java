package com.example.app_layout;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    private int checkDigitSum(String zahl){

        int quersumme = 0;

        for (int i=0;i < zahl.length(); i++) {

            quersumme += (int)zahl.charAt(i)-48;

        }

    }
    public void dummyFunction(View view){
        String content = ((EditText)findViewById(R.id.eingabe)).getText().toString();
        checkDigitSum(content);

    }
}

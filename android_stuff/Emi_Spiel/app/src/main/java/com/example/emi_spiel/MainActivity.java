package com.example.emi_spiel;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Random;

public class MainActivity extends AppCompatActivity {
    int randomNumber;
    int limit=10;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Random r = new Random();
        randomNumber = r.nextInt();
    }

    public void checkNumber(View v){
        String inputString = ((EditText)findViewById(R.id.chooseNumber)).getText().toString();
        String output = "";

        if(!inputString.equals("")){
            int input = Integer.parseInt(inputString);
            if(input<randomNumber){
                output="Get Rekt!";
            } else if (input>randomNumber){
                output="Get Rekt! Zu hoch!";
            } else if (input==randomNumber){
                output="Outsmarted!";
            } else {
                output="Somewthing went wrong";
            }
        }
        ((TextView)findViewById(R.id.txtV_result)).setText(output);
        ((EditText)findViewById(R.id.chooseNumber)).setText("");
    }
}

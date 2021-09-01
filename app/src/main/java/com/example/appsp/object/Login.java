package com.example.appsp.object;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.appsp.MainActivity;
import com.example.appsp.R;

import java.util.HashMap;
import java.util.Map;

public class Login extends AppCompatActivity {

    EditText edtacount, edtpass;
    Button btnlogin;
    String username;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        init();
        btnlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getData();
            }
        });
    }

    public void init(){
        edtacount = findViewById(R.id.edtacount);
        edtpass = findViewById(R.id.edtpass);
        btnlogin = findViewById(R.id.btnlogin);
    }

    public void getData(){
        String url = "http://192.168.1.8/sanpham/taikhoan/login.php";
        username = edtacount.getText().toString().trim();
        String pass = edtpass.getText().toString().trim();

        if(!username.equals("") && !pass.equals("")){
            StringRequest request = new StringRequest(Request.Method.POST, url, new Response.Listener<String>() {
                @Override
                public void onResponse(String response) {
                    if (response.equalsIgnoreCase("1")) {
                        Toast.makeText(Login.this, "Xin Chào " + username, Toast.LENGTH_SHORT).show();
                        startActivity(new Intent(Login.this, MainActivity.class));
                        Log.d("main", username);
                    } else {
                        Toast.makeText(Login.this, "Sai Mật Khẩu Hoặc Tài Khoản", Toast.LENGTH_SHORT).show();
                    }
                }
            }, new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {
                    Log.d("main", error.toString());
                }
            }){
                @Nullable
                @Override
                protected Map<String, String> getParams() throws AuthFailureError {
                    Map<String, String> data = new HashMap<String, String>();
                    data.put("usernamer", username);
                    data.put("password", pass);
                    return data;
                }
            };

            Volley.newRequestQueue(Login.this).add(request);
        }


    }
}
package com.example.appsp.object;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.bumptech.glide.Glide;
import com.example.appsp.R;
import com.example.appsp.adapter.Adapter_ListSP;
import com.example.appsp.fragment.ListSPFragment;
import com.example.appsp.model.Sanpham;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Function extends AppCompatActivity implements View.OnClickListener{

    Button btnedit, btnupdate;
    EditText edttensp, edtpricesp;
    TextView txttilte;
    ImageView imgchose;
    List<Sanpham> listdata = new ArrayList<>();
    Adapter_ListSP adapter_listSP = new Adapter_ListSP(this, listdata);
    int Request_Code_iamge  = 1;
    Bitmap bitmap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.function);

        anhxa();
        imgchose.setOnClickListener(this);
        btnedit.setOnClickListener(this);
        btnupdate.setOnClickListener(this);


        Intent i = getIntent();
        Bundle data = i.getExtras();
        Sanpham sp = (Sanpham) data.getSerializable("image");

        txttilte.setText("Thông Tin Sản Phẩm");
        edttensp.setText(sp.getName());
        edtpricesp.setText(sp.getPrice());
        Glide.with(this).load(sp.getImage()).into(imgchose);


    }

    private void anhxa() {
        btnedit    = findViewById(R.id.btnedit);
        btnupdate    = findViewById(R.id.btnupdate);
        edttensp   = findViewById(R.id.edttensp);
        imgchose   = findViewById(R.id.choeseimg);
        edtpricesp = findViewById(R.id.edtpricesp);
        txttilte   = findViewById(R.id.txttitlt);

        setEnablediss(false);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.choeseimg:
                selectimg();
                setEnablediss(true);
                break;
            case R.id.btnedit:
                txttilte.setText("Chỉnh Sửa Sản Phẩm");
                setEnablediss(true);
                btnedit.setEnabled(false);
                break;
            case R.id.btnupdate:
                uploadimage();
                setEnablediss(false);
                btnedit.setEnabled(true);
                break;
            default:
                break;
        }
    }
    public void setEnablediss(Boolean b){
        edttensp.setEnabled(b);
        edtpricesp.setEnabled(b);
        imgchose.setEnabled(b);
        btnupdate.setEnabled(b);
    }

    private void uploadimage() {
        String url = "http://192.168.1.8/sanpham/upload.php";
        StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        if(response.equalsIgnoreCase("1")){
                            Toast.makeText(Function.this, "Lưu Thành Công", Toast.LENGTH_SHORT).show();
                        }else {
                            Toast.makeText(Function.this, "Lưu Thất Bại", Toast.LENGTH_SHORT).show();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                }){
            @Nullable
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                String name  = edttensp.getText().toString().trim();
                String image = getStringimage(bitmap);
                String price = edtpricesp.getText().toString().trim();

                Map<String, String> param = new HashMap<String, String>();

                param.put("TEN", name);
                param.put("HINH", image);
                param.put("GIA", price);
                return param;
            }
        };
        Volley.newRequestQueue(this).add(stringRequest);

    }

    public String getStringimage(Bitmap bm){
        ByteArrayOutputStream ba = new ByteArrayOutputStream();
        bm.compress(Bitmap.CompressFormat.PNG, 100, ba);
        byte[] imagebutye = ba.toByteArray();
        String encode = Base64.encodeToString(imagebutye, Base64.DEFAULT);
        return encode;
    }

    private void selectimg(){
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction(Intent.ACTION_GET_CONTENT);// Action_pick
        startActivityForResult(intent, Request_Code_iamge);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        if(requestCode == Request_Code_iamge && resultCode == RESULT_OK && data != null){
            Uri uri = data.getData();

            try {
                InputStream inputStream = getContentResolver().openInputStream(uri);
                bitmap = BitmapFactory.decodeStream(inputStream);
                imgchose.setImageBitmap(bitmap);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }

        super.onActivityResult(requestCode, resultCode, data);
    }
}
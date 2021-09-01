package com.example.appsp.object;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.appsp.MainActivity;
import com.example.appsp.R;
import com.example.appsp.UrlServer;
import com.example.appsp.adapter.Adapter_ListSP;
import com.example.appsp.adapter.LoaiAdapter;
import com.example.appsp.fragment.ListSPFragment;
import com.example.appsp.model.Loaisp;
import com.example.appsp.model.Sanpham;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Upload extends AppCompatActivity implements View.OnClickListener{

    Button btnadd, btnchitiet;
    EditText edttensp, edtpricesp, edtchatlieu, edtxuatxu, edtnoidung;
    TextView txttilte;
    ImageView imgchose, img_ct;
    List<Sanpham> listdata = new ArrayList<>();
    Adapter_ListSP adapter_listSP = new Adapter_ListSP(this, listdata);
    int Request_Code_iamge  = 1;
    Bitmap bitmap;
    LinearLayout viewlinear_sp, viewlinear_ct;
    Spinner spinner;
    ArrayList<Loaisp> arrloaisp;
    LoaiAdapter loaiAdapter;
    UrlServer urlServer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_upload);

        anhxa();
        imgchose.setOnClickListener(this);
        img_ct.setOnClickListener(this);

        btnadd.setOnClickListener(this);
        btnchitiet.setOnClickListener(this);

    }

    private void anhxa() {
        btnadd      = findViewById(R.id.btnadd);
        btnchitiet  = findViewById(R.id.btn_save);

        edttensp    = findViewById(R.id.edttensp);
        edtpricesp  = findViewById(R.id.edtpricesp);
        edtchatlieu = findViewById(R.id.edtmaterial);
        edtxuatxu   = findViewById(R.id.edtorigin);
        edtnoidung  = findViewById(R.id.edtcontent);

        imgchose    = findViewById(R.id.choeseimg);
        img_ct      = findViewById(R.id.img_viewct);

        viewlinear_ct = findViewById(R.id.linear_chitiet);
        viewlinear_sp = findViewById(R.id.linear_sanpham);

        spinner = findViewById(R.id.spinner);

        arrloaisp = new ArrayList<>();
        loaiAdapter = new LoaiAdapter(arrloaisp, this);

        spinner.setAdapter(loaiAdapter);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.choeseimg:
                selectimg();
                break;
            case R.id.btnadd:
                viewlinear_sp.setVisibility(View.INVISIBLE);
                viewlinear_ct.setVisibility(View.VISIBLE);
                edttensp.setText("");
                edtpricesp.setText("");
                break;
            case R.id.img_viewct:
                selectimg();
                break;
            case R.id.btn_save:
                addspct();
                adapter_listSP.notifyDataSetChanged();
                viewlinear_sp.setVisibility(View.VISIBLE);
                viewlinear_ct.setVisibility(View.INVISIBLE);
                edtchatlieu.setText("");
                edtxuatxu.setText("");
                edtnoidung.setText("");
                break;
            case R.id.spinner:
                Listloaisp();
                break;
            default:break;
        }
    }

    private void Listloaisp(){
        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, urlServer.loaisanpham, null,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        try {
                            for (int i = 0; i < response.length(); i++) {
                                JSONObject object = response.getJSONObject(i);

                                Loaisp loaisp = new Loaisp();

                                loaisp.setID(object.getInt("id"));

                                arrloaisp.add(loaisp);
                                loaiAdapter.notifyDataSetChanged();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                });
        Volley.newRequestQueue(this).add(request);
    }

    private void addspct() {
        String url = "http://192.168.1.8/sanpham/upload.php";
        StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        String s = response.trim();

                        if(s.equalsIgnoreCase("Loi")){
                            Toast.makeText(Upload.this, "Thêm Thất Bại", Toast.LENGTH_SHORT).show();
                        }else {
                            Toast.makeText(Upload.this, "Thêm Thành Công", Toast.LENGTH_SHORT).show();
                            adapter_listSP.notifyDataSetChanged();
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
                int nameimg  = 0;
                int nameimg1 = 0;
                int sonn = 999999999;
                String namesp = edttensp.getText().toString().trim();
                String image  = getStringimage(bitmap);
                String price  = edtpricesp.getText().toString().trim();

                String origin   = edtxuatxu.getText().toString().trim();
                String Material = edtchatlieu.getText().toString().trim();
                String Content  = edtnoidung.getText().toString().trim();

                Random rd = new Random();
                nameimg = (rd.nextInt(sonn));
                nameimg1 = (rd.nextInt(sonn));
                Map<String, String> param = new HashMap<String, String>();
                //bảng sản phẩm
                param.put("TENSP", namesp);
                param.put("TEN", nameimg + "");
                param.put("HINH", image);
                param.put("GIA", price);
                param.put("MOTA", price);
                param.put("IDSP", spinner + "");
                ///bảng chi tiết
//                param.put("XUATXU", origin);
//                param.put("CHATLIEU", Material);
//                param.put("NOIDUNG", Content);
//                param.put("TENCT", nameimg1 + "");
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
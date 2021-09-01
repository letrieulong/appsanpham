package com.example.appsp.adapter;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.icu.text.DecimalFormat;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.PopupMenu;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.bumptech.glide.Glide;
import com.example.appsp.R;
import com.example.appsp.model.Sanpham;
import com.example.appsp.object.Function;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Adapter_ListSP extends RecyclerView.Adapter<Adapter_ListSP.ViewHolder>{

    Context context;
    List<Sanpham> list_sp;
    Sanpham sp = new Sanpham();

    public Adapter_ListSP(Context context, List<Sanpham> list_sp) {
        this.context = context;
        this.list_sp = list_sp;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View view = inflater.inflate(R.layout.view_listsp, parent, false);
        return new ViewHolder(view);
    }



    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int i) {
        holder.txtname_sp.setText(list_sp.get(i).getName());
        holder.txtprice_sp.setText(list_sp.get(i).getPrice());
        Glide.with(context).load(list_sp.get(i).getImage()).into(holder.img_sp);
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
//        holder.txtprice_sp.setText("Giá : " + decimalFormat.format(list_sp.get(i).getPrice() + "Đ"));

        holder.btnmore.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                PopupMenu popupMenu = new PopupMenu(context, v);
                popupMenu.inflate(R.menu.popumerecy);
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                    @Override
                    public boolean onMenuItemClick(MenuItem item) {
                        switch (item.getItemId()){
                            case R.id.itemedit:
                                Toast.makeText(context, "Bạn Chọn Edit", Toast.LENGTH_SHORT).show();
                                Bundle b = new Bundle();
                                b.putSerializable("image", list_sp.get(i));
                                Intent intent = new Intent(context, Function.class);
                                intent.putExtras(b);
                                context.startActivity(intent);
                                return true;
                            case R.id.itemdelete:
                                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                                builder.setTitle("Thông Báo").setMessage("Bạn Có Muốn Xóa Hay Không");

                                builder.setPositiveButton("Có", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {

                                        String url = "http://192.168.1.8/sanpham/delete.php";
                                        StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
                                                new Response.Listener<String>() {
                                                    @Override
                                                    public void onResponse(String response) {
                                                        if (response.equalsIgnoreCase("1")){
                                                            Toast.makeText(context, "Xóa Thành Công", Toast.LENGTH_SHORT).show();
                                                            list_sp.remove(list_sp.get(i));
                                                            notifyDataSetChanged();
                                                        }else {
                                                            Toast.makeText(context, "Xóa Thất Bại", Toast.LENGTH_SHORT).show();
                                                        }
                                                    }
                                                },
                                                new Response.ErrorListener() {
                                                    @Override
                                                    public void onErrorResponse(VolleyError error) {
                                                        Toast.makeText(context, "Kết Nối Thất Bại", Toast.LENGTH_SHORT).show();
                                                    }
                                                }){
                                            @Nullable
                                            @Override
                                            protected Map<String, String> getParams() throws AuthFailureError {
                                                Map<String, String> data = new HashMap<String, String>();
                                                data.put("ID", String.valueOf(list_sp.get(i).getID()));
                                                return data;
                                            }
                                        };
                                        Volley.newRequestQueue(context).add(stringRequest);
                                        notifyDataSetChanged();
                                    }
                                });
                                builder.setNegativeButton("Không", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                       dialog.cancel();
                                    }
                                });
                                AlertDialog alertDialog = builder.create();
                                alertDialog.show();

                                return true;
                            default:return false;
                        }

                    }
                });
                popupMenu.show();
            }
        });


        holder.vv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Bundle b = new Bundle();
                b.putSerializable("image", list_sp.get(i));
                Intent intent = new Intent(context, Function.class);
                intent.putExtras(b);
                v.getContext().startActivity(intent);
            }
        });
    }

    @Override
    public int getItemCount() {
        return list_sp.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{
        View vv;
        ImageView img_sp;
        TextView txtname_sp;
        TextView txtprice_sp;
        Button btnmore;
        public ViewHolder(@NonNull View view) {
            super(view);
            img_sp = view.findViewById(R.id.img_sp);
            txtname_sp = view.findViewById(R.id.txtname_sp);
            txtprice_sp = view.findViewById(R.id.txtprice_sp);
            btnmore = view.findViewById(R.id.btnmore);
            vv = view;
        }

    }

    public void delete(int i){
        list_sp.remove(i);
        notifyDataSetChanged();
    }
}

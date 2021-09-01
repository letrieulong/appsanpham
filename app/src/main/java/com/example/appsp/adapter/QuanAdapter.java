package com.example.appsp.adapter;

import android.content.Context;
import android.content.Intent;
import android.icu.text.DecimalFormat;
import android.icu.text.NumberFormat;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Half;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.appsp.R;
import com.example.appsp.model.Sanpham;
import com.example.appsp.object.ChiTiet;

import java.math.RoundingMode;
import java.util.List;
import java.util.Locale;

public class QuanAdapter extends RecyclerView.Adapter<QuanAdapter.ViewHodel> {
    Context context;
    List<Sanpham> listsp;

    public QuanAdapter(Context context, List<Sanpham> listsp) {
        this.context = context;
        this.listsp = listsp;
    }

    @NonNull
    @Override
    public ViewHodel onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View view = inflater.inflate(R.layout.listquan, parent, false);
        return new ViewHodel(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHodel viewHodel, int i) {
        viewHodel.txtgiaquan.setText(numberCurrenFormat(listsp.get(i).getPrice()) + "đ");
        viewHodel.txtTitlequan.setMaxLines(2);
        viewHodel.txtTitlequan.setEllipsize(TextUtils.TruncateAt.END);
        viewHodel.txtTitlequan.setText(listsp.get(i).getName());
        Glide.with(context)
                .load(listsp.get(i).getImage())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHodel.imgviewquan);

        viewHodel.vv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Bundle b = new Bundle();
                b.putSerializable("image", listsp.get(i));
                Intent intent = new Intent(context, ChiTiet.class);
                intent.putExtras(b);
                v.getContext().startActivity(intent);
            }
        });
    }

    @Override
    public int getItemCount() {
        return listsp.size();
    }

    public class ViewHodel extends RecyclerView.ViewHolder{
        Toolbar toolbar;
        TextView txtgiaquan;
        TextView txtTitlequan;
        ImageView imgviewquan;
        View vv;
        public ViewHodel(@NonNull View view) {
            super(view);
            imgviewquan = view.findViewById(R.id.imgquan);
            txtgiaquan = view.findViewById(R.id.txtgiaspquan);
            txtTitlequan = view.findViewById(R.id.txttenspquan);
            vv = view;
        }
    }
    public String numberCurrenFormat(String number){
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        return decimalFormat.format(Double.parseDouble(number));
    }
}

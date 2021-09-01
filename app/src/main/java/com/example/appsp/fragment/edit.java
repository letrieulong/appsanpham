package com.example.appsp.fragment;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.example.appsp.R;
import com.example.appsp.adapter.Adapter_ListSP;
import com.example.appsp.interfaces.Data_GET;
import com.example.appsp.model.Sanpham;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class edit extends Fragment implements Data_GET {
    RecyclerView recycler_listsp;
    Adapter_ListSP adapter_sp;
    List<Sanpham> list_sp = new ArrayList<>();
    View view;
    public edit() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_list_s_p, container, false);
        anhxa();

        adapter_sp = new Adapter_ListSP(getContext(), list_sp);
        GridLayoutManager layoutManager = new GridLayoutManager( getActivity(),2, GridLayoutManager.VERTICAL, false);
        recycler_listsp.setLayoutManager(layoutManager);
        recycler_listsp.setAdapter(adapter_sp);

        GetData();

        return view;
    }

    public void anhxa(){
        recycler_listsp = view.findViewById(R.id.recycler_listsp);
    }

    @Override
    public void GetData() {
        String url = "http://192.168.1.8/sanpham/outlist.php";

        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, url, null,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        try {
                            for (int i = 0; i < response.length(); i++) {
                                JSONObject object = response.getJSONObject(i);
                                Sanpham sp = new Sanpham();

                                sp.setID(object.getInt("ID"));
                                sp.setImage(object.getString("Urlimg"));
                                sp.setName(object.getString("Name"));
                                sp.setPrice(object.getString("Price"));

                                list_sp.add(sp);
                                adapter_sp.notifyDataSetChanged();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("Main", error.toString());
                    }
                });
        Volley.newRequestQueue(getActivity()).add(request);
    }
}


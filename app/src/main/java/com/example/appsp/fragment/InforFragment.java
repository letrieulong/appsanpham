package com.example.appsp.fragment;

import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import com.example.appsp.R;
import com.example.appsp.adapter.Viewpage_adapter_tab;
import com.example.appsp.object.Login;
import com.google.android.material.tabs.TabLayout;

import de.hdodenhof.circleimageview.CircleImageView;

public class InforFragment extends Fragment{
    TabLayout tabLayout;
    ViewPager viewPager;
    Button btnloginfrag, btnregisterfrag;
    ImageButton imgfraggh;
    CircleImageView imguser;
    Viewpage_adapter_tab adapter_tab;
    Toolbar toolbar;
    View view;
    public InforFragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_infor, container, false);

        anhxa();
        addfragment();
        checkonclick();
        return view;
    }

    private void checkonclick() {
        imgfraggh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            }
        });


    }

    private boolean checklogin(boolean b) {
        startActivity(new Intent(getActivity(), Login.class));
        return b;
    }

    public void addfragment(){
        adapter_tab = new Viewpage_adapter_tab(getParentFragmentManager(), FragmentPagerAdapter.BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT);
        adapter_tab.addFragment(new Tap_Fragment(), "Thôn Tin");
        adapter_tab.addFragment(new Tap_1_Fragment(), "Mua Lại");
        viewPager.setAdapter(adapter_tab);
        tabLayout.setupWithViewPager(viewPager);
    }

    public void anhxa(){
        tabLayout       = view.findViewById(R.id.tablayoutfrag);
        viewPager       = view.findViewById(R.id.viewpagefrag);
        btnloginfrag    = view.findViewById(R.id.btnloginfrag);
        btnregisterfrag = view.findViewById(R.id.btnregisterfrag);
        imgfraggh       = view.findViewById(R.id.imgbtnghfrag);
        imguser         = view.findViewById(R.id.imguserfrag);
    }


}
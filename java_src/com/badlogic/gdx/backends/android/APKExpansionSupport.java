package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.util.Vector;
/* loaded from: classes.dex */
public class APKExpansionSupport {
    public static ZipResourceFile getResourceZipFile(String[] strArr) {
        ZipResourceFile zipResourceFile = null;
        for (String str : strArr) {
            if (zipResourceFile == null) {
                zipResourceFile = new ZipResourceFile(str);
            } else {
                zipResourceFile.m24288a(str);
            }
        }
        return zipResourceFile;
    }

    /* renamed from: a */
    public static String[] m24337a(Context context, int i, int i2) {
        String packageName = context.getPackageName();
        Vector vector = new Vector();
        if (Environment.getExternalStorageState().equals("mounted")) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            File file = new File(externalStorageDirectory.toString() + "/Android/obb/" + packageName);
            if (file.exists()) {
                if (i > 0) {
                    String str = file + File.separator + "main." + i + "." + packageName + ".obb";
                    if (new File(str).isFile()) {
                        vector.add(str);
                    }
                }
                if (i2 > 0) {
                    String str2 = file + File.separator + "patch." + i2 + "." + packageName + ".obb";
                    if (new File(str2).isFile()) {
                        vector.add(str2);
                    }
                }
            }
        }
        String[] strArr = new String[vector.size()];
        vector.toArray(strArr);
        return strArr;
    }

    public static ZipResourceFile getAPKExpansionZipFile(Context context, int i, int i2) {
        return getResourceZipFile(m24337a(context, i, i2));
    }
}

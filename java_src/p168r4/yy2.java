package p168r4;

import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import p026c4.C1052m;
/* renamed from: r4.yy2 */
/* loaded from: classes2.dex */
public final class yy2 {
    /* renamed from: b */
    public static boolean m4530b(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                C1052m.m24745a(fileOutputStream2);
                return true;
            } catch (IOException unused) {
                fileOutputStream = fileOutputStream2;
                C1052m.m24745a(fileOutputStream);
                return false;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                C1052m.m24745a(fileOutputStream);
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: d */
    public static File m4528d(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static File m4531a(String str, String str2, File file) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return new File(m4529c(str, file), str2);
        }
        return null;
    }

    /* renamed from: c */
    public static File m4529c(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        m4528d(file2, false);
        return file2;
    }

    /* renamed from: e */
    public static boolean m4527e(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            z = true;
            for (File file2 : listFiles) {
                if (file2 != null && m4527e(file2) && z) {
                    z = true;
                } else {
                    z = false;
                }
            }
        } else {
            z = true;
        }
        if (file.delete() && z) {
            return true;
        }
        return false;
    }
}

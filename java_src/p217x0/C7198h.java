package p217x0;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import p209w0.AbstractC7114j;
/* renamed from: x0.h */
/* loaded from: classes.dex */
public class C7198h {

    /* renamed from: a */
    public static final String f36500a = AbstractC7114j.m2489f("WrkDbPathHelper");

    /* renamed from: b */
    public static final String[] f36501b = {"-journal", "-shm", "-wal"};

    /* renamed from: b */
    public static File m2179b(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }

    /* renamed from: c */
    public static File m2178c(Context context, String str) {
        File noBackupFilesDir;
        noBackupFilesDir = context.getNoBackupFilesDir();
        return new File(noBackupFilesDir, str);
    }

    /* renamed from: d */
    public static String m2177d() {
        return "androidx.work.workdb";
    }

    /* renamed from: a */
    public static File m2180a(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return m2179b(context);
        }
        return m2178c(context, "androidx.work.workdb");
    }

    /* renamed from: f */
    public static Map<File, File> m2175f(Context context) {
        File m2179b;
        File m2180a;
        String[] strArr;
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(m2179b(context), m2180a(context));
            for (String str : f36501b) {
                hashMap.put(new File(m2179b.getPath() + str), new File(m2180a.getPath() + str));
            }
        }
        return hashMap;
    }

    /* renamed from: e */
    public static void m2176e(Context context) {
        String format;
        File m2179b = m2179b(context);
        if (Build.VERSION.SDK_INT >= 23 && m2179b.exists()) {
            AbstractC7114j.m2491c().mo2488a(f36500a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
            Map<File, File> m2175f = m2175f(context);
            for (File file : m2175f.keySet()) {
                File file2 = m2175f.get(file);
                if (file.exists() && file2 != null) {
                    if (file2.exists()) {
                        AbstractC7114j.m2491c().mo2484h(f36500a, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                    }
                    if (file.renameTo(file2)) {
                        format = String.format("Migrated %s to %s", file, file2);
                    } else {
                        format = String.format("Renaming %s to %s failed", file, file2);
                    }
                    AbstractC7114j.m2491c().mo2488a(f36500a, format, new Throwable[0]);
                }
            }
        }
    }
}

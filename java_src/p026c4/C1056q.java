package p026c4;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.RecentlyNullable;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import p220x3.C7297q;
/* renamed from: c4.q */
/* loaded from: classes.dex */
public class C1056q {

    /* renamed from: a */
    public static String f2959a;

    /* renamed from: b */
    public static int f2960b;

    @RecentlyNullable
    /* renamed from: a */
    public static String m24728a() {
        BufferedReader bufferedReader;
        if (f2959a == null) {
            if (f2960b == 0) {
                f2960b = Process.myPid();
            }
            int i = f2960b;
            String str = null;
            str = null;
            str = null;
            BufferedReader bufferedReader2 = null;
            if (i > 0) {
                try {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append("/proc/");
                    sb.append(i);
                    sb.append("/cmdline");
                    String sb2 = sb.toString();
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    bufferedReader = new BufferedReader(new FileReader(sb2));
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                } catch (IOException unused) {
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    String readLine = bufferedReader.readLine();
                    C7297q.m1883j(readLine);
                    str = readLine.trim();
                } catch (IOException unused2) {
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader;
                    C1052m.m24745a(bufferedReader2);
                    throw th;
                }
                C1052m.m24745a(bufferedReader);
            }
            f2959a = str;
        }
        return f2959a;
    }
}

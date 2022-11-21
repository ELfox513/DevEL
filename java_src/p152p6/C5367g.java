package p152p6;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: p6.g */
/* loaded from: classes2.dex */
public class C5367g {

    /* renamed from: c */
    public static C5367g f19972c;

    /* renamed from: d */
    public static final SimpleDateFormat f19973d = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: a */
    public final SharedPreferences f19974a;

    /* renamed from: b */
    public final SharedPreferences f19975b;

    /* renamed from: c */
    public synchronized boolean m13391c(long j) {
        return m13390d("fire-global", j);
    }

    /* renamed from: d */
    public synchronized boolean m13390d(String str, long j) {
        if (this.f19974a.contains(str)) {
            if (m13392b(this.f19974a.getLong(str, -1L), j)) {
                this.f19974a.edit().putLong(str, j).apply();
                return true;
            }
            return false;
        }
        this.f19974a.edit().putLong(str, j).apply();
        return true;
    }

    /* renamed from: a */
    public static synchronized C5367g m13393a(Context context) {
        C5367g c5367g;
        synchronized (C5367g.class) {
            if (f19972c == null) {
                f19972c = new C5367g(context);
            }
            c5367g = f19972c;
        }
        return c5367g;
    }

    /* renamed from: b */
    public static boolean m13392b(long j, long j2) {
        Date date = new Date(j);
        Date date2 = new Date(j2);
        SimpleDateFormat simpleDateFormat = f19973d;
        return !simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    public C5367g(Context context) {
        this.f19974a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.f19975b = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }
}

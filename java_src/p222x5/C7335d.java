package p222x5;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p196u5.C6930f;
/* renamed from: x5.d */
/* loaded from: classes2.dex */
public class C7335d {

    /* renamed from: a */
    public final Float f36824a;

    /* renamed from: b */
    public final boolean f36825b;

    /* renamed from: a */
    public static C7335d m1828a(Context context) {
        Float f = null;
        boolean z = false;
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                z = m1824e(registerReceiver);
                f = m1825d(registerReceiver);
            }
        } catch (IllegalStateException e) {
            C6930f.m3016f().m3017e("An error occurred getting battery state.", e);
        }
        return new C7335d(f, z);
    }

    /* renamed from: e */
    public static boolean m1824e(Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        if (intExtra == -1) {
            return false;
        }
        return intExtra == 2 || intExtra == 5;
    }

    /* renamed from: b */
    public Float m1827b() {
        return this.f36824a;
    }

    /* renamed from: d */
    public static Float m1825d(Intent intent) {
        int intExtra = intent.getIntExtra("level", -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra != -1 && intExtra2 != -1) {
            return Float.valueOf(intExtra / intExtra2);
        }
        return null;
    }

    /* renamed from: c */
    public int m1826c() {
        Float f;
        if (this.f36825b && (f = this.f36824a) != null) {
            if (f.floatValue() < 0.99d) {
                return 2;
            }
            return 3;
        }
        return 1;
    }

    public C7335d(Float f, boolean z) {
        this.f36825b = z;
        this.f36824a = f;
    }
}

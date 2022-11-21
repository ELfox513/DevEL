package p018b5;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import p172s.C6565k;
/* renamed from: b5.e6 */
/* loaded from: classes2.dex */
public final class C0630e6 implements InterfaceC0579b6 {

    /* renamed from: c */
    public static C0630e6 f1800c;

    /* renamed from: a */
    public final Context f1801a;

    /* renamed from: b */
    public final ContentObserver f1802b;

    public C0630e6() {
        this.f1801a = null;
        this.f1802b = null;
    }

    public C0630e6(Context context) {
        this.f1801a = context;
        C0613d6 c0613d6 = new C0613d6(this, null);
        this.f1802b = c0613d6;
        context.getContentResolver().registerContentObserver(C0850r5.f2239a, true, c0613d6);
    }

    /* renamed from: c */
    public final /* synthetic */ String m26027c(String str) {
        return C0850r5.m25434a(this.f1801a.getContentResolver(), str, null);
    }

    /* renamed from: a */
    public static C0630e6 m26029a(Context context) {
        C0630e6 c0630e6;
        C0630e6 c0630e62;
        synchronized (C0630e6.class) {
            if (f1800c == null) {
                if (C6565k.m3908b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    c0630e62 = new C0630e6(context);
                } else {
                    c0630e62 = new C0630e6();
                }
                f1800c = c0630e62;
            }
            c0630e6 = f1800c;
        }
        return c0630e6;
    }

    /* renamed from: d */
    public static synchronized void m26026d() {
        Context context;
        synchronized (C0630e6.class) {
            C0630e6 c0630e6 = f1800c;
            if (c0630e6 != null && (context = c0630e6.f1801a) != null && c0630e6.f1802b != null) {
                context.getContentResolver().unregisterContentObserver(f1800c.f1802b);
            }
            f1800c = null;
        }
    }

    @Override // p018b5.InterfaceC0579b6
    /* renamed from: b */
    public final String mo24990u(final String str) {
        String str2;
        if (this.f1801a == null) {
            return null;
        }
        try {
            return (String) C0986z5.m24869a(new InterfaceC0561a6() { // from class: b5.c6
                @Override // p018b5.InterfaceC0561a6
                public final Object zza() {
                    return C0630e6.this.m26027c(str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "Unable to read GServices for: ".concat(valueOf);
            } else {
                str2 = new String("Unable to read GServices for: ");
            }
            Log.e("GservicesLoader", str2, e);
            return null;
        }
    }
}

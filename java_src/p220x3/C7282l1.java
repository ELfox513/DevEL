package p220x3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* renamed from: x3.l1 */
/* loaded from: classes.dex */
public final class C7282l1 {

    /* renamed from: f */
    public static final Uri f36743f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a */
    public final String f36744a;

    /* renamed from: b */
    public final String f36745b;

    /* renamed from: c */
    public final ComponentName f36746c;

    /* renamed from: d */
    public final int f36747d;

    /* renamed from: e */
    public final boolean f36748e;

    /* renamed from: a */
    public final String m1922a() {
        return this.f36745b;
    }

    /* renamed from: b */
    public final ComponentName m1921b() {
        return this.f36746c;
    }

    /* renamed from: c */
    public final int m1920c() {
        return this.f36747d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7282l1)) {
            return false;
        }
        C7282l1 c7282l1 = (C7282l1) obj;
        return C7289o.m1908a(this.f36744a, c7282l1.f36744a) && C7289o.m1908a(this.f36745b, c7282l1.f36745b) && C7289o.m1908a(this.f36746c, c7282l1.f36746c) && this.f36747d == c7282l1.f36747d && this.f36748e == c7282l1.f36748e;
    }

    public final int hashCode() {
        return C7289o.m1907b(this.f36744a, this.f36745b, this.f36746c, Integer.valueOf(this.f36747d), Boolean.valueOf(this.f36748e));
    }

    /* renamed from: d */
    public final Intent m1919d(Context context) {
        Bundle bundle;
        String str;
        if (this.f36744a != null) {
            Intent intent = null;
            if (this.f36748e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f36744a);
                try {
                    bundle = context.getContentResolver().call(f36743f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 34);
                    sb.append("Dynamic intent resolution failed: ");
                    sb.append(valueOf);
                    Log.w("ConnectionStatusConfig", sb.toString());
                    bundle = null;
                }
                if (bundle != null) {
                    intent = (Intent) bundle.getParcelable("serviceResponseIntentKey");
                }
                if (intent == null) {
                    String valueOf2 = String.valueOf(this.f36744a);
                    if (valueOf2.length() != 0) {
                        str = "Dynamic lookup for intent failed for action: ".concat(valueOf2);
                    } else {
                        str = new String("Dynamic lookup for intent failed for action: ");
                    }
                    Log.w("ConnectionStatusConfig", str);
                }
            }
            if (intent == null) {
                return new Intent(this.f36744a).setPackage(this.f36745b);
            }
            return intent;
        }
        return new Intent().setComponent(this.f36746c);
    }

    public final String toString() {
        String str = this.f36744a;
        if (str == null) {
            C7297q.m1883j(this.f36746c);
            return this.f36746c.flattenToString();
        }
        return str;
    }

    public C7282l1(String str, String str2, int i, boolean z) {
        C7297q.m1887f(str);
        this.f36744a = str;
        C7297q.m1887f(str2);
        this.f36745b = str2;
        this.f36746c = null;
        this.f36747d = i;
        this.f36748e = z;
    }
}

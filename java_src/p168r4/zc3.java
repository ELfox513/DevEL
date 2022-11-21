package p168r4;

import android.text.TextUtils;
/* renamed from: r4.zc3 */
/* loaded from: classes2.dex */
public final class zc3 {

    /* renamed from: a */
    public final String f34461a;

    /* renamed from: b */
    public final boolean f34462b;

    /* renamed from: c */
    public final boolean f34463c;

    public zc3(String str, boolean z, boolean z2) {
        this.f34461a = str;
        this.f34462b = z;
        this.f34463c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == zc3.class) {
            zc3 zc3Var = (zc3) obj;
            if (TextUtils.equals(this.f34461a, zc3Var.f34461a) && this.f34462b == zc3Var.f34462b && this.f34463c == zc3Var.f34463c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f34461a.hashCode() + 31) * 31) + (true != this.f34462b ? 1237 : 1231)) * 31) + (true == this.f34463c ? 1231 : 1237);
    }
}

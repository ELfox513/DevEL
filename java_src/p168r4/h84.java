package p168r4;

import android.text.TextUtils;
/* renamed from: r4.h84 */
/* loaded from: classes2.dex */
public final class h84 {

    /* renamed from: a */
    public final String f24512a;

    /* renamed from: b */
    public final String f24513b;

    public h84(String str, String str2) {
        this.f24512a = str;
        this.f24513b = str2;
    }

    /* renamed from: a */
    public final String m10960a() {
        return this.f24512a;
    }

    /* renamed from: b */
    public final String m10959b() {
        return this.f24513b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h84.class == obj.getClass()) {
            h84 h84Var = (h84) obj;
            if (TextUtils.equals(this.f24512a, h84Var.f24512a) && TextUtils.equals(this.f24513b, h84Var.f24513b)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.f24512a;
        String str2 = this.f24513b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }

    public final int hashCode() {
        return (this.f24512a.hashCode() * 31) + this.f24513b.hashCode();
    }
}

package p168r4;

import android.text.TextUtils;
/* renamed from: r4.ph */
/* loaded from: classes2.dex */
public final class C6133ph {

    /* renamed from: a */
    public final String f29462a;

    /* renamed from: b */
    public final boolean f29463b;

    public C6133ph(String str, boolean z) {
        this.f29462a = str;
        this.f29463b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == C6133ph.class) {
            C6133ph c6133ph = (C6133ph) obj;
            if (TextUtils.equals(this.f29462a, c6133ph.f29462a) && this.f29463b == c6133ph.f29463b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f29462a;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (true != this.f29463b ? 1237 : 1231);
    }
}

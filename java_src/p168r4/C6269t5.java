package p168r4;

import android.net.Uri;
import java.util.List;
/* renamed from: r4.t5 */
/* loaded from: classes2.dex */
public final class C6269t5 {

    /* renamed from: a */
    public final Uri f31683a;

    /* renamed from: c */
    public final List f31685c;

    /* renamed from: e */
    public final List f31687e;

    /* renamed from: b */
    public final String f31684b = null;

    /* renamed from: d */
    public final String f31686d = null;

    /* renamed from: f */
    public final Object f31688f = null;

    public /* synthetic */ C6269t5(Uri uri, String str, C6121p5 c6121p5, C5935k5 c5935k5, List list, String str2, List list2, Object obj, C6232s5 c6232s5) {
        this.f31683a = uri;
        this.f31685c = list;
        this.f31687e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6269t5)) {
            return false;
        }
        C6269t5 c6269t5 = (C6269t5) obj;
        return this.f31683a.equals(c6269t5.f31683a) && C5979lc.m9729H(null, null) && C5979lc.m9729H(null, null) && C5979lc.m9729H(null, null) && this.f31685c.equals(c6269t5.f31685c) && C5979lc.m9729H(null, null) && this.f31687e.equals(c6269t5.f31687e) && C5979lc.m9729H(null, null);
    }

    public final int hashCode() {
        return ((((this.f31683a.hashCode() * 923521) + this.f31685c.hashCode()) * 961) + this.f31687e.hashCode()) * 31;
    }
}

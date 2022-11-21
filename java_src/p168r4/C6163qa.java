package p168r4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* renamed from: r4.qa */
/* loaded from: classes2.dex */
public final class C6163qa {

    /* renamed from: a */
    public Uri f30061a;

    /* renamed from: b */
    public final int f30062b = 1;

    /* renamed from: c */
    public Map<String, String> f30063c = Collections.emptyMap();

    /* renamed from: d */
    public long f30064d;

    /* renamed from: e */
    public int f30065e;

    /* renamed from: a */
    public final C6163qa m7920a(Uri uri) {
        this.f30061a = uri;
        return this;
    }

    /* renamed from: b */
    public final C6163qa m7919b(Map<String, String> map) {
        this.f30063c = map;
        return this;
    }

    /* renamed from: c */
    public final C6163qa m7918c(long j) {
        this.f30064d = j;
        return this;
    }

    /* renamed from: d */
    public final C6163qa m7917d(int i) {
        this.f30065e = 6;
        return this;
    }

    /* renamed from: e */
    public final C6350vc m7916e() {
        Uri uri = this.f30061a;
        if (uri != null) {
            return new C6350vc(uri, 0L, 1, null, this.f30063c, this.f30064d, -1L, null, this.f30065e, null, null);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}

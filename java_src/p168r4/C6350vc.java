package p168r4;

import android.net.Uri;
import com.badlogic.gdx.Net;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.vc */
/* loaded from: classes2.dex */
public final class C6350vc {

    /* renamed from: a */
    public final Uri f32683a;

    /* renamed from: b */
    public final int f32684b;

    /* renamed from: c */
    public final byte[] f32685c;

    /* renamed from: d */
    public final Map<String, String> f32686d;
    @Deprecated

    /* renamed from: e */
    public final long f32687e;

    /* renamed from: f */
    public final long f32688f;

    /* renamed from: g */
    public final long f32689g;

    /* renamed from: h */
    public final String f32690h;

    /* renamed from: i */
    public final int f32691i;

    public C6350vc(Uri uri, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        long j4 = j + j2;
        boolean z = false;
        C5903ja.m10374a(j4 >= 0);
        C5903ja.m10374a(j2 >= 0);
        C5903ja.m10374a((j3 > 0 || j3 == -1) ? true : true);
        this.f32683a = uri;
        this.f32684b = 1;
        this.f32685c = null;
        this.f32686d = Collections.unmodifiableMap(new HashMap(map));
        this.f32688f = j2;
        this.f32687e = j4;
        this.f32689g = j3;
        this.f32690h = null;
        this.f32691i = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C6350vc(Uri uri, Uri uri2, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        this(uri, 0L, 1, null, bArr, map, -1L, null, str, null);
    }

    /* renamed from: a */
    public static String m6173a(int i) {
        return Net.HttpMethods.GET;
    }

    /* renamed from: b */
    public final boolean m6172b(int i) {
        return (this.f32691i & i) == i;
    }

    public final String toString() {
        String m6173a = m6173a(1);
        String valueOf = String.valueOf(this.f32683a);
        long j = this.f32688f;
        long j2 = this.f32689g;
        int i = this.f32691i;
        StringBuilder sb = new StringBuilder(m6173a.length() + 70 + valueOf.length() + 4);
        sb.append("DataSpec[");
        sb.append(m6173a);
        sb.append(" ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", null, ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Deprecated
    public C6350vc(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, j - j2, 1, null, Collections.emptyMap(), j2, j3, null, i, null);
    }
}

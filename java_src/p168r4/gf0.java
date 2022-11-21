package p168r4;

import android.net.Uri;
import java.util.Arrays;
/* renamed from: r4.gf0 */
/* loaded from: classes2.dex */
public final class gf0 {

    /* renamed from: h */
    public static final InterfaceC5674d3<gf0> f24013h = C5846hq.f24793a;

    /* renamed from: a */
    public final long f24014a;

    /* renamed from: b */
    public final int f24015b;

    /* renamed from: c */
    public final Uri[] f24016c;

    /* renamed from: d */
    public final int[] f24017d;

    /* renamed from: e */
    public final long[] f24018e;

    /* renamed from: f */
    public final long f24019f;

    /* renamed from: g */
    public final boolean f24020g;

    public gf0(long j) {
        this(0L, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    /* renamed from: a */
    public final int m11184a(int i) {
        int i2;
        int i3 = i + 1;
        while (true) {
            int[] iArr = this.f24017d;
            if (i3 >= iArr.length || (i2 = iArr[i3]) == 0 || i2 == 1) {
                break;
            }
            i3++;
        }
        return i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && gf0.class == obj.getClass()) {
            gf0 gf0Var = (gf0) obj;
            if (this.f24015b == gf0Var.f24015b && Arrays.equals(this.f24016c, gf0Var.f24016c) && Arrays.equals(this.f24017d, gf0Var.f24017d) && Arrays.equals(this.f24018e, gf0Var.f24018e)) {
                return true;
            }
        }
        return false;
    }

    public gf0(long j, int i, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        C5903ja.m10374a(iArr.length == uriArr.length);
        this.f24014a = 0L;
        this.f24015b = i;
        this.f24017d = iArr;
        this.f24016c = uriArr;
        this.f24018e = jArr;
        this.f24019f = 0L;
        this.f24020g = false;
    }

    /* renamed from: b */
    public final gf0 m11183b(int i) {
        int[] iArr = this.f24017d;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = this.f24018e;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        return new gf0(0L, 0, copyOf, (Uri[]) Arrays.copyOf(this.f24016c, 0), copyOf2, 0L, false);
    }

    public final int hashCode() {
        return ((((((this.f24015b * 961) + Arrays.hashCode(this.f24016c)) * 31) + Arrays.hashCode(this.f24017d)) * 31) + Arrays.hashCode(this.f24018e)) * 961;
    }
}

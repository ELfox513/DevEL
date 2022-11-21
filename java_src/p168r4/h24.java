package p168r4;

import java.util.Arrays;
/* renamed from: r4.h24 */
/* loaded from: classes2.dex */
public final class h24 {

    /* renamed from: d */
    public static final InterfaceC5674d3<h24> f24415d = g14.f23833a;

    /* renamed from: a */
    public final int f24416a = 1;

    /* renamed from: b */
    public final C5713e5[] f24417b;

    /* renamed from: c */
    public int f24418c;

    /* renamed from: c */
    public static String m10998c(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    /* renamed from: a */
    public final C5713e5 m11000a(int i) {
        return this.f24417b[i];
    }

    /* renamed from: b */
    public final int m10999b(C5713e5 c5713e5) {
        for (int i = 0; i <= 0; i++) {
            if (c5713e5 == this.f24417b[i]) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && h24.class == obj.getClass() && Arrays.equals(this.f24417b, ((h24) obj).f24417b);
    }

    public final int hashCode() {
        int i = this.f24418c;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f24417b) + 527;
            this.f24418c = hashCode;
            return hashCode;
        }
        return i;
    }

    public h24(C5713e5... c5713e5Arr) {
        this.f24417b = c5713e5Arr;
        m10998c(c5713e5Arr[0].f22805c);
        int i = c5713e5Arr[0].f22807e;
    }
}

package p168r4;

import java.util.Arrays;
/* renamed from: r4.z6 */
/* loaded from: classes2.dex */
public final class C6492z6 {

    /* renamed from: j */
    public static final InterfaceC5674d3<C6492z6> f34377j = C6455y6.f33984a;

    /* renamed from: a */
    public final Object f34378a;

    /* renamed from: b */
    public final int f34379b;

    /* renamed from: c */
    public final C6306u5 f34380c;

    /* renamed from: d */
    public final Object f34381d;

    /* renamed from: e */
    public final int f34382e;

    /* renamed from: f */
    public final long f34383f;

    /* renamed from: g */
    public final long f34384g;

    /* renamed from: h */
    public final int f34385h;

    /* renamed from: i */
    public final int f34386i;

    public C6492z6(Object obj, int i, C6306u5 c6306u5, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.f34378a = obj;
        this.f34379b = i;
        this.f34380c = c6306u5;
        this.f34381d = obj2;
        this.f34382e = i2;
        this.f34383f = j;
        this.f34384g = j2;
        this.f34385h = i3;
        this.f34386i = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6492z6.class == obj.getClass()) {
            C6492z6 c6492z6 = (C6492z6) obj;
            if (this.f34379b == c6492z6.f34379b && this.f34382e == c6492z6.f34382e && this.f34383f == c6492z6.f34383f && this.f34384g == c6492z6.f34384g && this.f34385h == c6492z6.f34385h && this.f34386i == c6492z6.f34386i && v03.m6257a(this.f34378a, c6492z6.f34378a) && v03.m6257a(this.f34381d, c6492z6.f34381d) && v03.m6257a(this.f34380c, c6492z6.f34380c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f34378a, Integer.valueOf(this.f34379b), this.f34380c, this.f34381d, Integer.valueOf(this.f34382e), Integer.valueOf(this.f34379b), Long.valueOf(this.f34383f), Long.valueOf(this.f34384g), Integer.valueOf(this.f34385h), Integer.valueOf(this.f34386i)});
    }
}

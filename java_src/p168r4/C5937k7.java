package p168r4;
/* renamed from: r4.k7 */
/* loaded from: classes2.dex */
public final class C5937k7 {

    /* renamed from: c */
    public static final C5937k7 f26329c;

    /* renamed from: d */
    public static final C5937k7 f26330d;

    /* renamed from: e */
    public static final C5937k7 f26331e;

    /* renamed from: f */
    public static final C5937k7 f26332f;

    /* renamed from: g */
    public static final C5937k7 f26333g;

    /* renamed from: a */
    public final long f26334a;

    /* renamed from: b */
    public final long f26335b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5937k7.class == obj.getClass()) {
            C5937k7 c5937k7 = (C5937k7) obj;
            if (this.f26334a == c5937k7.f26334a && this.f26335b == c5937k7.f26335b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f26334a) * 31) + ((int) this.f26335b);
    }

    static {
        C5937k7 c5937k7 = new C5937k7(0L, 0L);
        f26329c = c5937k7;
        f26330d = new C5937k7(Long.MAX_VALUE, Long.MAX_VALUE);
        f26331e = new C5937k7(Long.MAX_VALUE, 0L);
        f26332f = new C5937k7(0L, Long.MAX_VALUE);
        f26333g = c5937k7;
    }

    public C5937k7(long j, long j2) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        C5903ja.m10374a(j2 >= 0);
        this.f26334a = j;
        this.f26335b = j2;
    }
}

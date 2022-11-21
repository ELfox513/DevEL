package p168r4;

import java.io.IOException;
/* renamed from: r4.l6 */
/* loaded from: classes2.dex */
public class C5973l6 extends IOException {

    /* renamed from: a */
    public final boolean f27105a;

    /* renamed from: b */
    public final int f27106b;

    public C5973l6(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.f27105a = z;
        this.f27106b = i;
    }

    /* renamed from: a */
    public static C5973l6 m9788a(String str, Throwable th) {
        return new C5973l6(str, th, true, 0);
    }

    /* renamed from: b */
    public static C5973l6 m9787b(String str, Throwable th) {
        return new C5973l6(str, th, true, 1);
    }

    /* renamed from: c */
    public static C5973l6 m9786c(String str) {
        return new C5973l6(str, null, false, 1);
    }
}

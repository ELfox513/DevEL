package p168r4;
/* renamed from: r4.v4 */
/* loaded from: classes2.dex */
public final class C6342v4 {

    /* renamed from: a */
    public boolean f32574a;

    /* renamed from: b */
    public C6085o6 f32575b;

    /* renamed from: c */
    public int f32576c;

    /* renamed from: d */
    public boolean f32577d;

    /* renamed from: e */
    public int f32578e;

    /* renamed from: f */
    public boolean f32579f;

    /* renamed from: g */
    public int f32580g;

    public C6342v4(C6085o6 c6085o6) {
        this.f32575b = c6085o6;
    }

    /* renamed from: b */
    public final void m6234b(int i) {
        this.f32574a = 1 == ((this.f32574a ? 1 : 0) | i);
        this.f32576c += i;
    }

    /* renamed from: c */
    public final void m6233c(C6085o6 c6085o6) {
        this.f32574a |= this.f32575b != c6085o6;
        this.f32575b = c6085o6;
    }

    /* renamed from: d */
    public final void m6232d(int i) {
        if (this.f32577d && this.f32578e != 5) {
            C5903ja.m10374a(i == 5);
            return;
        }
        this.f32574a = true;
        this.f32577d = true;
        this.f32578e = i;
    }

    /* renamed from: e */
    public final void m6231e(int i) {
        this.f32574a = true;
        this.f32579f = true;
        this.f32580g = i;
    }
}

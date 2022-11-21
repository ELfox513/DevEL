package p168r4;
/* renamed from: r4.kj */
/* loaded from: classes2.dex */
public final class C5949kj extends AbstractC6277td {

    /* renamed from: d */
    public static final Object f26433d = new Object();

    /* renamed from: b */
    public final long f26434b;

    /* renamed from: c */
    public final long f26435c;

    public C5949kj(long j, boolean z) {
        this.f26434b = j;
        this.f26435c = j;
    }

    @Override // p168r4.AbstractC6277td
    /* renamed from: a */
    public final int mo6878a() {
        return 1;
    }

    @Override // p168r4.AbstractC6277td
    /* renamed from: b */
    public final C6240sd mo6877b(int i, C6240sd c6240sd, boolean z, long j) {
        C6358vk.m6138c(i, 0, 1);
        c6240sd.f31309a = this.f26435c;
        return c6240sd;
    }

    @Override // p168r4.AbstractC6277td
    /* renamed from: c */
    public final int mo6876c() {
        return 1;
    }

    @Override // p168r4.AbstractC6277td
    /* renamed from: d */
    public final C6203rd mo6875d(int i, C6203rd c6203rd, boolean z) {
        C6358vk.m6138c(i, 0, 1);
        Object obj = z ? f26433d : null;
        long j = this.f26434b;
        c6203rd.f30532a = obj;
        c6203rd.f30533b = obj;
        c6203rd.f30534c = j;
        return c6203rd;
    }

    @Override // p168r4.AbstractC6277td
    /* renamed from: e */
    public final int mo6874e(Object obj) {
        return f26433d.equals(obj) ? 0 : -1;
    }
}

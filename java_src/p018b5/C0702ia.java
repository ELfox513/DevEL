package p018b5;
/* renamed from: b5.ia */
/* loaded from: classes2.dex */
public final class C0702ia<T> implements InterfaceC0821pa<T> {

    /* renamed from: a */
    public final InterfaceC0634ea f1897a;

    /* renamed from: b */
    public final AbstractC0686hb<?, ?> f1898b;

    /* renamed from: c */
    public final boolean f1899c;

    /* renamed from: d */
    public final AbstractC0751l8<?> f1900d;

    public C0702ia(AbstractC0686hb<?, ?> abstractC0686hb, AbstractC0751l8<?> abstractC0751l8, InterfaceC0634ea interfaceC0634ea) {
        this.f1898b = abstractC0686hb;
        this.f1899c = abstractC0751l8.mo25656c(interfaceC0634ea);
        this.f1900d = abstractC0751l8;
        this.f1897a = interfaceC0634ea;
    }

    /* renamed from: j */
    public static <T> C0702ia<T> m25795j(AbstractC0686hb<?, ?> abstractC0686hb, AbstractC0751l8<?> abstractC0751l8, InterfaceC0634ea interfaceC0634ea) {
        return new C0702ia<>(abstractC0686hb, abstractC0751l8, interfaceC0634ea);
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: c */
    public final T mo25494c() {
        return (T) this.f1897a.mo24970w0().mo25098m();
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: g */
    public final void mo25490g(T t, byte[] bArr, int i, int i2, C0699i7 c0699i7) {
        AbstractC0955x8 abstractC0955x8 = (AbstractC0955x8) t;
        if (abstractC0955x8.zzc == C0703ib.m25792c()) {
            abstractC0955x8.zzc = C0703ib.m25790e();
        }
        AbstractC0921v8 abstractC0921v8 = (AbstractC0921v8) t;
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: a */
    public final int mo25496a(T t) {
        AbstractC0686hb<?, ?> abstractC0686hb = this.f1898b;
        int mo25735b = abstractC0686hb.mo25735b(abstractC0686hb.mo25734c(t));
        if (!this.f1899c) {
            return mo25735b;
        }
        this.f1900d.mo25658a(t);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: b */
    public final int mo25495b(T t) {
        int hashCode = this.f1898b.mo25734c(t).hashCode();
        if (!this.f1899c) {
            return hashCode;
        }
        this.f1900d.mo25658a(t);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: d */
    public final void mo25493d(T t) {
        this.f1898b.mo25730g(t);
        this.f1900d.mo25657b(t);
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: e */
    public final boolean mo25492e(T t) {
        this.f1900d.mo25658a(t);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: f */
    public final void mo25491f(T t, T t2) {
        C0855ra.m25386f(this.f1898b, t, t2);
        if (this.f1899c) {
            C0855ra.m25387e(this.f1900d, t, t2);
        }
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: h */
    public final boolean mo25489h(T t, T t2) {
        if (!this.f1898b.mo25734c(t).equals(this.f1898b.mo25734c(t2))) {
            return false;
        }
        if (!this.f1899c) {
            return true;
        }
        this.f1900d.mo25658a(t);
        this.f1900d.mo25658a(t2);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: i */
    public final void mo25488i(T t, C0666g8 c0666g8) {
        this.f1900d.mo25658a(t);
        throw null;
    }
}

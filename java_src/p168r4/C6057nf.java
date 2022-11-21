package p168r4;
/* renamed from: r4.nf */
/* loaded from: classes2.dex */
public final class C6057nf implements InterfaceC6390wf {

    /* renamed from: a */
    public final int[] f28262a;

    /* renamed from: b */
    public final long[] f28263b;

    /* renamed from: c */
    public final long[] f28264c;

    /* renamed from: d */
    public final long[] f28265d;

    /* renamed from: e */
    public final long f28266e;

    @Override // p168r4.InterfaceC6390wf
    /* renamed from: a */
    public final long mo5740a() {
        return this.f28266e;
    }

    @Override // p168r4.InterfaceC6390wf
    public final boolean zza() {
        return true;
    }

    @Override // p168r4.InterfaceC6390wf
    /* renamed from: b */
    public final long mo5739b(long j) {
        return this.f28263b[C5988ll.m9646h(this.f28265d, j, true, true)];
    }

    public C6057nf(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f28262a = iArr;
        this.f28263b = jArr;
        this.f28264c = jArr2;
        this.f28265d = jArr3;
        int length = iArr.length;
        if (length > 0) {
            int i = length - 1;
            this.f28266e = jArr2[i] + jArr3[i];
            return;
        }
        this.f28266e = 0L;
    }
}

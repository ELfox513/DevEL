package p168r4;
/* renamed from: r4.cw3 */
/* loaded from: classes2.dex */
public final class cw3 {

    /* renamed from: a */
    public final int f21927a;

    /* renamed from: b */
    public final C5864i7[] f21928b;

    /* renamed from: c */
    public final Object f21929c;

    /* renamed from: d */
    public final hv3[] f21930d;

    /* renamed from: a */
    public final boolean m12288a(int i) {
        return this.f21928b[i] != null;
    }

    /* renamed from: b */
    public final boolean m12287b(cw3 cw3Var, int i) {
        return cw3Var != null && C5979lc.m9729H(this.f21928b[i], cw3Var.f21928b[i]) && C5979lc.m9729H(this.f21930d[i], cw3Var.f21930d[i]);
    }

    public cw3(C5864i7[] c5864i7Arr, hv3[] hv3VarArr, Object obj, byte[] bArr) {
        this.f21928b = c5864i7Arr;
        this.f21930d = (hv3[]) hv3VarArr.clone();
        this.f21929c = obj;
        this.f21927a = c5864i7Arr.length;
    }
}

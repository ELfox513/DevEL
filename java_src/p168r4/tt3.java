package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
/* renamed from: r4.tt3 */
/* loaded from: classes2.dex */
public final class tt3 implements et3, dt3 {

    /* renamed from: a */
    public final et3[] f32014a;

    /* renamed from: k */
    public dt3 f32017k;

    /* renamed from: p */
    public j44 f32018p;

    /* renamed from: s */
    public final rs3 f32021s;

    /* renamed from: d */
    public final ArrayList<et3> f32016d = new ArrayList<>();

    /* renamed from: r */
    public xu3 f32020r = new qs3(new xu3[0]);

    /* renamed from: b */
    public final IdentityHashMap<vu3, Integer> f32015b = new IdentityHashMap<>();

    /* renamed from: q */
    public et3[] f32019q = new et3[0];

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
        this.f32020r.mo4969a(j);
    }

    @Override // p168r4.et3
    /* renamed from: e */
    public final j44 mo5022e() {
        j44 j44Var = this.f32018p;
        j44Var.getClass();
        return j44Var;
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        return this.f32020r.mo4967f();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        return this.f32020r.mo4966i();
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        return this.f32020r.mo4965l();
    }

    @Override // p168r4.et3
    /* renamed from: b */
    public final void mo5024b() {
        for (et3 et3Var : this.f32014a) {
            et3Var.mo5024b();
        }
    }

    @Override // p168r4.et3, p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        if (!this.f32016d.isEmpty()) {
            int size = this.f32016d.size();
            for (int i = 0; i < size; i++) {
                this.f32016d.get(i).mo4968c(j);
            }
            return false;
        }
        return this.f32020r.mo4968c(j);
    }

    @Override // p168r4.et3
    /* renamed from: d */
    public final long mo5023d(hv3[] hv3VarArr, boolean[] zArr, vu3[] vu3VarArr, boolean[] zArr2, long j) {
        int length;
        vu3 vu3Var;
        hv3 hv3Var;
        Integer num;
        int intValue;
        int length2 = hv3VarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = hv3VarArr.length;
            if (i >= length) {
                break;
            }
            vu3 vu3Var2 = vu3VarArr[i];
            if (vu3Var2 == null) {
                num = null;
            } else {
                num = this.f32015b.get(vu3Var2);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr[i] = intValue;
            iArr2[i] = -1;
            hv3 hv3Var2 = hv3VarArr[i];
            if (hv3Var2 != null) {
                h24 m10783a = hv3Var2.m10783a();
                int i2 = 0;
                while (true) {
                    et3[] et3VarArr = this.f32014a;
                    if (i2 >= et3VarArr.length) {
                        break;
                    } else if (et3VarArr[i2].mo5022e().m10423b(m10783a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.f32015b.clear();
        vu3[] vu3VarArr2 = new vu3[length];
        vu3[] vu3VarArr3 = new vu3[length];
        hv3[] hv3VarArr2 = new hv3[length];
        ArrayList arrayList = new ArrayList(this.f32014a.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.f32014a.length) {
            for (int i4 = 0; i4 < hv3VarArr.length; i4++) {
                if (iArr[i4] == i3) {
                    vu3Var = vu3VarArr[i4];
                } else {
                    vu3Var = null;
                }
                vu3VarArr3[i4] = vu3Var;
                if (iArr2[i4] == i3) {
                    hv3Var = hv3VarArr[i4];
                } else {
                    hv3Var = null;
                }
                hv3VarArr2[i4] = hv3Var;
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            vu3[] vu3VarArr4 = vu3VarArr3;
            hv3[] hv3VarArr3 = hv3VarArr2;
            long mo5023d = this.f32014a[i3].mo5023d(hv3VarArr2, zArr, vu3VarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = mo5023d;
            } else if (mo5023d != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < hv3VarArr.length; i6++) {
                boolean z2 = true;
                if (iArr2[i6] == i5) {
                    vu3 vu3Var3 = vu3VarArr4[i6];
                    vu3Var3.getClass();
                    vu3VarArr2[i6] = vu3Var3;
                    this.f32015b.put(vu3Var3, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    if (vu3VarArr4[i6] != null) {
                        z2 = false;
                    }
                    C5903ja.m10371d(z2);
                }
            }
            if (z) {
                arrayList2.add(this.f32014a[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            vu3VarArr3 = vu3VarArr4;
            hv3VarArr2 = hv3VarArr3;
        }
        System.arraycopy(vu3VarArr2, 0, vu3VarArr, 0, length);
        et3[] et3VarArr2 = (et3[]) arrayList.toArray(new et3[0]);
        this.f32019q = et3VarArr2;
        this.f32020r = new qs3(et3VarArr2);
        return j2;
    }

    @Override // p168r4.et3
    /* renamed from: g */
    public final long mo5021g() {
        et3[] et3VarArr;
        et3[] et3VarArr2;
        long j = -9223372036854775807L;
        for (et3 et3Var : this.f32019q) {
            long mo5021g = et3Var.mo5021g();
            if (mo5021g != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (et3 et3Var2 : this.f32019q) {
                        if (et3Var2 == et3Var) {
                            break;
                        } else if (et3Var2.mo5016p(mo5021g) != mo5021g) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = mo5021g;
                } else if (mo5021g != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && et3Var.mo5016p(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // p168r4.dt3
    /* renamed from: h */
    public final void mo4862h(et3 et3Var) {
        this.f32016d.remove(et3Var);
        if (!this.f32016d.isEmpty()) {
            return;
        }
        int i = 0;
        for (et3 et3Var2 : this.f32014a) {
            i += et3Var2.mo5022e().f25892a;
        }
        h24[] h24VarArr = new h24[i];
        int i2 = 0;
        for (et3 et3Var3 : this.f32014a) {
            j44 mo5022e = et3Var3.mo5022e();
            int i3 = mo5022e.f25892a;
            int i4 = 0;
            while (i4 < i3) {
                h24VarArr[i2] = mo5022e.m10424a(i4);
                i4++;
                i2++;
            }
        }
        this.f32018p = new j44(h24VarArr);
        dt3 dt3Var = this.f32017k;
        dt3Var.getClass();
        dt3Var.mo4862h(this);
    }

    @Override // p168r4.wu3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ void mo4858j(et3 et3Var) {
        dt3 dt3Var = this.f32017k;
        dt3Var.getClass();
        dt3Var.mo4858j(this);
    }

    /* renamed from: k */
    public final et3 m6720k(int i) {
        et3 et3Var;
        et3 et3Var2 = this.f32014a[i];
        if (et3Var2 instanceof rt3) {
            et3Var = ((rt3) et3Var2).f30685a;
            return et3Var;
        }
        return et3Var2;
    }

    @Override // p168r4.et3
    /* renamed from: m */
    public final void mo5019m(dt3 dt3Var, long j) {
        this.f32017k = dt3Var;
        Collections.addAll(this.f32016d, this.f32014a);
        for (et3 et3Var : this.f32014a) {
            et3Var.mo5019m(this, j);
        }
    }

    @Override // p168r4.et3
    /* renamed from: o */
    public final long mo5017o(long j, C5937k7 c5937k7) {
        et3 et3Var;
        et3[] et3VarArr = this.f32019q;
        if (et3VarArr.length > 0) {
            et3Var = et3VarArr[0];
        } else {
            et3Var = this.f32014a[0];
        }
        return et3Var.mo5017o(j, c5937k7);
    }

    @Override // p168r4.et3
    /* renamed from: p */
    public final long mo5016p(long j) {
        long mo5016p = this.f32019q[0].mo5016p(j);
        int i = 1;
        while (true) {
            et3[] et3VarArr = this.f32019q;
            if (i < et3VarArr.length) {
                if (et3VarArr[i].mo5016p(mo5016p) == mo5016p) {
                    i++;
                } else {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else {
                return mo5016p;
            }
        }
    }

    @Override // p168r4.et3
    /* renamed from: q */
    public final void mo5015q(long j, boolean z) {
        for (et3 et3Var : this.f32019q) {
            et3Var.mo5015q(j, false);
        }
    }

    public tt3(rs3 rs3Var, long[] jArr, et3[] et3VarArr, byte... bArr) {
        this.f32021s = rs3Var;
        this.f32014a = et3VarArr;
        for (int i = 0; i < et3VarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.f32014a[i] = new rt3(et3VarArr[i], j);
            }
        }
    }
}

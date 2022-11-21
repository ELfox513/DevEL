package p168r4;

import java.util.ArrayList;
import java.util.IdentityHashMap;
/* renamed from: r4.xi */
/* loaded from: classes2.dex */
public final class C6430xi implements InterfaceC6319ui, InterfaceC6282ti {

    /* renamed from: a */
    public final InterfaceC6319ui[] f33604a;

    /* renamed from: b */
    public final IdentityHashMap<InterfaceC5839hj, Integer> f33605b = new IdentityHashMap<>();

    /* renamed from: d */
    public InterfaceC6282ti f33606d;

    /* renamed from: k */
    public int f33607k;

    /* renamed from: p */
    public C6023mj f33608p;

    /* renamed from: q */
    public InterfaceC6319ui[] f33609q;

    /* renamed from: r */
    public InterfaceC5912jj f33610r;

    public C6430xi(InterfaceC6319ui... interfaceC6319uiArr) {
        this.f33604a = interfaceC6319uiArr;
    }

    @Override // p168r4.InterfaceC6319ui, p168r4.InterfaceC5912jj
    /* renamed from: d */
    public final boolean mo5303d(long j) {
        return this.f33610r.mo5303d(j);
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: p */
    public final C6023mj mo5295p() {
        return this.f33608p;
    }

    @Override // p168r4.InterfaceC6319ui, p168r4.InterfaceC5912jj
    public final long zza() {
        return this.f33610r.zza();
    }

    @Override // p168r4.InterfaceC6282ti
    /* renamed from: a */
    public final void mo5305a(InterfaceC6319ui interfaceC6319ui) {
        int i = this.f33607k - 1;
        this.f33607k = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (InterfaceC6319ui interfaceC6319ui2 : this.f33604a) {
            i2 += interfaceC6319ui2.mo5295p().f27743a;
        }
        C5986lj[] c5986ljArr = new C5986lj[i2];
        int i3 = 0;
        for (InterfaceC6319ui interfaceC6319ui3 : this.f33604a) {
            C6023mj mo5295p = interfaceC6319ui3.mo5295p();
            int i4 = mo5295p.f27743a;
            int i5 = 0;
            while (i5 < i4) {
                c5986ljArr[i3] = mo5295p.m9378a(i5);
                i5++;
                i3++;
            }
        }
        this.f33608p = new C6023mj(c5986ljArr);
        this.f33606d.mo5305a(this);
    }

    @Override // p168r4.InterfaceC5876ij
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5304b(InterfaceC6319ui interfaceC6319ui) {
        if (this.f33608p == null) {
            return;
        }
        this.f33606d.mo5304b(this);
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: e */
    public final long mo5302e(C6172qj[] c6172qjArr, boolean[] zArr, InterfaceC5839hj[] interfaceC5839hjArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        InterfaceC5839hj interfaceC5839hj;
        int intValue;
        InterfaceC5839hj[] interfaceC5839hjArr2 = interfaceC5839hjArr;
        int length2 = c6172qjArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = c6172qjArr.length;
            if (i >= length) {
                break;
            }
            InterfaceC5839hj interfaceC5839hj2 = interfaceC5839hjArr2[i];
            if (interfaceC5839hj2 == null) {
                intValue = -1;
            } else {
                intValue = this.f33605b.get(interfaceC5839hj2).intValue();
            }
            iArr[i] = intValue;
            iArr2[i] = -1;
            C6172qj c6172qj = c6172qjArr[i];
            if (c6172qj != null) {
                C5986lj m7814a = c6172qj.m7814a();
                int i2 = 0;
                while (true) {
                    InterfaceC6319ui[] interfaceC6319uiArr = this.f33604a;
                    if (i2 >= interfaceC6319uiArr.length) {
                        break;
                    } else if (interfaceC6319uiArr[i2].mo5295p().m9377b(m7814a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.f33605b.clear();
        InterfaceC5839hj[] interfaceC5839hjArr3 = new InterfaceC5839hj[length];
        InterfaceC5839hj[] interfaceC5839hjArr4 = new InterfaceC5839hj[length];
        C6172qj[] c6172qjArr2 = new C6172qj[length];
        ArrayList arrayList = new ArrayList(this.f33604a.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.f33604a.length) {
            for (int i4 = 0; i4 < c6172qjArr.length; i4++) {
                C6172qj c6172qj2 = null;
                if (iArr[i4] == i3) {
                    interfaceC5839hj = interfaceC5839hjArr2[i4];
                } else {
                    interfaceC5839hj = null;
                }
                interfaceC5839hjArr4[i4] = interfaceC5839hj;
                if (iArr2[i4] == i3) {
                    c6172qj2 = c6172qjArr[i4];
                }
                c6172qjArr2[i4] = c6172qj2;
            }
            int i5 = i3;
            C6172qj[] c6172qjArr3 = c6172qjArr2;
            ArrayList arrayList2 = arrayList;
            long mo5302e = this.f33604a[i3].mo5302e(c6172qjArr2, zArr, interfaceC5839hjArr4, zArr2, j2);
            if (i5 == 0) {
                j2 = mo5302e;
            } else if (mo5302e != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z2 = false;
            for (int i6 = 0; i6 < c6172qjArr.length; i6++) {
                boolean z3 = true;
                if (iArr2[i6] == i5) {
                    if (interfaceC5839hjArr4[i6] != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    C6358vk.m6137d(z);
                    InterfaceC5839hj interfaceC5839hj3 = interfaceC5839hjArr4[i6];
                    interfaceC5839hjArr3[i6] = interfaceC5839hj3;
                    this.f33605b.put(interfaceC5839hj3, Integer.valueOf(i5));
                    z2 = true;
                } else if (iArr[i6] == i5) {
                    if (interfaceC5839hjArr4[i6] != null) {
                        z3 = false;
                    }
                    C6358vk.m6137d(z3);
                }
            }
            if (z2) {
                arrayList2.add(this.f33604a[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            c6172qjArr2 = c6172qjArr3;
            interfaceC5839hjArr2 = interfaceC5839hjArr;
        }
        InterfaceC5839hj[] interfaceC5839hjArr5 = interfaceC5839hjArr2;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(interfaceC5839hjArr3, 0, interfaceC5839hjArr5, 0, length);
        InterfaceC6319ui[] interfaceC6319uiArr2 = new InterfaceC6319ui[arrayList3.size()];
        this.f33609q = interfaceC6319uiArr2;
        arrayList3.toArray(interfaceC6319uiArr2);
        this.f33610r = new C5875ii(this.f33609q);
        return j2;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: f */
    public final void mo5301f(InterfaceC6282ti interfaceC6282ti, long j) {
        this.f33606d = interfaceC6282ti;
        InterfaceC6319ui[] interfaceC6319uiArr = this.f33604a;
        this.f33607k = interfaceC6319uiArr.length;
        for (InterfaceC6319ui interfaceC6319ui : interfaceC6319uiArr) {
            interfaceC6319ui.mo5301f(this, j);
        }
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: h */
    public final long mo5300h(long j) {
        long mo5300h = this.f33609q[0].mo5300h(j);
        int i = 1;
        while (true) {
            InterfaceC6319ui[] interfaceC6319uiArr = this.f33609q;
            if (i < interfaceC6319uiArr.length) {
                if (interfaceC6319uiArr[i].mo5300h(mo5300h) == mo5300h) {
                    i++;
                } else {
                    throw new IllegalStateException("Children seeked to different positions");
                }
            } else {
                return mo5300h;
            }
        }
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: k */
    public final void mo5299k(long j) {
        for (InterfaceC6319ui interfaceC6319ui : this.f33609q) {
            interfaceC6319ui.mo5299k(j);
        }
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: l */
    public final void mo5298l() {
        for (InterfaceC6319ui interfaceC6319ui : this.f33604a) {
            interfaceC6319ui.mo5298l();
        }
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: m */
    public final long mo5297m() {
        long j = Long.MAX_VALUE;
        for (InterfaceC6319ui interfaceC6319ui : this.f33609q) {
            long mo5297m = interfaceC6319ui.mo5297m();
            if (mo5297m != Long.MIN_VALUE) {
                j = Math.min(j, mo5297m);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // p168r4.InterfaceC6319ui
    /* renamed from: o */
    public final long mo5296o() {
        InterfaceC6319ui[] interfaceC6319uiArr;
        long mo5296o = this.f33604a[0].mo5296o();
        int i = 1;
        while (true) {
            InterfaceC6319ui[] interfaceC6319uiArr2 = this.f33604a;
            if (i < interfaceC6319uiArr2.length) {
                if (interfaceC6319uiArr2[i].mo5296o() == -9223372036854775807L) {
                    i++;
                } else {
                    throw new IllegalStateException("Child reported discontinuity");
                }
            } else {
                if (mo5296o != -9223372036854775807L) {
                    for (InterfaceC6319ui interfaceC6319ui : this.f33609q) {
                        if (interfaceC6319ui != this.f33604a[0] && interfaceC6319ui.mo5300h(mo5296o) != mo5296o) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return mo5296o;
            }
        }
    }
}

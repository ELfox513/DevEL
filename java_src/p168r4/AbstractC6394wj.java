package p168r4;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* renamed from: r4.wj */
/* loaded from: classes2.dex */
public abstract class AbstractC6394wj extends AbstractC5581ak {

    /* renamed from: b */
    public final SparseArray<Map<C6023mj, C6357vj>> f33200b = new SparseArray<>();

    /* renamed from: c */
    public final SparseBooleanArray f33201c = new SparseBooleanArray();

    /* renamed from: d */
    public C6320uj f33202d;

    @Override // p168r4.AbstractC5581ak
    /* renamed from: b */
    public final void mo5710b(Object obj) {
        this.f33202d = (C6320uj) obj;
    }

    /* renamed from: e */
    public abstract C6172qj[] mo5709e(InterfaceC6092od[] interfaceC6092odArr, C6023mj[] c6023mjArr, int[][][] iArr);

    @Override // p168r4.AbstractC5581ak
    /* renamed from: a */
    public final C5618bk mo5711a(InterfaceC6092od[] interfaceC6092odArr, C6023mj c6023mj) {
        C6129pd c6129pd;
        C6357vj c6357vj;
        int[] iArr;
        int[] iArr2 = new int[3];
        C5986lj[][] c5986ljArr = new C5986lj[3];
        int[][][] iArr3 = new int[3][];
        for (int i = 0; i < 3; i++) {
            int i2 = c6023mj.f27743a;
            c5986ljArr[i] = new C5986lj[i2];
            iArr3[i] = new int[i2];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            interfaceC6092odArr[i4].mo8830m();
            iArr4[i4] = 4;
        }
        int i5 = 0;
        while (i5 < c6023mj.f27743a) {
            C5986lj m9378a = c6023mj.m9378a(i5);
            int i6 = 0;
            int i7 = 0;
            int i8 = 2;
            while (true) {
                if (i6 < i3) {
                    InterfaceC6092od interfaceC6092od = interfaceC6092odArr[i6];
                    int i9 = 0;
                    while (true) {
                        int i10 = m9378a.f27228a;
                        if (i9 <= 0) {
                            int mo8829p = interfaceC6092od.mo8829p(m9378a.m9657a(i9)) & 3;
                            if (mo8829p > i7) {
                                if (mo8829p == 3) {
                                    break;
                                }
                                i8 = i6;
                                i7 = mo8829p;
                            }
                            i9++;
                        }
                    }
                } else {
                    i6 = i8;
                    break;
                }
                i6++;
                i3 = 2;
            }
            if (i6 == 2) {
                int i11 = m9378a.f27228a;
                iArr = new int[1];
            } else {
                InterfaceC6092od interfaceC6092od2 = interfaceC6092odArr[i6];
                int i12 = m9378a.f27228a;
                int[] iArr5 = new int[1];
                for (int i13 = 0; i13 <= 0; i13++) {
                    iArr5[i13] = interfaceC6092od2.mo8829p(m9378a.m9657a(i13));
                }
                iArr = iArr5;
            }
            int i14 = iArr2[i6];
            c5986ljArr[i6][i14] = m9378a;
            iArr3[i6][i14] = iArr;
            iArr2[i6] = i14 + 1;
            i5++;
            i3 = 2;
        }
        C6023mj[] c6023mjArr = new C6023mj[2];
        int[] iArr6 = new int[2];
        int i15 = 0;
        for (int i16 = 2; i15 < i16; i16 = 2) {
            int i17 = iArr2[i15];
            c6023mjArr[i15] = new C6023mj((C5986lj[]) Arrays.copyOf(c5986ljArr[i15], i17));
            iArr3[i15] = (int[][]) Arrays.copyOf(iArr3[i15], i17);
            iArr6[i15] = interfaceC6092odArr[i15].zza();
            i15++;
        }
        C6023mj c6023mj2 = new C6023mj((C5986lj[]) Arrays.copyOf(c5986ljArr[2], iArr2[2]));
        C6172qj[] mo5709e = mo5709e(interfaceC6092odArr, c6023mjArr, iArr3);
        int i18 = 0;
        for (int i19 = 2; i18 < i19; i19 = 2) {
            if (this.f33201c.get(i18)) {
                mo5709e[i18] = null;
            } else {
                C6023mj c6023mj3 = c6023mjArr[i18];
                Map<C6023mj, C6357vj> map = this.f33200b.get(i18);
                if (map == null) {
                    c6357vj = null;
                } else {
                    c6357vj = map.get(c6023mj3);
                }
                if (c6357vj != null) {
                    throw null;
                }
            }
            i18++;
        }
        C6320uj c6320uj = new C6320uj(iArr6, c6023mjArr, iArr4, iArr3, c6023mj2);
        C6129pd[] c6129pdArr = new C6129pd[2];
        for (int i20 = 0; i20 < 2; i20++) {
            if (mo5709e[i20] != null) {
                c6129pd = C6129pd.f29428b;
            } else {
                c6129pd = null;
            }
            c6129pdArr[i20] = c6129pd;
        }
        return new C5618bk(c6023mj, new C6468yj(mo5709e, null), c6320uj, c6129pdArr);
    }

    /* renamed from: f */
    public final void m5708f(int i, boolean z) {
        if (this.f33201c.get(i) == z) {
            return;
        }
        this.f33201c.put(i, z);
        m13008d();
    }
}

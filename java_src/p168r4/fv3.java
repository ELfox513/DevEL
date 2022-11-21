package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.fv3 */
/* loaded from: classes2.dex */
public final class fv3 extends hv3 {

    /* renamed from: f */
    public final kw3 f23782f;

    /* renamed from: g */
    public final o33<dv3> f23783g;

    /* renamed from: h */
    public final InterfaceC5940ka f23784h;

    public fv3(h24 h24Var, int[] iArr, int i, kw3 kw3Var, long j, long j2, long j3, float f, float f2, List<dv3> list, InterfaceC5940ka interfaceC5940ka) {
        super(h24Var, iArr, 0);
        this.f23782f = kw3Var;
        this.f23783g = o33.m8893x(list);
        this.f23784h = interfaceC5940ka;
    }

    /* renamed from: f */
    public static void m11353f(List<l33<dv3>> list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            l33<dv3> l33Var = list.get(i2);
            if (l33Var != null) {
                l33Var.m9798f(new dv3(j, jArr[i2]));
            }
        }
    }

    /* renamed from: e */
    public static /* synthetic */ o33<o33<dv3>> m11354e(vv3[] vv3VarArr) {
        int i;
        int i2;
        o33 m9797g;
        double d;
        long j;
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        char c = 0;
        int i3 = 0;
        while (true) {
            i = 2;
            i2 = 1;
            if (i3 >= 2) {
                break;
            }
            vv3 vv3Var = vv3VarArr[i3];
            if (vv3Var != null && vv3Var.f32944b.length > 1) {
                l33 m8902E = o33.m8902E();
                m8902E.m9798f(new dv3(0L, 0L));
                arrayList.add(m8902E);
            } else {
                arrayList.add(null);
            }
            i3++;
        }
        long[][] jArr = new long[2];
        for (int i4 = 0; i4 < 2; i4++) {
            vv3 vv3Var2 = vv3VarArr[i4];
            if (vv3Var2 == null) {
                jArr[i4] = new long[0];
            } else {
                jArr[i4] = new long[vv3Var2.f32944b.length];
                int i5 = 0;
                while (true) {
                    if (i5 >= vv3Var2.f32944b.length) {
                        break;
                    }
                    jArr[i4][i5] = vv3Var2.f32943a.m11000a(iArr[i5]).f22810h;
                    i5++;
                }
                Arrays.sort(jArr[i4]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr2 = new long[2];
        for (int i6 = 0; i6 < 2; i6++) {
            long[] jArr3 = jArr[i6];
            if (jArr3.length == 0) {
                j = 0;
            } else {
                j = jArr3[0];
            }
            jArr2[i6] = j;
        }
        m11353f(arrayList, jArr2);
        d43 mo6911c = w43.m5878b(b53.m12868b()).m6638b(2).mo6911c();
        int i7 = 0;
        while (i7 < i) {
            int length = jArr[i7].length;
            if (length > i2) {
                double[] dArr = new double[length];
                int i8 = 0;
                while (true) {
                    long[] jArr4 = jArr[i7];
                    double d2 = 0.0d;
                    if (i8 >= jArr4.length) {
                        break;
                    }
                    long j2 = jArr4[i8];
                    if (j2 != -1) {
                        d2 = Math.log(j2);
                    }
                    dArr[i8] = d2;
                    i8++;
                }
                int i9 = length - 1;
                double d3 = dArr[i9] - dArr[c];
                int i10 = 0;
                while (i10 < i9) {
                    int i11 = i10 + 1;
                    double d4 = (dArr[i10] + dArr[i11]) * 0.5d;
                    if (d3 == 0.0d) {
                        d = 1.0d;
                    } else {
                        d = (d4 - dArr[c]) / d3;
                    }
                    mo6911c.mo5895a(Double.valueOf(d), Integer.valueOf(i7));
                    i10 = i11;
                    c = 0;
                }
            }
            i7++;
            c = 0;
            i = 2;
            i2 = 1;
        }
        o33 m8893x = o33.m8893x(mo6911c.mo5890n());
        for (int i12 = 0; i12 < m8893x.size(); i12++) {
            int intValue = ((Integer) m8893x.get(i12)).intValue();
            int i13 = iArr2[intValue] + 1;
            iArr2[intValue] = i13;
            jArr2[intValue] = jArr[intValue][i13];
            m11353f(arrayList, jArr2);
        }
        for (int i14 = 0; i14 < 2; i14++) {
            if (arrayList.get(i14) != null) {
                long j3 = jArr2[i14];
                jArr2[i14] = j3 + j3;
            }
        }
        m11353f(arrayList, jArr2);
        l33 m8902E2 = o33.m8902E();
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            l33 l33Var = (l33) arrayList.get(i15);
            if (l33Var == null) {
                m9797g = o33.m8900q();
            } else {
                m9797g = l33Var.m9797g();
            }
            m8902E2.m9798f(m9797g);
        }
        return m8902E2.m9797g();
    }
}

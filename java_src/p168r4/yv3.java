package p168r4;

import android.util.Pair;
/* renamed from: r4.yv3 */
/* loaded from: classes2.dex */
public abstract class yv3 extends aw3 {

    /* renamed from: c */
    public xv3 f34234c;

    @Override // p168r4.aw3
    /* renamed from: a */
    public final void mo4544a(Object obj) {
        this.f34234c = (xv3) obj;
    }

    /* renamed from: f */
    public abstract Pair<C5864i7[], hv3[]> mo4542f(xv3 xv3Var, int[][][] iArr, int[] iArr2, ft3 ft3Var, AbstractC5717e8 abstractC5717e8);

    @Override // p168r4.aw3
    /* renamed from: b */
    public final cw3 mo4543b(InterfaceC5827h7[] interfaceC5827h7Arr, j44 j44Var, ft3 ft3Var, AbstractC5717e8 abstractC5717e8) {
        int[] iArr;
        boolean z;
        int[] iArr2 = new int[3];
        h24[][] h24VarArr = new h24[3];
        int[][][] iArr3 = new int[3][];
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = j44Var.f25892a;
            h24VarArr[i2] = new h24[i3];
            iArr3[i2] = new int[i3];
        }
        int i4 = 2;
        int[] iArr4 = new int[2];
        for (int i5 = 0; i5 < 2; i5++) {
            iArr4[i5] = interfaceC5827h7Arr[i5].mo10964J();
        }
        int i6 = 0;
        while (i6 < j44Var.f25892a) {
            h24 m10424a = j44Var.m10424a(i6);
            int m10066f = C5941kb.m10066f(m10424a.m11000a(i).f22814l);
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (i7 < i4) {
                InterfaceC5827h7 interfaceC5827h7 = interfaceC5827h7Arr[i7];
                int i10 = 0;
                while (i <= 0) {
                    i10 = Math.max(i10, interfaceC5827h7.mo10706d(m10424a.m11000a(i)) & 7);
                    i++;
                }
                if (iArr2[i7] == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (i10 <= i9) {
                    if (i10 == i9 && m10066f == 5 && !z2 && z) {
                        i9 = i10;
                        i8 = i7;
                        z2 = true;
                    }
                } else {
                    z2 = z;
                    i9 = i10;
                    i8 = i7;
                }
                i7++;
                i4 = 2;
                i = 0;
            }
            if (i8 == i4) {
                iArr = new int[1];
            } else {
                InterfaceC5827h7 interfaceC5827h72 = interfaceC5827h7Arr[i8];
                int[] iArr5 = new int[1];
                for (int i11 = 0; i11 <= 0; i11++) {
                    iArr5[i11] = interfaceC5827h72.mo10706d(m10424a.m11000a(i11));
                }
                iArr = iArr5;
            }
            int i12 = iArr2[i8];
            h24VarArr[i8][i12] = m10424a;
            iArr3[i8][i12] = iArr;
            iArr2[i8] = i12 + 1;
            i6++;
            i4 = 2;
            i = 0;
        }
        j44[] j44VarArr = new j44[i4];
        String[] strArr = new String[i4];
        int[] iArr6 = new int[i4];
        int i13 = 0;
        while (i13 < i4) {
            int i14 = iArr2[i13];
            j44VarArr[i13] = new j44((h24[]) C5979lc.m9726K(h24VarArr[i13], i14));
            iArr3[i13] = (int[][]) C5979lc.m9726K(iArr3[i13], i14);
            strArr[i13] = interfaceC5827h7Arr[i13].mo10707b();
            iArr6[i13] = interfaceC5827h7Arr[i13].mo10965G();
            i13++;
            i4 = 2;
        }
        xv3 xv3Var = new xv3(strArr, iArr6, j44VarArr, iArr4, iArr3, new j44((h24[]) C5979lc.m9726K(h24VarArr[2], iArr2[2])));
        Pair<C5864i7[], hv3[]> mo4542f = mo4542f(xv3Var, iArr3, iArr4, ft3Var, abstractC5717e8);
        return new cw3((C5864i7[]) mo4542f.first, (hv3[]) mo4542f.second, xv3Var, null);
    }
}

package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.sj */
/* loaded from: classes2.dex */
public final class C6246sj extends AbstractC6394wj {

    /* renamed from: e */
    public final AtomicReference<C6209rj> f31378e = new AtomicReference<>(new C6209rj());

    /* renamed from: g */
    public static boolean m7152g(int i, boolean z) {
        int i2 = i & 3;
        return i2 == 3 || (z && i2 == 2);
    }

    /* renamed from: h */
    public static int m7151h(int i, int i2) {
        if (i == -1) {
            return i2 != -1 ? -1 : 0;
        } else if (i2 == -1) {
            return 1;
        } else {
            return i - i2;
        }
    }

    @Override // p168r4.AbstractC6394wj
    /* renamed from: e */
    public final C6172qj[] mo5709e(InterfaceC6092od[] interfaceC6092odArr, C6023mj[] c6023mjArr, int[][][] iArr) {
        C6283tj c6283tj;
        int i;
        C6283tj c6283tj2;
        C5986lj c5986lj;
        int[] iArr2;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        int m7151h;
        int i3 = 2;
        C6172qj[] c6172qjArr = new C6172qj[2];
        C6209rj c6209rj = this.f31378e.get();
        int i4 = 0;
        boolean z4 = false;
        while (true) {
            int i5 = -1;
            int i6 = 1;
            if (i4 >= i3) {
                break;
            }
            if (interfaceC6092odArr[i4].zza() == i3) {
                if (!z4) {
                    InterfaceC6092od interfaceC6092od = interfaceC6092odArr[i4];
                    C6023mj c6023mj = c6023mjArr[i4];
                    int[][] iArr3 = iArr[i4];
                    int i7 = c6209rj.f30595d;
                    int i8 = -1;
                    int i9 = 0;
                    C5986lj c5986lj2 = null;
                    int i10 = 0;
                    int i11 = 0;
                    while (i9 < c6023mj.f27743a) {
                        C5986lj m9378a = c6023mj.m9378a(i9);
                        int i12 = m9378a.f27228a;
                        ArrayList arrayList2 = new ArrayList(i6);
                        for (int i13 = 0; i13 <= 0; i13++) {
                            arrayList2.add(Integer.valueOf(i13));
                        }
                        int[] iArr4 = iArr3[i9];
                        int i14 = 0;
                        while (i14 <= 0) {
                            C6023mj c6023mj2 = c6023mj;
                            if (m7152g(iArr4[i14], true)) {
                                C5870id m9657a = m9378a.m9657a(i14);
                                if (arrayList2.contains(Integer.valueOf(i14))) {
                                    int i15 = m9657a.f25064u;
                                    c5986lj = m9378a;
                                    z = true;
                                    z2 = true;
                                } else {
                                    c5986lj = m9378a;
                                    z = true;
                                    z2 = false;
                                }
                                if (z != z2) {
                                    arrayList = arrayList2;
                                    i2 = 1;
                                } else {
                                    arrayList = arrayList2;
                                    i2 = 2;
                                }
                                iArr2 = iArr4;
                                boolean m7152g = m7152g(iArr4[i14], false);
                                if (m7152g) {
                                    i2 += CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                                }
                                if (i2 > i11) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (i2 == i11) {
                                    if (m9657a.m10688A() != i8) {
                                        m7151h = m7151h(m9657a.m10688A(), i8);
                                    } else {
                                        m7151h = m7151h(m9657a.f25056b, i5);
                                    }
                                    if (!m7152g || !z2 ? m7151h < 0 : m7151h > 0) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                }
                                if (z3) {
                                    i5 = m9657a.f25056b;
                                    i8 = m9657a.m10688A();
                                    i11 = i2;
                                    i10 = i14;
                                    c5986lj2 = c5986lj;
                                }
                            } else {
                                c5986lj = m9378a;
                                iArr2 = iArr4;
                                arrayList = arrayList2;
                            }
                            i14++;
                            c6023mj = c6023mj2;
                            m9378a = c5986lj;
                            arrayList2 = arrayList;
                            iArr4 = iArr2;
                        }
                        i9++;
                        i6 = 1;
                    }
                    if (c5986lj2 == null) {
                        c6283tj2 = null;
                    } else {
                        c6283tj2 = new C6283tj(c5986lj2, i10, 0, null);
                    }
                    c6172qjArr[i4] = c6283tj2;
                    if (c6283tj2 != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                int i16 = c6023mjArr[i4].f27743a;
            }
            i4++;
            i3 = 2;
        }
        int i17 = 0;
        boolean z5 = false;
        while (i17 < i3) {
            if (interfaceC6092odArr[i17].zza() == 1 && !z5) {
                C6023mj c6023mj3 = c6023mjArr[i17];
                int[][] iArr5 = iArr[i17];
                String str = c6209rj.f30592a;
                int i18 = 0;
                int i19 = 0;
                int i20 = -1;
                int i21 = -1;
                while (i18 < c6023mj3.f27743a) {
                    C5986lj m9378a2 = c6023mj3.m9378a(i18);
                    int[] iArr6 = iArr5[i18];
                    int i22 = i21;
                    int i23 = i20;
                    int i24 = i19;
                    int i25 = 0;
                    while (true) {
                        int i26 = m9378a2.f27228a;
                        if (i25 <= 0) {
                            if (m7152g(iArr6[i25], true)) {
                                C5870id m9657a2 = m9378a2.m9657a(i25);
                                int i27 = iArr6[i25];
                                if (1 != (m9657a2.f25051I & 1)) {
                                    i = 1;
                                } else {
                                    i = 2;
                                }
                                if (m7152g(i27, false)) {
                                    i += CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                                }
                                if (i > i24) {
                                    i23 = i18;
                                    i22 = i25;
                                    i24 = i;
                                }
                            }
                            i25++;
                        }
                    }
                    i18++;
                    i19 = i24;
                    i20 = i23;
                    i21 = i22;
                }
                if (i20 == -1) {
                    c6283tj = null;
                } else {
                    c6283tj = new C6283tj(c6023mj3.m9378a(i20), i21, 0, null);
                }
                c6172qjArr[i17] = c6283tj;
                if (c6283tj != null) {
                    z5 = true;
                } else {
                    z5 = false;
                }
            }
            i17++;
            i3 = 2;
        }
        return c6172qjArr;
    }

    public C6246sj(InterfaceC6431xj interfaceC6431xj) {
    }
}

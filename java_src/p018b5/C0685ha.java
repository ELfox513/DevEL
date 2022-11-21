package p018b5;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;
/* renamed from: b5.ha */
/* loaded from: classes2.dex */
public final class C0685ha<T> implements InterfaceC0821pa<T> {

    /* renamed from: p */
    public static final int[] f1850p = new int[0];

    /* renamed from: q */
    public static final Unsafe f1851q = C0856rb.m25349l();

    /* renamed from: a */
    public final int[] f1852a;

    /* renamed from: b */
    public final Object[] f1853b;

    /* renamed from: c */
    public final int f1854c;

    /* renamed from: d */
    public final int f1855d;

    /* renamed from: e */
    public final InterfaceC0634ea f1856e;

    /* renamed from: f */
    public final boolean f1857f;

    /* renamed from: g */
    public final boolean f1858g;

    /* renamed from: h */
    public final int[] f1859h;

    /* renamed from: i */
    public final int f1860i;

    /* renamed from: j */
    public final int f1861j;

    /* renamed from: k */
    public final AbstractC0854r9 f1862k;

    /* renamed from: l */
    public final AbstractC0686hb<?, ?> f1863l;

    /* renamed from: m */
    public final AbstractC0751l8<?> f1864m;

    /* renamed from: n */
    public final C0719ja f1865n;

    /* renamed from: o */
    public final C0990z9 f1866o;

    /* JADX WARN: Multi-variable type inference failed */
    public C0685ha(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, InterfaceC0634ea interfaceC0634ea, boolean z, boolean z2, int[] iArr3, int i3, int i4, C0719ja c0719ja, AbstractC0854r9 abstractC0854r9, AbstractC0686hb<?, ?> abstractC0686hb, AbstractC0751l8<?> abstractC0751l8, C0990z9 c0990z9) {
        this.f1852a = iArr;
        this.f1853b = iArr2;
        this.f1854c = objArr;
        this.f1855d = i;
        this.f1858g = interfaceC0634ea;
        boolean z3 = false;
        if (abstractC0686hb != 0 && abstractC0686hb.mo25656c((InterfaceC0634ea) i2)) {
            z3 = true;
        }
        this.f1857f = z3;
        this.f1859h = z2;
        this.f1860i = iArr3;
        this.f1861j = i3;
        this.f1865n = i4;
        this.f1862k = c0719ja;
        this.f1863l = abstractC0854r9;
        this.f1864m = abstractC0686hb;
        this.f1856e = i2;
        this.f1866o = abstractC0751l8;
    }

    /* renamed from: H */
    public static <T> double m25852H(T t, long j) {
        return ((Double) C0856rb.m25350k(t, j)).doubleValue();
    }

    /* renamed from: I */
    public static <T> float m25851I(T t, long j) {
        return ((Float) C0856rb.m25350k(t, j)).floatValue();
    }

    /* renamed from: L */
    public static <T> int m25848L(T t, long j) {
        return ((Integer) C0856rb.m25350k(t, j)).intValue();
    }

    /* renamed from: j */
    public static int m25839j(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: l */
    public static <T> long m25837l(T t, long j) {
        return ((Long) C0856rb.m25350k(t, j)).longValue();
    }

    /* renamed from: z */
    public static <T> boolean m25823z(T t, long j) {
        return ((Boolean) C0856rb.m25350k(t, j)).booleanValue();
    }

    /* renamed from: N */
    public final int m25846N(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C0699i7 c0699i7) {
        Unsafe unsafe = f1851q;
        long j2 = this.f1852a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(C0716j7.m25740n(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(C0716j7.m25752b(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int m25741m = C0716j7.m25741m(bArr, i, c0699i7);
                    unsafe.putObject(t, j, Long.valueOf(c0699i7.f1880b));
                    unsafe.putInt(t, j2, i4);
                    return m25741m;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int m25744j = C0716j7.m25744j(bArr, i, c0699i7);
                    unsafe.putObject(t, j, Integer.valueOf(c0699i7.f1879a));
                    unsafe.putInt(t, j2, i4);
                    return m25744j;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C0716j7.m25740n(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C0716j7.m25752b(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int m25741m2 = C0716j7.m25741m(bArr, i, c0699i7);
                    unsafe.putObject(t, j, Boolean.valueOf(c0699i7.f1880b != 0));
                    unsafe.putInt(t, j2, i4);
                    return m25741m2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int m25744j2 = C0716j7.m25744j(bArr, i, c0699i7);
                    int i9 = c0699i7.f1879a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !C0941wb.m25019f(bArr, m25744j2, m25744j2 + i9)) {
                        throw C0684h9.m25863c();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, m25744j2, i9, C0650f9.f1817a));
                        m25744j2 += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return m25744j2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int m25750d = C0716j7.m25750d(m25835n(i8), bArr, i, i2, c0699i7);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, c0699i7.f1881c);
                    } else {
                        unsafe.putObject(t, j, C0650f9.m25944g(object, c0699i7.f1881c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return m25750d;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int m25753a = C0716j7.m25753a(bArr, i, c0699i7);
                    unsafe.putObject(t, j, c0699i7.f1881c);
                    unsafe.putInt(t, j2, i4);
                    return m25753a;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int m25744j3 = C0716j7.m25744j(bArr, i, c0699i7);
                    int i10 = c0699i7.f1879a;
                    InterfaceC0582b9 m25836m = m25836m(i8);
                    if (m25836m != null && !m25836m.mo25054h(i10)) {
                        m25855E(t).m25787h(i3, Long.valueOf(i10));
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    }
                    return m25744j3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int m25744j4 = C0716j7.m25744j(bArr, i, c0699i7);
                    unsafe.putObject(t, j, Integer.valueOf(C0581b8.m26130a(c0699i7.f1879a)));
                    unsafe.putInt(t, j2, i4);
                    return m25744j4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int m25741m3 = C0716j7.m25741m(bArr, i, c0699i7);
                    unsafe.putObject(t, j, Long.valueOf(C0581b8.m26129b(c0699i7.f1880b)));
                    unsafe.putInt(t, j2, i4);
                    return m25741m3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int m25751c = C0716j7.m25751c(m25835n(i8), bArr, i, i2, (i3 & (-8)) | 4, c0699i7);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, c0699i7.f1881c);
                    } else {
                        unsafe.putObject(t, j, C0650f9.m25944g(object2, c0699i7.f1881c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return m25751c;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x021a -> B:120:0x021b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x014f -> B:67:0x0150). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x01cc -> B:100:0x01cd). Please submit an issue!!! */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25844P(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, p018b5.C0699i7 r29) {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0685ha.m25844P(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, b5.i7):int");
    }

    /* renamed from: Q */
    public final int m25843Q(int i) {
        if (i < this.f1854c || i > this.f1855d) {
            return -1;
        }
        return m25840T(i, 0);
    }

    /* renamed from: R */
    public final int m25842R(int i, int i2) {
        if (i < this.f1854c || i > this.f1855d) {
            return -1;
        }
        return m25840T(i, i2);
    }

    /* renamed from: S */
    public final int m25841S(int i) {
        return this.f1852a[i + 2];
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: a */
    public final int mo25496a(T t) {
        return this.f1858g ? m25849K(t) : m25850J(t);
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: c */
    public final T mo25494c() {
        return (T) ((AbstractC0955x8) this.f1856e).mo24877r(4, null, null);
    }

    /* renamed from: k */
    public final int m25838k(int i) {
        return this.f1852a[i + 1];
    }

    /* renamed from: m */
    public final InterfaceC0582b9 m25836m(int i) {
        int i2 = i / 3;
        return (InterfaceC0582b9) this.f1853b[i2 + i2 + 1];
    }

    /* renamed from: o */
    public final Object m25834o(int i) {
        int i2 = i / 3;
        return this.f1853b[i2 + i2];
    }

    /* renamed from: u */
    public final boolean m25828u(T t, T t2, int i) {
        return m25827v(t, i) == m25827v(t2, i);
    }

    /* renamed from: w */
    public final boolean m25826w(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m25827v(t, i) : (i3 & i4) != 0;
    }

    /* renamed from: C */
    public static final void m25857C(int i, Object obj, C0666g8 c0666g8) {
        if (obj instanceof String) {
            c0666g8.m25910f(i, (String) obj);
        } else {
            c0666g8.m25901o(i, (AbstractC0937w7) obj);
        }
    }

    /* renamed from: E */
    public static C0703ib m25855E(Object obj) {
        AbstractC0955x8 abstractC0955x8 = (AbstractC0955x8) obj;
        C0703ib c0703ib = abstractC0955x8.zzc;
        if (c0703ib == C0703ib.m25792c()) {
            C0703ib m25790e = C0703ib.m25790e();
            abstractC0955x8.zzc = m25790e;
            return m25790e;
        }
        return c0703ib;
    }

    /* renamed from: F */
    public static <T> C0685ha<T> m25854F(Class<T> cls, InterfaceC0583ba interfaceC0583ba, C0719ja c0719ja, AbstractC0854r9 abstractC0854r9, AbstractC0686hb<?, ?> abstractC0686hb, AbstractC0751l8<?> abstractC0751l8, C0990z9 c0990z9) {
        if (interfaceC0583ba instanceof C0804oa) {
            return m25853G((C0804oa) interfaceC0583ba, c0719ja, abstractC0854r9, abstractC0686hb, abstractC0751l8, c0990z9);
        }
        C0635eb c0635eb = (C0635eb) interfaceC0583ba;
        throw null;
    }

    /* renamed from: A */
    public final void m25859A(T t, C0666g8 c0666g8) {
        int i;
        if (!this.f1857f) {
            int length = this.f1852a.length;
            Unsafe unsafe = f1851q;
            int i2 = 1048575;
            int i3 = 0;
            int i4 = 0;
            int i5 = 1048575;
            while (i3 < length) {
                int m25838k = m25838k(i3);
                int i6 = this.f1852a[i3];
                int m25839j = m25839j(m25838k);
                if (m25839j <= 17) {
                    int i7 = this.f1852a[i3 + 2];
                    int i8 = i7 & i2;
                    if (i8 != i5) {
                        i4 = unsafe.getInt(t, i8);
                        i5 = i8;
                    }
                    i = 1 << (i7 >>> 20);
                } else {
                    i = 0;
                }
                long j = m25838k & i2;
                switch (m25839j) {
                    case 0:
                        if ((i4 & i) != 0) {
                            c0666g8.m25899q(i6, C0856rb.m25355f(t, j));
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 1:
                        if ((i4 & i) != 0) {
                            c0666g8.m25890z(i6, C0856rb.m25354g(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 2:
                        if ((i4 & i) != 0) {
                            c0666g8.m25922E(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 3:
                        if ((i4 & i) != 0) {
                            c0666g8.m25906j(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 4:
                        if ((i4 & i) != 0) {
                            c0666g8.m25924C(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 5:
                        if ((i4 & i) != 0) {
                            c0666g8.m25892x(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 6:
                        if ((i4 & i) != 0) {
                            c0666g8.m25894v(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 7:
                        if ((i4 & i) != 0) {
                            c0666g8.m25903m(i6, C0856rb.m25364B(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 8:
                        if ((i4 & i) != 0) {
                            m25857C(i6, unsafe.getObject(t, j), c0666g8);
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 9:
                        if ((i4 & i) != 0) {
                            c0666g8.m25920G(i6, unsafe.getObject(t, j), m25835n(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 10:
                        if ((i4 & i) != 0) {
                            c0666g8.m25901o(i6, (AbstractC0937w7) unsafe.getObject(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 11:
                        if ((i4 & i) != 0) {
                            c0666g8.m25908h(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 12:
                        if ((i4 & i) != 0) {
                            c0666g8.m25896t(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 13:
                        if ((i4 & i) != 0) {
                            c0666g8.m25919H(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 14:
                        if ((i4 & i) != 0) {
                            c0666g8.m25917J(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 15:
                        if ((i4 & i) != 0) {
                            c0666g8.m25915a(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 16:
                        if ((i4 & i) != 0) {
                            c0666g8.m25913c(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 17:
                        if ((i4 & i) != 0) {
                            c0666g8.m25925B(i6, unsafe.getObject(t, j), m25835n(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 18:
                        C0855ra.m25380l(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 19:
                        C0855ra.m25376p(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 20:
                        C0855ra.m25373s(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 21:
                        C0855ra.m25418B(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 22:
                        C0855ra.m25374r(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 23:
                        C0855ra.m25377o(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 24:
                        C0855ra.m25378n(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 25:
                        C0855ra.m25382j(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 26:
                        C0855ra.m25367y(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8);
                        break;
                    case 27:
                        C0855ra.m25372t(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, m25835n(i3));
                        break;
                    case 28:
                        C0855ra.m25381k(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8);
                        break;
                    case 29:
                        C0855ra.m25366z(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 30:
                        C0855ra.m25379m(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 31:
                        C0855ra.m25371u(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 32:
                        C0855ra.m25370v(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 33:
                        C0855ra.m25369w(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 34:
                        C0855ra.m25368x(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, false);
                        break;
                    case 35:
                        C0855ra.m25380l(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 36:
                        C0855ra.m25376p(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 37:
                        C0855ra.m25373s(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 38:
                        C0855ra.m25418B(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 39:
                        C0855ra.m25374r(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 40:
                        C0855ra.m25377o(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 41:
                        C0855ra.m25378n(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 42:
                        C0855ra.m25382j(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 43:
                        C0855ra.m25366z(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 44:
                        C0855ra.m25379m(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 45:
                        C0855ra.m25371u(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 46:
                        C0855ra.m25370v(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 47:
                        C0855ra.m25369w(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 48:
                        C0855ra.m25368x(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, true);
                        break;
                    case 49:
                        C0855ra.m25375q(this.f1852a[i3], (List) unsafe.getObject(t, j), c0666g8, m25835n(i3));
                        break;
                    case 50:
                        m25858B(c0666g8, i6, unsafe.getObject(t, j), i3);
                        break;
                    case 51:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25899q(i6, m25852H(t, j));
                            break;
                        }
                        break;
                    case 52:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25890z(i6, m25851I(t, j));
                            break;
                        }
                        break;
                    case 53:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25922E(i6, m25837l(t, j));
                            break;
                        }
                        break;
                    case 54:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25906j(i6, m25837l(t, j));
                            break;
                        }
                        break;
                    case 55:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25924C(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 56:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25892x(i6, m25837l(t, j));
                            break;
                        }
                        break;
                    case 57:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25894v(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 58:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25903m(i6, m25823z(t, j));
                            break;
                        }
                        break;
                    case 59:
                        if (m25824y(t, i6, i3)) {
                            m25857C(i6, unsafe.getObject(t, j), c0666g8);
                            break;
                        }
                        break;
                    case 60:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25920G(i6, unsafe.getObject(t, j), m25835n(i3));
                            break;
                        }
                        break;
                    case 61:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25901o(i6, (AbstractC0937w7) unsafe.getObject(t, j));
                            break;
                        }
                        break;
                    case 62:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25908h(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 63:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25896t(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 64:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25919H(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 65:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25917J(i6, m25837l(t, j));
                            break;
                        }
                        break;
                    case 66:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25915a(i6, m25848L(t, j));
                            break;
                        }
                        break;
                    case 67:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25913c(i6, m25837l(t, j));
                            break;
                        }
                        break;
                    case 68:
                        if (m25824y(t, i6, i3)) {
                            c0666g8.m25925B(i6, unsafe.getObject(t, j), m25835n(i3));
                            break;
                        }
                        break;
                }
                i3 += 3;
                i2 = 1048575;
            }
            AbstractC0686hb<?, ?> abstractC0686hb = this.f1863l;
            abstractC0686hb.mo25728i(abstractC0686hb.mo25734c(t), c0666g8);
            return;
        }
        this.f1864m.mo25658a(t);
        throw null;
    }

    /* renamed from: B */
    public final <K, V> void m25858B(C0666g8 c0666g8, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        C0939w9 c0939w9 = (C0939w9) m25834o(i2);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x0419, code lost:
        if (r6 == 1048575) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x041b, code lost:
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0421, code lost:
        r3 = r9.f1860i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0425, code lost:
        if (r3 >= r9.f1861j) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0427, code lost:
        r4 = r9.f1859h[r3];
        r5 = r9.f1852a[r4];
        r5 = p018b5.C0856rb.m25350k(r12, r9.m25838k(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0439, code lost:
        if (r5 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0440, code lost:
        if (r9.m25836m(r4) != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0442, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0445, code lost:
        r5 = (p018b5.C0973y9) r5;
        r0 = (p018b5.C0939w9) r9.m25834o(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x044d, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x044e, code lost:
        if (r7 != 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0452, code lost:
        if (r0 != r32) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0459, code lost:
        throw p018b5.C0684h9.m25861e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x045c, code lost:
        if (r0 > r32) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x045e, code lost:
        if (r1 != r7) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0460, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0466, code lost:
        throw p018b5.C0684h9.m25861e();
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25856D(T r29, byte[] r30, int r31, int r32, int r33, p018b5.C0699i7 r34) {
        /*
            Method dump skipped, instructions count: 1166
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0685ha.m25856D(java.lang.Object, byte[], int, int, int, b5.i7):int");
    }

    /* renamed from: J */
    public final int m25850J(T t) {
        int i;
        int m25976a;
        int m25976a2;
        int m25976a3;
        int m25975b;
        int m25976a4;
        int m25951z;
        int m25976a5;
        int m25976a6;
        int mo25037g;
        int m25976a7;
        int m25403Q;
        int m25977D;
        int m25976a8;
        int i2;
        Unsafe unsafe = f1851q;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        for (int i6 = 0; i6 < this.f1852a.length; i6 += 3) {
            int m25838k = m25838k(i6);
            int i7 = this.f1852a[i6];
            int m25839j = m25839j(m25838k);
            if (m25839j <= 17) {
                int i8 = this.f1852a[i6 + 2];
                int i9 = i8 & 1048575;
                i = 1 << (i8 >>> 20);
                if (i9 != i5) {
                    i4 = unsafe.getInt(t, i9);
                    i5 = i9;
                }
            } else {
                i = 0;
            }
            long j = m25838k & 1048575;
            switch (m25839j) {
                case 0:
                    if ((i4 & i) != 0) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if ((i4 & i) != 0) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i4 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i7 << 3);
                        m25975b = AbstractC0649f8.m25975b(j2);
                        m25403Q = m25976a3 + m25975b;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i4 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i7 << 3);
                        m25975b = AbstractC0649f8.m25975b(j3);
                        m25403Q = m25976a3 + m25975b;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i4 & i) != 0) {
                        int i10 = unsafe.getInt(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25951z(i10);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i4 & i) != 0) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i4 & i) != 0) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i4 & i) != 0) {
                        m25976a5 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i4 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof AbstractC0937w7) {
                            m25976a6 = AbstractC0649f8.m25976a(i7 << 3);
                            mo25037g = ((AbstractC0937w7) object).mo25037g();
                            m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                            i2 = m25976a6 + m25976a7 + mo25037g;
                            i3 += i2;
                        } else {
                            m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                            m25951z = AbstractC0649f8.m25978C((String) object);
                            i2 = m25976a4 + m25951z;
                            i3 += i2;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if ((i4 & i) != 0) {
                        m25403Q = C0855ra.m25403Q(i7, unsafe.getObject(t, j), m25835n(i6));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i4 & i) != 0) {
                        m25976a6 = AbstractC0649f8.m25976a(i7 << 3);
                        mo25037g = ((AbstractC0937w7) unsafe.getObject(t, j)).mo25037g();
                        m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                        i2 = m25976a6 + m25976a7 + mo25037g;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i4 & i) != 0) {
                        int i11 = unsafe.getInt(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25976a(i11);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i4 & i) != 0) {
                        int i12 = unsafe.getInt(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25951z(i12);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i4 & i) != 0) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i4 & i) != 0) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i4 & i) != 0) {
                        int i13 = unsafe.getInt(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25976a((i13 >> 31) ^ (i13 + i13));
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i4 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25975b((j4 >> 63) ^ (j4 + j4));
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i4 & i) != 0) {
                        m25403Q = AbstractC0649f8.m25952y(i7, (InterfaceC0634ea) unsafe.getObject(t, j), m25835n(i6));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    m25403Q = C0855ra.m25410J(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    m25403Q = C0855ra.m25412H(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    m25403Q = C0855ra.m25405O(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    m25403Q = C0855ra.m25394Z(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    m25403Q = C0855ra.m25407M(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    m25403Q = C0855ra.m25410J(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    m25403Q = C0855ra.m25412H(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    m25403Q = C0855ra.m25419A(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    m25403Q = C0855ra.m25397W(i7, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    m25403Q = C0855ra.m25402R(i7, (List) unsafe.getObject(t, j), m25835n(i6));
                    break;
                case 28:
                    m25403Q = C0855ra.m25415E(i7, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    m25403Q = C0855ra.m25396X(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    m25403Q = C0855ra.m25414F(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    m25403Q = C0855ra.m25412H(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    m25403Q = C0855ra.m25410J(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    m25403Q = C0855ra.m25401S(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    m25403Q = C0855ra.m25399U(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 36:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 37:
                    m25951z = C0855ra.m25404P((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 38:
                    m25951z = C0855ra.m25392a0((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 39:
                    m25951z = C0855ra.m25406N((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 40:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 41:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 42:
                    m25951z = C0855ra.m25416D((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 43:
                    m25951z = C0855ra.m25395Y((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 44:
                    m25951z = C0855ra.m25413G((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 45:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 46:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 47:
                    m25951z = C0855ra.m25400T((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 48:
                    m25951z = C0855ra.m25398V((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i7);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 49:
                    m25403Q = C0855ra.m25408L(i7, (List) unsafe.getObject(t, j), m25835n(i6));
                    break;
                case 50:
                    C0990z9.m24860a(i7, unsafe.getObject(t, j), m25834o(i6));
                    continue;
                case 51:
                    if (m25824y(t, i7, i6)) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (m25824y(t, i7, i6)) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (m25824y(t, i7, i6)) {
                        long m25837l = m25837l(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i7 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25837l);
                        m25403Q = m25976a3 + m25975b;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (m25824y(t, i7, i6)) {
                        long m25837l2 = m25837l(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i7 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25837l2);
                        m25403Q = m25976a3 + m25975b;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (m25824y(t, i7, i6)) {
                        int m25848L = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25848L);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 56:
                    if (m25824y(t, i7, i6)) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (m25824y(t, i7, i6)) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (m25824y(t, i7, i6)) {
                        m25976a5 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (m25824y(t, i7, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof AbstractC0937w7) {
                            m25976a6 = AbstractC0649f8.m25976a(i7 << 3);
                            mo25037g = ((AbstractC0937w7) object2).mo25037g();
                            m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                            i2 = m25976a6 + m25976a7 + mo25037g;
                            i3 += i2;
                        } else {
                            m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                            m25951z = AbstractC0649f8.m25978C((String) object2);
                            i2 = m25976a4 + m25951z;
                            i3 += i2;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (m25824y(t, i7, i6)) {
                        m25403Q = C0855ra.m25403Q(i7, unsafe.getObject(t, j), m25835n(i6));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (m25824y(t, i7, i6)) {
                        m25976a6 = AbstractC0649f8.m25976a(i7 << 3);
                        mo25037g = ((AbstractC0937w7) unsafe.getObject(t, j)).mo25037g();
                        m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                        i2 = m25976a6 + m25976a7 + mo25037g;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 62:
                    if (m25824y(t, i7, i6)) {
                        int m25848L2 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25976a(m25848L2);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 63:
                    if (m25824y(t, i7, i6)) {
                        int m25848L3 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25848L3);
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 64:
                    if (m25824y(t, i7, i6)) {
                        m25976a2 = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (m25824y(t, i7, i6)) {
                        m25976a = AbstractC0649f8.m25976a(i7 << 3);
                        m25403Q = m25976a + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (m25824y(t, i7, i6)) {
                        int m25848L4 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25976a((m25848L4 >> 31) ^ (m25848L4 + m25848L4));
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 67:
                    if (m25824y(t, i7, i6)) {
                        long m25837l3 = m25837l(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i7 << 3);
                        m25951z = AbstractC0649f8.m25975b((m25837l3 >> 63) ^ (m25837l3 + m25837l3));
                        i2 = m25976a4 + m25951z;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 68:
                    if (m25824y(t, i7, i6)) {
                        m25403Q = AbstractC0649f8.m25952y(i7, (InterfaceC0634ea) unsafe.getObject(t, j), m25835n(i6));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i3 += m25403Q;
        }
        AbstractC0686hb<?, ?> abstractC0686hb = this.f1863l;
        int mo25736a = i3 + abstractC0686hb.mo25736a(abstractC0686hb.mo25734c(t));
        if (!this.f1857f) {
            return mo25736a;
        }
        this.f1864m.mo25658a(t);
        throw null;
    }

    /* renamed from: K */
    public final int m25849K(T t) {
        int m25976a;
        int m25976a2;
        int m25976a3;
        int m25975b;
        int m25976a4;
        int m25951z;
        int m25976a5;
        int m25976a6;
        int mo25037g;
        int m25976a7;
        int m25403Q;
        int m25977D;
        int m25976a8;
        int i;
        Unsafe unsafe = f1851q;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f1852a.length; i3 += 3) {
            int m25838k = m25838k(i3);
            int m25839j = m25839j(m25838k);
            int i4 = this.f1852a[i3];
            long j = m25838k & 1048575;
            if (m25839j >= EnumC0836q8.f2192X.zza() && m25839j <= EnumC0836q8.f2206k0.zza()) {
                int i5 = this.f1852a[i3 + 2];
            }
            switch (m25839j) {
                case 0:
                    if (m25827v(t, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m25827v(t, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m25827v(t, i3)) {
                        long m25352i = C0856rb.m25352i(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i4 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25352i);
                        i2 += m25976a3 + m25975b;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m25827v(t, i3)) {
                        long m25352i2 = C0856rb.m25352i(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i4 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25352i2);
                        i2 += m25976a3 + m25975b;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m25827v(t, i3)) {
                        int m25353h = C0856rb.m25353h(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25353h);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m25827v(t, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m25827v(t, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m25827v(t, i3)) {
                        m25976a5 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a5 + 1;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!m25827v(t, i3)) {
                        break;
                    } else {
                        Object m25350k = C0856rb.m25350k(t, j);
                        if (m25350k instanceof AbstractC0937w7) {
                            m25976a6 = AbstractC0649f8.m25976a(i4 << 3);
                            mo25037g = ((AbstractC0937w7) m25350k).mo25037g();
                            m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                            i = m25976a6 + m25976a7 + mo25037g;
                            i2 += i;
                            break;
                        } else {
                            m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                            m25951z = AbstractC0649f8.m25978C((String) m25350k);
                            i = m25976a4 + m25951z;
                            i2 += i;
                        }
                    }
                case 9:
                    if (m25827v(t, i3)) {
                        m25403Q = C0855ra.m25403Q(i4, C0856rb.m25350k(t, j), m25835n(i3));
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (m25827v(t, i3)) {
                        m25976a6 = AbstractC0649f8.m25976a(i4 << 3);
                        mo25037g = ((AbstractC0937w7) C0856rb.m25350k(t, j)).mo25037g();
                        m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                        i = m25976a6 + m25976a7 + mo25037g;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m25827v(t, i3)) {
                        int m25353h2 = C0856rb.m25353h(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25976a(m25353h2);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m25827v(t, i3)) {
                        int m25353h3 = C0856rb.m25353h(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25353h3);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m25827v(t, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m25827v(t, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m25827v(t, i3)) {
                        int m25353h4 = C0856rb.m25353h(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25976a((m25353h4 >> 31) ^ (m25353h4 + m25353h4));
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m25827v(t, i3)) {
                        long m25352i3 = C0856rb.m25352i(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25975b((m25352i3 >> 63) ^ (m25352i3 + m25352i3));
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (m25827v(t, i3)) {
                        m25403Q = AbstractC0649f8.m25952y(i4, (InterfaceC0634ea) C0856rb.m25350k(t, j), m25835n(i3));
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    m25403Q = C0855ra.m25410J(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 19:
                    m25403Q = C0855ra.m25412H(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 20:
                    m25403Q = C0855ra.m25405O(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 21:
                    m25403Q = C0855ra.m25394Z(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 22:
                    m25403Q = C0855ra.m25407M(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 23:
                    m25403Q = C0855ra.m25410J(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 24:
                    m25403Q = C0855ra.m25412H(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 25:
                    m25403Q = C0855ra.m25419A(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 26:
                    m25403Q = C0855ra.m25397W(i4, (List) C0856rb.m25350k(t, j));
                    i2 += m25403Q;
                    break;
                case 27:
                    m25403Q = C0855ra.m25402R(i4, (List) C0856rb.m25350k(t, j), m25835n(i3));
                    i2 += m25403Q;
                    break;
                case 28:
                    m25403Q = C0855ra.m25415E(i4, (List) C0856rb.m25350k(t, j));
                    i2 += m25403Q;
                    break;
                case 29:
                    m25403Q = C0855ra.m25396X(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 30:
                    m25403Q = C0855ra.m25414F(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 31:
                    m25403Q = C0855ra.m25412H(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 32:
                    m25403Q = C0855ra.m25410J(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 33:
                    m25403Q = C0855ra.m25401S(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 34:
                    m25403Q = C0855ra.m25399U(i4, (List) C0856rb.m25350k(t, j), false);
                    i2 += m25403Q;
                    break;
                case 35:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    m25951z = C0855ra.m25404P((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    m25951z = C0855ra.m25392a0((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    m25951z = C0855ra.m25406N((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    m25951z = C0855ra.m25416D((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    m25951z = C0855ra.m25395Y((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    m25951z = C0855ra.m25413G((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    m25951z = C0855ra.m25411I((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    m25951z = C0855ra.m25409K((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    m25951z = C0855ra.m25400T((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    m25951z = C0855ra.m25398V((List) unsafe.getObject(t, j));
                    if (m25951z > 0) {
                        m25977D = AbstractC0649f8.m25977D(i4);
                        m25976a8 = AbstractC0649f8.m25976a(m25951z);
                        m25976a4 = m25977D + m25976a8;
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    m25403Q = C0855ra.m25408L(i4, (List) C0856rb.m25350k(t, j), m25835n(i3));
                    i2 += m25403Q;
                    break;
                case 50:
                    C0990z9.m24860a(i4, C0856rb.m25350k(t, j), m25834o(i3));
                    break;
                case 51:
                    if (m25824y(t, i4, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m25824y(t, i4, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m25824y(t, i4, i3)) {
                        long m25837l = m25837l(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i4 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25837l);
                        i2 += m25976a3 + m25975b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m25824y(t, i4, i3)) {
                        long m25837l2 = m25837l(t, j);
                        m25976a3 = AbstractC0649f8.m25976a(i4 << 3);
                        m25975b = AbstractC0649f8.m25975b(m25837l2);
                        i2 += m25976a3 + m25975b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m25824y(t, i4, i3)) {
                        int m25848L = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25848L);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m25824y(t, i4, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m25824y(t, i4, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m25824y(t, i4, i3)) {
                        m25976a5 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a5 + 1;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!m25824y(t, i4, i3)) {
                        break;
                    } else {
                        Object m25350k2 = C0856rb.m25350k(t, j);
                        if (m25350k2 instanceof AbstractC0937w7) {
                            m25976a6 = AbstractC0649f8.m25976a(i4 << 3);
                            mo25037g = ((AbstractC0937w7) m25350k2).mo25037g();
                            m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                            i = m25976a6 + m25976a7 + mo25037g;
                            i2 += i;
                            break;
                        } else {
                            m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                            m25951z = AbstractC0649f8.m25978C((String) m25350k2);
                            i = m25976a4 + m25951z;
                            i2 += i;
                        }
                    }
                case 60:
                    if (m25824y(t, i4, i3)) {
                        m25403Q = C0855ra.m25403Q(i4, C0856rb.m25350k(t, j), m25835n(i3));
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m25824y(t, i4, i3)) {
                        m25976a6 = AbstractC0649f8.m25976a(i4 << 3);
                        mo25037g = ((AbstractC0937w7) C0856rb.m25350k(t, j)).mo25037g();
                        m25976a7 = AbstractC0649f8.m25976a(mo25037g);
                        i = m25976a6 + m25976a7 + mo25037g;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m25824y(t, i4, i3)) {
                        int m25848L2 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25976a(m25848L2);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m25824y(t, i4, i3)) {
                        int m25848L3 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25951z(m25848L3);
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m25824y(t, i4, i3)) {
                        m25976a2 = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a2 + 4;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m25824y(t, i4, i3)) {
                        m25976a = AbstractC0649f8.m25976a(i4 << 3);
                        m25403Q = m25976a + 8;
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m25824y(t, i4, i3)) {
                        int m25848L4 = m25848L(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25976a((m25848L4 >> 31) ^ (m25848L4 + m25848L4));
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m25824y(t, i4, i3)) {
                        long m25837l3 = m25837l(t, j);
                        m25976a4 = AbstractC0649f8.m25976a(i4 << 3);
                        m25951z = AbstractC0649f8.m25975b((m25837l3 >> 63) ^ (m25837l3 + m25837l3));
                        i = m25976a4 + m25951z;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m25824y(t, i4, i3)) {
                        m25403Q = AbstractC0649f8.m25952y(i4, (InterfaceC0634ea) C0856rb.m25350k(t, j), m25835n(i3));
                        i2 += m25403Q;
                        break;
                    } else {
                        break;
                    }
            }
        }
        AbstractC0686hb<?, ?> abstractC0686hb = this.f1863l;
        return i2 + abstractC0686hb.mo25736a(abstractC0686hb.mo25734c(t));
    }

    /* renamed from: M */
    public final <K, V> int m25847M(T t, byte[] bArr, int i, int i2, int i3, long j, C0699i7 c0699i7) {
        Unsafe unsafe = f1851q;
        Object m25834o = m25834o(i3);
        Object object = unsafe.getObject(t, j);
        if (!((C0973y9) object).m24908h()) {
            C0973y9<K, V> m24911b = C0973y9.m24912a().m24911b();
            C0990z9.m24859b(m24911b, object);
            unsafe.putObject(t, j, m24911b);
        }
        C0939w9 c0939w9 = (C0939w9) m25834o;
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x02a8, code lost:
        if (r0 != r15) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02aa, code lost:
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r19;
        r1 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02be, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02f1, code lost:
        if (r0 != r15) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0314, code lost:
        if (r0 != r15) goto L152;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25845O(T r31, byte[] r32, int r33, int r34, p018b5.C0699i7 r35) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0685ha.m25845O(java.lang.Object, byte[], int, int, b5.i7):int");
    }

    /* renamed from: T */
    public final int m25840T(int i, int i2) {
        int length = (this.f1852a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f1852a[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: b */
    public final int mo25495b(T t) {
        int i;
        int m25948c;
        int length = this.f1852a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int m25838k = m25838k(i3);
            int i4 = this.f1852a[i3];
            long j = 1048575 & m25838k;
            int i5 = 37;
            switch (m25839j(m25838k)) {
                case 0:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(Double.doubleToLongBits(C0856rb.m25355f(t, j)));
                    i2 = i + m25948c;
                    break;
                case 1:
                    i = i2 * 53;
                    m25948c = Float.floatToIntBits(C0856rb.m25354g(t, j));
                    i2 = i + m25948c;
                    break;
                case 2:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(C0856rb.m25352i(t, j));
                    i2 = i + m25948c;
                    break;
                case 3:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(C0856rb.m25352i(t, j));
                    i2 = i + m25948c;
                    break;
                case 4:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 5:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(C0856rb.m25352i(t, j));
                    i2 = i + m25948c;
                    break;
                case 6:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 7:
                    i = i2 * 53;
                    m25948c = C0650f9.m25950a(C0856rb.m25364B(t, j));
                    i2 = i + m25948c;
                    break;
                case 8:
                    i = i2 * 53;
                    m25948c = ((String) C0856rb.m25350k(t, j)).hashCode();
                    i2 = i + m25948c;
                    break;
                case 9:
                    Object m25350k = C0856rb.m25350k(t, j);
                    if (m25350k != null) {
                        i5 = m25350k.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    m25948c = C0856rb.m25350k(t, j).hashCode();
                    i2 = i + m25948c;
                    break;
                case 11:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 12:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 13:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 14:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(C0856rb.m25352i(t, j));
                    i2 = i + m25948c;
                    break;
                case 15:
                    i = i2 * 53;
                    m25948c = C0856rb.m25353h(t, j);
                    i2 = i + m25948c;
                    break;
                case 16:
                    i = i2 * 53;
                    m25948c = C0650f9.m25948c(C0856rb.m25352i(t, j));
                    i2 = i + m25948c;
                    break;
                case 17:
                    Object m25350k2 = C0856rb.m25350k(t, j);
                    if (m25350k2 != null) {
                        i5 = m25350k2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    m25948c = C0856rb.m25350k(t, j).hashCode();
                    i2 = i + m25948c;
                    break;
                case 50:
                    i = i2 * 53;
                    m25948c = C0856rb.m25350k(t, j).hashCode();
                    i2 = i + m25948c;
                    break;
                case 51:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(Double.doubleToLongBits(m25852H(t, j)));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = Float.floatToIntBits(m25851I(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(m25837l(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(m25837l(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(m25837l(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25950a(m25823z(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = ((String) C0856rb.m25350k(t, j)).hashCode();
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0856rb.m25350k(t, j).hashCode();
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0856rb.m25350k(t, j).hashCode();
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(m25837l(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = m25848L(t, j);
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0650f9.m25948c(m25837l(t, j));
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m25824y(t, i4, i3)) {
                        i = i2 * 53;
                        m25948c = C0856rb.m25350k(t, j).hashCode();
                        i2 = i + m25948c;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.f1863l.mo25734c(t).hashCode();
        if (!this.f1857f) {
            return hashCode;
        }
        this.f1864m.mo25658a(t);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: d */
    public final void mo25493d(T t) {
        int i;
        int i2 = this.f1860i;
        while (true) {
            i = this.f1861j;
            if (i2 >= i) {
                break;
            }
            long m25838k = m25838k(this.f1859h[i2]) & 1048575;
            Object m25350k = C0856rb.m25350k(t, m25838k);
            if (m25350k != null) {
                ((C0973y9) m25350k).m24910c();
                C0856rb.m25337x(t, m25838k, m25350k);
            }
            i2++;
        }
        int length = this.f1859h.length;
        while (i < length) {
            this.f1862k.mo25423a(t, this.f1859h[i]);
            i++;
        }
        this.f1863l.mo25730g(t);
        if (this.f1857f) {
            this.f1864m.mo25657b(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p018b5.InterfaceC0821pa
    /* renamed from: e */
    public final boolean mo25492e(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.f1860i) {
            int i6 = this.f1859h[i5];
            int i7 = this.f1852a[i6];
            int m25838k = m25838k(i6);
            int i8 = this.f1852a[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = f1851q.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & m25838k) != 0 && !m25826w(t, i6, i, i2, i10)) {
                return false;
            }
            int m25839j = m25839j(m25838k);
            if (m25839j != 9 && m25839j != 17) {
                if (m25839j != 27) {
                    if (m25839j != 60 && m25839j != 68) {
                        if (m25839j != 49) {
                            if (m25839j == 50 && !((C0973y9) C0856rb.m25350k(t, m25838k & 1048575)).isEmpty()) {
                                C0939w9 c0939w9 = (C0939w9) m25834o(i6);
                                throw null;
                            }
                        }
                    } else if (m25824y(t, i7, i6) && !m25825x(t, m25838k, m25835n(i6))) {
                        return false;
                    }
                }
                List list = (List) C0856rb.m25350k(t, m25838k & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    InterfaceC0821pa m25835n = m25835n(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!m25835n.mo25492e(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (m25826w(t, i6, i, i2, i10) && !m25825x(t, m25838k, m25835n(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.f1857f) {
            return true;
        }
        this.f1864m.mo25658a(t);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: g */
    public final void mo25490g(T t, byte[] bArr, int i, int i2, C0699i7 c0699i7) {
        if (this.f1858g) {
            m25845O(t, bArr, i, i2, c0699i7);
        } else {
            m25856D(t, bArr, i, i2, 0, c0699i7);
        }
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: h */
    public final boolean mo25489h(T t, T t2) {
        boolean m25384h;
        int length = this.f1852a.length;
        for (int i = 0; i < length; i += 3) {
            int m25838k = m25838k(i);
            long j = m25838k & 1048575;
            switch (m25839j(m25838k)) {
                case 0:
                    if (m25828u(t, t2, i) && Double.doubleToLongBits(C0856rb.m25355f(t, j)) == Double.doubleToLongBits(C0856rb.m25355f(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (m25828u(t, t2, i) && Float.floatToIntBits(C0856rb.m25354g(t, j)) == Float.floatToIntBits(C0856rb.m25354g(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (m25828u(t, t2, i) && C0856rb.m25352i(t, j) == C0856rb.m25352i(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (m25828u(t, t2, i) && C0856rb.m25352i(t, j) == C0856rb.m25352i(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (m25828u(t, t2, i) && C0856rb.m25352i(t, j) == C0856rb.m25352i(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (m25828u(t, t2, i) && C0856rb.m25364B(t, j) == C0856rb.m25364B(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (m25828u(t, t2, i) && C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (m25828u(t, t2, i) && C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (m25828u(t, t2, i) && C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (m25828u(t, t2, i) && C0856rb.m25352i(t, j) == C0856rb.m25352i(t2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (m25828u(t, t2, i) && C0856rb.m25353h(t, j) == C0856rb.m25353h(t2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (m25828u(t, t2, i) && C0856rb.m25352i(t, j) == C0856rb.m25352i(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (m25828u(t, t2, i) && C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    m25384h = C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j));
                    break;
                case 50:
                    m25384h = C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long m25841S = m25841S(i) & 1048575;
                    if (C0856rb.m25353h(t, m25841S) == C0856rb.m25353h(t2, m25841S) && C0855ra.m25384h(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!m25384h) {
                return false;
            }
        }
        if (!this.f1863l.mo25734c(t).equals(this.f1863l.mo25734c(t2))) {
            return false;
        }
        if (!this.f1857f) {
            return true;
        }
        this.f1864m.mo25658a(t);
        this.f1864m.mo25658a(t2);
        throw null;
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: i */
    public final void mo25488i(T t, C0666g8 c0666g8) {
        if (this.f1858g) {
            if (!this.f1857f) {
                int length = this.f1852a.length;
                for (int i = 0; i < length; i += 3) {
                    int m25838k = m25838k(i);
                    int i2 = this.f1852a[i];
                    switch (m25839j(m25838k)) {
                        case 0:
                            if (m25827v(t, i)) {
                                c0666g8.m25899q(i2, C0856rb.m25355f(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (m25827v(t, i)) {
                                c0666g8.m25890z(i2, C0856rb.m25354g(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (m25827v(t, i)) {
                                c0666g8.m25922E(i2, C0856rb.m25352i(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (m25827v(t, i)) {
                                c0666g8.m25906j(i2, C0856rb.m25352i(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (m25827v(t, i)) {
                                c0666g8.m25924C(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (m25827v(t, i)) {
                                c0666g8.m25892x(i2, C0856rb.m25352i(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (m25827v(t, i)) {
                                c0666g8.m25894v(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (m25827v(t, i)) {
                                c0666g8.m25903m(i2, C0856rb.m25364B(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (m25827v(t, i)) {
                                m25857C(i2, C0856rb.m25350k(t, m25838k & 1048575), c0666g8);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (m25827v(t, i)) {
                                c0666g8.m25920G(i2, C0856rb.m25350k(t, m25838k & 1048575), m25835n(i));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (m25827v(t, i)) {
                                c0666g8.m25901o(i2, (AbstractC0937w7) C0856rb.m25350k(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (m25827v(t, i)) {
                                c0666g8.m25908h(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (m25827v(t, i)) {
                                c0666g8.m25896t(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (m25827v(t, i)) {
                                c0666g8.m25919H(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (m25827v(t, i)) {
                                c0666g8.m25917J(i2, C0856rb.m25352i(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (m25827v(t, i)) {
                                c0666g8.m25915a(i2, C0856rb.m25353h(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (m25827v(t, i)) {
                                c0666g8.m25913c(i2, C0856rb.m25352i(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (m25827v(t, i)) {
                                c0666g8.m25925B(i2, C0856rb.m25350k(t, m25838k & 1048575), m25835n(i));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            C0855ra.m25380l(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 19:
                            C0855ra.m25376p(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 20:
                            C0855ra.m25373s(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 21:
                            C0855ra.m25418B(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 22:
                            C0855ra.m25374r(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 23:
                            C0855ra.m25377o(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 24:
                            C0855ra.m25378n(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 25:
                            C0855ra.m25382j(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 26:
                            C0855ra.m25367y(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8);
                            break;
                        case 27:
                            C0855ra.m25372t(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, m25835n(i));
                            break;
                        case 28:
                            C0855ra.m25381k(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8);
                            break;
                        case 29:
                            C0855ra.m25366z(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 30:
                            C0855ra.m25379m(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 31:
                            C0855ra.m25371u(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 32:
                            C0855ra.m25370v(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 33:
                            C0855ra.m25369w(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 34:
                            C0855ra.m25368x(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, false);
                            break;
                        case 35:
                            C0855ra.m25380l(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 36:
                            C0855ra.m25376p(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 37:
                            C0855ra.m25373s(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 38:
                            C0855ra.m25418B(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 39:
                            C0855ra.m25374r(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 40:
                            C0855ra.m25377o(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 41:
                            C0855ra.m25378n(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 42:
                            C0855ra.m25382j(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 43:
                            C0855ra.m25366z(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 44:
                            C0855ra.m25379m(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 45:
                            C0855ra.m25371u(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 46:
                            C0855ra.m25370v(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 47:
                            C0855ra.m25369w(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 48:
                            C0855ra.m25368x(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, true);
                            break;
                        case 49:
                            C0855ra.m25375q(this.f1852a[i], (List) C0856rb.m25350k(t, m25838k & 1048575), c0666g8, m25835n(i));
                            break;
                        case 50:
                            m25858B(c0666g8, i2, C0856rb.m25350k(t, m25838k & 1048575), i);
                            break;
                        case 51:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25899q(i2, m25852H(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25890z(i2, m25851I(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25922E(i2, m25837l(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25906j(i2, m25837l(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25924C(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25892x(i2, m25837l(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25894v(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25903m(i2, m25823z(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (m25824y(t, i2, i)) {
                                m25857C(i2, C0856rb.m25350k(t, m25838k & 1048575), c0666g8);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25920G(i2, C0856rb.m25350k(t, m25838k & 1048575), m25835n(i));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25901o(i2, (AbstractC0937w7) C0856rb.m25350k(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25908h(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25896t(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25919H(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25917J(i2, m25837l(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25915a(i2, m25848L(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25913c(i2, m25837l(t, m25838k & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (m25824y(t, i2, i)) {
                                c0666g8.m25925B(i2, C0856rb.m25350k(t, m25838k & 1048575), m25835n(i));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                AbstractC0686hb<?, ?> abstractC0686hb = this.f1863l;
                abstractC0686hb.mo25728i(abstractC0686hb.mo25734c(t), c0666g8);
                return;
            }
            this.f1864m.mo25658a(t);
            throw null;
        }
        m25859A(t, c0666g8);
    }

    /* renamed from: n */
    public final InterfaceC0821pa m25835n(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        InterfaceC0821pa interfaceC0821pa = (InterfaceC0821pa) this.f1853b[i3];
        if (interfaceC0821pa != null) {
            return interfaceC0821pa;
        }
        InterfaceC0821pa<T> m25654b = C0770ma.m25655a().m25654b((Class) this.f1853b[i3 + 1]);
        this.f1853b[i3] = m25654b;
        return m25654b;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0385  */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p018b5.C0685ha<T> m25853G(p018b5.C0804oa r34, p018b5.C0719ja r35, p018b5.AbstractC0854r9 r36, p018b5.AbstractC0686hb<?, ?> r37, p018b5.AbstractC0751l8<?> r38, p018b5.C0990z9 r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0685ha.m25853G(b5.oa, b5.ja, b5.r9, b5.hb, b5.l8, b5.z9):b5.ha");
    }

    /* renamed from: p */
    public static Field m25833p(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public static boolean m25825x(Object obj, int i, InterfaceC0821pa interfaceC0821pa) {
        return interfaceC0821pa.mo25492e(C0856rb.m25350k(obj, i & 1048575));
    }

    @Override // p018b5.InterfaceC0821pa
    /* renamed from: f */
    public final void mo25491f(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.f1852a.length; i += 3) {
            int m25838k = m25838k(i);
            long j = 1048575 & m25838k;
            int i2 = this.f1852a[i];
            switch (m25839j(m25838k)) {
                case 0:
                    if (m25827v(t2, i)) {
                        C0856rb.m25341t(t, j, C0856rb.m25355f(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m25827v(t2, i)) {
                        C0856rb.m25340u(t, j, C0856rb.m25354g(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m25827v(t2, i)) {
                        C0856rb.m25338w(t, j, C0856rb.m25352i(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m25827v(t2, i)) {
                        C0856rb.m25338w(t, j, C0856rb.m25352i(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m25827v(t2, i)) {
                        C0856rb.m25338w(t, j, C0856rb.m25352i(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m25827v(t2, i)) {
                        C0856rb.m25343r(t, j, C0856rb.m25364B(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m25827v(t2, i)) {
                        C0856rb.m25337x(t, j, C0856rb.m25350k(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m25832q(t, t2, i);
                    break;
                case 10:
                    if (m25827v(t2, i)) {
                        C0856rb.m25337x(t, j, C0856rb.m25350k(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m25827v(t2, i)) {
                        C0856rb.m25338w(t, j, C0856rb.m25352i(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m25827v(t2, i)) {
                        C0856rb.m25339v(t, j, C0856rb.m25353h(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m25827v(t2, i)) {
                        C0856rb.m25338w(t, j, C0856rb.m25352i(t2, j));
                        m25830s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m25832q(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f1862k.mo25422b(t, t2, j);
                    break;
                case 50:
                    C0855ra.m25383i(this.f1866o, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (m25824y(t2, i2, i)) {
                        C0856rb.m25337x(t, j, C0856rb.m25350k(t2, j));
                        m25829t(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m25831r(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m25824y(t2, i2, i)) {
                        C0856rb.m25337x(t, j, C0856rb.m25350k(t2, j));
                        m25829t(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m25831r(t, t2, i);
                    break;
            }
        }
        C0855ra.m25386f(this.f1863l, t, t2);
        if (this.f1857f) {
            C0855ra.m25387e(this.f1864m, t, t2);
        }
    }

    /* renamed from: q */
    public final void m25832q(T t, T t2, int i) {
        long m25838k = m25838k(i) & 1048575;
        if (!m25827v(t2, i)) {
            return;
        }
        Object m25350k = C0856rb.m25350k(t, m25838k);
        Object m25350k2 = C0856rb.m25350k(t2, m25838k);
        if (m25350k != null && m25350k2 != null) {
            C0856rb.m25337x(t, m25838k, C0650f9.m25944g(m25350k, m25350k2));
            m25830s(t, i);
        } else if (m25350k2 != null) {
            C0856rb.m25337x(t, m25838k, m25350k2);
            m25830s(t, i);
        }
    }

    /* renamed from: r */
    public final void m25831r(T t, T t2, int i) {
        Object obj;
        int m25838k = m25838k(i);
        int i2 = this.f1852a[i];
        long j = m25838k & 1048575;
        if (!m25824y(t2, i2, i)) {
            return;
        }
        if (m25824y(t, i2, i)) {
            obj = C0856rb.m25350k(t, j);
        } else {
            obj = null;
        }
        Object m25350k = C0856rb.m25350k(t2, j);
        if (obj != null && m25350k != null) {
            C0856rb.m25337x(t, j, C0650f9.m25944g(obj, m25350k));
            m25829t(t, i2, i);
        } else if (m25350k != null) {
            C0856rb.m25337x(t, j, m25350k);
            m25829t(t, i2, i);
        }
    }

    /* renamed from: s */
    public final void m25830s(T t, int i) {
        int m25841S = m25841S(i);
        long j = 1048575 & m25841S;
        if (j == 1048575) {
            return;
        }
        C0856rb.m25339v(t, j, (1 << (m25841S >>> 20)) | C0856rb.m25353h(t, j));
    }

    /* renamed from: t */
    public final void m25829t(T t, int i, int i2) {
        C0856rb.m25339v(t, m25841S(i2) & 1048575, i);
    }

    /* renamed from: v */
    public final boolean m25827v(T t, int i) {
        int m25841S = m25841S(i);
        long j = m25841S & 1048575;
        if (j == 1048575) {
            int m25838k = m25838k(i);
            long j2 = m25838k & 1048575;
            switch (m25839j(m25838k)) {
                case 0:
                    if (C0856rb.m25355f(t, j2) == 0.0d) {
                        return false;
                    }
                    return true;
                case 1:
                    if (C0856rb.m25354g(t, j2) == 0.0f) {
                        return false;
                    }
                    return true;
                case 2:
                    if (C0856rb.m25352i(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (C0856rb.m25352i(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (C0856rb.m25352i(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return C0856rb.m25364B(t, j2);
                case 8:
                    Object m25350k = C0856rb.m25350k(t, j2);
                    if (m25350k instanceof String) {
                        if (((String) m25350k).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (m25350k instanceof AbstractC0937w7) {
                        if (AbstractC0937w7.f2373b.equals(m25350k)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (C0856rb.m25350k(t, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (AbstractC0937w7.f2373b.equals(C0856rb.m25350k(t, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (C0856rb.m25352i(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (C0856rb.m25353h(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (C0856rb.m25352i(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (C0856rb.m25350k(t, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        } else if ((C0856rb.m25353h(t, j) & (1 << (m25841S >>> 20))) == 0) {
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: y */
    public final boolean m25824y(T t, int i, int i2) {
        if (C0856rb.m25353h(t, m25841S(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }
}

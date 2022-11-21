package p168r4;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;
/* renamed from: r4.do3 */
/* loaded from: classes2.dex */
public final class do3<T> implements ro3<T> {

    /* renamed from: q */
    public static final int[] f22374q = new int[0];

    /* renamed from: r */
    public static final Unsafe f22375r = rp3.m7396B();

    /* renamed from: a */
    public final int[] f22376a;

    /* renamed from: b */
    public final Object[] f22377b;

    /* renamed from: c */
    public final int f22378c;

    /* renamed from: d */
    public final int f22379d;

    /* renamed from: e */
    public final ao3 f22380e;

    /* renamed from: f */
    public final boolean f22381f;

    /* renamed from: g */
    public final boolean f22382g;

    /* renamed from: h */
    public final boolean f22383h;

    /* renamed from: i */
    public final int[] f22384i;

    /* renamed from: j */
    public final int f22385j;

    /* renamed from: k */
    public final int f22386k;

    /* renamed from: l */
    public final kn3 f22387l;

    /* renamed from: m */
    public final hp3<?, ?> f22388m;

    /* renamed from: n */
    public final cm3<?> f22389n;

    /* renamed from: o */
    public final fo3 f22390o;

    /* renamed from: p */
    public final vn3 f22391p;

    /* JADX WARN: Multi-variable type inference failed */
    public do3(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, ao3 ao3Var, boolean z, boolean z2, int[] iArr3, int i3, int i4, fo3 fo3Var, kn3 kn3Var, hp3<?, ?> hp3Var, cm3<?> cm3Var, vn3 vn3Var) {
        this.f22376a = iArr;
        this.f22377b = iArr2;
        this.f22378c = objArr;
        this.f22379d = i;
        this.f22382g = i2 instanceof pm3;
        this.f22383h = ao3Var;
        boolean z3 = false;
        if (hp3Var != 0 && hp3Var.mo12095a((ao3) i2)) {
            z3 = true;
        }
        this.f22381f = z3;
        this.f22384i = z2;
        this.f22385j = iArr3;
        this.f22386k = i3;
        this.f22390o = i4;
        this.f22387l = fo3Var;
        this.f22388m = kn3Var;
        this.f22389n = hp3Var;
        this.f22380e = i2;
        this.f22391p = cm3Var;
    }

    /* renamed from: o */
    public static int m12030o(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: p */
    public static boolean m12029p(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: q */
    public static <T> double m12028q(T t, long j) {
        return ((Double) rp3.m7368v(t, j)).doubleValue();
    }

    /* renamed from: r */
    public static <T> float m12027r(T t, long j) {
        return ((Float) rp3.m7368v(t, j)).floatValue();
    }

    /* renamed from: s */
    public static <T> int m12026s(T t, long j) {
        return ((Integer) rp3.m7368v(t, j)).intValue();
    }

    /* renamed from: t */
    public static <T> long m12025t(T t, long j) {
        return ((Long) rp3.m7368v(t, j)).longValue();
    }

    /* renamed from: u */
    public static <T> boolean m12024u(T t, long j) {
        return ((Boolean) rp3.m7368v(t, j)).booleanValue();
    }

    /* renamed from: B */
    public final int m12057B(int i) {
        if (i < this.f22378c || i > this.f22379d) {
            return -1;
        }
        return m12055D(i, 0);
    }

    /* renamed from: C */
    public final int m12056C(int i, int i2) {
        if (i < this.f22378c || i > this.f22379d) {
            return -1;
        }
        return m12055D(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x021a -> B:120:0x021b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x014f -> B:67:0x0150). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x01cc -> B:100:0x01cd). Please submit an issue!!! */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12042Q(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, p168r4.xk3 r29) {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.do3.m12042Q(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, r4.xk3):int");
    }

    /* renamed from: S */
    public final int m12040S(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, xk3 xk3Var) {
        Unsafe unsafe = f22375r;
        long j2 = this.f22376a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(yk3.m4646e(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(yk3.m4647d(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int m4648c = yk3.m4648c(bArr, i, xk3Var);
                    unsafe.putObject(t, j, Long.valueOf(xk3Var.f33623b));
                    unsafe.putInt(t, j2, i4);
                    return m4648c;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int m4650a = yk3.m4650a(bArr, i, xk3Var);
                    unsafe.putObject(t, j, Integer.valueOf(xk3Var.f33622a));
                    unsafe.putInt(t, j2, i4);
                    return m4650a;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(yk3.m4646e(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(yk3.m4647d(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int m4648c2 = yk3.m4648c(bArr, i, xk3Var);
                    unsafe.putObject(t, j, Boolean.valueOf(xk3Var.f33623b != 0));
                    unsafe.putInt(t, j2, i4);
                    return m4648c2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int m4650a2 = yk3.m4650a(bArr, i, xk3Var);
                    int i9 = xk3Var.f33622a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !wp3.m5629b(bArr, m4650a2, m4650a2 + i9)) {
                        throw bn3.m12732l();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, m4650a2, i9, zm3.f34680a));
                        m4650a2 += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return m4650a2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int m4642i = yk3.m4642i(m12039T(i8), bArr, i, i2, xk3Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, xk3Var.f33624c);
                    } else {
                        unsafe.putObject(t, j, zm3.m4172i(object, xk3Var.f33624c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return m4642i;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int m4643h = yk3.m4643h(bArr, i, xk3Var);
                    unsafe.putObject(t, j, xk3Var.f33624c);
                    unsafe.putInt(t, j2, i4);
                    return m4643h;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int m4650a3 = yk3.m4650a(bArr, i, xk3Var);
                    int i10 = xk3Var.f33622a;
                    tm3 m12037V = m12037V(i8);
                    if (m12037V != null && !m12037V.mo5370h(i10)) {
                        m12051H(t).m10565h(i3, Long.valueOf(i10));
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    }
                    return m4650a3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int m4650a4 = yk3.m4650a(bArr, i, xk3Var);
                    unsafe.putObject(t, j, Integer.valueOf(rl3.m7459e(xk3Var.f33622a)));
                    unsafe.putInt(t, j2, i4);
                    return m4650a4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int m4648c3 = yk3.m4648c(bArr, i, xk3Var);
                    unsafe.putObject(t, j, Long.valueOf(rl3.m7458f(xk3Var.f33623b)));
                    unsafe.putInt(t, j2, i4);
                    return m4648c3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int m4641j = yk3.m4641j(m12039T(i8), bArr, i, i2, (i3 & (-8)) | 4, xk3Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, xk3Var.f33624c);
                    } else {
                        unsafe.putObject(t, j, zm3.m4172i(object2, xk3Var.f33624c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return m4641j;
                }
                break;
        }
        return i;
    }

    /* renamed from: U */
    public final Object m12038U(int i) {
        int i2 = i / 3;
        return this.f22377b[i2 + i2];
    }

    /* renamed from: V */
    public final tm3 m12037V(int i) {
        int i2 = i / 3;
        return (tm3) this.f22377b[i2 + i2 + 1];
    }

    @Override // p168r4.ro3
    /* renamed from: d */
    public final int mo7410d(T t) {
        return this.f22383h ? m12043P(t) : m12044O(t);
    }

    /* renamed from: m */
    public final int m12032m(int i) {
        return this.f22376a[i + 1];
    }

    /* renamed from: n */
    public final int m12031n(int i) {
        return this.f22376a[i + 2];
    }

    /* renamed from: v */
    public final boolean m12023v(T t, T t2, int i) {
        return m12021x(t, i) == m12021x(t2, i);
    }

    /* renamed from: w */
    public final boolean m12022w(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m12021x(t, i) : (i3 & i4) != 0;
    }

    @Override // p168r4.ro3
    public final T zza() {
        return (T) ((pm3) this.f22380e).mo4087B(4, null, null);
    }

    /* renamed from: G */
    public static final void m12052G(int i, Object obj, xl3 xl3Var) {
        if (obj instanceof String) {
            xl3Var.m5249x(i, (String) obj);
        } else {
            xl3Var.m5248y(i, (ll3) obj);
        }
    }

    /* renamed from: H */
    public static ip3 m12051H(Object obj) {
        pm3 pm3Var = (pm3) obj;
        ip3 ip3Var = pm3Var.zzc;
        if (ip3Var == ip3.m10572a()) {
            ip3 m10571b = ip3.m10571b();
            pm3Var.zzc = m10571b;
            return m10571b;
        }
        return ip3Var;
    }

    /* renamed from: J */
    public static <T> do3<T> m12049J(Class<T> cls, xn3 xn3Var, fo3 fo3Var, kn3 kn3Var, hp3<?, ?> hp3Var, cm3<?> cm3Var, vn3 vn3Var) {
        if (xn3Var instanceof ko3) {
            return m12048K((ko3) xn3Var, fo3Var, kn3Var, hp3Var, cm3Var, vn3Var);
        }
        ep3 ep3Var = (ep3) xn3Var;
        throw null;
    }

    /* renamed from: D */
    public final int m12055D(int i, int i2) {
        int length = (this.f22376a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f22376a[i4];
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

    /* renamed from: E */
    public final void m12054E(T t, xl3 xl3Var) {
        int i;
        if (!this.f22381f) {
            int length = this.f22376a.length;
            Unsafe unsafe = f22375r;
            int i2 = 1048575;
            int i3 = 0;
            int i4 = 0;
            int i5 = 1048575;
            while (i3 < length) {
                int m12032m = m12032m(i3);
                int i6 = this.f22376a[i3];
                int m12030o = m12030o(m12032m);
                if (m12030o <= 17) {
                    int i7 = this.f22376a[i3 + 2];
                    int i8 = i7 & i2;
                    if (i8 != i5) {
                        i4 = unsafe.getInt(t, i8);
                        i5 = i8;
                    }
                    i = 1 << (i7 >>> 20);
                } else {
                    i = 0;
                }
                long j = m12032m & i2;
                switch (m12030o) {
                    case 0:
                        if ((i4 & i) != 0) {
                            xl3Var.m5256q(i6, rp3.m7370t(t, j));
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 1:
                        if ((i4 & i) != 0) {
                            xl3Var.m5257p(i6, rp3.m7372r(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 2:
                        if ((i4 & i) != 0) {
                            xl3Var.m5259n(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 3:
                        if ((i4 & i) != 0) {
                            xl3Var.m5254s(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 4:
                        if ((i4 & i) != 0) {
                            xl3Var.m5253t(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 5:
                        if ((i4 & i) != 0) {
                            xl3Var.m5252u(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 6:
                        if ((i4 & i) != 0) {
                            xl3Var.m5251v(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 7:
                        if ((i4 & i) != 0) {
                            xl3Var.m5250w(i6, rp3.m7374p(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 8:
                        if ((i4 & i) != 0) {
                            m12052G(i6, unsafe.getObject(t, j), xl3Var);
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 9:
                        if ((i4 & i) != 0) {
                            xl3Var.m5281C(i6, unsafe.getObject(t, j), m12039T(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 10:
                        if ((i4 & i) != 0) {
                            xl3Var.m5248y(i6, (ll3) unsafe.getObject(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 11:
                        if ((i4 & i) != 0) {
                            xl3Var.m5247z(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 12:
                        if ((i4 & i) != 0) {
                            xl3Var.m5255r(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 13:
                        if ((i4 & i) != 0) {
                            xl3Var.m5260m(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 14:
                        if ((i4 & i) != 0) {
                            xl3Var.m5258o(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 15:
                        if ((i4 & i) != 0) {
                            xl3Var.m5283A(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 16:
                        if ((i4 & i) != 0) {
                            xl3Var.m5282B(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 17:
                        if ((i4 & i) != 0) {
                            xl3Var.m5280D(i6, unsafe.getObject(t, j), m12039T(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 18:
                        uo3.m6422j(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 19:
                        uo3.m6421k(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 20:
                        uo3.m6420l(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 21:
                        uo3.m6419m(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 22:
                        uo3.m6415q(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 23:
                        uo3.m6417o(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 24:
                        uo3.m6412t(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 25:
                        uo3.m6409w(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 26:
                        uo3.m6408x(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var);
                        break;
                    case 27:
                        uo3.m6406z(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, m12039T(i3));
                        break;
                    case 28:
                        uo3.m6407y(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var);
                        break;
                    case 29:
                        uo3.m6414r(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 30:
                        uo3.m6410v(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 31:
                        uo3.m6411u(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 32:
                        uo3.m6416p(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 33:
                        uo3.m6413s(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 34:
                        uo3.m6418n(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, false);
                        break;
                    case 35:
                        uo3.m6422j(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 36:
                        uo3.m6421k(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 37:
                        uo3.m6420l(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 38:
                        uo3.m6419m(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 39:
                        uo3.m6415q(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 40:
                        uo3.m6417o(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 41:
                        uo3.m6412t(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 42:
                        uo3.m6409w(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 43:
                        uo3.m6414r(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 44:
                        uo3.m6410v(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 45:
                        uo3.m6411u(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 46:
                        uo3.m6416p(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 47:
                        uo3.m6413s(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 48:
                        uo3.m6418n(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, true);
                        break;
                    case 49:
                        uo3.m6458B(this.f22376a[i3], (List) unsafe.getObject(t, j), xl3Var, m12039T(i3));
                        break;
                    case 50:
                        m12053F(xl3Var, i6, unsafe.getObject(t, j), i3);
                        break;
                    case 51:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5256q(i6, m12028q(t, j));
                            break;
                        }
                        break;
                    case 52:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5257p(i6, m12027r(t, j));
                            break;
                        }
                        break;
                    case 53:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5259n(i6, m12025t(t, j));
                            break;
                        }
                        break;
                    case 54:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5254s(i6, m12025t(t, j));
                            break;
                        }
                        break;
                    case 55:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5253t(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 56:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5252u(i6, m12025t(t, j));
                            break;
                        }
                        break;
                    case 57:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5251v(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 58:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5250w(i6, m12024u(t, j));
                            break;
                        }
                        break;
                    case 59:
                        if (m12019z(t, i6, i3)) {
                            m12052G(i6, unsafe.getObject(t, j), xl3Var);
                            break;
                        }
                        break;
                    case 60:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5281C(i6, unsafe.getObject(t, j), m12039T(i3));
                            break;
                        }
                        break;
                    case 61:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5248y(i6, (ll3) unsafe.getObject(t, j));
                            break;
                        }
                        break;
                    case 62:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5247z(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 63:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5255r(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 64:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5260m(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 65:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5258o(i6, m12025t(t, j));
                            break;
                        }
                        break;
                    case 66:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5283A(i6, m12026s(t, j));
                            break;
                        }
                        break;
                    case 67:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5282B(i6, m12025t(t, j));
                            break;
                        }
                        break;
                    case 68:
                        if (m12019z(t, i6, i3)) {
                            xl3Var.m5280D(i6, unsafe.getObject(t, j), m12039T(i3));
                            break;
                        }
                        break;
                }
                i3 += 3;
                i2 = 1048575;
            }
            hp3<?, ?> hp3Var = this.f22388m;
            hp3Var.mo10209r(hp3Var.mo10216j(t), xl3Var);
            return;
        }
        this.f22389n.mo12094b(t);
        throw null;
    }

    /* renamed from: F */
    public final <K, V> void m12053F(xl3 xl3Var, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        tn3 tn3Var = (tn3) m12038U(i2);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x042b, code lost:
        if (r6 == r3) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x042d, code lost:
        r26.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0433, code lost:
        r3 = r9.f22385j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0437, code lost:
        if (r3 >= r9.f22386k) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0439, code lost:
        r9.m12035b(r12, r9.f22384i[r3], r2, r9.f22388m);
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0445, code lost:
        if (r7 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0449, code lost:
        if (r0 != r32) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0450, code lost:
        throw p168r4.bn3.m12733k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0453, code lost:
        if (r0 > r32) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0455, code lost:
        if (r1 != r7) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0457, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x045d, code lost:
        throw p168r4.bn3.m12733k();
     */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12050I(T r29, byte[] r30, int r31, int r32, int r33, p168r4.xk3 r34) {
        /*
            Method dump skipped, instructions count: 1158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.do3.m12050I(java.lang.Object, byte[], int, int, int, r4.xk3):int");
    }

    /* renamed from: O */
    public final int m12044O(T t) {
        int i;
        int m5676B;
        int m5676B2;
        int m5676B3;
        int m5675C;
        int m5676B4;
        int m5677A;
        int m5676B5;
        int m5676B6;
        int mo7747o;
        int m5676B7;
        int m6435Y;
        int m5648z;
        int m5676B8;
        int i2;
        Unsafe unsafe = f22375r;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        for (int i6 = 0; i6 < this.f22376a.length; i6 += 3) {
            int m12032m = m12032m(i6);
            int i7 = this.f22376a[i6];
            int m12030o = m12030o(m12032m);
            if (m12030o <= 17) {
                int i8 = this.f22376a[i6 + 2];
                int i9 = i8 & 1048575;
                i = 1 << (i8 >>> 20);
                if (i9 != i5) {
                    i4 = unsafe.getInt(t, i9);
                    i5 = i9;
                }
            } else {
                i = 0;
            }
            long j = m12032m & 1048575;
            switch (m12030o) {
                case 0:
                    if ((i4 & i) != 0) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if ((i4 & i) != 0) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if ((i4 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        m5676B3 = wl3.m5676B(i7 << 3);
                        m5675C = wl3.m5675C(j2);
                        m6435Y = m5676B3 + m5675C;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if ((i4 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        m5676B3 = wl3.m5676B(i7 << 3);
                        m5675C = wl3.m5675C(j3);
                        m6435Y = m5676B3 + m5675C;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if ((i4 & i) != 0) {
                        int i10 = unsafe.getInt(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5677A(i10);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 5:
                    if ((i4 & i) != 0) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if ((i4 & i) != 0) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if ((i4 & i) != 0) {
                        m5676B5 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if ((i4 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof ll3) {
                            m5676B6 = wl3.m5676B(i7 << 3);
                            mo7747o = ((ll3) object).mo7747o();
                            m5676B7 = wl3.m5676B(mo7747o);
                            i2 = m5676B6 + m5676B7 + mo7747o;
                            i3 += i2;
                        } else {
                            m5676B4 = wl3.m5676B(i7 << 3);
                            m5677A = wl3.m5674D((String) object);
                            i2 = m5676B4 + m5677A;
                            i3 += i2;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if ((i4 & i) != 0) {
                        m6435Y = uo3.m6435Y(i7, unsafe.getObject(t, j), m12039T(i6));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if ((i4 & i) != 0) {
                        m5676B6 = wl3.m5676B(i7 << 3);
                        mo7747o = ((ll3) unsafe.getObject(t, j)).mo7747o();
                        m5676B7 = wl3.m5676B(mo7747o);
                        i2 = m5676B6 + m5676B7 + mo7747o;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 11:
                    if ((i4 & i) != 0) {
                        int i11 = unsafe.getInt(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5676B(i11);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 12:
                    if ((i4 & i) != 0) {
                        int i12 = unsafe.getInt(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5677A(i12);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 13:
                    if ((i4 & i) != 0) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if ((i4 & i) != 0) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if ((i4 & i) != 0) {
                        int i13 = unsafe.getInt(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5676B((i13 >> 31) ^ (i13 + i13));
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 16:
                    if ((i4 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5675C((j4 >> 63) ^ (j4 + j4));
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 17:
                    if ((i4 & i) != 0) {
                        m6435Y = wl3.m5668f(i7, (ao3) unsafe.getObject(t, j), m12039T(i6));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    m6435Y = uo3.m6439U(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    m6435Y = uo3.m6441S(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    m6435Y = uo3.m6455E(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    m6435Y = uo3.m6453G(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    m6435Y = uo3.m6447M(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    m6435Y = uo3.m6439U(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    m6435Y = uo3.m6441S(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    m6435Y = uo3.m6437W(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    m6435Y = uo3.m6436X(i7, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    m6435Y = uo3.m6434Z(i7, (List) unsafe.getObject(t, j), m12039T(i6));
                    break;
                case 28:
                    m6435Y = uo3.m6432a0(i7, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    m6435Y = uo3.m6445O(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    m6435Y = uo3.m6449K(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    m6435Y = uo3.m6441S(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    m6435Y = uo3.m6439U(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    m6435Y = uo3.m6443Q(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    m6435Y = uo3.m6451I(i7, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 36:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 37:
                    m5677A = uo3.m6456D((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 38:
                    m5677A = uo3.m6454F((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 39:
                    m5677A = uo3.m6448L((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 40:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 41:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 42:
                    m5677A = uo3.m6438V((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 43:
                    m5677A = uo3.m6446N((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 44:
                    m5677A = uo3.m6450J((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 45:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 46:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 47:
                    m5677A = uo3.m6444P((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 48:
                    m5677A = uo3.m6452H((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i7);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 49:
                    m6435Y = uo3.m6430b0(i7, (List) unsafe.getObject(t, j), m12039T(i6));
                    break;
                case 50:
                    vn3.m6058a(i7, unsafe.getObject(t, j), m12038U(i6));
                    continue;
                case 51:
                    if (m12019z(t, i7, i6)) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (m12019z(t, i7, i6)) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (m12019z(t, i7, i6)) {
                        long m12025t = m12025t(t, j);
                        m5676B3 = wl3.m5676B(i7 << 3);
                        m5675C = wl3.m5675C(m12025t);
                        m6435Y = m5676B3 + m5675C;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (m12019z(t, i7, i6)) {
                        long m12025t2 = m12025t(t, j);
                        m5676B3 = wl3.m5676B(i7 << 3);
                        m5675C = wl3.m5675C(m12025t2);
                        m6435Y = m5676B3 + m5675C;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (m12019z(t, i7, i6)) {
                        int m12026s = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5677A(m12026s);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 56:
                    if (m12019z(t, i7, i6)) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (m12019z(t, i7, i6)) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (m12019z(t, i7, i6)) {
                        m5676B5 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B5 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (m12019z(t, i7, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof ll3) {
                            m5676B6 = wl3.m5676B(i7 << 3);
                            mo7747o = ((ll3) object2).mo7747o();
                            m5676B7 = wl3.m5676B(mo7747o);
                            i2 = m5676B6 + m5676B7 + mo7747o;
                            i3 += i2;
                        } else {
                            m5676B4 = wl3.m5676B(i7 << 3);
                            m5677A = wl3.m5674D((String) object2);
                            i2 = m5676B4 + m5677A;
                            i3 += i2;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (m12019z(t, i7, i6)) {
                        m6435Y = uo3.m6435Y(i7, unsafe.getObject(t, j), m12039T(i6));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (m12019z(t, i7, i6)) {
                        m5676B6 = wl3.m5676B(i7 << 3);
                        mo7747o = ((ll3) unsafe.getObject(t, j)).mo7747o();
                        m5676B7 = wl3.m5676B(mo7747o);
                        i2 = m5676B6 + m5676B7 + mo7747o;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 62:
                    if (m12019z(t, i7, i6)) {
                        int m12026s2 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5676B(m12026s2);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 63:
                    if (m12019z(t, i7, i6)) {
                        int m12026s3 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5677A(m12026s3);
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 64:
                    if (m12019z(t, i7, i6)) {
                        m5676B2 = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B2 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (m12019z(t, i7, i6)) {
                        m5676B = wl3.m5676B(i7 << 3);
                        m6435Y = m5676B + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (m12019z(t, i7, i6)) {
                        int m12026s4 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5676B((m12026s4 >> 31) ^ (m12026s4 + m12026s4));
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 67:
                    if (m12019z(t, i7, i6)) {
                        long m12025t3 = m12025t(t, j);
                        m5676B4 = wl3.m5676B(i7 << 3);
                        m5677A = wl3.m5675C((m12025t3 >> 63) ^ (m12025t3 + m12025t3));
                        i2 = m5676B4 + m5677A;
                        i3 += i2;
                    } else {
                        continue;
                    }
                case 68:
                    if (m12019z(t, i7, i6)) {
                        m6435Y = wl3.m5668f(i7, (ao3) unsafe.getObject(t, j), m12039T(i6));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i3 += m6435Y;
        }
        hp3<?, ?> hp3Var = this.f22388m;
        int mo10210q = i3 + hp3Var.mo10210q(hp3Var.mo10216j(t));
        if (!this.f22381f) {
            return mo10210q;
        }
        this.f22389n.mo12094b(t);
        throw null;
    }

    /* renamed from: P */
    public final int m12043P(T t) {
        int m5676B;
        int m5676B2;
        int m5676B3;
        int m5675C;
        int m5676B4;
        int m5677A;
        int m5676B5;
        int m5676B6;
        int mo7747o;
        int m5676B7;
        int m6435Y;
        int m5648z;
        int m5676B8;
        int i;
        Unsafe unsafe = f22375r;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f22376a.length; i3 += 3) {
            int m12032m = m12032m(i3);
            int m12030o = m12030o(m12032m);
            int i4 = this.f22376a[i3];
            long j = m12032m & 1048575;
            if (m12030o >= hm3.f24719X.zza() && m12030o <= hm3.f24733k0.zza()) {
                int i5 = this.f22376a[i3 + 2];
            }
            switch (m12030o) {
                case 0:
                    if (m12021x(t, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m12021x(t, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m12021x(t, i3)) {
                        long m7376n = rp3.m7376n(t, j);
                        m5676B3 = wl3.m5676B(i4 << 3);
                        m5675C = wl3.m5675C(m7376n);
                        i2 += m5676B3 + m5675C;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m12021x(t, i3)) {
                        long m7376n2 = rp3.m7376n(t, j);
                        m5676B3 = wl3.m5676B(i4 << 3);
                        m5675C = wl3.m5675C(m7376n2);
                        i2 += m5676B3 + m5675C;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m12021x(t, i3)) {
                        int m7378l = rp3.m7378l(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5677A(m7378l);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m12021x(t, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m12021x(t, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m12021x(t, i3)) {
                        m5676B5 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B5 + 1;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!m12021x(t, i3)) {
                        break;
                    } else {
                        Object m7368v = rp3.m7368v(t, j);
                        if (m7368v instanceof ll3) {
                            m5676B6 = wl3.m5676B(i4 << 3);
                            mo7747o = ((ll3) m7368v).mo7747o();
                            m5676B7 = wl3.m5676B(mo7747o);
                            i = m5676B6 + m5676B7 + mo7747o;
                            i2 += i;
                            break;
                        } else {
                            m5676B4 = wl3.m5676B(i4 << 3);
                            m5677A = wl3.m5674D((String) m7368v);
                            i = m5676B4 + m5677A;
                            i2 += i;
                        }
                    }
                case 9:
                    if (m12021x(t, i3)) {
                        m6435Y = uo3.m6435Y(i4, rp3.m7368v(t, j), m12039T(i3));
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (m12021x(t, i3)) {
                        m5676B6 = wl3.m5676B(i4 << 3);
                        mo7747o = ((ll3) rp3.m7368v(t, j)).mo7747o();
                        m5676B7 = wl3.m5676B(mo7747o);
                        i = m5676B6 + m5676B7 + mo7747o;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m12021x(t, i3)) {
                        int m7378l2 = rp3.m7378l(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5676B(m7378l2);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m12021x(t, i3)) {
                        int m7378l3 = rp3.m7378l(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5677A(m7378l3);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m12021x(t, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m12021x(t, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m12021x(t, i3)) {
                        int m7378l4 = rp3.m7378l(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5676B((m7378l4 >> 31) ^ (m7378l4 + m7378l4));
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m12021x(t, i3)) {
                        long m7376n3 = rp3.m7376n(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5675C((m7376n3 >> 63) ^ (m7376n3 + m7376n3));
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (m12021x(t, i3)) {
                        m6435Y = wl3.m5668f(i4, (ao3) rp3.m7368v(t, j), m12039T(i3));
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    m6435Y = uo3.m6439U(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 19:
                    m6435Y = uo3.m6441S(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 20:
                    m6435Y = uo3.m6455E(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 21:
                    m6435Y = uo3.m6453G(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 22:
                    m6435Y = uo3.m6447M(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 23:
                    m6435Y = uo3.m6439U(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 24:
                    m6435Y = uo3.m6441S(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 25:
                    m6435Y = uo3.m6437W(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 26:
                    m6435Y = uo3.m6436X(i4, (List) rp3.m7368v(t, j));
                    i2 += m6435Y;
                    break;
                case 27:
                    m6435Y = uo3.m6434Z(i4, (List) rp3.m7368v(t, j), m12039T(i3));
                    i2 += m6435Y;
                    break;
                case 28:
                    m6435Y = uo3.m6432a0(i4, (List) rp3.m7368v(t, j));
                    i2 += m6435Y;
                    break;
                case 29:
                    m6435Y = uo3.m6445O(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 30:
                    m6435Y = uo3.m6449K(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 31:
                    m6435Y = uo3.m6441S(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 32:
                    m6435Y = uo3.m6439U(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 33:
                    m6435Y = uo3.m6443Q(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 34:
                    m6435Y = uo3.m6451I(i4, (List) rp3.m7368v(t, j), false);
                    i2 += m6435Y;
                    break;
                case 35:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    m5677A = uo3.m6456D((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    m5677A = uo3.m6454F((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    m5677A = uo3.m6448L((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    m5677A = uo3.m6438V((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    m5677A = uo3.m6446N((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    m5677A = uo3.m6450J((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    m5677A = uo3.m6442R((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    m5677A = uo3.m6440T((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    m5677A = uo3.m6444P((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    m5677A = uo3.m6452H((List) unsafe.getObject(t, j));
                    if (m5677A > 0) {
                        m5648z = wl3.m5648z(i4);
                        m5676B8 = wl3.m5676B(m5677A);
                        m5676B4 = m5648z + m5676B8;
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    m6435Y = uo3.m6430b0(i4, (List) rp3.m7368v(t, j), m12039T(i3));
                    i2 += m6435Y;
                    break;
                case 50:
                    vn3.m6058a(i4, rp3.m7368v(t, j), m12038U(i3));
                    break;
                case 51:
                    if (m12019z(t, i4, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m12019z(t, i4, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m12019z(t, i4, i3)) {
                        long m12025t = m12025t(t, j);
                        m5676B3 = wl3.m5676B(i4 << 3);
                        m5675C = wl3.m5675C(m12025t);
                        i2 += m5676B3 + m5675C;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m12019z(t, i4, i3)) {
                        long m12025t2 = m12025t(t, j);
                        m5676B3 = wl3.m5676B(i4 << 3);
                        m5675C = wl3.m5675C(m12025t2);
                        i2 += m5676B3 + m5675C;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m12019z(t, i4, i3)) {
                        int m12026s = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5677A(m12026s);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m12019z(t, i4, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m12019z(t, i4, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m12019z(t, i4, i3)) {
                        m5676B5 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B5 + 1;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!m12019z(t, i4, i3)) {
                        break;
                    } else {
                        Object m7368v2 = rp3.m7368v(t, j);
                        if (m7368v2 instanceof ll3) {
                            m5676B6 = wl3.m5676B(i4 << 3);
                            mo7747o = ((ll3) m7368v2).mo7747o();
                            m5676B7 = wl3.m5676B(mo7747o);
                            i = m5676B6 + m5676B7 + mo7747o;
                            i2 += i;
                            break;
                        } else {
                            m5676B4 = wl3.m5676B(i4 << 3);
                            m5677A = wl3.m5674D((String) m7368v2);
                            i = m5676B4 + m5677A;
                            i2 += i;
                        }
                    }
                case 60:
                    if (m12019z(t, i4, i3)) {
                        m6435Y = uo3.m6435Y(i4, rp3.m7368v(t, j), m12039T(i3));
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m12019z(t, i4, i3)) {
                        m5676B6 = wl3.m5676B(i4 << 3);
                        mo7747o = ((ll3) rp3.m7368v(t, j)).mo7747o();
                        m5676B7 = wl3.m5676B(mo7747o);
                        i = m5676B6 + m5676B7 + mo7747o;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m12019z(t, i4, i3)) {
                        int m12026s2 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5676B(m12026s2);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m12019z(t, i4, i3)) {
                        int m12026s3 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5677A(m12026s3);
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m12019z(t, i4, i3)) {
                        m5676B2 = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B2 + 4;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m12019z(t, i4, i3)) {
                        m5676B = wl3.m5676B(i4 << 3);
                        m6435Y = m5676B + 8;
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m12019z(t, i4, i3)) {
                        int m12026s4 = m12026s(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5676B((m12026s4 >> 31) ^ (m12026s4 + m12026s4));
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m12019z(t, i4, i3)) {
                        long m12025t3 = m12025t(t, j);
                        m5676B4 = wl3.m5676B(i4 << 3);
                        m5677A = wl3.m5675C((m12025t3 >> 63) ^ (m12025t3 + m12025t3));
                        i = m5676B4 + m5677A;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m12019z(t, i4, i3)) {
                        m6435Y = wl3.m5668f(i4, (ao3) rp3.m7368v(t, j), m12039T(i3));
                        i2 += m6435Y;
                        break;
                    } else {
                        break;
                    }
            }
        }
        hp3<?, ?> hp3Var = this.f22388m;
        return i2 + hp3Var.mo10210q(hp3Var.mo10216j(t));
    }

    /* renamed from: R */
    public final <K, V> int m12041R(T t, byte[] bArr, int i, int i2, int i3, long j, xk3 xk3Var) {
        Unsafe unsafe = f22375r;
        Object m12038U = m12038U(i3);
        Object object = unsafe.getObject(t, j);
        if (vn3.m6057b(object)) {
            un3<K, V> m6470c = un3.m6472a().m6470c();
            vn3.m6056c(m6470c, object);
            unsafe.putObject(t, j, m6470c);
        }
        tn3 tn3Var = (tn3) m12038U;
        throw null;
    }

    /* renamed from: T */
    public final ro3 m12039T(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        ro3 ro3Var = (ro3) this.f22377b[i3];
        if (ro3Var != null) {
            return ro3Var;
        }
        ro3<T> m10584b = io3.m10585a().m10584b((Class) this.f22377b[i3 + 1]);
        this.f22377b[i3] = m10584b;
        return m10584b;
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
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12036W(T r31, byte[] r32, int r33, int r34, p168r4.xk3 r35) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.do3.m12036W(java.lang.Object, byte[], int, int, r4.xk3):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.ro3
    /* renamed from: a */
    public final boolean mo7412a(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.f22385j) {
            int i6 = this.f22384i[i5];
            int i7 = this.f22376a[i6];
            int m12032m = m12032m(i6);
            int i8 = this.f22376a[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = f22375r.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & m12032m) != 0 && !m12022w(t, i6, i, i2, i10)) {
                return false;
            }
            int m12030o = m12030o(m12032m);
            if (m12030o != 9 && m12030o != 17) {
                if (m12030o != 27) {
                    if (m12030o != 60 && m12030o != 68) {
                        if (m12030o != 49) {
                            if (m12030o == 50 && !((un3) rp3.m7368v(t, m12032m & 1048575)).isEmpty()) {
                                tn3 tn3Var = (tn3) m12038U(i6);
                                throw null;
                            }
                        }
                    } else if (m12019z(t, i7, i6) && !m12034k(t, m12032m, m12039T(i6))) {
                        return false;
                    }
                }
                List list = (List) rp3.m7368v(t, m12032m & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ro3 m12039T = m12039T(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!m12039T.mo7412a(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (m12022w(t, i6, i, i2, i10) && !m12034k(t, m12032m, m12039T(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.f22381f) {
            return true;
        }
        this.f22389n.mo12094b(t);
        throw null;
    }

    /* renamed from: b */
    public final <UT, UB> UB m12035b(Object obj, int i, UB ub, hp3<UT, UB> hp3Var) {
        int i2 = this.f22376a[i];
        Object m7368v = rp3.m7368v(obj, m12032m(i) & 1048575);
        if (m7368v == null) {
            return ub;
        }
        if (m12037V(i) == null) {
            return ub;
        }
        un3 un3Var = (un3) m7368v;
        tn3 tn3Var = (tn3) m12038U(i);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: c */
    public final boolean mo7411c(T t, T t2) {
        boolean m6428d;
        int length = this.f22376a.length;
        for (int i = 0; i < length; i += 3) {
            int m12032m = m12032m(i);
            long j = m12032m & 1048575;
            switch (m12030o(m12032m)) {
                case 0:
                    if (m12023v(t, t2, i) && Double.doubleToLongBits(rp3.m7370t(t, j)) == Double.doubleToLongBits(rp3.m7370t(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (m12023v(t, t2, i) && Float.floatToIntBits(rp3.m7372r(t, j)) == Float.floatToIntBits(rp3.m7372r(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (m12023v(t, t2, i) && rp3.m7376n(t, j) == rp3.m7376n(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (m12023v(t, t2, i) && rp3.m7376n(t, j) == rp3.m7376n(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (m12023v(t, t2, i) && rp3.m7376n(t, j) == rp3.m7376n(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (m12023v(t, t2, i) && rp3.m7374p(t, j) == rp3.m7374p(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (m12023v(t, t2, i) && uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (m12023v(t, t2, i) && uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (m12023v(t, t2, i) && uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (m12023v(t, t2, i) && rp3.m7376n(t, j) == rp3.m7376n(t2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (m12023v(t, t2, i) && rp3.m7378l(t, j) == rp3.m7378l(t2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (m12023v(t, t2, i) && rp3.m7376n(t, j) == rp3.m7376n(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (m12023v(t, t2, i) && uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j))) {
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
                    m6428d = uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j));
                    break;
                case 50:
                    m6428d = uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j));
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
                    long m12031n = m12031n(i) & 1048575;
                    if (rp3.m7378l(t, m12031n) == rp3.m7378l(t2, m12031n) && uo3.m6428d(rp3.m7368v(t, j), rp3.m7368v(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!m6428d) {
                return false;
            }
        }
        if (!this.f22388m.mo10216j(t).equals(this.f22388m.mo10216j(t2))) {
            return false;
        }
        if (!this.f22381f) {
            return true;
        }
        this.f22389n.mo12094b(t);
        this.f22389n.mo12094b(t2);
        throw null;
    }

    @Override // p168r4.ro3
    /* renamed from: e */
    public final void mo7409e(T t) {
        int i;
        int i2 = this.f22385j;
        while (true) {
            i = this.f22386k;
            if (i2 >= i) {
                break;
            }
            long m12032m = m12032m(this.f22384i[i2]) & 1048575;
            Object m7368v = rp3.m7368v(t, m12032m);
            if (m7368v != null) {
                ((un3) m7368v).m6469f();
                rp3.m7367w(t, m12032m, m7368v);
            }
            i2++;
        }
        int length = this.f22384i.length;
        while (i < length) {
            this.f22387l.mo9999b(t, this.f22384i[i]);
            i++;
        }
        this.f22388m.mo10213m(t);
        if (this.f22381f) {
            this.f22389n.mo12092d(t);
        }
    }

    @Override // p168r4.ro3
    /* renamed from: f */
    public final void mo7408f(T t, xl3 xl3Var) {
        if (this.f22383h) {
            if (!this.f22381f) {
                int length = this.f22376a.length;
                for (int i = 0; i < length; i += 3) {
                    int m12032m = m12032m(i);
                    int i2 = this.f22376a[i];
                    switch (m12030o(m12032m)) {
                        case 0:
                            if (m12021x(t, i)) {
                                xl3Var.m5256q(i2, rp3.m7370t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (m12021x(t, i)) {
                                xl3Var.m5257p(i2, rp3.m7372r(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (m12021x(t, i)) {
                                xl3Var.m5259n(i2, rp3.m7376n(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (m12021x(t, i)) {
                                xl3Var.m5254s(i2, rp3.m7376n(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (m12021x(t, i)) {
                                xl3Var.m5253t(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (m12021x(t, i)) {
                                xl3Var.m5252u(i2, rp3.m7376n(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (m12021x(t, i)) {
                                xl3Var.m5251v(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (m12021x(t, i)) {
                                xl3Var.m5250w(i2, rp3.m7374p(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (m12021x(t, i)) {
                                m12052G(i2, rp3.m7368v(t, m12032m & 1048575), xl3Var);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (m12021x(t, i)) {
                                xl3Var.m5281C(i2, rp3.m7368v(t, m12032m & 1048575), m12039T(i));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (m12021x(t, i)) {
                                xl3Var.m5248y(i2, (ll3) rp3.m7368v(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (m12021x(t, i)) {
                                xl3Var.m5247z(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (m12021x(t, i)) {
                                xl3Var.m5255r(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (m12021x(t, i)) {
                                xl3Var.m5260m(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (m12021x(t, i)) {
                                xl3Var.m5258o(i2, rp3.m7376n(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (m12021x(t, i)) {
                                xl3Var.m5283A(i2, rp3.m7378l(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (m12021x(t, i)) {
                                xl3Var.m5282B(i2, rp3.m7376n(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (m12021x(t, i)) {
                                xl3Var.m5280D(i2, rp3.m7368v(t, m12032m & 1048575), m12039T(i));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            uo3.m6422j(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 19:
                            uo3.m6421k(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 20:
                            uo3.m6420l(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 21:
                            uo3.m6419m(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 22:
                            uo3.m6415q(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 23:
                            uo3.m6417o(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 24:
                            uo3.m6412t(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 25:
                            uo3.m6409w(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 26:
                            uo3.m6408x(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var);
                            break;
                        case 27:
                            uo3.m6406z(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, m12039T(i));
                            break;
                        case 28:
                            uo3.m6407y(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var);
                            break;
                        case 29:
                            uo3.m6414r(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 30:
                            uo3.m6410v(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 31:
                            uo3.m6411u(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 32:
                            uo3.m6416p(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 33:
                            uo3.m6413s(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 34:
                            uo3.m6418n(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, false);
                            break;
                        case 35:
                            uo3.m6422j(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 36:
                            uo3.m6421k(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 37:
                            uo3.m6420l(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 38:
                            uo3.m6419m(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 39:
                            uo3.m6415q(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 40:
                            uo3.m6417o(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 41:
                            uo3.m6412t(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 42:
                            uo3.m6409w(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 43:
                            uo3.m6414r(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 44:
                            uo3.m6410v(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 45:
                            uo3.m6411u(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 46:
                            uo3.m6416p(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 47:
                            uo3.m6413s(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 48:
                            uo3.m6418n(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, true);
                            break;
                        case 49:
                            uo3.m6458B(this.f22376a[i], (List) rp3.m7368v(t, m12032m & 1048575), xl3Var, m12039T(i));
                            break;
                        case 50:
                            m12053F(xl3Var, i2, rp3.m7368v(t, m12032m & 1048575), i);
                            break;
                        case 51:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5256q(i2, m12028q(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5257p(i2, m12027r(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5259n(i2, m12025t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5254s(i2, m12025t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5253t(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5252u(i2, m12025t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5251v(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5250w(i2, m12024u(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (m12019z(t, i2, i)) {
                                m12052G(i2, rp3.m7368v(t, m12032m & 1048575), xl3Var);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5281C(i2, rp3.m7368v(t, m12032m & 1048575), m12039T(i));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5248y(i2, (ll3) rp3.m7368v(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5247z(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5255r(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5260m(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5258o(i2, m12025t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5283A(i2, m12026s(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5282B(i2, m12025t(t, m12032m & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (m12019z(t, i2, i)) {
                                xl3Var.m5280D(i2, rp3.m7368v(t, m12032m & 1048575), m12039T(i));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                hp3<?, ?> hp3Var = this.f22388m;
                hp3Var.mo10209r(hp3Var.mo10216j(t), xl3Var);
                return;
            }
            this.f22389n.mo12094b(t);
            throw null;
        }
        m12054E(t, xl3Var);
    }

    @Override // p168r4.ro3
    /* renamed from: h */
    public final void mo7406h(T t, byte[] bArr, int i, int i2, xk3 xk3Var) {
        if (this.f22383h) {
            m12036W(t, bArr, i, i2, xk3Var);
        } else {
            m12050I(t, bArr, i, i2, 0, xk3Var);
        }
    }

    @Override // p168r4.ro3
    /* renamed from: i */
    public final int mo7405i(T t) {
        int i;
        int m4176e;
        int length = this.f22376a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int m12032m = m12032m(i3);
            int i4 = this.f22376a[i3];
            long j = 1048575 & m12032m;
            int i5 = 37;
            switch (m12030o(m12032m)) {
                case 0:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(Double.doubleToLongBits(rp3.m7370t(t, j)));
                    i2 = i + m4176e;
                    break;
                case 1:
                    i = i2 * 53;
                    m4176e = Float.floatToIntBits(rp3.m7372r(t, j));
                    i2 = i + m4176e;
                    break;
                case 2:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(rp3.m7376n(t, j));
                    i2 = i + m4176e;
                    break;
                case 3:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(rp3.m7376n(t, j));
                    i2 = i + m4176e;
                    break;
                case 4:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 5:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(rp3.m7376n(t, j));
                    i2 = i + m4176e;
                    break;
                case 6:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 7:
                    i = i2 * 53;
                    m4176e = zm3.m4175f(rp3.m7374p(t, j));
                    i2 = i + m4176e;
                    break;
                case 8:
                    i = i2 * 53;
                    m4176e = ((String) rp3.m7368v(t, j)).hashCode();
                    i2 = i + m4176e;
                    break;
                case 9:
                    Object m7368v = rp3.m7368v(t, j);
                    if (m7368v != null) {
                        i5 = m7368v.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    m4176e = rp3.m7368v(t, j).hashCode();
                    i2 = i + m4176e;
                    break;
                case 11:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 12:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 13:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 14:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(rp3.m7376n(t, j));
                    i2 = i + m4176e;
                    break;
                case 15:
                    i = i2 * 53;
                    m4176e = rp3.m7378l(t, j);
                    i2 = i + m4176e;
                    break;
                case 16:
                    i = i2 * 53;
                    m4176e = zm3.m4176e(rp3.m7376n(t, j));
                    i2 = i + m4176e;
                    break;
                case 17:
                    Object m7368v2 = rp3.m7368v(t, j);
                    if (m7368v2 != null) {
                        i5 = m7368v2.hashCode();
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
                    m4176e = rp3.m7368v(t, j).hashCode();
                    i2 = i + m4176e;
                    break;
                case 50:
                    i = i2 * 53;
                    m4176e = rp3.m7368v(t, j).hashCode();
                    i2 = i + m4176e;
                    break;
                case 51:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(Double.doubleToLongBits(m12028q(t, j)));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = Float.floatToIntBits(m12027r(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(m12025t(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(m12025t(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(m12025t(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4175f(m12024u(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = ((String) rp3.m7368v(t, j)).hashCode();
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = rp3.m7368v(t, j).hashCode();
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = rp3.m7368v(t, j).hashCode();
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(m12025t(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = m12026s(t, j);
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = zm3.m4176e(m12025t(t, j));
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m12019z(t, i4, i3)) {
                        i = i2 * 53;
                        m4176e = rp3.m7368v(t, j).hashCode();
                        i2 = i + m4176e;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.f22388m.mo10216j(t).hashCode();
        if (!this.f22381f) {
            return hashCode;
        }
        this.f22389n.mo12094b(t);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0385  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p168r4.do3<T> m12048K(p168r4.ko3 r34, p168r4.fo3 r35, p168r4.kn3 r36, p168r4.hp3<?, ?> r37, p168r4.cm3<?> r38, p168r4.vn3 r39) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.do3.m12048K(r4.ko3, r4.fo3, r4.kn3, r4.hp3, r4.cm3, r4.vn3):r4.do3");
    }

    /* renamed from: L */
    public static Field m12047L(Class<?> cls, String str) {
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
    /* renamed from: k */
    public static boolean m12034k(Object obj, int i, ro3 ro3Var) {
        return ro3Var.mo7412a(rp3.m7368v(obj, i & 1048575));
    }

    /* renamed from: A */
    public final void m12058A(T t, int i, int i2) {
        rp3.m7377m(t, m12031n(i2) & 1048575, i);
    }

    /* renamed from: M */
    public final void m12046M(T t, T t2, int i) {
        long m12032m = m12032m(i) & 1048575;
        if (!m12021x(t2, i)) {
            return;
        }
        Object m7368v = rp3.m7368v(t, m12032m);
        Object m7368v2 = rp3.m7368v(t2, m12032m);
        if (m7368v != null && m7368v2 != null) {
            rp3.m7367w(t, m12032m, zm3.m4172i(m7368v, m7368v2));
            m12020y(t, i);
        } else if (m7368v2 != null) {
            rp3.m7367w(t, m12032m, m7368v2);
            m12020y(t, i);
        }
    }

    /* renamed from: N */
    public final void m12045N(T t, T t2, int i) {
        Object obj;
        int m12032m = m12032m(i);
        int i2 = this.f22376a[i];
        long j = m12032m & 1048575;
        if (!m12019z(t2, i2, i)) {
            return;
        }
        if (m12019z(t, i2, i)) {
            obj = rp3.m7368v(t, j);
        } else {
            obj = null;
        }
        Object m7368v = rp3.m7368v(t2, j);
        if (obj != null && m7368v != null) {
            rp3.m7367w(t, j, zm3.m4172i(obj, m7368v));
            m12058A(t, i2, i);
        } else if (m7368v != null) {
            rp3.m7367w(t, j, m7368v);
            m12058A(t, i2, i);
        }
    }

    @Override // p168r4.ro3
    /* renamed from: g */
    public final void mo7407g(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.f22376a.length; i += 3) {
            int m12032m = m12032m(i);
            long j = 1048575 & m12032m;
            int i2 = this.f22376a[i];
            switch (m12030o(m12032m)) {
                case 0:
                    if (m12021x(t2, i)) {
                        rp3.m7369u(t, j, rp3.m7370t(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m12021x(t2, i)) {
                        rp3.m7371s(t, j, rp3.m7372r(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m12021x(t2, i)) {
                        rp3.m7375o(t, j, rp3.m7376n(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m12021x(t2, i)) {
                        rp3.m7375o(t, j, rp3.m7376n(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m12021x(t2, i)) {
                        rp3.m7375o(t, j, rp3.m7376n(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m12021x(t2, i)) {
                        rp3.m7373q(t, j, rp3.m7374p(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m12021x(t2, i)) {
                        rp3.m7367w(t, j, rp3.m7368v(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m12046M(t, t2, i);
                    break;
                case 10:
                    if (m12021x(t2, i)) {
                        rp3.m7367w(t, j, rp3.m7368v(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m12021x(t2, i)) {
                        rp3.m7375o(t, j, rp3.m7376n(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m12021x(t2, i)) {
                        rp3.m7377m(t, j, rp3.m7378l(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m12021x(t2, i)) {
                        rp3.m7375o(t, j, rp3.m7376n(t2, j));
                        m12020y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m12046M(t, t2, i);
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
                    this.f22387l.mo9998c(t, t2, j);
                    break;
                case 50:
                    uo3.m6423i(this.f22391p, t, t2, j);
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
                    if (m12019z(t2, i2, i)) {
                        rp3.m7367w(t, j, rp3.m7368v(t2, j));
                        m12058A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m12045N(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m12019z(t2, i2, i)) {
                        rp3.m7367w(t, j, rp3.m7368v(t2, j));
                        m12058A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m12045N(t, t2, i);
                    break;
            }
        }
        uo3.m6426f(this.f22388m, t, t2);
        if (this.f22381f) {
            uo3.m6427e(this.f22389n, t, t2);
        }
    }

    @Override // p168r4.ro3
    /* renamed from: j */
    public final void mo7404j(T t, lo3 lo3Var, bm3 bm3Var) {
        Object mo12090f;
        bm3Var.getClass();
        hp3 hp3Var = this.f22388m;
        cm3<?> cm3Var = this.f22389n;
        gm3<?> gm3Var = null;
        Object obj = null;
        while (true) {
            try {
                int mo7124a = lo3Var.mo7124a();
                int m12057B = m12057B(mo7124a);
                if (m12057B < 0) {
                    if (mo7124a == Integer.MAX_VALUE) {
                        for (int i = this.f22385j; i < this.f22386k; i++) {
                            obj = m12035b(t, this.f22384i[i], obj, hp3Var);
                        }
                        if (obj != null) {
                            hp3Var.mo10214l(t, obj);
                            return;
                        }
                        return;
                    }
                    if (!this.f22381f) {
                        mo12090f = null;
                    } else {
                        mo12090f = cm3Var.mo12090f(bm3Var, this.f22380e, mo7124a);
                    }
                    if (mo12090f != null) {
                        if (gm3Var == null) {
                            gm3Var = cm3Var.mo12093c(t);
                        }
                        gm3<?> gm3Var2 = gm3Var;
                        obj = cm3Var.mo12091e(lo3Var, mo12090f, bm3Var, gm3Var2, obj, hp3Var);
                        gm3Var = gm3Var2;
                    } else {
                        hp3Var.mo10225a(lo3Var);
                        if (obj == null) {
                            obj = hp3Var.mo10215k(t);
                        }
                        if (!hp3Var.m10834n(obj, lo3Var)) {
                            for (int i2 = this.f22385j; i2 < this.f22386k; i2++) {
                                obj = m12035b(t, this.f22384i[i2], obj, hp3Var);
                            }
                            if (obj != null) {
                                hp3Var.mo10214l(t, obj);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    int m12032m = m12032m(m12057B);
                    try {
                        switch (m12030o(m12032m)) {
                            case 0:
                                rp3.m7369u(t, m12032m & 1048575, lo3Var.mo7122c());
                                m12020y(t, m12057B);
                                break;
                            case 1:
                                rp3.m7371s(t, m12032m & 1048575, lo3Var.mo7121d());
                                m12020y(t, m12057B);
                                break;
                            case 2:
                                rp3.m7375o(t, m12032m & 1048575, lo3Var.mo7119f());
                                m12020y(t, m12057B);
                                break;
                            case 3:
                                rp3.m7375o(t, m12032m & 1048575, lo3Var.mo7118g());
                                m12020y(t, m12057B);
                                break;
                            case 4:
                                rp3.m7377m(t, m12032m & 1048575, lo3Var.mo7115j());
                                m12020y(t, m12057B);
                                break;
                            case 5:
                                rp3.m7375o(t, m12032m & 1048575, lo3Var.mo7117h());
                                m12020y(t, m12057B);
                                break;
                            case 6:
                                rp3.m7377m(t, m12032m & 1048575, lo3Var.mo7116i());
                                m12020y(t, m12057B);
                                break;
                            case 7:
                                rp3.m7373q(t, m12032m & 1048575, lo3Var.mo7114k());
                                m12020y(t, m12057B);
                                break;
                            case 8:
                                m12033l(t, m12032m, lo3Var);
                                m12020y(t, m12057B);
                                break;
                            case 9:
                                if (m12021x(t, m12057B)) {
                                    long j = m12032m & 1048575;
                                    rp3.m7367w(t, j, zm3.m4172i(rp3.m7368v(t, j), lo3Var.mo7103v(m12039T(m12057B), bm3Var)));
                                    break;
                                } else {
                                    rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7103v(m12039T(m12057B), bm3Var));
                                    m12020y(t, m12057B);
                                    break;
                                }
                            case 10:
                                rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7112m());
                                m12020y(t, m12057B);
                                break;
                            case 11:
                                rp3.m7377m(t, m12032m & 1048575, lo3Var.mo7102w());
                                m12020y(t, m12057B);
                                break;
                            case 12:
                                int mo7107r = lo3Var.mo7107r();
                                tm3 m12037V = m12037V(m12057B);
                                if (m12037V != null && !m12037V.mo5370h(mo7107r)) {
                                    obj = uo3.m6424h(mo7124a, mo7107r, obj, hp3Var);
                                    break;
                                }
                                rp3.m7377m(t, m12032m & 1048575, mo7107r);
                                m12020y(t, m12057B);
                                break;
                            case 13:
                                rp3.m7377m(t, m12032m & 1048575, lo3Var.mo7111n());
                                m12020y(t, m12057B);
                                break;
                            case 14:
                                rp3.m7375o(t, m12032m & 1048575, lo3Var.mo7105t());
                                m12020y(t, m12057B);
                                break;
                            case 15:
                                rp3.m7377m(t, m12032m & 1048575, lo3Var.mo7141E());
                                m12020y(t, m12057B);
                                break;
                            case 16:
                                rp3.m7375o(t, m12032m & 1048575, lo3Var.mo7135K());
                                m12020y(t, m12057B);
                                break;
                            case 17:
                                if (m12021x(t, m12057B)) {
                                    long j2 = m12032m & 1048575;
                                    rp3.m7367w(t, j2, zm3.m4172i(rp3.m7368v(t, j2), lo3Var.mo7099z(m12039T(m12057B), bm3Var)));
                                    break;
                                } else {
                                    rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7099z(m12039T(m12057B), bm3Var));
                                    m12020y(t, m12057B);
                                    break;
                                }
                            case 18:
                                lo3Var.mo7101x(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 19:
                                lo3Var.mo7108q(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 20:
                                lo3Var.mo7140F(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 21:
                                lo3Var.mo7144B(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 22:
                                lo3Var.mo7133M(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 23:
                                lo3Var.mo7137I(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 24:
                                lo3Var.mo7100y(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 25:
                                lo3Var.mo7106s(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 26:
                                if (m12029p(m12032m)) {
                                    ((sl3) lo3Var).m7132N(this.f22387l.mo10000a(t, m12032m & 1048575), true);
                                    break;
                                } else {
                                    ((sl3) lo3Var).m7132N(this.f22387l.mo10000a(t, m12032m & 1048575), false);
                                    break;
                                }
                            case 27:
                                lo3Var.mo7142D(this.f22387l.mo10000a(t, m12032m & 1048575), m12039T(m12057B), bm3Var);
                                break;
                            case 28:
                                lo3Var.mo7139G(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 29:
                                lo3Var.mo7143C(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 30:
                                List<Integer> mo10000a = this.f22387l.mo10000a(t, m12032m & 1048575);
                                lo3Var.mo7134L(mo10000a);
                                obj = uo3.m6425g(mo7124a, mo10000a, m12037V(m12057B), obj, hp3Var);
                                break;
                            case 31:
                                lo3Var.mo7138H(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 32:
                                lo3Var.mo7104u(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 33:
                                lo3Var.mo7110o(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 34:
                                lo3Var.mo7145A(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 35:
                                lo3Var.mo7101x(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 36:
                                lo3Var.mo7108q(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 37:
                                lo3Var.mo7140F(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 38:
                                lo3Var.mo7144B(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 39:
                                lo3Var.mo7133M(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 40:
                                lo3Var.mo7137I(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 41:
                                lo3Var.mo7100y(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 42:
                                lo3Var.mo7106s(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 43:
                                lo3Var.mo7143C(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 44:
                                List<Integer> mo10000a2 = this.f22387l.mo10000a(t, m12032m & 1048575);
                                lo3Var.mo7134L(mo10000a2);
                                obj = uo3.m6425g(mo7124a, mo10000a2, m12037V(m12057B), obj, hp3Var);
                                break;
                            case 45:
                                lo3Var.mo7138H(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 46:
                                lo3Var.mo7104u(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 47:
                                lo3Var.mo7110o(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 48:
                                lo3Var.mo7145A(this.f22387l.mo10000a(t, m12032m & 1048575));
                                break;
                            case 49:
                                lo3Var.mo7136J(this.f22387l.mo10000a(t, m12032m & 1048575), m12039T(m12057B), bm3Var);
                                break;
                            case 50:
                                Object m12038U = m12038U(m12057B);
                                long m12032m2 = m12032m(m12057B) & 1048575;
                                Object m7368v = rp3.m7368v(t, m12032m2);
                                if (m7368v != null) {
                                    if (vn3.m6057b(m7368v)) {
                                        Object m6470c = un3.m6472a().m6470c();
                                        vn3.m6056c(m6470c, m7368v);
                                        rp3.m7367w(t, m12032m2, m6470c);
                                        m7368v = m6470c;
                                    }
                                } else {
                                    m7368v = un3.m6472a().m6470c();
                                    rp3.m7367w(t, m12032m2, m7368v);
                                }
                                un3 un3Var = (un3) m7368v;
                                tn3 tn3Var = (tn3) m12038U;
                                throw null;
                                break;
                            case 51:
                                rp3.m7367w(t, m12032m & 1048575, Double.valueOf(lo3Var.mo7122c()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 52:
                                rp3.m7367w(t, m12032m & 1048575, Float.valueOf(lo3Var.mo7121d()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 53:
                                rp3.m7367w(t, m12032m & 1048575, Long.valueOf(lo3Var.mo7119f()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 54:
                                rp3.m7367w(t, m12032m & 1048575, Long.valueOf(lo3Var.mo7118g()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 55:
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(lo3Var.mo7115j()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 56:
                                rp3.m7367w(t, m12032m & 1048575, Long.valueOf(lo3Var.mo7117h()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 57:
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(lo3Var.mo7116i()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 58:
                                rp3.m7367w(t, m12032m & 1048575, Boolean.valueOf(lo3Var.mo7114k()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 59:
                                m12033l(t, m12032m, lo3Var);
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 60:
                                if (m12019z(t, mo7124a, m12057B)) {
                                    long j3 = m12032m & 1048575;
                                    rp3.m7367w(t, j3, zm3.m4172i(rp3.m7368v(t, j3), lo3Var.mo7103v(m12039T(m12057B), bm3Var)));
                                } else {
                                    rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7103v(m12039T(m12057B), bm3Var));
                                    m12020y(t, m12057B);
                                }
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 61:
                                rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7112m());
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 62:
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(lo3Var.mo7102w()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 63:
                                int mo7107r2 = lo3Var.mo7107r();
                                tm3 m12037V2 = m12037V(m12057B);
                                if (m12037V2 != null && !m12037V2.mo5370h(mo7107r2)) {
                                    obj = uo3.m6424h(mo7124a, mo7107r2, obj, hp3Var);
                                    break;
                                }
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(mo7107r2));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 64:
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(lo3Var.mo7111n()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 65:
                                rp3.m7367w(t, m12032m & 1048575, Long.valueOf(lo3Var.mo7105t()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 66:
                                rp3.m7367w(t, m12032m & 1048575, Integer.valueOf(lo3Var.mo7141E()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 67:
                                rp3.m7367w(t, m12032m & 1048575, Long.valueOf(lo3Var.mo7135K()));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            case 68:
                                rp3.m7367w(t, m12032m & 1048575, lo3Var.mo7099z(m12039T(m12057B), bm3Var));
                                m12058A(t, mo7124a, m12057B);
                                break;
                            default:
                                if (obj == null) {
                                    obj = hp3Var.mo10219g();
                                }
                                if (!hp3Var.m10834n(obj, lo3Var)) {
                                    for (int i3 = this.f22385j; i3 < this.f22386k; i3++) {
                                        obj = m12035b(t, this.f22384i[i3], obj, hp3Var);
                                    }
                                    if (obj != null) {
                                        hp3Var.mo10214l(t, obj);
                                        return;
                                    }
                                    return;
                                }
                                break;
                        }
                    } catch (an3 unused) {
                        hp3Var.mo10225a(lo3Var);
                        if (obj == null) {
                            obj = hp3Var.mo10215k(t);
                        }
                        if (!hp3Var.m10834n(obj, lo3Var)) {
                            for (int i4 = this.f22385j; i4 < this.f22386k; i4++) {
                                obj = m12035b(t, this.f22384i[i4], obj, hp3Var);
                            }
                            if (obj != null) {
                                hp3Var.mo10214l(t, obj);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.f22385j; i5 < this.f22386k; i5++) {
                    obj = m12035b(t, this.f22384i[i5], obj, hp3Var);
                }
                if (obj != null) {
                    hp3Var.mo10214l(t, obj);
                }
                throw th;
            }
        }
    }

    /* renamed from: l */
    public final void m12033l(Object obj, int i, lo3 lo3Var) {
        if (m12029p(i)) {
            rp3.m7367w(obj, i & 1048575, lo3Var.mo7109p());
        } else if (this.f22382g) {
            rp3.m7367w(obj, i & 1048575, lo3Var.mo7113l());
        } else {
            rp3.m7367w(obj, i & 1048575, lo3Var.mo7112m());
        }
    }

    /* renamed from: x */
    public final boolean m12021x(T t, int i) {
        int m12031n = m12031n(i);
        long j = m12031n & 1048575;
        if (j == 1048575) {
            int m12032m = m12032m(i);
            long j2 = m12032m & 1048575;
            switch (m12030o(m12032m)) {
                case 0:
                    if (rp3.m7370t(t, j2) == 0.0d) {
                        return false;
                    }
                    return true;
                case 1:
                    if (rp3.m7372r(t, j2) == 0.0f) {
                        return false;
                    }
                    return true;
                case 2:
                    if (rp3.m7376n(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (rp3.m7376n(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (rp3.m7376n(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return rp3.m7374p(t, j2);
                case 8:
                    Object m7368v = rp3.m7368v(t, j2);
                    if (m7368v instanceof String) {
                        if (((String) m7368v).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (m7368v instanceof ll3) {
                        if (ll3.f27255b.equals(m7368v)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (rp3.m7368v(t, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (ll3.f27255b.equals(rp3.m7368v(t, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (rp3.m7376n(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (rp3.m7378l(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (rp3.m7376n(t, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (rp3.m7368v(t, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        } else if ((rp3.m7378l(t, j) & (1 << (m12031n >>> 20))) == 0) {
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: y */
    public final void m12020y(T t, int i) {
        int m12031n = m12031n(i);
        long j = 1048575 & m12031n;
        if (j == 1048575) {
            return;
        }
        rp3.m7377m(t, j, (1 << (m12031n >>> 20)) | rp3.m7378l(t, j));
    }

    /* renamed from: z */
    public final boolean m12019z(T t, int i, int i2) {
        if (rp3.m7378l(t, m12031n(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }
}

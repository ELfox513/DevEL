package p237z4;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p237z4.AbstractC7673m0;
import sun.misc.Unsafe;
/* renamed from: z4.v1 */
/* loaded from: classes2.dex */
public final class C7720v1<T> implements InterfaceC7640f2<T> {

    /* renamed from: r */
    public static final int[] f37881r = new int[0];

    /* renamed from: s */
    public static final Unsafe f37882s = C7627d3.m833t();

    /* renamed from: a */
    public final int[] f37883a;

    /* renamed from: b */
    public final Object[] f37884b;

    /* renamed from: c */
    public final int f37885c;

    /* renamed from: d */
    public final int f37886d;

    /* renamed from: e */
    public final InterfaceC7703r1 f37887e;

    /* renamed from: f */
    public final boolean f37888f;

    /* renamed from: g */
    public final boolean f37889g;

    /* renamed from: h */
    public final boolean f37890h;

    /* renamed from: i */
    public final boolean f37891i;

    /* renamed from: j */
    public final int[] f37892j;

    /* renamed from: k */
    public final int f37893k;

    /* renamed from: l */
    public final int f37894l;

    /* renamed from: m */
    public final InterfaceC7734y1 f37895m;

    /* renamed from: n */
    public final AbstractC7615b1 f37896n;

    /* renamed from: o */
    public final AbstractC7731x2<?, ?> f37897o;

    /* renamed from: p */
    public final AbstractC7619c0<?> f37898p;

    /* renamed from: q */
    public final InterfaceC7678m1 f37899q;

    /* renamed from: A */
    public static <T> double m582A(T t, long j) {
        return ((Double) C7627d3.m861G(t, j)).doubleValue();
    }

    /* renamed from: B */
    public static <T> float m581B(T t, long j) {
        return ((Float) C7627d3.m861G(t, j)).floatValue();
    }

    /* renamed from: C */
    public static <T> int m580C(T t, long j) {
        return ((Integer) C7627d3.m861G(t, j)).intValue();
    }

    /* renamed from: D */
    public static <T> long m579D(T t, long j) {
        return ((Long) C7627d3.m861G(t, j)).longValue();
    }

    /* renamed from: E */
    public static <T> boolean m578E(T t, long j) {
        return ((Boolean) C7627d3.m861G(t, j)).booleanValue();
    }

    /* renamed from: h */
    public static <T> C7720v1<T> m575h(Class<T> cls, InterfaceC7693p1 interfaceC7693p1, InterfaceC7734y1 interfaceC7734y1, AbstractC7615b1 abstractC7615b1, AbstractC7731x2<?, ?> abstractC7731x2, AbstractC7619c0<?> abstractC7619c0, InterfaceC7678m1 interfaceC7678m1) {
        int i;
        int charAt;
        int charAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        char charAt3;
        int i8;
        char charAt4;
        int i9;
        char charAt5;
        int i10;
        char charAt6;
        int i11;
        char charAt7;
        int i12;
        char charAt8;
        int i13;
        char charAt9;
        int i14;
        char charAt10;
        int i15;
        int i16;
        boolean z;
        int i17;
        C7635e2 c7635e2;
        int i18;
        int objectFieldOffset;
        int i19;
        int i20;
        Class<?> cls2;
        String str;
        int i21;
        int i22;
        Field m576g;
        int i23;
        char charAt11;
        int i24;
        Field m576g2;
        Field m576g3;
        int i25;
        char charAt12;
        int i26;
        char charAt13;
        int i27;
        char charAt14;
        int i28;
        char charAt15;
        char charAt16;
        if (interfaceC7693p1 instanceof C7635e2) {
            C7635e2 c7635e22 = (C7635e2) interfaceC7693p1;
            int i29 = 0;
            boolean z2 = c7635e22.mo595a() == AbstractC7673m0.C7677d.f37821j;
            String m808d = c7635e22.m808d();
            int length = m808d.length();
            int charAt17 = m808d.charAt(0);
            if (charAt17 >= 55296) {
                int i30 = charAt17 & 8191;
                int i31 = 1;
                int i32 = 13;
                while (true) {
                    i = i31 + 1;
                    charAt16 = m808d.charAt(i31);
                    if (charAt16 < 55296) {
                        break;
                    }
                    i30 |= (charAt16 & 8191) << i32;
                    i32 += 13;
                    i31 = i;
                }
                charAt17 = i30 | (charAt16 << i32);
            } else {
                i = 1;
            }
            int i33 = i + 1;
            int charAt18 = m808d.charAt(i);
            if (charAt18 >= 55296) {
                int i34 = charAt18 & 8191;
                int i35 = 13;
                while (true) {
                    i28 = i33 + 1;
                    charAt15 = m808d.charAt(i33);
                    if (charAt15 < 55296) {
                        break;
                    }
                    i34 |= (charAt15 & 8191) << i35;
                    i35 += 13;
                    i33 = i28;
                }
                charAt18 = i34 | (charAt15 << i35);
                i33 = i28;
            }
            if (charAt18 == 0) {
                iArr = f37881r;
                i6 = 0;
                i3 = 0;
                charAt = 0;
                i4 = 0;
                charAt2 = 0;
                i5 = 0;
            } else {
                int i36 = i33 + 1;
                int charAt19 = m808d.charAt(i33);
                if (charAt19 >= 55296) {
                    int i37 = charAt19 & 8191;
                    int i38 = 13;
                    while (true) {
                        i14 = i36 + 1;
                        charAt10 = m808d.charAt(i36);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i37 |= (charAt10 & 8191) << i38;
                        i38 += 13;
                        i36 = i14;
                    }
                    charAt19 = i37 | (charAt10 << i38);
                    i36 = i14;
                }
                int i39 = i36 + 1;
                int charAt20 = m808d.charAt(i36);
                if (charAt20 >= 55296) {
                    int i40 = charAt20 & 8191;
                    int i41 = 13;
                    while (true) {
                        i13 = i39 + 1;
                        charAt9 = m808d.charAt(i39);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i40 |= (charAt9 & 8191) << i41;
                        i41 += 13;
                        i39 = i13;
                    }
                    charAt20 = i40 | (charAt9 << i41);
                    i39 = i13;
                }
                int i42 = i39 + 1;
                charAt = m808d.charAt(i39);
                if (charAt >= 55296) {
                    int i43 = charAt & 8191;
                    int i44 = 13;
                    while (true) {
                        i12 = i42 + 1;
                        charAt8 = m808d.charAt(i42);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i43 |= (charAt8 & 8191) << i44;
                        i44 += 13;
                        i42 = i12;
                    }
                    charAt = i43 | (charAt8 << i44);
                    i42 = i12;
                }
                int i45 = i42 + 1;
                int charAt21 = m808d.charAt(i42);
                if (charAt21 >= 55296) {
                    int i46 = charAt21 & 8191;
                    int i47 = 13;
                    while (true) {
                        i11 = i45 + 1;
                        charAt7 = m808d.charAt(i45);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i46 |= (charAt7 & 8191) << i47;
                        i47 += 13;
                        i45 = i11;
                    }
                    charAt21 = i46 | (charAt7 << i47);
                    i45 = i11;
                }
                int i48 = i45 + 1;
                charAt2 = m808d.charAt(i45);
                if (charAt2 >= 55296) {
                    int i49 = charAt2 & 8191;
                    int i50 = 13;
                    while (true) {
                        i10 = i48 + 1;
                        charAt6 = m808d.charAt(i48);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i49 |= (charAt6 & 8191) << i50;
                        i50 += 13;
                        i48 = i10;
                    }
                    charAt2 = i49 | (charAt6 << i50);
                    i48 = i10;
                }
                int i51 = i48 + 1;
                int charAt22 = m808d.charAt(i48);
                if (charAt22 >= 55296) {
                    int i52 = charAt22 & 8191;
                    int i53 = 13;
                    while (true) {
                        i9 = i51 + 1;
                        charAt5 = m808d.charAt(i51);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i52 |= (charAt5 & 8191) << i53;
                        i53 += 13;
                        i51 = i9;
                    }
                    charAt22 = i52 | (charAt5 << i53);
                    i51 = i9;
                }
                int i54 = i51 + 1;
                int charAt23 = m808d.charAt(i51);
                if (charAt23 >= 55296) {
                    int i55 = charAt23 & 8191;
                    int i56 = i54;
                    int i57 = 13;
                    while (true) {
                        i8 = i56 + 1;
                        charAt4 = m808d.charAt(i56);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i55 |= (charAt4 & 8191) << i57;
                        i57 += 13;
                        i56 = i8;
                    }
                    charAt23 = i55 | (charAt4 << i57);
                    i2 = i8;
                } else {
                    i2 = i54;
                }
                int i58 = i2 + 1;
                int charAt24 = m808d.charAt(i2);
                if (charAt24 >= 55296) {
                    int i59 = charAt24 & 8191;
                    int i60 = i58;
                    int i61 = 13;
                    while (true) {
                        i7 = i60 + 1;
                        charAt3 = m808d.charAt(i60);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i59 |= (charAt3 & 8191) << i61;
                        i61 += 13;
                        i60 = i7;
                    }
                    charAt24 = i59 | (charAt3 << i61);
                    i58 = i7;
                }
                int i62 = (charAt19 << 1) + charAt20;
                i3 = charAt21;
                i4 = i62;
                i5 = charAt24;
                i29 = charAt19;
                i33 = i58;
                int i63 = charAt22;
                iArr = new int[charAt24 + charAt22 + charAt23];
                i6 = i63;
            }
            Unsafe unsafe = f37882s;
            Object[] m807e = c7635e22.m807e();
            Class<?> cls3 = c7635e22.mo593c().getClass();
            int i64 = i33;
            int[] iArr2 = new int[charAt2 * 3];
            Object[] objArr = new Object[charAt2 << 1];
            int i65 = i5 + i6;
            int i66 = i5;
            int i67 = i64;
            int i68 = i65;
            int i69 = 0;
            int i70 = 0;
            while (i67 < length) {
                int i71 = i67 + 1;
                int charAt25 = m808d.charAt(i67);
                int i72 = length;
                if (charAt25 >= 55296) {
                    int i73 = charAt25 & 8191;
                    int i74 = i71;
                    int i75 = 13;
                    while (true) {
                        i27 = i74 + 1;
                        charAt14 = m808d.charAt(i74);
                        i15 = i5;
                        if (charAt14 < 55296) {
                            break;
                        }
                        i73 |= (charAt14 & 8191) << i75;
                        i75 += 13;
                        i74 = i27;
                        i5 = i15;
                    }
                    charAt25 = i73 | (charAt14 << i75);
                    i16 = i27;
                } else {
                    i15 = i5;
                    i16 = i71;
                }
                int i76 = i16 + 1;
                int charAt26 = m808d.charAt(i16);
                if (charAt26 >= 55296) {
                    int i77 = charAt26 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i26 = i78 + 1;
                        charAt13 = m808d.charAt(i78);
                        z = z2;
                        if (charAt13 < 55296) {
                            break;
                        }
                        i77 |= (charAt13 & 8191) << i79;
                        i79 += 13;
                        i78 = i26;
                        z2 = z;
                    }
                    charAt26 = i77 | (charAt13 << i79);
                    i17 = i26;
                } else {
                    z = z2;
                    i17 = i76;
                }
                int i80 = charAt26 & 255;
                int i81 = i3;
                if ((charAt26 & 1024) != 0) {
                    iArr[i69] = i70;
                    i69++;
                }
                int i82 = charAt;
                if (i80 >= 51) {
                    int i83 = i17 + 1;
                    int charAt27 = m808d.charAt(i17);
                    char c = 55296;
                    if (charAt27 >= 55296) {
                        int i84 = charAt27 & 8191;
                        int i85 = 13;
                        while (true) {
                            i25 = i83 + 1;
                            charAt12 = m808d.charAt(i83);
                            if (charAt12 < c) {
                                break;
                            }
                            i84 |= (charAt12 & 8191) << i85;
                            i85 += 13;
                            i83 = i25;
                            c = 55296;
                        }
                        charAt27 = i84 | (charAt12 << i85);
                        i83 = i25;
                    }
                    int i86 = i80 - 51;
                    int i87 = i83;
                    if (i86 == 9 || i86 == 17) {
                        objArr[((i70 / 3) << 1) + 1] = m807e[i4];
                        i4++;
                    } else if (i86 == 12 && (charAt17 & 1) == 1) {
                        objArr[((i70 / 3) << 1) + 1] = m807e[i4];
                        i4++;
                    }
                    int i88 = charAt27 << 1;
                    Object obj = m807e[i88];
                    if (obj instanceof Field) {
                        m576g2 = (Field) obj;
                    } else {
                        m576g2 = m576g(cls3, (String) obj);
                        m807e[i88] = m576g2;
                    }
                    c7635e2 = c7635e22;
                    String str2 = m808d;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(m576g2);
                    int i89 = i88 + 1;
                    Object obj2 = m807e[i89];
                    if (obj2 instanceof Field) {
                        m576g3 = (Field) obj2;
                    } else {
                        m576g3 = m576g(cls3, (String) obj2);
                        m807e[i89] = m576g3;
                    }
                    cls2 = cls3;
                    i19 = i4;
                    i17 = i87;
                    str = str2;
                    i22 = 0;
                    i21 = (int) unsafe.objectFieldOffset(m576g3);
                    i20 = i29;
                } else {
                    c7635e2 = c7635e22;
                    String str3 = m808d;
                    int i90 = i4 + 1;
                    Field m576g4 = m576g(cls3, (String) m807e[i4]);
                    if (i80 == 9 || i80 == 17) {
                        i18 = 1;
                        objArr[((i70 / 3) << 1) + 1] = m576g4.getType();
                    } else {
                        if (i80 == 27 || i80 == 49) {
                            i18 = 1;
                            i24 = i90 + 1;
                            objArr[((i70 / 3) << 1) + 1] = m807e[i90];
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            i18 = 1;
                            if ((charAt17 & 1) == 1) {
                                i24 = i90 + 1;
                                objArr[((i70 / 3) << 1) + 1] = m807e[i90];
                            }
                        } else {
                            if (i80 == 50) {
                                int i91 = i66 + 1;
                                iArr[i66] = i70;
                                int i92 = (i70 / 3) << 1;
                                int i93 = i90 + 1;
                                objArr[i92] = m807e[i90];
                                if ((charAt26 & 2048) != 0) {
                                    i90 = i93 + 1;
                                    objArr[i92 + 1] = m807e[i93];
                                    i66 = i91;
                                } else {
                                    i90 = i93;
                                    i18 = 1;
                                    i66 = i91;
                                }
                            }
                            i18 = 1;
                        }
                        i90 = i24;
                    }
                    objectFieldOffset = (int) unsafe.objectFieldOffset(m576g4);
                    if ((charAt17 & 1) != i18 || i80 > 17) {
                        i19 = i90;
                        i20 = i29;
                        cls2 = cls3;
                        str = str3;
                        i21 = 0;
                        i22 = 0;
                    } else {
                        int i94 = i17 + 1;
                        str = str3;
                        int charAt28 = str.charAt(i17);
                        if (charAt28 >= 55296) {
                            int i95 = charAt28 & 8191;
                            int i96 = 13;
                            while (true) {
                                i23 = i94 + 1;
                                charAt11 = str.charAt(i94);
                                if (charAt11 < 55296) {
                                    break;
                                }
                                i95 |= (charAt11 & 8191) << i96;
                                i96 += 13;
                                i94 = i23;
                            }
                            charAt28 = i95 | (charAt11 << i96);
                            i94 = i23;
                        }
                        int i97 = (i29 << 1) + (charAt28 / 32);
                        Object obj3 = m807e[i97];
                        i19 = i90;
                        if (obj3 instanceof Field) {
                            m576g = (Field) obj3;
                        } else {
                            m576g = m576g(cls3, (String) obj3);
                            m807e[i97] = m576g;
                        }
                        i20 = i29;
                        cls2 = cls3;
                        i21 = (int) unsafe.objectFieldOffset(m576g);
                        i22 = charAt28 % 32;
                        i17 = i94;
                    }
                    if (i80 >= 18 && i80 <= 49) {
                        iArr[i68] = objectFieldOffset;
                        i68++;
                    }
                }
                int i98 = i70 + 1;
                iArr2[i70] = charAt25;
                int i99 = i98 + 1;
                iArr2[i98] = objectFieldOffset | ((charAt26 & 256) != 0 ? 268435456 : 0) | ((charAt26 & 512) != 0 ? 536870912 : 0) | (i80 << 20);
                i70 = i99 + 1;
                iArr2[i99] = (i22 << 20) | i21;
                i29 = i20;
                m808d = str;
                i67 = i17;
                cls3 = cls2;
                i3 = i81;
                length = i72;
                i5 = i15;
                z2 = z;
                charAt = i82;
                i4 = i19;
                c7635e22 = c7635e2;
            }
            return new C7720v1<>(iArr2, objArr, charAt, i3, c7635e22.mo593c(), z2, false, iArr, i5, i65, interfaceC7734y1, abstractC7615b1, abstractC7731x2, abstractC7619c0, interfaceC7678m1);
        }
        ((C7709s2) interfaceC7693p1).mo595a();
        int i100 = AbstractC7673m0.C7677d.f37812a;
        throw new NoSuchMethodError();
    }

    /* renamed from: k */
    public static <UT, UB> void m572k(AbstractC7731x2<UT, UB> abstractC7731x2, T t, InterfaceC7705r3 interfaceC7705r3) {
        abstractC7731x2.mo400a(abstractC7731x2.mo394g(t), interfaceC7705r3);
    }

    /* renamed from: z */
    public static <E> List<E> m557z(Object obj, long j) {
        return (List) C7627d3.m861G(obj, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p237z4.InterfaceC7640f2
    /* renamed from: e */
    public final boolean mo548e(T t) {
        int i;
        boolean z;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            if (i3 >= this.f37893k) {
                return !this.f37888f || this.f37898p.mo875c(t).m803c();
            }
            int i5 = this.f37892j[i3];
            int i6 = this.f37883a[i5];
            int m564s = m564s(i5);
            if (!this.f37890h) {
                int i7 = this.f37883a[i5 + 2];
                int i8 = i7 & 1048575;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = f37882s.getInt(t, i8);
                    i2 = i8;
                }
            } else {
                i = 0;
            }
            if ((268435456 & m564s) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z && !m568o(t, i5, i4, i)) {
                return false;
            }
            int i9 = (267386880 & m564s) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 != 60 && i9 != 68) {
                        if (i9 != 49) {
                            if (i9 == 50 && !this.f37899q.mo640b(C7627d3.m861G(t, m564s & 1048575)).isEmpty()) {
                                this.f37899q.mo638d(m565r(i5));
                                throw null;
                            }
                        }
                    } else if (m569n(t, i6, i5) && !m567p(t, m564s, m566q(i5))) {
                        return false;
                    }
                }
                List list = (List) C7627d3.m861G(t, m564s & 1048575);
                if (!list.isEmpty()) {
                    InterfaceC7640f2 m566q = m566q(i5);
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            break;
                        } else if (!m566q.mo548e(list.get(i10))) {
                            z2 = false;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (m568o(t, i5, i4, i) && !m567p(t, m564s, m566q(i5))) {
                return false;
            }
            i3++;
        }
    }

    /* renamed from: r */
    public final Object m565r(int i) {
        return this.f37884b[(i / 3) << 1];
    }

    /* renamed from: s */
    public final int m564s(int i) {
        return this.f37883a[i + 1];
    }

    /* renamed from: t */
    public final int m563t(int i) {
        return this.f37883a[i + 2];
    }

    /* renamed from: y */
    public final boolean m558y(T t, T t2, int i) {
        return m570m(t, i) == m570m(t2, i);
    }

    /* renamed from: i */
    public static void m574i(int i, Object obj, InterfaceC7705r3 interfaceC7705r3) {
        if (obj instanceof String) {
            interfaceC7705r3.mo427f0(i, (String) obj);
        } else {
            interfaceC7705r3.mo407z(i, (AbstractC7652i) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p237z4.InterfaceC7640f2
    /* renamed from: a */
    public final int mo552a(T t) {
        int i;
        int i2;
        long j;
        int m525a0;
        int m541D;
        int m504p0;
        int m732Z;
        int m747K;
        int m503q;
        int m500s;
        int i3;
        int m544B;
        int m747K2;
        int m503q2;
        int m500s2;
        int i4 = 267386880;
        int i5 = 1;
        if (this.f37890h) {
            Unsafe unsafe = f37882s;
            int i6 = 0;
            int i7 = 0;
            while (i6 < this.f37883a.length) {
                int m564s = m564s(i6);
                int i8 = (m564s & i4) >>> 20;
                int i9 = this.f37883a[i6];
                long j2 = m564s & 1048575;
                if (i8 >= EnumC7653i0.f37727Z.m696c() && i8 <= EnumC7653i0.f37740m0.m696c()) {
                    i3 = this.f37883a[i6 + 2] & 1048575;
                } else {
                    i3 = 0;
                }
                switch (i8) {
                    case 0:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m544B(i9, 0.0d);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 1:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m542C(i9, 0.0f);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 2:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m525a0(i9, C7627d3.m866B(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 3:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m516f0(i9, C7627d3.m866B(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 4:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m511j0(i9, C7627d3.m867A(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 5:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m510k0(i9, 0L);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 6:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m505o0(i9, 0);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 7:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m531Q(i9, true);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 8:
                        if (m570m(t, i6)) {
                            Object m861G = C7627d3.m861G(t, j2);
                            if (m861G instanceof AbstractC7652i) {
                                m544B = AbstractC7726x.m533O(i9, (AbstractC7652i) m861G);
                                break;
                            } else {
                                m544B = AbstractC7726x.m541D(i9, (String) m861G);
                                break;
                            }
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 9:
                        if (m570m(t, i6)) {
                            m544B = C7650h2.m718l(i9, C7627d3.m861G(t, j2), m566q(i6));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 10:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m533O(i9, (AbstractC7652i) C7627d3.m861G(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 11:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m509l0(i9, C7627d3.m867A(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 12:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m502q0(i9, C7627d3.m867A(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 13:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m504p0(i9, 0);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 14:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m508m0(i9, 0L);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 15:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m506n0(i9, C7627d3.m867A(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 16:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m512h0(i9, C7627d3.m866B(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 17:
                        if (m570m(t, i6)) {
                            m544B = AbstractC7726x.m532P(i9, (InterfaceC7703r1) C7627d3.m861G(t, j2), m566q(i6));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 18:
                        m544B = C7650h2.m730a0(i9, m557z(t, j2), false);
                        break;
                    case 19:
                        m544B = C7650h2.m732Z(i9, m557z(t, j2), false);
                        break;
                    case 20:
                        m544B = C7650h2.m739S(i9, m557z(t, j2), false);
                        break;
                    case 21:
                        m544B = C7650h2.m738T(i9, m557z(t, j2), false);
                        break;
                    case 22:
                        m544B = C7650h2.m735W(i9, m557z(t, j2), false);
                        break;
                    case 23:
                        m544B = C7650h2.m730a0(i9, m557z(t, j2), false);
                        break;
                    case 24:
                        m544B = C7650h2.m732Z(i9, m557z(t, j2), false);
                        break;
                    case 25:
                        m544B = C7650h2.m728b0(i9, m557z(t, j2), false);
                        break;
                    case 26:
                        m544B = C7650h2.m717m(i9, m557z(t, j2));
                        break;
                    case 27:
                        m544B = C7650h2.m716n(i9, m557z(t, j2), m566q(i6));
                        break;
                    case 28:
                        m544B = C7650h2.m713q(i9, m557z(t, j2));
                        break;
                    case 29:
                        m544B = C7650h2.m734X(i9, m557z(t, j2), false);
                        break;
                    case 30:
                        m544B = C7650h2.m736V(i9, m557z(t, j2), false);
                        break;
                    case 31:
                        m544B = C7650h2.m732Z(i9, m557z(t, j2), false);
                        break;
                    case 32:
                        m544B = C7650h2.m730a0(i9, m557z(t, j2), false);
                        break;
                    case 33:
                        m544B = C7650h2.m733Y(i9, m557z(t, j2), false);
                        break;
                    case 34:
                        m544B = C7650h2.m737U(i9, m557z(t, j2), false);
                        break;
                    case 35:
                        m747K2 = C7650h2.m747K((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 36:
                        m747K2 = C7650h2.m749I((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 37:
                        m747K2 = C7650h2.m731a((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 38:
                        m747K2 = C7650h2.m722h((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 39:
                        m747K2 = C7650h2.m708v((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 40:
                        m747K2 = C7650h2.m747K((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 41:
                        m747K2 = C7650h2.m749I((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 42:
                        m747K2 = C7650h2.m745M((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 43:
                        m747K2 = C7650h2.m755C((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 44:
                        m747K2 = C7650h2.m711s((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 45:
                        m747K2 = C7650h2.m749I((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 46:
                        m747K2 = C7650h2.m747K((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 47:
                        m747K2 = C7650h2.m752F((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 48:
                        m747K2 = C7650h2.m715o((List) unsafe.getObject(t, j2));
                        if (m747K2 > 0) {
                            if (this.f37891i) {
                                unsafe.putInt(t, i3, m747K2);
                            }
                            m503q2 = AbstractC7726x.m503q(i9);
                            m500s2 = AbstractC7726x.m500s(m747K2);
                            m544B = m503q2 + m500s2 + m747K2;
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 49:
                        m544B = C7650h2.m712r(i9, m557z(t, j2), m566q(i6));
                        break;
                    case 50:
                        m544B = this.f37899q.mo637e(i9, C7627d3.m861G(t, j2), m565r(i6));
                        break;
                    case 51:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m544B(i9, 0.0d);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 52:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m542C(i9, 0.0f);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 53:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m525a0(i9, m579D(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 54:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m516f0(i9, m579D(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 55:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m511j0(i9, m580C(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 56:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m510k0(i9, 0L);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 57:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m505o0(i9, 0);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 58:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m531Q(i9, true);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 59:
                        if (m569n(t, i9, i6)) {
                            Object m861G2 = C7627d3.m861G(t, j2);
                            if (m861G2 instanceof AbstractC7652i) {
                                m544B = AbstractC7726x.m533O(i9, (AbstractC7652i) m861G2);
                                break;
                            } else {
                                m544B = AbstractC7726x.m541D(i9, (String) m861G2);
                                break;
                            }
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 60:
                        if (m569n(t, i9, i6)) {
                            m544B = C7650h2.m718l(i9, C7627d3.m861G(t, j2), m566q(i6));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 61:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m533O(i9, (AbstractC7652i) C7627d3.m861G(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 62:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m509l0(i9, m580C(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 63:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m502q0(i9, m580C(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 64:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m504p0(i9, 0);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 65:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m508m0(i9, 0L);
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 66:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m506n0(i9, m580C(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 67:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m512h0(i9, m579D(t, j2));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    case 68:
                        if (m569n(t, i9, i6)) {
                            m544B = AbstractC7726x.m532P(i9, (InterfaceC7703r1) C7627d3.m861G(t, j2), m566q(i6));
                            break;
                        } else {
                            continue;
                            i6 += 3;
                            i4 = 267386880;
                        }
                    default:
                        i6 += 3;
                        i4 = 267386880;
                }
                i7 += m544B;
                i6 += 3;
                i4 = 267386880;
            }
            return i7 + m577f(this.f37897o, t);
        }
        Unsafe unsafe2 = f37882s;
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < this.f37883a.length) {
            int m564s2 = m564s(i11);
            int[] iArr = this.f37883a;
            int i14 = iArr[i11];
            int i15 = (m564s2 & 267386880) >>> 20;
            if (i15 <= 17) {
                int i16 = iArr[i11 + 2];
                int i17 = i16 & 1048575;
                i2 = i5 << (i16 >>> 20);
                if (i17 != i10) {
                    i13 = unsafe2.getInt(t, i17);
                    i10 = i17;
                }
                i = i16;
            } else {
                if (this.f37891i && i15 >= EnumC7653i0.f37727Z.m696c() && i15 <= EnumC7653i0.f37740m0.m696c()) {
                    i = this.f37883a[i11 + 2] & 1048575;
                } else {
                    i = 0;
                }
                i2 = 0;
            }
            long j3 = m564s2 & 1048575;
            switch (i15) {
                case 0:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        i12 += AbstractC7726x.m544B(i14, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        i12 += AbstractC7726x.m542C(i14, 0.0f);
                        break;
                    }
                case 2:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        m525a0 = AbstractC7726x.m525a0(i14, unsafe2.getLong(t, j3));
                        i12 += m525a0;
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        m525a0 = AbstractC7726x.m516f0(i14, unsafe2.getLong(t, j3));
                        i12 += m525a0;
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        m525a0 = AbstractC7726x.m511j0(i14, unsafe2.getInt(t, j3));
                        i12 += m525a0;
                    }
                    break;
                case 5:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        m525a0 = AbstractC7726x.m510k0(i14, 0L);
                        i12 += m525a0;
                    }
                    break;
                case 6:
                    if ((i13 & i2) != 0) {
                        i12 += AbstractC7726x.m505o0(i14, 0);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 7:
                    if ((i13 & i2) != 0) {
                        i12 += AbstractC7726x.m531Q(i14, true);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 8:
                    if ((i13 & i2) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof AbstractC7652i) {
                            m541D = AbstractC7726x.m533O(i14, (AbstractC7652i) object);
                        } else {
                            m541D = AbstractC7726x.m541D(i14, (String) object);
                        }
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 9:
                    if ((i13 & i2) != 0) {
                        m541D = C7650h2.m718l(i14, unsafe2.getObject(t, j3), m566q(i11));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 10:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m533O(i14, (AbstractC7652i) unsafe2.getObject(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 11:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m509l0(i14, unsafe2.getInt(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 12:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m502q0(i14, unsafe2.getInt(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 13:
                    if ((i13 & i2) != 0) {
                        m504p0 = AbstractC7726x.m504p0(i14, 0);
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 14:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m508m0(i14, 0L);
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 15:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m506n0(i14, unsafe2.getInt(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 16:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m512h0(i14, unsafe2.getLong(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 17:
                    if ((i13 & i2) != 0) {
                        m541D = AbstractC7726x.m532P(i14, (InterfaceC7703r1) unsafe2.getObject(t, j3), m566q(i11));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 18:
                    m541D = C7650h2.m730a0(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m541D;
                    j = 0;
                    break;
                case 19:
                    m732Z = C7650h2.m732Z(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 20:
                    m732Z = C7650h2.m739S(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 21:
                    m732Z = C7650h2.m738T(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 22:
                    m732Z = C7650h2.m735W(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 23:
                    m732Z = C7650h2.m730a0(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 24:
                    m732Z = C7650h2.m732Z(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 25:
                    m732Z = C7650h2.m728b0(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 26:
                    m541D = C7650h2.m717m(i14, (List) unsafe2.getObject(t, j3));
                    i12 += m541D;
                    j = 0;
                    break;
                case 27:
                    m541D = C7650h2.m716n(i14, (List) unsafe2.getObject(t, j3), m566q(i11));
                    i12 += m541D;
                    j = 0;
                    break;
                case 28:
                    m541D = C7650h2.m713q(i14, (List) unsafe2.getObject(t, j3));
                    i12 += m541D;
                    j = 0;
                    break;
                case 29:
                    m541D = C7650h2.m734X(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m541D;
                    j = 0;
                    break;
                case 30:
                    m732Z = C7650h2.m736V(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 31:
                    m732Z = C7650h2.m732Z(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 32:
                    m732Z = C7650h2.m730a0(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 33:
                    m732Z = C7650h2.m733Y(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 34:
                    m732Z = C7650h2.m737U(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += m732Z;
                    j = 0;
                    break;
                case 35:
                    m747K = C7650h2.m747K((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 36:
                    m747K = C7650h2.m749I((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 37:
                    m747K = C7650h2.m731a((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 38:
                    m747K = C7650h2.m722h((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 39:
                    m747K = C7650h2.m708v((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 40:
                    m747K = C7650h2.m747K((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 41:
                    m747K = C7650h2.m749I((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 42:
                    m747K = C7650h2.m745M((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 43:
                    m747K = C7650h2.m755C((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 44:
                    m747K = C7650h2.m711s((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 45:
                    m747K = C7650h2.m749I((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 46:
                    m747K = C7650h2.m747K((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 47:
                    m747K = C7650h2.m752F((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 48:
                    m747K = C7650h2.m715o((List) unsafe2.getObject(t, j3));
                    if (m747K > 0) {
                        if (this.f37891i) {
                            unsafe2.putInt(t, i, m747K);
                        }
                        m503q = AbstractC7726x.m503q(i14);
                        m500s = AbstractC7726x.m500s(m747K);
                        m504p0 = m503q + m500s + m747K;
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 49:
                    m541D = C7650h2.m712r(i14, (List) unsafe2.getObject(t, j3), m566q(i11));
                    i12 += m541D;
                    j = 0;
                    break;
                case 50:
                    m541D = this.f37899q.mo637e(i14, unsafe2.getObject(t, j3), m565r(i11));
                    i12 += m541D;
                    j = 0;
                    break;
                case 51:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m544B(i14, 0.0d);
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 52:
                    if (m569n(t, i14, i11)) {
                        m504p0 = AbstractC7726x.m542C(i14, 0.0f);
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 53:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m525a0(i14, m579D(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 54:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m516f0(i14, m579D(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 55:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m511j0(i14, m580C(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 56:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m510k0(i14, 0L);
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 57:
                    if (m569n(t, i14, i11)) {
                        m504p0 = AbstractC7726x.m505o0(i14, 0);
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 58:
                    if (m569n(t, i14, i11)) {
                        m504p0 = AbstractC7726x.m531Q(i14, true);
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 59:
                    if (m569n(t, i14, i11)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof AbstractC7652i) {
                            m541D = AbstractC7726x.m533O(i14, (AbstractC7652i) object2);
                        } else {
                            m541D = AbstractC7726x.m541D(i14, (String) object2);
                        }
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 60:
                    if (m569n(t, i14, i11)) {
                        m541D = C7650h2.m718l(i14, unsafe2.getObject(t, j3), m566q(i11));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 61:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m533O(i14, (AbstractC7652i) unsafe2.getObject(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 62:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m509l0(i14, m580C(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 63:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m502q0(i14, m580C(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 64:
                    if (m569n(t, i14, i11)) {
                        m504p0 = AbstractC7726x.m504p0(i14, 0);
                        i12 += m504p0;
                    }
                    j = 0;
                    break;
                case 65:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m508m0(i14, 0L);
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 66:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m506n0(i14, m580C(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 67:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m512h0(i14, m579D(t, j3));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                case 68:
                    if (m569n(t, i14, i11)) {
                        m541D = AbstractC7726x.m532P(i14, (InterfaceC7703r1) unsafe2.getObject(t, j3), m566q(i11));
                        i12 += m541D;
                    }
                    j = 0;
                    break;
                default:
                    j = 0;
                    break;
            }
            i11 += 3;
            i5 = 1;
        }
        int i18 = 0;
        int m577f = i12 + m577f(this.f37897o, t);
        if (this.f37888f) {
            C7638f0<?> mo875c = this.f37898p.mo875c(t);
            for (int i19 = 0; i19 < mo875c.f37681a.m684m(); i19++) {
                Map.Entry<?, Object> m689g = mo875c.f37681a.m689g(i19);
                i18 += C7638f0.m796j((InterfaceC7648h0) m689g.getKey(), m689g.getValue());
            }
            for (Map.Entry<?, Object> entry : mo875c.f37681a.m683n()) {
                i18 += C7638f0.m796j((InterfaceC7648h0) entry.getKey(), entry.getValue());
            }
            return m577f + i18;
        }
        return m577f;
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: c */
    public final void mo550c(T t) {
        int i;
        int i2 = this.f37893k;
        while (true) {
            i = this.f37894l;
            if (i2 >= i) {
                break;
            }
            long m564s = m564s(this.f37892j[i2]) & 1048575;
            Object m861G = C7627d3.m861G(t, m564s);
            if (m861G != null) {
                C7627d3.m846g(t, m564s, this.f37899q.mo641a(m861G));
            }
            i2++;
        }
        int length = this.f37892j.length;
        while (i < length) {
            this.f37896n.mo811a(t, this.f37892j[i]);
            i++;
        }
        this.f37897o.mo398c(t);
        if (this.f37888f) {
            this.f37898p.mo873e(t);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(p237z4.C7627d3.m862F(r10, r6)) == java.lang.Double.doubleToLongBits(p237z4.C7627d3.m862F(r11, r6))) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (p237z4.C7650h2.m709u(p237z4.C7627d3.m861G(r10, r6), p237z4.C7627d3.m861G(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (p237z4.C7650h2.m709u(p237z4.C7627d3.m861G(r10, r6), p237z4.C7627d3.m861G(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (p237z4.C7627d3.m866B(r10, r6) == p237z4.C7627d3.m866B(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
        if (p237z4.C7627d3.m866B(r10, r6) == p237z4.C7627d3.m866B(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c8, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00da, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
        if (p237z4.C7650h2.m709u(p237z4.C7627d3.m861G(r10, r6), p237z4.C7627d3.m861G(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0106, code lost:
        if (p237z4.C7650h2.m709u(p237z4.C7627d3.m861G(r10, r6), p237z4.C7627d3.m861G(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x011c, code lost:
        if (p237z4.C7650h2.m709u(p237z4.C7627d3.m861G(r10, r6), p237z4.C7627d3.m861G(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012e, code lost:
        if (p237z4.C7627d3.m864D(r10, r6) == p237z4.C7627d3.m864D(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0140, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0154, code lost:
        if (p237z4.C7627d3.m866B(r10, r6) == p237z4.C7627d3.m866B(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0165, code lost:
        if (p237z4.C7627d3.m867A(r10, r6) == p237z4.C7627d3.m867A(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0178, code lost:
        if (p237z4.C7627d3.m866B(r10, r6) == p237z4.C7627d3.m866B(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018b, code lost:
        if (p237z4.C7627d3.m866B(r10, r6) == p237z4.C7627d3.m866B(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(p237z4.C7627d3.m863E(r10, r6)) == java.lang.Float.floatToIntBits(p237z4.C7627d3.m863E(r11, r6))) goto L85;
     */
    @Override // p237z4.InterfaceC7640f2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7720v1.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // p237z4.InterfaceC7640f2
    public final int hashCode(T t) {
        int i;
        int m627j;
        int length = this.f37883a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int m564s = m564s(i3);
            int i4 = this.f37883a[i3];
            long j = 1048575 & m564s;
            int i5 = 37;
            switch ((m564s & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(Double.doubleToLongBits(C7627d3.m862F(t, j)));
                    i2 = i + m627j;
                    break;
                case 1:
                    i = i2 * 53;
                    m627j = Float.floatToIntBits(C7627d3.m863E(t, j));
                    i2 = i + m627j;
                    break;
                case 2:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(C7627d3.m866B(t, j));
                    i2 = i + m627j;
                    break;
                case 3:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(C7627d3.m866B(t, j));
                    i2 = i + m627j;
                    break;
                case 4:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 5:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(C7627d3.m866B(t, j));
                    i2 = i + m627j;
                    break;
                case 6:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 7:
                    i = i2 * 53;
                    m627j = C7687o0.m630g(C7627d3.m864D(t, j));
                    i2 = i + m627j;
                    break;
                case 8:
                    i = i2 * 53;
                    m627j = ((String) C7627d3.m861G(t, j)).hashCode();
                    i2 = i + m627j;
                    break;
                case 9:
                    Object m861G = C7627d3.m861G(t, j);
                    if (m861G != null) {
                        i5 = m861G.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    m627j = C7627d3.m861G(t, j).hashCode();
                    i2 = i + m627j;
                    break;
                case 11:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 12:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 13:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 14:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(C7627d3.m866B(t, j));
                    i2 = i + m627j;
                    break;
                case 15:
                    i = i2 * 53;
                    m627j = C7627d3.m867A(t, j);
                    i2 = i + m627j;
                    break;
                case 16:
                    i = i2 * 53;
                    m627j = C7687o0.m627j(C7627d3.m866B(t, j));
                    i2 = i + m627j;
                    break;
                case 17:
                    Object m861G2 = C7627d3.m861G(t, j);
                    if (m861G2 != null) {
                        i5 = m861G2.hashCode();
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
                    m627j = C7627d3.m861G(t, j).hashCode();
                    i2 = i + m627j;
                    break;
                case 50:
                    i = i2 * 53;
                    m627j = C7627d3.m861G(t, j).hashCode();
                    i2 = i + m627j;
                    break;
                case 51:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(Double.doubleToLongBits(m582A(t, j)));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = Float.floatToIntBits(m581B(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(m579D(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(m579D(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(m579D(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m630g(m578E(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = ((String) C7627d3.m861G(t, j)).hashCode();
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7627d3.m861G(t, j).hashCode();
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7627d3.m861G(t, j).hashCode();
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(m579D(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = m580C(t, j);
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7687o0.m627j(m579D(t, j));
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m569n(t, i4, i3)) {
                        i = i2 * 53;
                        m627j = C7627d3.m861G(t, j).hashCode();
                        i2 = i + m627j;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.f37897o.mo394g(t).hashCode();
        if (this.f37888f) {
            return (hashCode * 53) + this.f37898p.mo875c(t).hashCode();
        }
        return hashCode;
    }

    /* renamed from: l */
    public final <K, V> void m571l(InterfaceC7705r3 interfaceC7705r3, int i, Object obj, int i2) {
        if (obj != null) {
            this.f37899q.mo638d(m565r(i2));
            interfaceC7705r3.mo428f(i, null, this.f37899q.mo640b(obj));
        }
    }

    /* renamed from: m */
    public final boolean m570m(T t, int i) {
        int m563t;
        if (this.f37890h) {
            int m564s = m564s(i);
            long j = m564s & 1048575;
            switch ((m564s & 267386880) >>> 20) {
                case 0:
                    if (C7627d3.m862F(t, j) == 0.0d) {
                        return false;
                    }
                    return true;
                case 1:
                    if (C7627d3.m863E(t, j) == 0.0f) {
                        return false;
                    }
                    return true;
                case 2:
                    if (C7627d3.m866B(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (C7627d3.m866B(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (C7627d3.m866B(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return C7627d3.m864D(t, j);
                case 8:
                    Object m861G = C7627d3.m861G(t, j);
                    if (m861G instanceof String) {
                        if (((String) m861G).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (m861G instanceof AbstractC7652i) {
                        if (AbstractC7652i.f37698b.equals(m861G)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (C7627d3.m861G(t, j) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (AbstractC7652i.f37698b.equals(C7627d3.m861G(t, j))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (C7627d3.m866B(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (C7627d3.m867A(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (C7627d3.m866B(t, j) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (C7627d3.m861G(t, j) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((C7627d3.m867A(t, m563t & 1048575) & (1 << (m563t(i) >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    /* renamed from: o */
    public final boolean m568o(T t, int i, int i2, int i3) {
        if (this.f37890h) {
            return m570m(t, i);
        }
        if ((i2 & i3) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public final InterfaceC7640f2 m566q(int i) {
        int i2 = (i / 3) << 1;
        InterfaceC7640f2 interfaceC7640f2 = (InterfaceC7640f2) this.f37884b[i2];
        if (interfaceC7640f2 != null) {
            return interfaceC7640f2;
        }
        InterfaceC7640f2<T> m869b = C7626d2.m870a().m869b((Class) this.f37884b[i2 + 1]);
        this.f37884b[i2] = m869b;
        return m869b;
    }

    /* renamed from: u */
    public final void m562u(T t, int i) {
        if (this.f37890h) {
            return;
        }
        int m563t = m563t(i);
        long j = m563t & 1048575;
        C7627d3.m848e(t, j, C7627d3.m867A(t, j) | (1 << (m563t >>> 20)));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0496  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m559x(T r19, p237z4.InterfaceC7705r3 r20) {
        /*
            Method dump skipped, instructions count: 1344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7720v1.m559x(java.lang.Object, z4.r3):void");
    }

    public C7720v1(int[] iArr, Object[] objArr, int i, int i2, InterfaceC7703r1 interfaceC7703r1, boolean z, boolean z2, int[] iArr2, int i3, int i4, InterfaceC7734y1 interfaceC7734y1, AbstractC7615b1 abstractC7615b1, AbstractC7731x2<?, ?> abstractC7731x2, AbstractC7619c0<?> abstractC7619c0, InterfaceC7678m1 interfaceC7678m1) {
        boolean z3;
        this.f37883a = iArr;
        this.f37884b = objArr;
        this.f37885c = i;
        this.f37886d = i2;
        this.f37889g = interfaceC7703r1 instanceof AbstractC7673m0;
        this.f37890h = z;
        if (abstractC7619c0 != null && abstractC7619c0.mo872f(interfaceC7703r1)) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.f37888f = z3;
        this.f37891i = false;
        this.f37892j = iArr2;
        this.f37893k = i3;
        this.f37894l = i4;
        this.f37895m = interfaceC7734y1;
        this.f37896n = abstractC7615b1;
        this.f37897o = abstractC7731x2;
        this.f37898p = abstractC7619c0;
        this.f37887e = interfaceC7703r1;
        this.f37899q = interfaceC7678m1;
    }

    /* renamed from: f */
    public static <UT, UB> int m577f(AbstractC7731x2<UT, UB> abstractC7731x2, T t) {
        return abstractC7731x2.mo395f(abstractC7731x2.mo394g(t));
    }

    /* renamed from: g */
    public static Field m576g(Class<?> cls, String str) {
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
    /* renamed from: p */
    public static boolean m567p(Object obj, int i, InterfaceC7640f2 interfaceC7640f2) {
        return interfaceC7640f2.mo548e(C7627d3.m861G(obj, i & 1048575));
    }

    @Override // p237z4.InterfaceC7640f2
    /* renamed from: b */
    public final void mo551b(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.f37883a.length; i += 3) {
            int m564s = m564s(i);
            long j = 1048575 & m564s;
            int i2 = this.f37883a[i];
            switch ((m564s & 267386880) >>> 20) {
                case 0:
                    if (m570m(t2, i)) {
                        C7627d3.m850c(t, j, C7627d3.m862F(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m570m(t2, i)) {
                        C7627d3.m849d(t, j, C7627d3.m863E(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m570m(t2, i)) {
                        C7627d3.m847f(t, j, C7627d3.m866B(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m570m(t2, i)) {
                        C7627d3.m847f(t, j, C7627d3.m866B(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m570m(t2, i)) {
                        C7627d3.m847f(t, j, C7627d3.m866B(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m570m(t2, i)) {
                        C7627d3.m845h(t, j, C7627d3.m864D(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m570m(t2, i)) {
                        C7627d3.m846g(t, j, C7627d3.m861G(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m573j(t, t2, i);
                    break;
                case 10:
                    if (m570m(t2, i)) {
                        C7627d3.m846g(t, j, C7627d3.m861G(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m570m(t2, i)) {
                        C7627d3.m847f(t, j, C7627d3.m866B(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m570m(t2, i)) {
                        C7627d3.m848e(t, j, C7627d3.m867A(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m570m(t2, i)) {
                        C7627d3.m847f(t, j, C7627d3.m866B(t2, j));
                        m562u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m573j(t, t2, i);
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
                    this.f37896n.mo810b(t, t2, j);
                    break;
                case 50:
                    C7650h2.m724f(this.f37899q, t, t2, j);
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
                    if (m569n(t2, i2, i)) {
                        C7627d3.m846g(t, j, C7627d3.m861G(t2, j));
                        m561v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m560w(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m569n(t2, i2, i)) {
                        C7627d3.m846g(t, j, C7627d3.m861G(t2, j));
                        m561v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m560w(t, t2, i);
                    break;
            }
        }
        if (!this.f37890h) {
            C7650h2.m723g(this.f37897o, t, t2);
            if (this.f37888f) {
                C7650h2.m725e(this.f37898p, t, t2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0a2a  */
    @Override // p237z4.InterfaceC7640f2
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo549d(T r14, p237z4.InterfaceC7705r3 r15) {
        /*
            Method dump skipped, instructions count: 2916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7720v1.mo549d(java.lang.Object, z4.r3):void");
    }

    /* renamed from: j */
    public final void m573j(T t, T t2, int i) {
        long m564s = m564s(i) & 1048575;
        if (!m570m(t2, i)) {
            return;
        }
        Object m861G = C7627d3.m861G(t, m564s);
        Object m861G2 = C7627d3.m861G(t2, m564s);
        if (m861G != null && m861G2 != null) {
            C7627d3.m846g(t, m564s, C7687o0.m633d(m861G, m861G2));
            m562u(t, i);
        } else if (m861G2 != null) {
            C7627d3.m846g(t, m564s, m861G2);
            m562u(t, i);
        }
    }

    /* renamed from: n */
    public final boolean m569n(T t, int i, int i2) {
        if (C7627d3.m867A(t, m563t(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    /* renamed from: v */
    public final void m561v(T t, int i, int i2) {
        C7627d3.m848e(t, m563t(i2) & 1048575, i);
    }

    /* renamed from: w */
    public final void m560w(T t, T t2, int i) {
        int m564s = m564s(i);
        int i2 = this.f37883a[i];
        long j = m564s & 1048575;
        if (!m569n(t2, i2, i)) {
            return;
        }
        Object m861G = C7627d3.m861G(t, j);
        Object m861G2 = C7627d3.m861G(t2, j);
        if (m861G != null && m861G2 != null) {
            C7627d3.m846g(t, j, C7687o0.m633d(m861G, m861G2));
            m561v(t, i2, i);
        } else if (m861G2 != null) {
            C7627d3.m846g(t, j, m861G2);
            m561v(t, i2, i);
        }
    }
}

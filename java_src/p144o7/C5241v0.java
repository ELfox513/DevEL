package p144o7;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p144o7.AbstractC5137h;
import p144o7.C5102a0;
import p144o7.C5182l0;
import p144o7.C5230u1;
import p144o7.InterfaceC5242v1;
import sun.misc.Unsafe;
/* renamed from: o7.v0 */
/* loaded from: classes2.dex */
public final class C5241v0<T> implements InterfaceC5150h1<T> {

    /* renamed from: r */
    public static final int[] f19674r = new int[0];

    /* renamed from: s */
    public static final Unsafe f19675s = C5212s1.m14078B();

    /* renamed from: a */
    public final int[] f19676a;

    /* renamed from: b */
    public final Object[] f19677b;

    /* renamed from: c */
    public final int f19678c;

    /* renamed from: d */
    public final int f19679d;

    /* renamed from: e */
    public final InterfaceC5210s0 f19680e;

    /* renamed from: f */
    public final boolean f19681f;

    /* renamed from: g */
    public final boolean f19682g;

    /* renamed from: h */
    public final boolean f19683h;

    /* renamed from: i */
    public final boolean f19684i;

    /* renamed from: j */
    public final int[] f19685j;

    /* renamed from: k */
    public final int f19686k;

    /* renamed from: l */
    public final int f19687l;

    /* renamed from: m */
    public final InterfaceC5247x0 f19688m;

    /* renamed from: n */
    public final AbstractC5154i0 f19689n;

    /* renamed from: o */
    public final AbstractC5195o1<?, ?> f19690o;

    /* renamed from: p */
    public final AbstractC5200q<?> f19691p;

    /* renamed from: q */
    public final InterfaceC5191n0 f19692q;

    /* renamed from: C */
    public static boolean m13936C(int i) {
        return (i & 268435456) != 0;
    }

    /* renamed from: D */
    public static List<?> m13935D(Object obj, long j) {
        return (List) C5212s1.m14079A(obj, j);
    }

    /* renamed from: E */
    public static <T> long m13934E(T t, long j) {
        return C5212s1.m14038y(t, j);
    }

    /* renamed from: O */
    public static long m13924O(int i) {
        return i & 1048575;
    }

    /* renamed from: P */
    public static <T> boolean m13923P(T t, long j) {
        return ((Boolean) C5212s1.m14079A(t, j)).booleanValue();
    }

    /* renamed from: Q */
    public static <T> double m13922Q(T t, long j) {
        return ((Double) C5212s1.m14079A(t, j)).doubleValue();
    }

    /* renamed from: R */
    public static <T> float m13921R(T t, long j) {
        return ((Float) C5212s1.m14079A(t, j)).floatValue();
    }

    /* renamed from: S */
    public static <T> int m13920S(T t, long j) {
        return ((Integer) C5212s1.m14079A(t, j)).intValue();
    }

    /* renamed from: T */
    public static <T> long m13919T(T t, long j) {
        return ((Long) C5212s1.m14079A(t, j)).longValue();
    }

    /* renamed from: e0 */
    public static int m13908e0(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: h */
    public static <T> boolean m13904h(T t, long j) {
        return C5212s1.m14047p(t, j);
    }

    /* renamed from: i */
    public static <T> double m13902i(T t, long j) {
        return C5212s1.m14041v(t, j);
    }

    /* renamed from: m */
    public static <T> float m13894m(T t, long j) {
        return C5212s1.m14040w(t, j);
    }

    /* renamed from: t */
    public static <T> int m13887t(T t, long j) {
        return C5212s1.m14039x(t, j);
    }

    /* renamed from: u */
    public static boolean m13886u(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: N */
    public final int m13925N(int i) {
        return this.f19676a[i];
    }

    /* renamed from: V */
    public final int m13917V(int i) {
        return this.f19676a[i + 2];
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: f */
    public int mo13822f(T t) {
        return this.f19683h ? m13889r(t) : m13890q(t);
    }

    /* renamed from: f0 */
    public final int m13907f0(int i) {
        return this.f19676a[i + 1];
    }

    /* renamed from: g */
    public final boolean m13906g(T t, T t2, int i) {
        return m13885v(t, i) == m13885v(t2, i);
    }

    /* renamed from: l0 */
    public final <UT, UB> void m13895l0(AbstractC5195o1<UT, UB> abstractC5195o1, T t, InterfaceC5242v1 interfaceC5242v1) {
        abstractC5195o1.mo14112t(abstractC5195o1.mo14123g(t), interfaceC5242v1);
    }

    /* renamed from: n */
    public final C5102a0.InterfaceC5107e m13893n(int i) {
        return (C5102a0.InterfaceC5107e) this.f19677b[((i / 3) * 2) + 1];
    }

    @Override // p144o7.InterfaceC5150h1
    public T newInstance() {
        return (T) this.f19688m.mo13760a(this.f19680e);
    }

    /* renamed from: o */
    public final Object m13892o(int i) {
        return this.f19677b[(i / 3) * 2];
    }

    /* renamed from: r */
    public final int m13889r(T t) {
        int i;
        int m14310i;
        int m14377i;
        int m14328U;
        int m14326W;
        Unsafe unsafe = f19675s;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19676a.length; i3 += 3) {
            int m13907f0 = m13907f0(i3);
            int m13908e0 = m13908e0(m13907f0);
            int m13925N = m13925N(i3);
            long m13924O = m13924O(m13907f0);
            if (m13908e0 >= EnumC5238v.f19632Z.m13939c() && m13908e0 <= EnumC5238v.f19645m0.m13939c()) {
                i = this.f19676a[i3 + 2] & 1048575;
            } else {
                i = 0;
            }
            switch (m13908e0) {
                case 0:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14310i(m13925N, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14297q(m13925N, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14287x(m13925N, C5212s1.m14038y(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14325X(m13925N, C5212s1.m14038y(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14291v(m13925N, C5212s1.m14039x(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14301o(m13925N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14304m(m13925N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14317d(m13925N, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (m13885v(t, i3)) {
                        Object m14079A = C5212s1.m14079A(t, m13924O);
                        if (m14079A instanceof AbstractC5137h) {
                            m14310i = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) m14079A);
                            break;
                        } else {
                            m14310i = AbstractC5163k.m14330S(m13925N, (String) m14079A);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (m13885v(t, i3)) {
                        m14310i = C5162j1.m14371o(m13925N, C5212s1.m14079A(t, m13924O), m13891p(i3));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) C5212s1.m14079A(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14327V(m13925N, C5212s1.m14039x(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14306k(m13925N, C5212s1.m14039x(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14345K(m13925N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14341M(m13925N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14337O(m13925N, C5212s1.m14039x(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14333Q(m13925N, C5212s1.m14038y(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (m13885v(t, i3)) {
                        m14310i = AbstractC5163k.m14294s(m13925N, (InterfaceC5210s0) C5212s1.m14079A(t, m13924O), m13891p(i3));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    m14310i = C5162j1.m14378h(m13925N, m13935D(t, m13924O), false);
                    break;
                case 19:
                    m14310i = C5162j1.m14380f(m13925N, m13935D(t, m13924O), false);
                    break;
                case 20:
                    m14310i = C5162j1.m14373m(m13925N, m13935D(t, m13924O), false);
                    break;
                case 21:
                    m14310i = C5162j1.m14362x(m13925N, m13935D(t, m13924O), false);
                    break;
                case 22:
                    m14310i = C5162j1.m14375k(m13925N, m13935D(t, m13924O), false);
                    break;
                case 23:
                    m14310i = C5162j1.m14378h(m13925N, m13935D(t, m13924O), false);
                    break;
                case 24:
                    m14310i = C5162j1.m14380f(m13925N, m13935D(t, m13924O), false);
                    break;
                case 25:
                    m14310i = C5162j1.m14390a(m13925N, m13935D(t, m13924O), false);
                    break;
                case 26:
                    m14310i = C5162j1.m14365u(m13925N, m13935D(t, m13924O));
                    break;
                case 27:
                    m14310i = C5162j1.m14370p(m13925N, m13935D(t, m13924O), m13891p(i3));
                    break;
                case 28:
                    m14310i = C5162j1.m14386c(m13925N, m13935D(t, m13924O));
                    break;
                case 29:
                    m14310i = C5162j1.m14364v(m13925N, m13935D(t, m13924O), false);
                    break;
                case 30:
                    m14310i = C5162j1.m14384d(m13925N, m13935D(t, m13924O), false);
                    break;
                case 31:
                    m14310i = C5162j1.m14380f(m13925N, m13935D(t, m13924O), false);
                    break;
                case 32:
                    m14310i = C5162j1.m14378h(m13925N, m13935D(t, m13924O), false);
                    break;
                case 33:
                    m14310i = C5162j1.m14369q(m13925N, m13935D(t, m13924O), false);
                    break;
                case 34:
                    m14310i = C5162j1.m14367s(m13925N, m13935D(t, m13924O), false);
                    break;
                case 35:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    m14377i = C5162j1.m14372n((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    m14377i = C5162j1.m14361y((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    m14377i = C5162j1.m14374l((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    m14377i = C5162j1.m14388b((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    m14377i = C5162j1.m14363w((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    m14377i = C5162j1.m14382e((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    m14377i = C5162j1.m14368r((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    m14377i = C5162j1.m14366t((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14310i = m14328U + m14326W + m14377i;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    m14310i = C5162j1.m14376j(m13925N, m13935D(t, m13924O), m13891p(i3));
                    break;
                case 50:
                    m14310i = this.f19692q.mo14171f(m13925N, C5212s1.m14079A(t, m13924O), m13892o(i3));
                    break;
                case 51:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14310i(m13925N, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14297q(m13925N, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14287x(m13925N, m13919T(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14325X(m13925N, m13919T(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14291v(m13925N, m13920S(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14301o(m13925N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14304m(m13925N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14317d(m13925N, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (m13937B(t, m13925N, i3)) {
                        Object m14079A2 = C5212s1.m14079A(t, m13924O);
                        if (m14079A2 instanceof AbstractC5137h) {
                            m14310i = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) m14079A2);
                            break;
                        } else {
                            m14310i = AbstractC5163k.m14330S(m13925N, (String) m14079A2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = C5162j1.m14371o(m13925N, C5212s1.m14079A(t, m13924O), m13891p(i3));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) C5212s1.m14079A(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14327V(m13925N, m13920S(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14306k(m13925N, m13920S(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14345K(m13925N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14341M(m13925N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14337O(m13925N, m13920S(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14333Q(m13925N, m13919T(t, m13924O));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (m13937B(t, m13925N, i3)) {
                        m14310i = AbstractC5163k.m14294s(m13925N, (InterfaceC5210s0) C5212s1.m14079A(t, m13924O), m13891p(i3));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i2 += m14310i;
        }
        return i2 + m13888s(this.f19690o, t);
    }

    /* renamed from: w */
    public final boolean m13884w(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m13885v(t, i) : (i3 & i4) != 0;
    }

    /* renamed from: K */
    public static <T> C5241v0<T> m13928K(Class<T> cls, InterfaceC5201q0 interfaceC5201q0, InterfaceC5247x0 interfaceC5247x0, AbstractC5154i0 abstractC5154i0, AbstractC5195o1<?, ?> abstractC5195o1, AbstractC5200q<?> abstractC5200q, InterfaceC5191n0 interfaceC5191n0) {
        if (interfaceC5201q0 instanceof C5133f1) {
            return m13926M((C5133f1) interfaceC5201q0, interfaceC5247x0, abstractC5154i0, abstractC5195o1, abstractC5200q, interfaceC5191n0);
        }
        return m13927L((C5184l1) interfaceC5201q0, interfaceC5247x0, abstractC5154i0, abstractC5195o1, abstractC5200q, interfaceC5191n0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
        r0 = r16.f19686k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        if (r0 >= r16.f19687l) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
        r13 = m13898k(r19, r16.f19685j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
        if (r13 == null) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
        r17.mo14117o(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <UT, UB, ET extends p144o7.C5226u.InterfaceC5228b<ET>> void m13933F(p144o7.AbstractC5195o1<UT, UB> r17, p144o7.AbstractC5200q<ET> r18, T r19, p144o7.InterfaceC5136g1 r20, p144o7.C5196p r21) {
        /*
            Method dump skipped, instructions count: 1722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5241v0.m13933F(o7.o1, o7.q, java.lang.Object, o7.g1, o7.p):void");
    }

    /* renamed from: U */
    public final int m13918U(int i) {
        if (i >= this.f19678c && i <= this.f19679d) {
            return m13909d0(i, 0);
        }
        return -1;
    }

    /* renamed from: W */
    public final <E> void m13916W(Object obj, long j, InterfaceC5136g1 interfaceC5136g1, InterfaceC5150h1<E> interfaceC5150h1, C5196p c5196p) {
        interfaceC5136g1.mo14441n(this.f19689n.mo14481e(obj, j), interfaceC5150h1, c5196p);
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: b */
    public void mo13826b(T t) {
        int i;
        int i2 = this.f19686k;
        while (true) {
            i = this.f19687l;
            if (i2 >= i) {
                break;
            }
            long m13924O = m13924O(m13907f0(this.f19685j[i2]));
            Object m14079A = C5212s1.m14079A(t, m13924O);
            if (m14079A != null) {
                C5212s1.m14065O(t, m13924O, this.f19692q.mo14175b(m14079A));
            }
            i2++;
        }
        int length = this.f19685j.length;
        while (i < length) {
            this.f19689n.mo14483c(t, this.f19685j[i]);
            i++;
        }
        this.f19690o.mo14120j(t);
        if (this.f19681f) {
            this.f19691p.mo14100f(t);
        }
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: d */
    public final boolean mo13824d(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.f19686k) {
            int i6 = this.f19685j[i5];
            int m13925N = m13925N(i6);
            int m13907f0 = m13907f0(i6);
            int i7 = this.f19676a[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i4 = f19675s.getInt(t, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i3;
                i2 = i4;
            }
            if (m13936C(m13907f0) && !m13884w(t, i6, i, i2, i9)) {
                return false;
            }
            int m13908e0 = m13908e0(m13907f0);
            if (m13908e0 != 9 && m13908e0 != 17) {
                if (m13908e0 != 27) {
                    if (m13908e0 != 60 && m13908e0 != 68) {
                        if (m13908e0 != 49) {
                            if (m13908e0 == 50 && !m13881z(t, m13907f0, i6)) {
                                return false;
                            }
                        }
                    } else if (m13937B(t, m13925N, i6) && !m13883x(t, m13907f0, m13891p(i6))) {
                        return false;
                    }
                }
                if (!m13882y(t, m13907f0, i6)) {
                    return false;
                }
            } else if (m13884w(t, i6, i, i2, i9) && !m13883x(t, m13907f0, m13891p(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (this.f19681f && !this.f19691p.mo14103c(t).m13960p()) {
            return false;
        }
        return true;
    }

    /* renamed from: d0 */
    public final int m13909d0(int i, int i2) {
        int length = (this.f19676a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int m13925N = m13925N(i4);
            if (i == m13925N) {
                return i4;
            }
            if (i < m13925N) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // p144o7.InterfaceC5150h1
    public boolean equals(T t, T t2) {
        int length = this.f19676a.length;
        for (int i = 0; i < length; i += 3) {
            if (!m13900j(t, t2, i)) {
                return false;
            }
        }
        if (!this.f19690o.mo14123g(t).equals(this.f19690o.mo14123g(t2))) {
            return false;
        }
        if (this.f19681f) {
            return this.f19691p.mo14103c(t).equals(this.f19691p.mo14103c(t2));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0491  */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13905g0(T r18, p144o7.InterfaceC5242v1 r19) {
        /*
            Method dump skipped, instructions count: 1338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5241v0.m13905g0(java.lang.Object, o7.v1):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0588  */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13903h0(T r13, p144o7.InterfaceC5242v1 r14) {
        /*
            Method dump skipped, instructions count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5241v0.m13903h0(java.lang.Object, o7.v1):void");
    }

    @Override // p144o7.InterfaceC5150h1
    public int hashCode(T t) {
        int i;
        int m14654f;
        int length = this.f19676a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int m13907f0 = m13907f0(i3);
            int m13925N = m13925N(i3);
            long m13924O = m13924O(m13907f0);
            int i4 = 37;
            switch (m13908e0(m13907f0)) {
                case 0:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(Double.doubleToLongBits(C5212s1.m14041v(t, m13924O)));
                    i2 = i + m14654f;
                    break;
                case 1:
                    i = i2 * 53;
                    m14654f = Float.floatToIntBits(C5212s1.m14040w(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 2:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(C5212s1.m14038y(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 3:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(C5212s1.m14038y(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 4:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 5:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(C5212s1.m14038y(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 6:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 7:
                    i = i2 * 53;
                    m14654f = C5102a0.m14657c(C5212s1.m14047p(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 8:
                    i = i2 * 53;
                    m14654f = ((String) C5212s1.m14079A(t, m13924O)).hashCode();
                    i2 = i + m14654f;
                    break;
                case 9:
                    Object m14079A = C5212s1.m14079A(t, m13924O);
                    if (m14079A != null) {
                        i4 = m14079A.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
                    break;
                case 10:
                    i = i2 * 53;
                    m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                    i2 = i + m14654f;
                    break;
                case 11:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 12:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 13:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 14:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(C5212s1.m14038y(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 15:
                    i = i2 * 53;
                    m14654f = C5212s1.m14039x(t, m13924O);
                    i2 = i + m14654f;
                    break;
                case 16:
                    i = i2 * 53;
                    m14654f = C5102a0.m14654f(C5212s1.m14038y(t, m13924O));
                    i2 = i + m14654f;
                    break;
                case 17:
                    Object m14079A2 = C5212s1.m14079A(t, m13924O);
                    if (m14079A2 != null) {
                        i4 = m14079A2.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
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
                    m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                    i2 = i + m14654f;
                    break;
                case 50:
                    i = i2 * 53;
                    m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                    i2 = i + m14654f;
                    break;
                case 51:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(Double.doubleToLongBits(m13922Q(t, m13924O)));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = Float.floatToIntBits(m13921R(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(m13919T(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(m13919T(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(m13919T(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14657c(m13923P(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = ((String) C5212s1.m14079A(t, m13924O)).hashCode();
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(m13919T(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = m13920S(t, m13924O);
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5102a0.m14654f(m13919T(t, m13924O));
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m13937B(t, m13925N, i3)) {
                        i = i2 * 53;
                        m14654f = C5212s1.m14079A(t, m13924O).hashCode();
                        i2 = i + m14654f;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.f19690o.mo14123g(t).hashCode();
        if (this.f19681f) {
            return (hashCode * 53) + this.f19691p.mo14103c(t).hashCode();
        }
        return hashCode;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058e  */
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13901i0(T r11, p144o7.InterfaceC5242v1 r12) {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5241v0.m13901i0(java.lang.Object, o7.v1):void");
    }

    /* renamed from: j0 */
    public final <K, V> void m13899j0(InterfaceC5242v1 interfaceC5242v1, int i, Object obj, int i2) {
        if (obj != null) {
            interfaceC5242v1.mo13849q(i, this.f19692q.mo14174c(m13892o(i2)), this.f19692q.mo14169h(obj));
        }
    }

    /* renamed from: k0 */
    public final void m13897k0(int i, Object obj, InterfaceC5242v1 interfaceC5242v1) {
        if (obj instanceof String) {
            interfaceC5242v1.mo13851o(i, (String) obj);
        } else {
            interfaceC5242v1.mo13860f(i, (AbstractC5137h) obj);
        }
    }

    /* renamed from: l */
    public final <K, V, UT, UB> UB m13896l(int i, int i2, Map<K, V> map, C5102a0.InterfaceC5107e interfaceC5107e, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        C5182l0.C5183a<?, ?> mo14174c = this.f19692q.mo14174c(m13892o(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!interfaceC5107e.mo14647a(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = abstractC5195o1.mo14118n();
                }
                AbstractC5137h.C5145h m14551s = AbstractC5137h.m14551s(C5182l0.m14213b(mo14174c, next.getKey(), next.getValue()));
                try {
                    C5182l0.m14210e(m14551s.m14542b(), mo14174c, next.getKey(), next.getValue());
                    abstractC5195o1.mo14126d(ub, i2, m14551s.m14543a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: p */
    public final InterfaceC5150h1 m13891p(int i) {
        int i2 = (i / 3) * 2;
        InterfaceC5150h1 interfaceC5150h1 = (InterfaceC5150h1) this.f19677b[i2];
        if (interfaceC5150h1 != null) {
            return interfaceC5150h1;
        }
        InterfaceC5150h1<T> m14621d = C5122d1.m14624a().m14621d((Class) this.f19677b[i2 + 1]);
        this.f19677b[i2] = m14621d;
        return m14621d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: q */
    public final int m13890q(T t) {
        int i;
        int i2;
        int m14310i;
        int m14317d;
        int m14345K;
        int m14377i;
        int m14328U;
        int m14326W;
        Unsafe unsafe = f19675s;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        int i7 = 0;
        while (i4 < this.f19676a.length) {
            int m13907f0 = m13907f0(i4);
            int m13925N = m13925N(i4);
            int m13908e0 = m13908e0(m13907f0);
            if (m13908e0 <= 17) {
                i = this.f19676a[i4 + 2];
                int i8 = i & i3;
                i2 = 1 << (i >>> 20);
                if (i8 != i6) {
                    i7 = unsafe.getInt(t, i8);
                    i6 = i8;
                }
            } else {
                if (this.f19684i && m13908e0 >= EnumC5238v.f19632Z.m13939c() && m13908e0 <= EnumC5238v.f19645m0.m13939c()) {
                    i = this.f19676a[i4 + 2] & i3;
                } else {
                    i = 0;
                }
                i2 = 0;
            }
            long m13924O = m13924O(m13907f0);
            switch (m13908e0) {
                case 0:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14310i(m13925N, 0.0d);
                        i5 += m14310i;
                        break;
                    }
                case 1:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14297q(m13925N, 0.0f);
                        i5 += m14310i;
                        break;
                    }
                case 2:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14287x(m13925N, unsafe.getLong(t, m13924O));
                        i5 += m14310i;
                        break;
                    }
                case 3:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14325X(m13925N, unsafe.getLong(t, m13924O));
                        i5 += m14310i;
                        break;
                    }
                case 4:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14291v(m13925N, unsafe.getInt(t, m13924O));
                        i5 += m14310i;
                        break;
                    }
                case 5:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        m14310i = AbstractC5163k.m14301o(m13925N, 0L);
                        i5 += m14310i;
                        break;
                    }
                case 6:
                    if ((i7 & i2) != 0) {
                        m14310i = AbstractC5163k.m14304m(m13925N, 0);
                        i5 += m14310i;
                        break;
                    }
                    break;
                case 7:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14317d(m13925N, true);
                        i5 += m14317d;
                    }
                    break;
                case 8:
                    if ((i7 & i2) != 0) {
                        Object object = unsafe.getObject(t, m13924O);
                        if (object instanceof AbstractC5137h) {
                            m14317d = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) object);
                        } else {
                            m14317d = AbstractC5163k.m14330S(m13925N, (String) object);
                        }
                        i5 += m14317d;
                    }
                    break;
                case 9:
                    if ((i7 & i2) != 0) {
                        m14317d = C5162j1.m14371o(m13925N, unsafe.getObject(t, m13924O), m13891p(i4));
                        i5 += m14317d;
                    }
                    break;
                case 10:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) unsafe.getObject(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 11:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14327V(m13925N, unsafe.getInt(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 12:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14306k(m13925N, unsafe.getInt(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 13:
                    if ((i7 & i2) != 0) {
                        m14345K = AbstractC5163k.m14345K(m13925N, 0);
                        i5 += m14345K;
                    }
                    break;
                case 14:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14341M(m13925N, 0L);
                        i5 += m14317d;
                    }
                    break;
                case 15:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14337O(m13925N, unsafe.getInt(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 16:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14333Q(m13925N, unsafe.getLong(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 17:
                    if ((i7 & i2) != 0) {
                        m14317d = AbstractC5163k.m14294s(m13925N, (InterfaceC5210s0) unsafe.getObject(t, m13924O), m13891p(i4));
                        i5 += m14317d;
                    }
                    break;
                case 18:
                    m14317d = C5162j1.m14378h(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 19:
                    m14317d = C5162j1.m14380f(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 20:
                    m14317d = C5162j1.m14373m(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 21:
                    m14317d = C5162j1.m14362x(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 22:
                    m14317d = C5162j1.m14375k(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 23:
                    m14317d = C5162j1.m14378h(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 24:
                    m14317d = C5162j1.m14380f(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 25:
                    m14317d = C5162j1.m14390a(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 26:
                    m14317d = C5162j1.m14365u(m13925N, (List) unsafe.getObject(t, m13924O));
                    i5 += m14317d;
                    break;
                case 27:
                    m14317d = C5162j1.m14370p(m13925N, (List) unsafe.getObject(t, m13924O), m13891p(i4));
                    i5 += m14317d;
                    break;
                case 28:
                    m14317d = C5162j1.m14386c(m13925N, (List) unsafe.getObject(t, m13924O));
                    i5 += m14317d;
                    break;
                case 29:
                    m14317d = C5162j1.m14364v(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 30:
                    m14317d = C5162j1.m14384d(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 31:
                    m14317d = C5162j1.m14380f(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 32:
                    m14317d = C5162j1.m14378h(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 33:
                    m14317d = C5162j1.m14369q(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 34:
                    m14317d = C5162j1.m14367s(m13925N, (List) unsafe.getObject(t, m13924O), false);
                    i5 += m14317d;
                    break;
                case 35:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 36:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 37:
                    m14377i = C5162j1.m14372n((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 38:
                    m14377i = C5162j1.m14361y((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 39:
                    m14377i = C5162j1.m14374l((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 40:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 41:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 42:
                    m14377i = C5162j1.m14388b((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 43:
                    m14377i = C5162j1.m14363w((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 44:
                    m14377i = C5162j1.m14382e((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 45:
                    m14377i = C5162j1.m14379g((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 46:
                    m14377i = C5162j1.m14377i((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 47:
                    m14377i = C5162j1.m14368r((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 48:
                    m14377i = C5162j1.m14366t((List) unsafe.getObject(t, m13924O));
                    if (m14377i > 0) {
                        if (this.f19684i) {
                            unsafe.putInt(t, i, m14377i);
                        }
                        m14328U = AbstractC5163k.m14328U(m13925N);
                        m14326W = AbstractC5163k.m14326W(m14377i);
                        m14345K = m14328U + m14326W + m14377i;
                        i5 += m14345K;
                    }
                    break;
                case 49:
                    m14317d = C5162j1.m14376j(m13925N, (List) unsafe.getObject(t, m13924O), m13891p(i4));
                    i5 += m14317d;
                    break;
                case 50:
                    m14317d = this.f19692q.mo14171f(m13925N, unsafe.getObject(t, m13924O), m13892o(i4));
                    i5 += m14317d;
                    break;
                case 51:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14310i(m13925N, 0.0d);
                        i5 += m14317d;
                    }
                    break;
                case 52:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14297q(m13925N, 0.0f);
                        i5 += m14317d;
                    }
                    break;
                case 53:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14287x(m13925N, m13919T(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 54:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14325X(m13925N, m13919T(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 55:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14291v(m13925N, m13920S(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 56:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14301o(m13925N, 0L);
                        i5 += m14317d;
                    }
                    break;
                case 57:
                    if (m13937B(t, m13925N, i4)) {
                        m14345K = AbstractC5163k.m14304m(m13925N, 0);
                        i5 += m14345K;
                    }
                    break;
                case 58:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14317d(m13925N, true);
                        i5 += m14317d;
                    }
                    break;
                case 59:
                    if (m13937B(t, m13925N, i4)) {
                        Object object2 = unsafe.getObject(t, m13924O);
                        if (object2 instanceof AbstractC5137h) {
                            m14317d = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) object2);
                        } else {
                            m14317d = AbstractC5163k.m14330S(m13925N, (String) object2);
                        }
                        i5 += m14317d;
                    }
                    break;
                case 60:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = C5162j1.m14371o(m13925N, unsafe.getObject(t, m13924O), m13891p(i4));
                        i5 += m14317d;
                    }
                    break;
                case 61:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14312g(m13925N, (AbstractC5137h) unsafe.getObject(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 62:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14327V(m13925N, m13920S(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 63:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14306k(m13925N, m13920S(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 64:
                    if (m13937B(t, m13925N, i4)) {
                        m14345K = AbstractC5163k.m14345K(m13925N, 0);
                        i5 += m14345K;
                    }
                    break;
                case 65:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14341M(m13925N, 0L);
                        i5 += m14317d;
                    }
                    break;
                case 66:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14337O(m13925N, m13920S(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 67:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14333Q(m13925N, m13919T(t, m13924O));
                        i5 += m14317d;
                    }
                    break;
                case 68:
                    if (m13937B(t, m13925N, i4)) {
                        m14317d = AbstractC5163k.m14294s(m13925N, (InterfaceC5210s0) unsafe.getObject(t, m13924O), m13891p(i4));
                        i5 += m14317d;
                    }
                    break;
            }
            i4 += 3;
            i3 = 1048575;
        }
        int m13888s = i5 + m13888s(this.f19690o, t);
        if (this.f19681f) {
            return m13888s + this.f19691p.mo14103c(t).m13964l();
        }
        return m13888s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [o7.h1] */
    /* renamed from: z */
    public final boolean m13881z(T t, int i, int i2) {
        Map<?, ?> mo14169h = this.f19692q.mo14169h(C5212s1.m14079A(t, m13924O(i)));
        if (mo14169h.isEmpty()) {
            return true;
        }
        if (this.f19692q.mo14174c(m13892o(i2)).f19502c.m13941c() != C5230u1.EnumC5237c.MESSAGE) {
            return true;
        }
        InterfaceC5150h1<T> interfaceC5150h1 = 0;
        for (Object obj : mo14169h.values()) {
            if (interfaceC5150h1 == null) {
                interfaceC5150h1 = C5122d1.m14624a().m14621d(obj.getClass());
            }
            boolean mo13824d = interfaceC5150h1.mo13824d(obj);
            interfaceC5150h1 = interfaceC5150h1;
            if (!mo13824d) {
                return false;
            }
        }
        return true;
    }

    public C5241v0(int[] iArr, Object[] objArr, int i, int i2, InterfaceC5210s0 interfaceC5210s0, boolean z, boolean z2, int[] iArr2, int i3, int i4, InterfaceC5247x0 interfaceC5247x0, AbstractC5154i0 abstractC5154i0, AbstractC5195o1<?, ?> abstractC5195o1, AbstractC5200q<?> abstractC5200q, InterfaceC5191n0 interfaceC5191n0) {
        boolean z3;
        this.f19676a = iArr;
        this.f19677b = objArr;
        this.f19678c = i;
        this.f19679d = i2;
        this.f19682g = interfaceC5210s0 instanceof AbstractC5248y;
        this.f19683h = z;
        if (abstractC5200q != null && abstractC5200q.mo14101e(interfaceC5210s0)) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.f19681f = z3;
        this.f19684i = z2;
        this.f19685j = iArr2;
        this.f19686k = i3;
        this.f19687l = i4;
        this.f19688m = interfaceC5247x0;
        this.f19689n = abstractC5154i0;
        this.f19690o = abstractC5195o1;
        this.f19691p = abstractC5200q;
        this.f19680e = interfaceC5210s0;
        this.f19692q = interfaceC5191n0;
    }

    /* renamed from: L */
    public static <T> C5241v0<T> m13927L(C5184l1 c5184l1, InterfaceC5247x0 interfaceC5247x0, AbstractC5154i0 abstractC5154i0, AbstractC5195o1<?, ?> abstractC5195o1, AbstractC5200q<?> abstractC5200q, InterfaceC5191n0 interfaceC5191n0) {
        boolean z;
        if (c5184l1.mo14140c() == EnumC5119c1.PROTO3) {
            z = true;
        } else {
            z = false;
        }
        C5218t[] m14208e = c5184l1.m14208e();
        if (m14208e.length == 0) {
            int length = m14208e.length;
            int[] iArr = new int[length * 3];
            Object[] objArr = new Object[length * 2];
            if (m14208e.length <= 0) {
                int[] m14209d = c5184l1.m14209d();
                if (m14209d == null) {
                    m14209d = f19674r;
                }
                if (m14208e.length <= 0) {
                    int[] iArr2 = f19674r;
                    int[] iArr3 = f19674r;
                    int[] iArr4 = new int[m14209d.length + iArr2.length + iArr3.length];
                    System.arraycopy(m14209d, 0, iArr4, 0, m14209d.length);
                    System.arraycopy(iArr2, 0, iArr4, m14209d.length, iArr2.length);
                    System.arraycopy(iArr3, 0, iArr4, m14209d.length + iArr2.length, iArr3.length);
                    return new C5241v0<>(iArr, objArr, 0, 0, c5184l1.mo14141b(), z, true, iArr4, m14209d.length, m14209d.length + iArr2.length, interfaceC5247x0, abstractC5154i0, abstractC5195o1, abstractC5200q, interfaceC5191n0);
                }
                C5218t c5218t = m14208e[0];
                throw null;
            }
            C5218t c5218t2 = m14208e[0];
            throw null;
        }
        C5218t c5218t3 = m14208e[0];
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x037c  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p144o7.C5241v0<T> m13926M(p144o7.C5133f1 r34, p144o7.InterfaceC5247x0 r35, p144o7.AbstractC5154i0 r36, p144o7.AbstractC5195o1<?, ?> r37, p144o7.AbstractC5200q<?> r38, p144o7.InterfaceC5191n0 r39) {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5241v0.m13926M(o7.f1, o7.x0, o7.i0, o7.o1, o7.q, o7.n0):o7.v0");
    }

    /* renamed from: a0 */
    public static Field m13912a0(Class<?> cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public static boolean m13883x(Object obj, int i, InterfaceC5150h1 interfaceC5150h1) {
        return interfaceC5150h1.mo13824d(C5212s1.m14079A(obj, m13924O(i)));
    }

    /* renamed from: A */
    public final boolean m13938A(T t, T t2, int i) {
        long m13917V = m13917V(i) & 1048575;
        if (C5212s1.m14039x(t, m13917V) == C5212s1.m14039x(t2, m13917V)) {
            return true;
        }
        return false;
    }

    /* renamed from: B */
    public final boolean m13937B(T t, int i, int i2) {
        if (C5212s1.m14039x(t, m13917V(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    /* renamed from: G */
    public final <K, V> void m13932G(Object obj, int i, Object obj2, C5196p c5196p, InterfaceC5136g1 interfaceC5136g1) {
        long m13924O = m13924O(m13907f0(i));
        Object m14079A = C5212s1.m14079A(obj, m13924O);
        if (m14079A == null) {
            m14079A = this.f19692q.mo14172e(obj2);
            C5212s1.m14065O(obj, m13924O, m14079A);
        } else if (this.f19692q.mo14170g(m14079A)) {
            Object mo14172e = this.f19692q.mo14172e(obj2);
            this.f19692q.mo14176a(mo14172e, m14079A);
            C5212s1.m14065O(obj, m13924O, mo14172e);
            m14079A = mo14172e;
        }
        interfaceC5136g1.mo14430y(this.f19692q.mo14173d(m14079A), this.f19692q.mo14174c(obj2), c5196p);
    }

    /* renamed from: H */
    public final void m13931H(T t, T t2, int i) {
        long m13924O = m13924O(m13907f0(i));
        if (!m13885v(t2, i)) {
            return;
        }
        Object m14079A = C5212s1.m14079A(t, m13924O);
        Object m14079A2 = C5212s1.m14079A(t2, m13924O);
        if (m14079A != null && m14079A2 != null) {
            C5212s1.m14065O(t, m13924O, C5102a0.m14652h(m14079A, m14079A2));
            m13911b0(t, i);
        } else if (m14079A2 != null) {
            C5212s1.m14065O(t, m13924O, m14079A2);
            m13911b0(t, i);
        }
    }

    /* renamed from: I */
    public final void m13930I(T t, T t2, int i) {
        int m13907f0 = m13907f0(i);
        int m13925N = m13925N(i);
        long m13924O = m13924O(m13907f0);
        if (!m13937B(t2, m13925N, i)) {
            return;
        }
        Object obj = null;
        if (m13937B(t, m13925N, i)) {
            obj = C5212s1.m14079A(t, m13924O);
        }
        Object m14079A = C5212s1.m14079A(t2, m13924O);
        if (obj != null && m14079A != null) {
            C5212s1.m14065O(t, m13924O, C5102a0.m14652h(obj, m14079A));
            m13910c0(t, m13925N, i);
        } else if (m14079A != null) {
            C5212s1.m14065O(t, m13924O, m14079A);
            m13910c0(t, m13925N, i);
        }
    }

    /* renamed from: J */
    public final void m13929J(T t, T t2, int i) {
        int m13907f0 = m13907f0(i);
        long m13924O = m13924O(m13907f0);
        int m13925N = m13925N(i);
        switch (m13908e0(m13907f0)) {
            case 0:
                if (m13885v(t2, i)) {
                    C5212s1.m14069K(t, m13924O, C5212s1.m14041v(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 1:
                if (m13885v(t2, i)) {
                    C5212s1.m14068L(t, m13924O, C5212s1.m14040w(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 2:
                if (m13885v(t2, i)) {
                    C5212s1.m14066N(t, m13924O, C5212s1.m14038y(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 3:
                if (m13885v(t2, i)) {
                    C5212s1.m14066N(t, m13924O, C5212s1.m14038y(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 4:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 5:
                if (m13885v(t2, i)) {
                    C5212s1.m14066N(t, m13924O, C5212s1.m14038y(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 6:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 7:
                if (m13885v(t2, i)) {
                    C5212s1.m14075E(t, m13924O, C5212s1.m14047p(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 8:
                if (m13885v(t2, i)) {
                    C5212s1.m14065O(t, m13924O, C5212s1.m14079A(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 9:
                m13931H(t, t2, i);
                return;
            case 10:
                if (m13885v(t2, i)) {
                    C5212s1.m14065O(t, m13924O, C5212s1.m14079A(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 11:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 12:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 13:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 14:
                if (m13885v(t2, i)) {
                    C5212s1.m14066N(t, m13924O, C5212s1.m14038y(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 15:
                if (m13885v(t2, i)) {
                    C5212s1.m14067M(t, m13924O, C5212s1.m14039x(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 16:
                if (m13885v(t2, i)) {
                    C5212s1.m14066N(t, m13924O, C5212s1.m14038y(t2, m13924O));
                    m13911b0(t, i);
                    return;
                }
                return;
            case 17:
                m13931H(t, t2, i);
                return;
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
                this.f19689n.mo14482d(t, t2, m13924O);
                return;
            case 50:
                C5162j1.m14411F(this.f19692q, t, t2, m13924O);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (m13937B(t2, m13925N, i)) {
                    C5212s1.m14065O(t, m13924O, C5212s1.m14079A(t2, m13924O));
                    m13910c0(t, m13925N, i);
                    return;
                }
                return;
            case 60:
                m13930I(t, t2, i);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (m13937B(t2, m13925N, i)) {
                    C5212s1.m14065O(t, m13924O, C5212s1.m14079A(t2, m13924O));
                    m13910c0(t, m13925N, i);
                    return;
                }
                return;
            case 68:
                m13930I(t, t2, i);
                return;
            default:
                return;
        }
    }

    /* renamed from: X */
    public final <E> void m13915X(Object obj, int i, InterfaceC5136g1 interfaceC5136g1, InterfaceC5150h1<E> interfaceC5150h1, C5196p c5196p) {
        interfaceC5136g1.mo14435t(this.f19689n.mo14481e(obj, m13924O(i)), interfaceC5150h1, c5196p);
    }

    /* renamed from: Y */
    public final void m13914Y(Object obj, int i, InterfaceC5136g1 interfaceC5136g1) {
        if (m13886u(i)) {
            C5212s1.m14065O(obj, m13924O(i), interfaceC5136g1.mo14466N());
        } else if (this.f19682g) {
            C5212s1.m14065O(obj, m13924O(i), interfaceC5136g1.mo14478B());
        } else {
            C5212s1.m14065O(obj, m13924O(i), interfaceC5136g1.mo14474F());
        }
    }

    /* renamed from: Z */
    public final void m13913Z(Object obj, int i, InterfaceC5136g1 interfaceC5136g1) {
        if (m13886u(i)) {
            interfaceC5136g1.mo14475E(this.f19689n.mo14481e(obj, m13924O(i)));
        } else {
            interfaceC5136g1.mo14476D(this.f19689n.mo14481e(obj, m13924O(i)));
        }
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: a */
    public void mo13827a(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.f19676a.length; i += 3) {
            m13929J(t, t2, i);
        }
        C5162j1.m14410G(this.f19690o, t, t2);
        if (this.f19681f) {
            C5162j1.m14412E(this.f19691p, t, t2);
        }
    }

    /* renamed from: b0 */
    public final void m13911b0(T t, int i) {
        int m13917V = m13917V(i);
        long j = 1048575 & m13917V;
        if (j == 1048575) {
            return;
        }
        C5212s1.m14067M(t, j, (1 << (m13917V >>> 20)) | C5212s1.m14039x(t, j));
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: c */
    public void mo13825c(T t, InterfaceC5242v1 interfaceC5242v1) {
        if (interfaceC5242v1.mo13853m() == InterfaceC5242v1.EnumC5243a.DESCENDING) {
            m13901i0(t, interfaceC5242v1);
        } else if (this.f19683h) {
            m13903h0(t, interfaceC5242v1);
        } else {
            m13905g0(t, interfaceC5242v1);
        }
    }

    /* renamed from: c0 */
    public final void m13910c0(T t, int i, int i2) {
        C5212s1.m14067M(t, m13917V(i2) & 1048575, i);
    }

    @Override // p144o7.InterfaceC5150h1
    /* renamed from: e */
    public void mo13823e(T t, InterfaceC5136g1 interfaceC5136g1, C5196p c5196p) {
        c5196p.getClass();
        m13933F(this.f19690o, this.f19691p, t, interfaceC5136g1, c5196p);
    }

    /* renamed from: j */
    public final boolean m13900j(T t, T t2, int i) {
        int m13907f0 = m13907f0(i);
        long m13924O = m13924O(m13907f0);
        switch (m13908e0(m13907f0)) {
            case 0:
                if (!m13906g(t, t2, i) || Double.doubleToLongBits(C5212s1.m14041v(t, m13924O)) != Double.doubleToLongBits(C5212s1.m14041v(t2, m13924O))) {
                    return false;
                }
                return true;
            case 1:
                if (!m13906g(t, t2, i) || Float.floatToIntBits(C5212s1.m14040w(t, m13924O)) != Float.floatToIntBits(C5212s1.m14040w(t2, m13924O))) {
                    return false;
                }
                return true;
            case 2:
                if (!m13906g(t, t2, i) || C5212s1.m14038y(t, m13924O) != C5212s1.m14038y(t2, m13924O)) {
                    return false;
                }
                return true;
            case 3:
                if (!m13906g(t, t2, i) || C5212s1.m14038y(t, m13924O) != C5212s1.m14038y(t2, m13924O)) {
                    return false;
                }
                return true;
            case 4:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 5:
                if (!m13906g(t, t2, i) || C5212s1.m14038y(t, m13924O) != C5212s1.m14038y(t2, m13924O)) {
                    return false;
                }
                return true;
            case 6:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 7:
                if (!m13906g(t, t2, i) || C5212s1.m14047p(t, m13924O) != C5212s1.m14047p(t2, m13924O)) {
                    return false;
                }
                return true;
            case 8:
                if (!m13906g(t, t2, i) || !C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O))) {
                    return false;
                }
                return true;
            case 9:
                if (!m13906g(t, t2, i) || !C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O))) {
                    return false;
                }
                return true;
            case 10:
                if (!m13906g(t, t2, i) || !C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O))) {
                    return false;
                }
                return true;
            case 11:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 12:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 13:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 14:
                if (!m13906g(t, t2, i) || C5212s1.m14038y(t, m13924O) != C5212s1.m14038y(t2, m13924O)) {
                    return false;
                }
                return true;
            case 15:
                if (!m13906g(t, t2, i) || C5212s1.m14039x(t, m13924O) != C5212s1.m14039x(t2, m13924O)) {
                    return false;
                }
                return true;
            case 16:
                if (!m13906g(t, t2, i) || C5212s1.m14038y(t, m13924O) != C5212s1.m14038y(t2, m13924O)) {
                    return false;
                }
                return true;
            case 17:
                if (!m13906g(t, t2, i) || !C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O))) {
                    return false;
                }
                return true;
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
                return C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O));
            case 50:
                return C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O));
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
                if (!m13938A(t, t2, i) || !C5162j1.m14406K(C5212s1.m14079A(t, m13924O), C5212s1.m14079A(t2, m13924O))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    /* renamed from: k */
    public final <UT, UB> UB m13898k(Object obj, int i, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        int m13925N = m13925N(i);
        Object m14079A = C5212s1.m14079A(obj, m13924O(m13907f0(i)));
        if (m14079A == null) {
            return ub;
        }
        C5102a0.InterfaceC5107e m13893n = m13893n(i);
        if (m13893n == null) {
            return ub;
        }
        return (UB) m13896l(i, m13925N, this.f19692q.mo14173d(m14079A), m13893n, ub, abstractC5195o1);
    }

    /* renamed from: s */
    public final <UT, UB> int m13888s(AbstractC5195o1<UT, UB> abstractC5195o1, T t) {
        return abstractC5195o1.mo14122h(abstractC5195o1.mo14123g(t));
    }

    /* renamed from: v */
    public final boolean m13885v(T t, int i) {
        int m13917V = m13917V(i);
        long j = 1048575 & m13917V;
        if (j == 1048575) {
            int m13907f0 = m13907f0(i);
            long m13924O = m13924O(m13907f0);
            switch (m13908e0(m13907f0)) {
                case 0:
                    if (C5212s1.m14041v(t, m13924O) == 0.0d) {
                        return false;
                    }
                    return true;
                case 1:
                    if (C5212s1.m14040w(t, m13924O) == 0.0f) {
                        return false;
                    }
                    return true;
                case 2:
                    if (C5212s1.m14038y(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (C5212s1.m14038y(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (C5212s1.m14038y(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return C5212s1.m14047p(t, m13924O);
                case 8:
                    Object m14079A = C5212s1.m14079A(t, m13924O);
                    if (m14079A instanceof String) {
                        return !((String) m14079A).isEmpty();
                    }
                    if (m14079A instanceof AbstractC5137h) {
                        return !AbstractC5137h.f19422b.equals(m14079A);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (C5212s1.m14079A(t, m13924O) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    return !AbstractC5137h.f19422b.equals(C5212s1.m14079A(t, m13924O));
                case 11:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (C5212s1.m14038y(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (C5212s1.m14039x(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (C5212s1.m14038y(t, m13924O) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (C5212s1.m14079A(t, m13924O) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((C5212s1.m14039x(t, j) & (1 << (m13917V >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: y */
    public final <N> boolean m13882y(Object obj, int i, int i2) {
        List list = (List) C5212s1.m14079A(obj, m13924O(i));
        if (list.isEmpty()) {
            return true;
        }
        InterfaceC5150h1 m13891p = m13891p(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!m13891p.mo13824d(list.get(i3))) {
                return false;
            }
        }
        return true;
    }
}

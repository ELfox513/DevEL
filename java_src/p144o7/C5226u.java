package p144o7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p144o7.C5102a0;
import p144o7.C5126e0;
import p144o7.C5226u.InterfaceC5228b;
import p144o7.C5230u1;
import p144o7.InterfaceC5210s0;
/* renamed from: o7.u */
/* loaded from: classes2.dex */
public final class C5226u<T extends InterfaceC5228b<T>> {

    /* renamed from: d */
    public static final C5226u f19565d = new C5226u(true);

    /* renamed from: a */
    public final C5170k1<T, Object> f19566a;

    /* renamed from: b */
    public boolean f19567b;

    /* renamed from: c */
    public boolean f19568c;

    /* renamed from: o7.u$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC5228b<T extends InterfaceC5228b<T>> extends Comparable<T> {
        /* renamed from: e */
        int mo13770e();

        /* renamed from: i */
        boolean mo13769i();

        /* renamed from: k */
        C5230u1.EnumC5232b mo13768k();

        /* renamed from: r */
        InterfaceC5210s0.InterfaceC5211a mo13767r(InterfaceC5210s0.InterfaceC5211a interfaceC5211a, InterfaceC5210s0 interfaceC5210s0);

        /* renamed from: w */
        C5230u1.EnumC5237c mo13766w();

        /* renamed from: y */
        boolean mo13765y();
    }

    public C5226u() {
        this.f19566a = C5170k1.m14235q(16);
    }

    /* renamed from: h */
    public static <T extends InterfaceC5228b<T>> C5226u<T> m13968h() {
        return f19565d;
    }

    /* renamed from: m */
    public static int m13963m(C5230u1.EnumC5232b enumC5232b, boolean z) {
        if (z) {
            return 2;
        }
        return enumC5232b.m13940d();
    }

    /* renamed from: w */
    public static <T extends InterfaceC5228b<T>> C5226u<T> m13953w() {
        return new C5226u<>();
    }

    public int hashCode() {
        return this.f19566a.hashCode();
    }

    /* renamed from: j */
    public int m13966j() {
        int i = 0;
        for (int i2 = 0; i2 < this.f19566a.m14240k(); i2++) {
            i += m13965k(this.f19566a.m14241j(i2));
        }
        for (Map.Entry<T, Object> entry : this.f19566a.m14238m()) {
            i += m13965k(entry);
        }
        return i;
    }

    /* renamed from: l */
    public int m13964l() {
        int i = 0;
        for (int i2 = 0; i2 < this.f19566a.m14240k(); i2++) {
            Map.Entry<T, Object> m14241j = this.f19566a.m14241j(i2);
            i += m13970f(m14241j.getKey(), m14241j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f19566a.m14238m()) {
            i += m13970f(entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: n */
    public boolean m13962n() {
        return this.f19566a.isEmpty();
    }

    /* renamed from: o */
    public boolean m13961o() {
        return this.f19567b;
    }

    /* renamed from: p */
    public boolean m13960p() {
        for (int i = 0; i < this.f19566a.m14240k(); i++) {
            if (!m13959q(this.f19566a.m14241j(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f19566a.m14238m()) {
            if (!m13959q(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: u */
    public void m13955u(C5226u<T> c5226u) {
        for (int i = 0; i < c5226u.f19566a.m14240k(); i++) {
            m13954v(c5226u.f19566a.m14241j(i));
        }
        for (Map.Entry<T, Object> entry : c5226u.f19566a.m14238m()) {
            m13954v(entry);
        }
    }

    /* renamed from: o7.u$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C5227a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19569a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f19570b;

        static {
            int[] iArr = new int[C5230u1.EnumC5232b.values().length];
            f19570b = iArr;
            try {
                iArr[C5230u1.EnumC5232b.f19581d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19582k.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19583p.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19584q.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19585r.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19586s.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19587t.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19588u.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19590w.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19591x.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19589v.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19592y.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19593z.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19576B.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19577C.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19578D.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19579E.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f19570b[C5230u1.EnumC5232b.f19575A.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[C5230u1.EnumC5237c.values().length];
            f19569a = iArr2;
            try {
                iArr2[C5230u1.EnumC5237c.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f19569a[C5230u1.EnumC5237c.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* renamed from: A */
    public static void m13976A(AbstractC5163k abstractC5163k, C5230u1.EnumC5232b enumC5232b, Object obj) {
        switch (C5227a.f19570b[enumC5232b.ordinal()]) {
            case 1:
                abstractC5163k.m14300o0(((Double) obj).doubleValue());
                return;
            case 2:
                abstractC5163k.m14288w0(((Float) obj).floatValue());
                return;
            case 3:
                abstractC5163k.m14352E0(((Long) obj).longValue());
                return;
            case 4:
                abstractC5163k.mo14269X0(((Long) obj).longValue());
                return;
            case 5:
                abstractC5163k.mo14280C0(((Integer) obj).intValue());
                return;
            case 6:
                abstractC5163k.mo14256u0(((Long) obj).longValue());
                return;
            case 7:
                abstractC5163k.mo14258s0(((Integer) obj).intValue());
                return;
            case 8:
                abstractC5163k.m14309i0(((Boolean) obj).booleanValue());
                return;
            case 9:
                abstractC5163k.m14282z0((InterfaceC5210s0) obj);
                return;
            case 10:
                abstractC5163k.mo14278G0((InterfaceC5210s0) obj);
                return;
            case 11:
                if (obj instanceof AbstractC5137h) {
                    abstractC5163k.mo14260m0((AbstractC5137h) obj);
                    return;
                } else {
                    abstractC5163k.mo14274S0((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof AbstractC5137h) {
                    abstractC5163k.mo14260m0((AbstractC5137h) obj);
                    return;
                } else {
                    abstractC5163k.m14307j0((byte[]) obj);
                    return;
                }
            case 13:
                abstractC5163k.mo14271V0(((Integer) obj).intValue());
                return;
            case 14:
                abstractC5163k.m14344K0(((Integer) obj).intValue());
                return;
            case 15:
                abstractC5163k.m14340M0(((Long) obj).longValue());
                return;
            case 16:
                abstractC5163k.m14336O0(((Integer) obj).intValue());
                return;
            case 17:
                abstractC5163k.m14332Q0(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof C5102a0.InterfaceC5105c) {
                    abstractC5163k.m14296q0(((C5102a0.InterfaceC5105c) obj).mo14649e());
                    return;
                } else {
                    abstractC5163k.m14296q0(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: c */
    public static Object m13973c(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* renamed from: e */
    public static int m13971e(C5230u1.EnumC5232b enumC5232b, Object obj) {
        switch (C5227a.f19570b[enumC5232b.ordinal()]) {
            case 1:
                return AbstractC5163k.m14308j(((Double) obj).doubleValue());
            case 2:
                return AbstractC5163k.m14295r(((Float) obj).floatValue());
            case 3:
                return AbstractC5163k.m14285y(((Long) obj).longValue());
            case 4:
                return AbstractC5163k.m14324Y(((Long) obj).longValue());
            case 5:
                return AbstractC5163k.m14289w(((Integer) obj).intValue());
            case 6:
                return AbstractC5163k.m14299p(((Long) obj).longValue());
            case 7:
                return AbstractC5163k.m14303n(((Integer) obj).intValue());
            case 8:
                return AbstractC5163k.m14315e(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC5163k.m14293t((InterfaceC5210s0) obj);
            case 10:
                if (obj instanceof C5126e0) {
                    return AbstractC5163k.m14357B((C5126e0) obj);
                }
                return AbstractC5163k.m14350G((InterfaceC5210s0) obj);
            case 11:
                if (obj instanceof AbstractC5137h) {
                    return AbstractC5163k.m14311h((AbstractC5137h) obj);
                }
                return AbstractC5163k.m14329T((String) obj);
            case 12:
                if (obj instanceof AbstractC5137h) {
                    return AbstractC5163k.m14311h((AbstractC5137h) obj);
                }
                return AbstractC5163k.m14313f((byte[]) obj);
            case 13:
                return AbstractC5163k.m14326W(((Integer) obj).intValue());
            case 14:
                return AbstractC5163k.m14343L(((Integer) obj).intValue());
            case 15:
                return AbstractC5163k.m14339N(((Long) obj).longValue());
            case 16:
                return AbstractC5163k.m14335P(((Integer) obj).intValue());
            case 17:
                return AbstractC5163k.m14331R(((Long) obj).longValue());
            case 18:
                if (obj instanceof C5102a0.InterfaceC5105c) {
                    return AbstractC5163k.m14305l(((C5102a0.InterfaceC5105c) obj).mo14649e());
                }
                return AbstractC5163k.m14305l(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: z */
    public static void m13950z(AbstractC5163k abstractC5163k, C5230u1.EnumC5232b enumC5232b, int i, Object obj) {
        if (enumC5232b == C5230u1.EnumC5232b.f19590w) {
            abstractC5163k.m14286x0(i, (InterfaceC5210s0) obj);
            return;
        }
        abstractC5163k.mo14273T0(i, m13963m(enumC5232b, false));
        m13976A(abstractC5163k, enumC5232b, obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5226u)) {
            return false;
        }
        return this.f19566a.equals(((C5226u) obj).f19566a);
    }

    /* renamed from: g */
    public Iterator<Map.Entry<T, Object>> m13969g() {
        if (this.f19568c) {
            return new C5126e0.C5129c(this.f19566a.m14243h().iterator());
        }
        return this.f19566a.m14243h().iterator();
    }

    /* renamed from: i */
    public Object m13967i(T t) {
        Object obj = this.f19566a.get(t);
        if (obj instanceof C5126e0) {
            return ((C5126e0) obj).m14595f();
        }
        return obj;
    }

    /* renamed from: s */
    public Iterator<Map.Entry<T, Object>> m13957s() {
        if (this.f19568c) {
            return new C5126e0.C5129c(this.f19566a.entrySet().iterator());
        }
        return this.f19566a.entrySet().iterator();
    }

    /* renamed from: t */
    public void m13956t() {
        if (this.f19567b) {
            return;
        }
        this.f19566a.mo14232p();
        this.f19567b = true;
    }

    public C5226u(boolean z) {
        this(C5170k1.m14235q(0));
        m13956t();
    }

    /* renamed from: d */
    public static int m13972d(C5230u1.EnumC5232b enumC5232b, int i, Object obj) {
        int m14328U = AbstractC5163k.m14328U(i);
        if (enumC5232b == C5230u1.EnumC5232b.f19590w) {
            m14328U *= 2;
        }
        return m14328U + m13971e(enumC5232b, obj);
    }

    /* renamed from: f */
    public static int m13970f(InterfaceC5228b<?> interfaceC5228b, Object obj) {
        C5230u1.EnumC5232b mo13768k = interfaceC5228b.mo13768k();
        int mo13770e = interfaceC5228b.mo13770e();
        if (interfaceC5228b.mo13769i()) {
            int i = 0;
            if (interfaceC5228b.mo13765y()) {
                for (Object obj2 : (List) obj) {
                    i += m13971e(mo13768k, obj2);
                }
                return AbstractC5163k.m14328U(mo13770e) + i + AbstractC5163k.m14347J(i);
            }
            for (Object obj3 : (List) obj) {
                i += m13972d(mo13768k, mo13770e, obj3);
            }
            return i;
        }
        return m13972d(mo13768k, mo13770e, obj);
    }

    /* renamed from: q */
    public static <T extends InterfaceC5228b<T>> boolean m13959q(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo13766w() == C5230u1.EnumC5237c.MESSAGE) {
            if (key.mo13769i()) {
                for (InterfaceC5210s0 interfaceC5210s0 : (List) entry.getValue()) {
                    if (!interfaceC5210s0.mo13798a()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof InterfaceC5210s0) {
                    if (!((InterfaceC5210s0) value).mo13798a()) {
                        return false;
                    }
                } else if (value instanceof C5126e0) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    /* renamed from: r */
    public static boolean m13958r(C5230u1.EnumC5232b enumC5232b, Object obj) {
        C5102a0.m14659a(obj);
        switch (C5227a.f19569a[enumC5232b.m13941c().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                if ((obj instanceof AbstractC5137h) || (obj instanceof byte[])) {
                    return true;
                }
                return false;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof C5102a0.InterfaceC5105c)) {
                    return true;
                }
                return false;
            case 9:
                if ((obj instanceof InterfaceC5210s0) || (obj instanceof C5126e0)) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    /* renamed from: a */
    public void m13975a(T t, Object obj) {
        List list;
        if (t.mo13769i()) {
            m13951y(t.mo13768k(), obj);
            Object m13967i = m13967i(t);
            if (m13967i == null) {
                list = new ArrayList();
                this.f19566a.put(t, list);
            } else {
                list = (List) m13967i;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: b */
    public C5226u<T> clone() {
        C5226u<T> m13953w = m13953w();
        for (int i = 0; i < this.f19566a.m14240k(); i++) {
            Map.Entry<T, Object> m14241j = this.f19566a.m14241j(i);
            m13953w.m13952x(m14241j.getKey(), m14241j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f19566a.m14238m()) {
            m13953w.m13952x(entry.getKey(), entry.getValue());
        }
        m13953w.f19568c = this.f19568c;
        return m13953w;
    }

    /* renamed from: k */
    public final int m13965k(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.mo13766w() == C5230u1.EnumC5237c.MESSAGE && !key.mo13769i() && !key.mo13765y()) {
            if (value instanceof C5126e0) {
                return AbstractC5163k.m14283z(entry.getKey().mo13770e(), (C5126e0) value);
            }
            return AbstractC5163k.m14355D(entry.getKey().mo13770e(), (InterfaceC5210s0) value);
        }
        return m13970f(key, value);
    }

    /* renamed from: v */
    public final void m13954v(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C5126e0) {
            value = ((C5126e0) value).m14595f();
        }
        if (key.mo13769i()) {
            Object m13967i = m13967i(key);
            if (m13967i == null) {
                m13967i = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) m13967i).add(m13973c(obj));
            }
            this.f19566a.put(key, m13967i);
        } else if (key.mo13766w() == C5230u1.EnumC5237c.MESSAGE) {
            Object m13967i2 = m13967i(key);
            if (m13967i2 == null) {
                this.f19566a.put(key, m13973c(value));
                return;
            }
            this.f19566a.put(key, key.mo13767r(((InterfaceC5210s0) m13967i2).mo13774f(), (InterfaceC5210s0) value).build());
        } else {
            this.f19566a.put(key, m13973c(value));
        }
    }

    /* renamed from: x */
    public void m13952x(T t, Object obj) {
        if (t.mo13769i()) {
            if (obj instanceof List) {
                ArrayList<Object> arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                for (Object obj2 : arrayList) {
                    m13951y(t.mo13768k(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            m13951y(t.mo13768k(), obj);
        }
        if (obj instanceof C5126e0) {
            this.f19568c = true;
        }
        this.f19566a.put(t, obj);
    }

    /* renamed from: y */
    public final void m13951y(C5230u1.EnumC5232b enumC5232b, Object obj) {
        if (m13958r(enumC5232b, obj)) {
            return;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public C5226u(C5170k1<T, Object> c5170k1) {
        this.f19566a = c5170k1;
        m13956t();
    }
}

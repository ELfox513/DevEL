package p144o7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p144o7.C5102a0;
/* renamed from: o7.i0 */
/* loaded from: classes2.dex */
public abstract class AbstractC5154i0 {

    /* renamed from: a */
    public static final AbstractC5154i0 f19448a = new C5156b();

    /* renamed from: b */
    public static final AbstractC5154i0 f19449b = new C5157c();

    public AbstractC5154i0() {
    }

    /* renamed from: a */
    public static AbstractC5154i0 m14487a() {
        return f19448a;
    }

    /* renamed from: b */
    public static AbstractC5154i0 m14486b() {
        return f19449b;
    }

    /* renamed from: c */
    public abstract void mo14483c(Object obj, long j);

    /* renamed from: d */
    public abstract <L> void mo14482d(Object obj, Object obj2, long j);

    /* renamed from: e */
    public abstract <L> List<L> mo14481e(Object obj, long j);

    /* renamed from: o7.i0$b */
    /* loaded from: classes2.dex */
    public static final class C5156b extends AbstractC5154i0 {

        /* renamed from: c */
        public static final Class<?> f19450c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public C5156b() {
            super();
        }

        /* renamed from: f */
        public static <E> List<E> m14485f(Object obj, long j) {
            return (List) C5212s1.m14079A(obj, j);
        }

        @Override // p144o7.AbstractC5154i0
        /* renamed from: e */
        public <L> List<L> mo14481e(Object obj, long j) {
            return m14484g(obj, j, 10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        public static <L> List<L> m14484g(Object obj, long j, int i) {
            C5135g0 c5135g0;
            List<L> arrayList;
            List<L> m14485f = m14485f(obj, j);
            if (m14485f.isEmpty()) {
                if (m14485f instanceof InterfaceC5149h0) {
                    arrayList = new C5135g0(i);
                } else if ((m14485f instanceof InterfaceC5115b1) && (m14485f instanceof C5102a0.InterfaceC5111i)) {
                    arrayList = ((C5102a0.InterfaceC5111i) m14485f).mo13752n(i);
                } else {
                    arrayList = new ArrayList<>(i);
                }
                C5212s1.m14065O(obj, j, arrayList);
                return arrayList;
            }
            if (f19450c.isAssignableFrom(m14485f.getClass())) {
                ArrayList arrayList2 = new ArrayList(m14485f.size() + i);
                arrayList2.addAll(m14485f);
                C5212s1.m14065O(obj, j, arrayList2);
                c5135g0 = arrayList2;
            } else if (m14485f instanceof C5206r1) {
                C5135g0 c5135g02 = new C5135g0(m14485f.size() + i);
                c5135g02.addAll((C5206r1) m14485f);
                C5212s1.m14065O(obj, j, c5135g02);
                c5135g0 = c5135g02;
            } else if ((m14485f instanceof InterfaceC5115b1) && (m14485f instanceof C5102a0.InterfaceC5111i)) {
                C5102a0.InterfaceC5111i interfaceC5111i = (C5102a0.InterfaceC5111i) m14485f;
                if (!interfaceC5111i.mo14568V0()) {
                    C5102a0.InterfaceC5111i mo13752n = interfaceC5111i.mo13752n(m14485f.size() + i);
                    C5212s1.m14065O(obj, j, mo13752n);
                    return mo13752n;
                }
                return m14485f;
            } else {
                return m14485f;
            }
            return c5135g0;
        }

        @Override // p144o7.AbstractC5154i0
        /* renamed from: c */
        public void mo14483c(Object obj, long j) {
            Object unmodifiableList;
            List list = (List) C5212s1.m14079A(obj, j);
            if (list instanceof InterfaceC5149h0) {
                unmodifiableList = ((InterfaceC5149h0) list).mo14095F0();
            } else if (f19450c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof InterfaceC5115b1) && (list instanceof C5102a0.InterfaceC5111i)) {
                    C5102a0.InterfaceC5111i interfaceC5111i = (C5102a0.InterfaceC5111i) list;
                    if (interfaceC5111i.mo14568V0()) {
                        interfaceC5111i.mo14640F();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            C5212s1.m14065O(obj, j, unmodifiableList);
        }

        @Override // p144o7.AbstractC5154i0
        /* renamed from: d */
        public <E> void mo14482d(Object obj, Object obj2, long j) {
            List m14485f = m14485f(obj2, j);
            List m14484g = m14484g(obj, j, m14485f.size());
            int size = m14484g.size();
            int size2 = m14485f.size();
            if (size > 0 && size2 > 0) {
                m14484g.addAll(m14485f);
            }
            if (size > 0) {
                m14485f = m14484g;
            }
            C5212s1.m14065O(obj, j, m14485f);
        }
    }

    /* renamed from: o7.i0$c */
    /* loaded from: classes2.dex */
    public static final class C5157c extends AbstractC5154i0 {
        public C5157c() {
            super();
        }

        /* renamed from: f */
        public static <E> C5102a0.InterfaceC5111i<E> m14480f(Object obj, long j) {
            return (C5102a0.InterfaceC5111i) C5212s1.m14079A(obj, j);
        }

        @Override // p144o7.AbstractC5154i0
        /* renamed from: c */
        public void mo14483c(Object obj, long j) {
            m14480f(obj, j).mo14640F();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        @Override // p144o7.AbstractC5154i0
        /* renamed from: d */
        public <E> void mo14482d(Object obj, Object obj2, long j) {
            C5102a0.InterfaceC5111i<E> m14480f = m14480f(obj, j);
            C5102a0.InterfaceC5111i<E> m14480f2 = m14480f(obj2, j);
            int size = m14480f.size();
            int size2 = m14480f2.size();
            C5102a0.InterfaceC5111i<E> interfaceC5111i = m14480f;
            interfaceC5111i = m14480f;
            if (size > 0 && size2 > 0) {
                boolean mo14568V0 = m14480f.mo14568V0();
                C5102a0.InterfaceC5111i<E> interfaceC5111i2 = m14480f;
                if (!mo14568V0) {
                    interfaceC5111i2 = m14480f.mo13752n(size2 + size);
                }
                interfaceC5111i2.addAll(m14480f2);
                interfaceC5111i = interfaceC5111i2;
            }
            if (size > 0) {
                m14480f2 = interfaceC5111i;
            }
            C5212s1.m14065O(obj, j, m14480f2);
        }

        @Override // p144o7.AbstractC5154i0
        /* renamed from: e */
        public <L> List<L> mo14481e(Object obj, long j) {
            int i;
            C5102a0.InterfaceC5111i m14480f = m14480f(obj, j);
            if (!m14480f.mo14568V0()) {
                int size = m14480f.size();
                if (size == 0) {
                    i = 10;
                } else {
                    i = size * 2;
                }
                C5102a0.InterfaceC5111i mo13752n = m14480f.mo13752n(i);
                C5212s1.m14065O(obj, j, mo13752n);
                return mo13752n;
            }
            return m14480f;
        }
    }
}

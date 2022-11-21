package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p109l.C4532a;
import p109l.C4533b;
/* renamed from: androidx.lifecycle.h */
/* loaded from: classes.dex */
public class C0323h extends AbstractC0317d {

    /* renamed from: d */
    public final WeakReference<InterfaceC0322g> f1228d;

    /* renamed from: b */
    public C4532a<InterfaceC0321f, C0325b> f1226b = new C4532a<>();

    /* renamed from: e */
    public int f1229e = 0;

    /* renamed from: f */
    public boolean f1230f = false;

    /* renamed from: g */
    public boolean f1231g = false;

    /* renamed from: h */
    public ArrayList<AbstractC0317d.EnumC0319b> f1232h = new ArrayList<>();

    /* renamed from: c */
    public AbstractC0317d.EnumC0319b f1227c = AbstractC0317d.EnumC0319b.INITIALIZED;

    /* renamed from: l */
    public static AbstractC0317d.EnumC0319b m26784l(AbstractC0317d.EnumC0319b enumC0319b, AbstractC0317d.EnumC0319b enumC0319b2) {
        return (enumC0319b2 == null || enumC0319b2.compareTo(enumC0319b) >= 0) ? enumC0319b : enumC0319b2;
    }

    @Override // androidx.lifecycle.AbstractC0317d
    /* renamed from: b */
    public AbstractC0317d.EnumC0319b mo26794b() {
        return this.f1227c;
    }

    @Override // androidx.lifecycle.AbstractC0317d
    /* renamed from: c */
    public void mo26793c(InterfaceC0321f interfaceC0321f) {
        this.f1226b.mo16063m(interfaceC0321f);
    }

    @Deprecated
    /* renamed from: k */
    public void m26785k(AbstractC0317d.EnumC0319b enumC0319b) {
        m26780p(enumC0319b);
    }

    /* renamed from: n */
    public final void m26782n() {
        ArrayList<AbstractC0317d.EnumC0319b> arrayList = this.f1232h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: o */
    public final void m26781o(AbstractC0317d.EnumC0319b enumC0319b) {
        this.f1232h.add(enumC0319b);
    }

    /* renamed from: p */
    public void m26780p(AbstractC0317d.EnumC0319b enumC0319b) {
        m26783m(enumC0319b);
    }

    /* renamed from: androidx.lifecycle.h$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0324a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1233a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f1234b;

        static {
            int[] iArr = new int[AbstractC0317d.EnumC0319b.values().length];
            f1234b = iArr;
            try {
                iArr[AbstractC0317d.EnumC0319b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1234b[AbstractC0317d.EnumC0319b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1234b[AbstractC0317d.EnumC0319b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1234b[AbstractC0317d.EnumC0319b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1234b[AbstractC0317d.EnumC0319b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[AbstractC0317d.EnumC0318a.values().length];
            f1233a = iArr2;
            try {
                iArr2[AbstractC0317d.EnumC0318a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f1233a[AbstractC0317d.EnumC0318a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* renamed from: androidx.lifecycle.h$b */
    /* loaded from: classes.dex */
    public static class C0325b {

        /* renamed from: a */
        public AbstractC0317d.EnumC0319b f1235a;

        /* renamed from: b */
        public InterfaceC0320e f1236b;

        public C0325b(InterfaceC0321f interfaceC0321f, AbstractC0317d.EnumC0319b enumC0319b) {
            this.f1236b = C0328k.m26771f(interfaceC0321f);
            this.f1235a = enumC0319b;
        }

        /* renamed from: a */
        public void m26777a(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
            AbstractC0317d.EnumC0319b m26788h = C0323h.m26788h(enumC0318a);
            this.f1235a = C0323h.m26784l(this.f1235a, m26788h);
            this.f1236b.mo26714c(interfaceC0322g, enumC0318a);
            this.f1235a = m26788h;
        }
    }

    /* renamed from: f */
    public static AbstractC0317d.EnumC0318a m26790f(AbstractC0317d.EnumC0319b enumC0319b) {
        int i = C0324a.f1234b[enumC0319b.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            throw new IllegalArgumentException("Unexpected state value " + enumC0319b);
                        }
                        throw new IllegalArgumentException();
                    }
                    return AbstractC0317d.EnumC0318a.ON_PAUSE;
                }
                return AbstractC0317d.EnumC0318a.ON_STOP;
            }
            return AbstractC0317d.EnumC0318a.ON_DESTROY;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: h */
    public static AbstractC0317d.EnumC0319b m26788h(AbstractC0317d.EnumC0318a enumC0318a) {
        switch (C0324a.f1233a[enumC0318a.ordinal()]) {
            case 1:
            case 2:
                return AbstractC0317d.EnumC0319b.CREATED;
            case 3:
            case 4:
                return AbstractC0317d.EnumC0319b.STARTED;
            case 5:
                return AbstractC0317d.EnumC0319b.RESUMED;
            case 6:
                return AbstractC0317d.EnumC0319b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + enumC0318a);
        }
    }

    /* renamed from: r */
    public static AbstractC0317d.EnumC0318a m26778r(AbstractC0317d.EnumC0319b enumC0319b) {
        int i = C0324a.f1234b[enumC0319b.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            throw new IllegalArgumentException("Unexpected state value " + enumC0319b);
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    return AbstractC0317d.EnumC0318a.ON_RESUME;
                }
            } else {
                return AbstractC0317d.EnumC0318a.ON_START;
            }
        }
        return AbstractC0317d.EnumC0318a.ON_CREATE;
    }

    @Override // androidx.lifecycle.AbstractC0317d
    /* renamed from: a */
    public void mo26795a(InterfaceC0321f interfaceC0321f) {
        InterfaceC0322g interfaceC0322g;
        boolean z;
        AbstractC0317d.EnumC0319b enumC0319b = this.f1227c;
        AbstractC0317d.EnumC0319b enumC0319b2 = AbstractC0317d.EnumC0319b.DESTROYED;
        if (enumC0319b != enumC0319b2) {
            enumC0319b2 = AbstractC0317d.EnumC0319b.INITIALIZED;
        }
        C0325b c0325b = new C0325b(interfaceC0321f, enumC0319b2);
        if (this.f1226b.mo16064l(interfaceC0321f, c0325b) != null || (interfaceC0322g = this.f1228d.get()) == null) {
            return;
        }
        if (this.f1229e == 0 && !this.f1230f) {
            z = false;
        } else {
            z = true;
        }
        AbstractC0317d.EnumC0319b m26791e = m26791e(interfaceC0321f);
        this.f1229e++;
        while (c0325b.f1235a.compareTo(m26791e) < 0 && this.f1226b.contains(interfaceC0321f)) {
            m26781o(c0325b.f1235a);
            c0325b.m26777a(interfaceC0322g, m26778r(c0325b.f1235a));
            m26782n();
            m26791e = m26791e(interfaceC0321f);
        }
        if (!z) {
            m26779q();
        }
        this.f1229e--;
    }

    /* renamed from: d */
    public final void m26792d(InterfaceC0322g interfaceC0322g) {
        Iterator<Map.Entry<InterfaceC0321f, C0325b>> descendingIterator = this.f1226b.descendingIterator();
        while (descendingIterator.hasNext() && !this.f1231g) {
            Map.Entry<InterfaceC0321f, C0325b> next = descendingIterator.next();
            C0325b value = next.getValue();
            while (value.f1235a.compareTo(this.f1227c) > 0 && !this.f1231g && this.f1226b.contains(next.getKey())) {
                AbstractC0317d.EnumC0318a m26790f = m26790f(value.f1235a);
                m26781o(m26788h(m26790f));
                value.m26777a(interfaceC0322g, m26790f);
                m26782n();
            }
        }
    }

    /* renamed from: e */
    public final AbstractC0317d.EnumC0319b m26791e(InterfaceC0321f interfaceC0321f) {
        AbstractC0317d.EnumC0319b enumC0319b;
        ArrayList<AbstractC0317d.EnumC0319b> arrayList;
        Map.Entry<InterfaceC0321f, C0325b> m16070o = this.f1226b.m16070o(interfaceC0321f);
        AbstractC0317d.EnumC0319b enumC0319b2 = null;
        if (m16070o != null) {
            enumC0319b = m16070o.getValue().f1235a;
        } else {
            enumC0319b = null;
        }
        if (!this.f1232h.isEmpty()) {
            enumC0319b2 = this.f1232h.get(arrayList.size() - 1);
        }
        return m26784l(m26784l(this.f1227c, enumC0319b), enumC0319b2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final void m26789g(InterfaceC0322g interfaceC0322g) {
        C4533b<InterfaceC0321f, C0325b>.C4537d m16067g = this.f1226b.m16067g();
        while (m16067g.hasNext() && !this.f1231g) {
            Map.Entry next = m16067g.next();
            C0325b c0325b = (C0325b) next.getValue();
            while (c0325b.f1235a.compareTo(this.f1227c) < 0 && !this.f1231g && this.f1226b.contains(next.getKey())) {
                m26781o(c0325b.f1235a);
                c0325b.m26777a(interfaceC0322g, m26778r(c0325b.f1235a));
                m26782n();
            }
        }
    }

    /* renamed from: j */
    public final boolean m26786j() {
        if (this.f1226b.size() == 0) {
            return true;
        }
        AbstractC0317d.EnumC0319b enumC0319b = this.f1226b.m16069d().getValue().f1235a;
        AbstractC0317d.EnumC0319b enumC0319b2 = this.f1226b.m16066i().getValue().f1235a;
        if (enumC0319b == enumC0319b2 && this.f1227c == enumC0319b2) {
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public final void m26783m(AbstractC0317d.EnumC0319b enumC0319b) {
        if (this.f1227c == enumC0319b) {
            return;
        }
        this.f1227c = enumC0319b;
        if (!this.f1230f && this.f1229e == 0) {
            this.f1230f = true;
            m26779q();
            this.f1230f = false;
            return;
        }
        this.f1231g = true;
    }

    /* renamed from: q */
    public final void m26779q() {
        InterfaceC0322g interfaceC0322g = this.f1228d.get();
        if (interfaceC0322g != null) {
            while (!m26786j()) {
                this.f1231g = false;
                if (this.f1227c.compareTo(this.f1226b.m16069d().getValue().f1235a) < 0) {
                    m26792d(interfaceC0322g);
                }
                Map.Entry<InterfaceC0321f, C0325b> m16066i = this.f1226b.m16066i();
                if (!this.f1231g && m16066i != null && this.f1227c.compareTo(m16066i.getValue().f1235a) > 0) {
                    m26789g(interfaceC0322g);
                }
            }
            this.f1231g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    public C0323h(InterfaceC0322g interfaceC0322g) {
        this.f1228d = new WeakReference<>(interfaceC0322g);
    }

    /* renamed from: i */
    public void m26787i(AbstractC0317d.EnumC0318a enumC0318a) {
        m26783m(m26788h(enumC0318a));
    }
}

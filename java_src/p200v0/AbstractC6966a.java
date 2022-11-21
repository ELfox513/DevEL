package p200v0;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p145p.C5270a;
/* renamed from: v0.a */
/* loaded from: classes.dex */
public abstract class AbstractC6966a {

    /* renamed from: a */
    public final C5270a<String, Method> f35852a;

    /* renamed from: b */
    public final C5270a<String, Method> f35853b;

    /* renamed from: c */
    public final C5270a<String, Class> f35854c;

    /* renamed from: A */
    public abstract void mo2851A(byte[] bArr);

    /* renamed from: C */
    public abstract void mo2850C(CharSequence charSequence);

    /* renamed from: E */
    public abstract void mo2849E(int i);

    /* renamed from: G */
    public abstract void mo2848G(Parcelable parcelable);

    /* renamed from: I */
    public abstract void mo2847I(String str);

    /* renamed from: a */
    public abstract void mo2846a();

    /* renamed from: b */
    public abstract AbstractC6966a mo2845b();

    /* renamed from: f */
    public boolean m2863f() {
        return false;
    }

    /* renamed from: g */
    public abstract boolean mo2844g();

    /* renamed from: i */
    public abstract byte[] mo2843i();

    /* renamed from: k */
    public abstract CharSequence mo2842k();

    /* renamed from: m */
    public abstract boolean mo2841m(int i);

    /* renamed from: o */
    public abstract int mo2840o();

    /* renamed from: q */
    public abstract <T extends Parcelable> T mo2839q();

    /* renamed from: s */
    public abstract String mo2838s();

    /* renamed from: w */
    public abstract void mo2837w(int i);

    /* renamed from: x */
    public void m2853x(boolean z, boolean z2) {
    }

    /* renamed from: y */
    public abstract void mo2836y(boolean z);

    /* renamed from: L */
    public void m2869L(InterfaceC6968c interfaceC6968c) {
        if (interfaceC6968c == null) {
            mo2847I(null);
            return;
        }
        m2867N(interfaceC6968c);
        AbstractC6966a mo2845b = mo2845b();
        m2870K(interfaceC6968c, mo2845b);
        mo2845b.mo2846a();
    }

    /* renamed from: c */
    public final Class m2866c(Class<? extends InterfaceC6968c> cls) {
        Class cls2 = this.f35854c.get(cls.getName());
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f35854c.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    /* renamed from: d */
    public final Method m2865d(String str) {
        Method method = this.f35852a.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, AbstractC6966a.class.getClassLoader()).getDeclaredMethod("read", AbstractC6966a.class);
            this.f35852a.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    /* renamed from: e */
    public final Method m2864e(Class cls) {
        Method method = this.f35853b.get(cls.getName());
        if (method == null) {
            Class m2866c = m2866c(cls);
            System.currentTimeMillis();
            Method declaredMethod = m2866c.getDeclaredMethod("write", cls, AbstractC6966a.class);
            this.f35853b.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public AbstractC6966a(C5270a<String, Method> c5270a, C5270a<String, Method> c5270a2, C5270a<String, Class> c5270a3) {
        this.f35852a = c5270a;
        this.f35853b = c5270a2;
        this.f35854c = c5270a3;
    }

    /* renamed from: B */
    public void m2875B(byte[] bArr, int i) {
        mo2837w(i);
        mo2851A(bArr);
    }

    /* renamed from: D */
    public void m2874D(CharSequence charSequence, int i) {
        mo2837w(i);
        mo2850C(charSequence);
    }

    /* renamed from: F */
    public void m2873F(int i, int i2) {
        mo2837w(i2);
        mo2849E(i);
    }

    /* renamed from: H */
    public void m2872H(Parcelable parcelable, int i) {
        mo2837w(i);
        mo2848G(parcelable);
    }

    /* renamed from: J */
    public void m2871J(String str, int i) {
        mo2837w(i);
        mo2847I(str);
    }

    /* renamed from: K */
    public <T extends InterfaceC6968c> void m2870K(T t, AbstractC6966a abstractC6966a) {
        try {
            m2864e(t.getClass()).invoke(null, t, abstractC6966a);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: M */
    public void m2868M(InterfaceC6968c interfaceC6968c, int i) {
        mo2837w(i);
        m2869L(interfaceC6968c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    public final void m2867N(InterfaceC6968c interfaceC6968c) {
        try {
            mo2847I(m2866c(interfaceC6968c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(interfaceC6968c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: h */
    public boolean m2862h(boolean z, int i) {
        if (!mo2841m(i)) {
            return z;
        }
        return mo2844g();
    }

    /* renamed from: j */
    public byte[] m2861j(byte[] bArr, int i) {
        if (!mo2841m(i)) {
            return bArr;
        }
        return mo2843i();
    }

    /* renamed from: l */
    public CharSequence m2860l(CharSequence charSequence, int i) {
        if (!mo2841m(i)) {
            return charSequence;
        }
        return mo2842k();
    }

    /* renamed from: n */
    public <T extends InterfaceC6968c> T m2859n(String str, AbstractC6966a abstractC6966a) {
        try {
            return (T) m2865d(str).invoke(null, abstractC6966a);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: p */
    public int m2858p(int i, int i2) {
        if (!mo2841m(i2)) {
            return i;
        }
        return mo2840o();
    }

    /* renamed from: r */
    public <T extends Parcelable> T m2857r(T t, int i) {
        if (!mo2841m(i)) {
            return t;
        }
        return (T) mo2839q();
    }

    /* renamed from: t */
    public String m2856t(String str, int i) {
        if (!mo2841m(i)) {
            return str;
        }
        return mo2838s();
    }

    /* renamed from: u */
    public <T extends InterfaceC6968c> T m2855u() {
        String mo2838s = mo2838s();
        if (mo2838s == null) {
            return null;
        }
        return (T) m2859n(mo2838s, mo2845b());
    }

    /* renamed from: v */
    public <T extends InterfaceC6968c> T m2854v(T t, int i) {
        if (!mo2841m(i)) {
            return t;
        }
        return (T) m2855u();
    }

    /* renamed from: z */
    public void m2852z(boolean z, int i) {
        mo2837w(i);
        mo2836y(z);
    }
}

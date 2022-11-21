package androidx.fragment.app;

import androidx.lifecycle.AbstractC0317d;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes.dex */
public abstract class AbstractC0285n {

    /* renamed from: b */
    public int f1098b;

    /* renamed from: c */
    public int f1099c;

    /* renamed from: d */
    public int f1100d;

    /* renamed from: e */
    public int f1101e;

    /* renamed from: f */
    public int f1102f;

    /* renamed from: g */
    public int f1103g;

    /* renamed from: h */
    public boolean f1104h;

    /* renamed from: j */
    public String f1106j;

    /* renamed from: k */
    public int f1107k;

    /* renamed from: l */
    public CharSequence f1108l;

    /* renamed from: m */
    public int f1109m;

    /* renamed from: n */
    public CharSequence f1110n;

    /* renamed from: o */
    public ArrayList<String> f1111o;

    /* renamed from: p */
    public ArrayList<String> f1112p;

    /* renamed from: r */
    public ArrayList<Runnable> f1114r;

    /* renamed from: a */
    public ArrayList<C0286a> f1097a = new ArrayList<>();

    /* renamed from: i */
    public boolean f1105i = true;

    /* renamed from: q */
    public boolean f1113q = false;

    /* renamed from: androidx.fragment.app.n$a */
    /* loaded from: classes.dex */
    public static final class C0286a {

        /* renamed from: a */
        public int f1115a;

        /* renamed from: b */
        public Fragment f1116b;

        /* renamed from: c */
        public int f1117c;

        /* renamed from: d */
        public int f1118d;

        /* renamed from: e */
        public int f1119e;

        /* renamed from: f */
        public int f1120f;

        /* renamed from: g */
        public AbstractC0317d.EnumC0319b f1121g;

        /* renamed from: h */
        public AbstractC0317d.EnumC0319b f1122h;

        public C0286a() {
        }

        public C0286a(int i, Fragment fragment) {
            this.f1115a = i;
            this.f1116b = fragment;
            AbstractC0317d.EnumC0319b enumC0319b = AbstractC0317d.EnumC0319b.RESUMED;
            this.f1121g = enumC0319b;
            this.f1122h = enumC0319b;
        }
    }

    /* renamed from: b */
    public AbstractC0285n m26891b(Fragment fragment, String str) {
        mo26887f(0, fragment, str, 1);
        return this;
    }

    /* renamed from: d */
    public abstract int mo26889d();

    /* renamed from: e */
    public abstract int mo26888e();

    /* renamed from: g */
    public AbstractC0285n mo26886g(Fragment fragment) {
        m26890c(new C0286a(3, fragment));
        return this;
    }

    /* renamed from: c */
    public void m26890c(C0286a c0286a) {
        this.f1097a.add(c0286a);
        c0286a.f1117c = this.f1098b;
        c0286a.f1118d = this.f1099c;
        c0286a.f1119e = this.f1100d;
        c0286a.f1120f = this.f1101e;
    }

    /* renamed from: f */
    public void mo26887f(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str2 = fragment.f893I;
                if (str2 != null && !str.equals(str2)) {
                    throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f893I + " now " + str);
                }
                fragment.f893I = str;
            }
            if (i != 0) {
                if (i != -1) {
                    int i3 = fragment.f891G;
                    if (i3 != 0 && i3 != i) {
                        throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f891G + " now " + i);
                    }
                    fragment.f891G = i;
                    fragment.f892H = i;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
                }
            }
            m26890c(new C0286a(i2, fragment));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }
}

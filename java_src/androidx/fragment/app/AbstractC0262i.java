package androidx.fragment.app;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes.dex */
public abstract class AbstractC0262i {

    /* renamed from: b */
    public static final C0260g f1004b = new C0260g();

    /* renamed from: a */
    public C0260g f1005a = null;

    /* renamed from: androidx.fragment.app.i$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0263a {
        void onBackStackChanged();
    }

    /* renamed from: a */
    public abstract AbstractC0285n mo26979a();

    /* renamed from: b */
    public abstract void mo26976b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: c */
    public abstract Fragment mo26973c(String str);

    /* renamed from: e */
    public abstract List<Fragment> mo26967e();

    /* renamed from: f */
    public abstract void mo26964f(int i, int i2);

    /* renamed from: g */
    public abstract boolean mo26961g();

    /* renamed from: h */
    public void m27032h(C0260g c0260g) {
        this.f1005a = c0260g;
    }

    /* renamed from: d */
    public C0260g mo26970d() {
        if (this.f1005a == null) {
            this.f1005a = f1004b;
        }
        return this.f1005a;
    }
}

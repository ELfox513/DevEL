package p101k0;

import android.os.Bundle;
import androidx.lifecycle.InterfaceC0322g;
import androidx.lifecycle.InterfaceC0342u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p110l0.C4542b;
/* renamed from: k0.a */
/* loaded from: classes.dex */
public abstract class AbstractC4393a {

    /* renamed from: k0.a$a */
    /* loaded from: classes.dex */
    public interface InterfaceC4394a<D> {
        /* renamed from: a */
        C4542b<D> mo16711a(int i, Bundle bundle);

        /* renamed from: b */
        void mo16710b(C4542b<D> c4542b, D d);

        /* renamed from: c */
        void mo16709c(C4542b<D> c4542b);
    }

    /* renamed from: b */
    public static <T extends InterfaceC0322g & InterfaceC0342u> AbstractC4393a m16712b(T t) {
        return new C4395b(t, t.getViewModelStore());
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo16708a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: c */
    public abstract <D> C4542b<D> mo16707c(int i, Bundle bundle, InterfaceC4394a<D> interfaceC4394a);

    /* renamed from: d */
    public abstract void mo16706d();
}

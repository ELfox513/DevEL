package p158q3;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.dynamite.DynamiteModule;
import p097j5.AbstractC4346i;
import p131n3.C4743a;
import p167r3.C5544k;
import p185t3.C6744g;
import p185t3.C6756m;
import p194u3.AbstractC6897e;
import p194u3.AbstractC6900f;
import p203v3.C6992a;
import p203v3.InterfaceC7035o;
import p220x3.C7293p;
/* renamed from: q3.b */
/* loaded from: classes.dex */
public class C5411b extends AbstractC6897e<GoogleSignInOptions> {

    /* renamed from: k */
    public static final C5413b f20089k = new C5413b(null);

    /* renamed from: l */
    public static int f20090l = C5412a.f20091a;

    /* renamed from: q3.b$a */
    /* loaded from: classes.dex */
    public enum C5412a {

        /* renamed from: a */
        public static final int f20091a = 1;

        /* renamed from: b */
        public static final int f20092b = 2;

        /* renamed from: c */
        public static final int f20093c = 3;

        /* renamed from: d */
        public static final int f20094d = 4;

        /* renamed from: e */
        public static final /* synthetic */ int[] f20095e = {1, 2, 3, 4};

        /* renamed from: a */
        public static int[] m13322a() {
            return (int[]) f20095e.clone();
        }
    }

    /* renamed from: q3.b$b */
    /* loaded from: classes.dex */
    public static class C5413b implements C7293p.InterfaceC7294a<C5414c, GoogleSignInAccount> {
        public C5413b() {
        }

        public /* synthetic */ C5413b(C5419h c5419h) {
            this();
        }

        @Override // p220x3.C7293p.InterfaceC7294a
        /* renamed from: a */
        public final /* synthetic */ GoogleSignInAccount mo1902a(C5414c c5414c) {
            return c5414c.m13321a();
        }
    }

    public C5411b(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, C4743a.f18991g, googleSignInOptions, new C6992a());
    }

    /* renamed from: B */
    public final synchronized int m13326B() {
        if (f20090l == C5412a.f20091a) {
            Context m3052o = m3052o();
            C6744g m3508m = C6744g.m3508m();
            int mo3488h = m3508m.mo3488h(m3052o, C6756m.f35427a);
            if (mo3488h == 0) {
                f20090l = C5412a.f20094d;
            } else if (m3508m.mo3494b(m3052o, mo3488h, null) == null && DynamiteModule.m23007a(m3052o, "com.google.android.gms.auth.api.fallback") != 0) {
                f20090l = C5412a.f20093c;
            } else {
                f20090l = C5412a.f20092b;
            }
        }
        return f20090l;
    }

    public C5411b(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, C4743a.f18991g, googleSignInOptions, (InterfaceC7035o) new C6992a());
    }

    /* renamed from: A */
    public AbstractC4346i<GoogleSignInAccount> m13327A() {
        boolean z;
        AbstractC6900f m3061f = m3061f();
        Context m3052o = m3052o();
        GoogleSignInOptions m3053n = m3053n();
        if (m13326B() == C5412a.f20093c) {
            z = true;
        } else {
            z = false;
        }
        return C7293p.m1904a(C5544k.m13085c(m3061f, m3052o, m3053n, z), f20089k);
    }

    /* renamed from: x */
    public Intent m13325x() {
        Context m3052o = m3052o();
        int i = C5419h.f20099a[m13326B() - 1];
        if (i != 1) {
            if (i != 2) {
                return C5544k.m13080h(m3052o, m3053n());
            }
            return C5544k.m13086b(m3052o, m3053n());
        }
        return C5544k.m13082f(m3052o, m3053n());
    }

    /* renamed from: y */
    public AbstractC4346i<Void> m13324y() {
        boolean z;
        AbstractC6900f m3061f = m3061f();
        Context m3052o = m3052o();
        if (m13326B() == C5412a.f20093c) {
            z = true;
        } else {
            z = false;
        }
        return C7293p.m1903b(C5544k.m13081g(m3061f, m3052o, z));
    }

    /* renamed from: z */
    public AbstractC4346i<Void> m13323z() {
        boolean z;
        AbstractC6900f m3061f = m3061f();
        Context m3052o = m3052o();
        if (m13326B() == C5412a.f20093c) {
            z = true;
        } else {
            z = false;
        }
        return C7293p.m1903b(C5544k.m13084d(m3061f, m3052o, z));
    }
}

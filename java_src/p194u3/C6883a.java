package p194u3;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
import p185t3.C6738d;
import p194u3.AbstractC6900f;
import p194u3.C6883a.InterfaceC6887d;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
import p220x3.AbstractC7246c;
import p220x3.C7254d;
import p220x3.C7297q;
import p220x3.InterfaceC7273j;
/* renamed from: u3.a */
/* loaded from: classes.dex */
public final class C6883a<O extends InterfaceC6887d> {

    /* renamed from: a */
    public final AbstractC6884a<?, O> f35747a;

    /* renamed from: b */
    public final C6893g<?> f35748b;

    /* renamed from: c */
    public final String f35749c;

    /* renamed from: u3.a$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6884a<T extends InterfaceC6892f, O> extends AbstractC6891e<T, O> {
        @RecentlyNonNull
        @Deprecated
        /* renamed from: a */
        public T mo3067a(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull C7254d c7254d, @RecentlyNonNull O o, @RecentlyNonNull AbstractC6900f.InterfaceC6901a interfaceC6901a, @RecentlyNonNull AbstractC6900f.InterfaceC6902b interfaceC6902b) {
            return mo915b(context, looper, c7254d, o, interfaceC6901a, interfaceC6902b);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public T mo915b(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull C7254d c7254d, @RecentlyNonNull O o, @RecentlyNonNull InterfaceC7005e interfaceC7005e, @RecentlyNonNull InterfaceC7023k interfaceC7023k) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* renamed from: u3.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC6885b {
    }

    /* renamed from: u3.a$c */
    /* loaded from: classes.dex */
    public static class C6886c<C extends InterfaceC6885b> {
    }

    /* renamed from: u3.a$d */
    /* loaded from: classes.dex */
    public interface InterfaceC6887d {
        @RecentlyNonNull

        /* renamed from: o */
        public static final C6890c f35750o = new C6890c(null);

        /* renamed from: u3.a$d$a */
        /* loaded from: classes.dex */
        public interface InterfaceC6888a extends InterfaceC6887d {
            @RecentlyNonNull
            /* renamed from: u0 */
            Account m3066u0();
        }

        /* renamed from: u3.a$d$b */
        /* loaded from: classes.dex */
        public interface InterfaceC6889b extends InterfaceC6887d {
            @RecentlyNullable
            /* renamed from: q0 */
            GoogleSignInAccount mo3065q0();
        }

        /* renamed from: u3.a$d$c */
        /* loaded from: classes.dex */
        public static final class C6890c implements InterfaceC6887d {
            public C6890c() {
            }

            public /* synthetic */ C6890c(C6912o c6912o) {
            }
        }
    }

    /* renamed from: u3.a$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6891e<T extends InterfaceC6885b, O> {
    }

    /* renamed from: u3.a$f */
    /* loaded from: classes.dex */
    public interface InterfaceC6892f extends InterfaceC6885b {
        /* renamed from: a */
        Set<Scope> mo1945a();

        /* renamed from: b */
        void mo2656b(@RecentlyNonNull String str);

        /* renamed from: c */
        boolean mo2655c();

        @RecentlyNonNull
        /* renamed from: d */
        String mo2654d();

        /* renamed from: e */
        void mo1996e();

        /* renamed from: f */
        void mo1994f(@RecentlyNonNull AbstractC7246c.InterfaceC7251e interfaceC7251e);

        /* renamed from: h */
        void mo1991h(@RecentlyNonNull AbstractC7246c.InterfaceC7249c interfaceC7249c);

        /* renamed from: i */
        boolean mo2653i();

        boolean isConnected();

        /* renamed from: k */
        int mo2651k();

        @RecentlyNonNull
        /* renamed from: l */
        C6738d[] mo2650l();

        @RecentlyNullable
        /* renamed from: m */
        String mo2649m();

        /* renamed from: n */
        boolean mo1987n();

        /* renamed from: o */
        void mo2648o(InterfaceC7273j interfaceC7273j, Set<Scope> set);
    }

    /* renamed from: u3.a$g */
    /* loaded from: classes.dex */
    public static final class C6893g<C extends InterfaceC6892f> extends C6886c<C> {
    }

    @RecentlyNonNull
    /* renamed from: a */
    public final AbstractC6884a<?, O> m3070a() {
        return this.f35747a;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final C6886c<?> m3069b() {
        return this.f35748b;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final String m3068c() {
        return this.f35749c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends InterfaceC6892f> C6883a(@RecentlyNonNull String str, @RecentlyNonNull AbstractC6884a<C, O> abstractC6884a, @RecentlyNonNull C6893g<C> c6893g) {
        C7297q.m1882k(abstractC6884a, "Cannot construct an Api with a null ClientBuilder");
        C7297q.m1882k(c6893g, "Cannot construct an Api with a null ClientKey");
        this.f35749c = str;
        this.f35747a = abstractC6884a;
        this.f35748b = c6893g;
    }
}

package p220x3;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;
import p185t3.C6744g;
import p194u3.AbstractC6900f;
import p194u3.C6883a;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
/* renamed from: x3.g */
/* loaded from: classes.dex */
public abstract class AbstractC7264g<T extends IInterface> extends AbstractC7246c<T> implements C6883a.InterfaceC6892f {

    /* renamed from: Q */
    public final C7254d f36724Q;

    /* renamed from: R */
    public final Set<Scope> f36725R;

    /* renamed from: S */
    public final Account f36726S;

    @Deprecated
    public AbstractC7264g(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull C7254d c7254d, @RecentlyNonNull AbstractC6900f.InterfaceC6901a interfaceC6901a, @RecentlyNonNull AbstractC6900f.InterfaceC6902b interfaceC6902b) {
        this(context, looper, i, c7254d, (InterfaceC7005e) interfaceC6901a, (InterfaceC7023k) interfaceC6902b);
    }

    @Override // p220x3.AbstractC7246c
    @RecentlyNonNull
    /* renamed from: A */
    public final Set<Scope> mo1946A() {
        return this.f36725R;
    }

    /* renamed from: a */
    public Set<Scope> mo1945a() {
        return mo1987n() ? this.f36725R : Collections.emptySet();
    }

    @RecentlyNonNull
    /* renamed from: h0 */
    public final C7254d m1944h0() {
        return this.f36724Q;
    }

    /* renamed from: i0 */
    public Set<Scope> m1943i0(@RecentlyNonNull Set<Scope> set) {
        return set;
    }

    @Override // p220x3.AbstractC7246c
    @RecentlyNullable
    /* renamed from: t */
    public final Account mo1941t() {
        return this.f36726S;
    }

    public AbstractC7264g(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull C7254d c7254d, @RecentlyNonNull InterfaceC7005e interfaceC7005e, @RecentlyNonNull InterfaceC7023k interfaceC7023k) {
        this(context, looper, AbstractC7267h.m1938b(context), C6744g.m3508m(), i, c7254d, (InterfaceC7005e) C7297q.m1883j(interfaceC7005e), (InterfaceC7023k) C7297q.m1883j(interfaceC7023k));
    }

    /* renamed from: j0 */
    public final Set<Scope> m1942j0(Set<Scope> set) {
        Set<Scope> m1943i0 = m1943i0(set);
        for (Scope scope : m1943i0) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return m1943i0;
    }

    public AbstractC7264g(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull AbstractC7267h abstractC7267h, @RecentlyNonNull C6744g c6744g, int i, @RecentlyNonNull C7254d c7254d, InterfaceC7005e interfaceC7005e, InterfaceC7023k interfaceC7023k) {
        super(context, looper, abstractC7267h, c6744g, i, interfaceC7005e == null ? null : new C7262f0(interfaceC7005e), interfaceC7023k == null ? null : new C7265g0(interfaceC7023k), c7254d.m1967j());
        this.f36724Q = c7254d;
        this.f36726S = c7254d.m1976a();
        this.f36725R = m1942j0(c7254d.m1973d());
    }
}

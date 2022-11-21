package p194u3;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.internal.AbstractC1411a;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p194u3.C6883a;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
import p203v3.InterfaceC7032n;
@Deprecated
/* renamed from: u3.f */
/* loaded from: classes.dex */
public abstract class AbstractC6900f {

    /* renamed from: a */
    public static final Set<AbstractC6900f> f35768a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* renamed from: u3.f$a */
    /* loaded from: classes.dex */
    public interface InterfaceC6901a extends InterfaceC7005e {
    }

    @Deprecated
    /* renamed from: u3.f$b */
    /* loaded from: classes.dex */
    public interface InterfaceC6902b extends InterfaceC7023k {
    }

    @RecentlyNonNull
    /* renamed from: a */
    public <A extends C6883a.InterfaceC6885b, R extends InterfaceC6909l, T extends AbstractC1411a<R, A>> T mo2672a(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    /* renamed from: b */
    public <A extends C6883a.InterfaceC6885b, T extends AbstractC1411a<? extends InterfaceC6909l, A>> T mo2671b(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    /* renamed from: d */
    public Looper mo2670d() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public boolean m3039e(@RecentlyNonNull InterfaceC7032n interfaceC7032n) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public void m3038f() {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static Set<AbstractC6900f> m3040c() {
        Set<AbstractC6900f> set = f35768a;
        synchronized (set) {
        }
        return set;
    }
}

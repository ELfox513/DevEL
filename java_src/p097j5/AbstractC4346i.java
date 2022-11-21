package p097j5;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.concurrent.Executor;
/* renamed from: j5.i */
/* loaded from: classes2.dex */
public abstract class AbstractC4346i<TResult> {
    /* renamed from: a */
    public AbstractC4346i<TResult> mo16801a(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4334c interfaceC4334c) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: b */
    public AbstractC4346i<TResult> mo16800b(@RecentlyNonNull Activity activity, @RecentlyNonNull InterfaceC4336d<TResult> interfaceC4336d) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: c */
    public AbstractC4346i<TResult> mo16799c(@RecentlyNonNull InterfaceC4336d<TResult> interfaceC4336d) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: d */
    public AbstractC4346i<TResult> mo16798d(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4336d<TResult> interfaceC4336d) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: e */
    public abstract AbstractC4346i<TResult> mo16797e(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4338e interfaceC4338e);

    /* renamed from: f */
    public abstract AbstractC4346i<TResult> mo16796f(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4340f<? super TResult> interfaceC4340f);

    /* renamed from: g */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16795g(@RecentlyNonNull InterfaceC4330a<TResult, TContinuationResult> interfaceC4330a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: h */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16794h(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4330a<TResult, TContinuationResult> interfaceC4330a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: i */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16793i(@RecentlyNonNull InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> interfaceC4330a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: j */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16792j(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> interfaceC4330a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @RecentlyNullable
    /* renamed from: k */
    public abstract Exception mo16791k();

    @RecentlyNonNull
    /* renamed from: l */
    public abstract TResult mo16790l();

    @RecentlyNonNull
    /* renamed from: m */
    public abstract <X extends Throwable> TResult mo16789m(@RecentlyNonNull Class<X> cls);

    /* renamed from: n */
    public abstract boolean mo16788n();

    /* renamed from: o */
    public abstract boolean mo16787o();

    /* renamed from: p */
    public abstract boolean mo16786p();

    /* renamed from: q */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16785q(@RecentlyNonNull InterfaceC4344h<TResult, TContinuationResult> interfaceC4344h) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: r */
    public <TContinuationResult> AbstractC4346i<TContinuationResult> mo16784r(@RecentlyNonNull Executor executor, @RecentlyNonNull InterfaceC4344h<TResult, TContinuationResult> interfaceC4344h) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}

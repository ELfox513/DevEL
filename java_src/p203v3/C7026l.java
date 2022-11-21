package p203v3;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.concurrent.TimeUnit;
import p194u3.AbstractC6903g;
import p194u3.AbstractC6904h;
import p194u3.InterfaceC6909l;
/* renamed from: v3.l */
/* loaded from: classes.dex */
public final class C7026l<R extends InterfaceC6909l> extends AbstractC6903g<R> {

    /* renamed from: a */
    public final BasePendingResult<R> f36000a;

    public C7026l(@RecentlyNonNull AbstractC6904h<R> abstractC6904h) {
        this.f36000a = (BasePendingResult) abstractC6904h;
    }

    @Override // p194u3.AbstractC6904h
    /* renamed from: c */
    public final void mo2641c(@RecentlyNonNull AbstractC6904h.InterfaceC6905a interfaceC6905a) {
        this.f36000a.mo2641c(interfaceC6905a);
    }

    @Override // p194u3.AbstractC6904h
    @RecentlyNonNull
    /* renamed from: d */
    public final R mo2640d(long j, @RecentlyNonNull TimeUnit timeUnit) {
        return this.f36000a.mo2640d(j, timeUnit);
    }
}

package p194u3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import p194u3.InterfaceC6909l;
/* renamed from: u3.q */
/* loaded from: classes.dex */
public final class C6914q<R extends InterfaceC6909l> extends BasePendingResult<R> {

    /* renamed from: p */
    public final R f35770p;

    public C6914q(AbstractC6900f abstractC6900f, R r) {
        super(abstractC6900f);
        this.f35770p = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: e */
    public final R mo2634e(Status status) {
        return this.f35770p;
    }
}

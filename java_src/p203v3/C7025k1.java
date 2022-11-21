package p203v3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Map;
import p194u3.AbstractC6904h;
/* renamed from: v3.k1 */
/* loaded from: classes.dex */
public final class C7025k1 implements AbstractC6904h.InterfaceC6905a {

    /* renamed from: a */
    public final /* synthetic */ BasePendingResult f35998a;

    /* renamed from: b */
    public final /* synthetic */ C7046s f35999b;

    public C7025k1(C7046s c7046s, BasePendingResult basePendingResult) {
        this.f35999b = c7046s;
        this.f35998a = basePendingResult;
    }

    @Override // p194u3.AbstractC6904h.InterfaceC6905a
    /* renamed from: a */
    public final void mo1927a(Status status) {
        Map map;
        map = this.f35999b.f36034a;
        map.remove(this.f35998a);
    }
}

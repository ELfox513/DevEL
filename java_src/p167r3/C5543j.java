package p167r3;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import p158q3.C5414c;
import p194u3.AbstractC6900f;
import p194u3.InterfaceC6909l;
/* renamed from: r3.j */
/* loaded from: classes.dex */
public final class C5543j extends AbstractC5549p<C5414c> {

    /* renamed from: r */
    public final /* synthetic */ Context f20310r;

    /* renamed from: s */
    public final /* synthetic */ GoogleSignInOptions f20311s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5543j(AbstractC6900f abstractC6900f, Context context, GoogleSignInOptions googleSignInOptions) {
        super(abstractC6900f);
        this.f20310r = context;
        this.f20311s = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: e */
    public final /* synthetic */ InterfaceC6909l mo2634e(Status status) {
        return new C5414c(null, status);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1411a
    /* renamed from: n */
    public final /* synthetic */ void mo13079n(C5541h c5541h) {
        ((InterfaceC5555v) c5541h.m2025B()).mo13064Q3(new BinderC5546m(this), this.f20311s);
    }
}

package p186t4;

import com.google.android.gms.common.api.Status;
import p097j5.C4348j;
import p122m3.C4629c;
import p122m3.C4632f;
import p203v3.C7044r;
/* renamed from: t4.o */
/* loaded from: classes2.dex */
public final class BinderC6785o extends AbstractBinderC6775e {

    /* renamed from: a */
    public final /* synthetic */ C4348j f35462a;

    public BinderC6785o(C6786p c6786p, C4348j c4348j) {
        this.f35462a = c4348j;
    }

    @Override // p186t4.InterfaceC6776f
    /* renamed from: G6 */
    public final void mo3438G6(Status status, C4632f c4632f) {
        C4629c c4629c;
        if (c4632f != null) {
            c4629c = new C4629c(c4632f.m15907Y0(), c4632f.m15908X0());
        } else {
            c4629c = null;
        }
        C7044r.m2617a(status, c4629c, this.f35462a);
    }
}

package p186t4;

import android.content.Context;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
import p122m3.C4629c;
import p122m3.InterfaceC4628b;
import p185t3.C6746h;
import p194u3.C6894b;
/* renamed from: t4.r */
/* loaded from: classes2.dex */
public final class C6788r implements InterfaceC4628b {

    /* renamed from: a */
    public final InterfaceC4628b f35469a;

    /* renamed from: b */
    public final InterfaceC4628b f35470b;

    @Override // p122m3.InterfaceC4628b
    /* renamed from: a */
    public final AbstractC4346i<C4629c> mo3437a() {
        return this.f35469a.mo3437a().mo16793i(new InterfaceC4330a() { // from class: t4.q
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i) {
                return C6788r.m3436b(C6788r.this, abstractC4346i);
            }
        });
    }

    public C6788r(Context context) {
        this.f35469a = new C6786p(context, C6746h.m3490f());
        this.f35470b = C6782l.m3443d(context);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC4346i m3436b(C6788r c6788r, AbstractC4346i abstractC4346i) {
        if (!abstractC4346i.mo16786p() && !abstractC4346i.mo16788n()) {
            Exception mo16791k = abstractC4346i.mo16791k();
            if (mo16791k instanceof C6894b) {
                int m3063b = ((C6894b) mo16791k).m3063b();
                if (m3063b != 43001 && m3063b != 43002 && m3063b != 43003 && m3063b != 17) {
                    if (m3063b == 43000) {
                        return C4352l.m16768c(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
                    }
                    if (m3063b == 15) {
                        return C4352l.m16768c(new Exception("The operation to get app set ID timed out. Please try again later."));
                    }
                    return abstractC4346i;
                }
                return c6788r.f35470b.mo3437a();
            }
            return abstractC4346i;
        }
        return abstractC4346i;
    }
}

package p168r4;

import android.content.Context;
/* renamed from: r4.uw3 */
/* loaded from: classes2.dex */
public final class uw3 implements InterfaceC5974l7 {

    /* renamed from: a */
    public final Context f32464a;

    /* renamed from: b */
    public final InterfaceC5974l7 f32465b;

    public uw3(Context context) {
        C6388wd c6388wd = new C6388wd();
        this.f32464a = context.getApplicationContext();
        this.f32465b = c6388wd;
    }

    @Override // p168r4.InterfaceC5974l7
    public final /* bridge */ /* synthetic */ InterfaceC6087o8 zza() {
        return new vw3(this.f32464a, ((C6388wd) this.f32465b).zza());
    }
}

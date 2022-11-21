package p016b3;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import p136o.C5057c;
import p168r4.js3;
import p168r4.o00;
import p168r4.q00;
/* renamed from: b3.d2 */
/* loaded from: classes.dex */
public final class C0469d2 implements o00 {

    /* renamed from: a */
    public final /* synthetic */ q00 f1597a;

    /* renamed from: b */
    public final /* synthetic */ Context f1598b;

    /* renamed from: c */
    public final /* synthetic */ Uri f1599c;

    public C0469d2(C0497k2 c0497k2, q00 q00Var, Context context, Uri uri) {
        this.f1597a = q00Var;
        this.f1598b = context;
        this.f1599c = uri;
    }

    @Override // p168r4.o00
    public final void zza() {
        C5057c m14739a = new C5057c.C5058a(this.f1597a.m8084c()).m14739a();
        m14739a.f19270a.setPackage(js3.m10169a(this.f1598b));
        m14739a.m14740a(this.f1598b, this.f1599c);
        this.f1597a.m8085b((Activity) this.f1598b);
    }
}

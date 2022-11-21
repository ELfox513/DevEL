package p168r4;

import android.content.Context;
import java.io.File;
/* renamed from: r4.x94 */
/* loaded from: classes2.dex */
public final class x94 implements l94 {

    /* renamed from: a */
    public File f33530a = null;

    /* renamed from: b */
    public final /* synthetic */ Context f33531b;

    public x94(Context context) {
        this.f33531b = context;
    }

    @Override // p168r4.l94
    public final File zza() {
        if (this.f33530a == null) {
            this.f33530a = new File(this.f33531b.getCacheDir(), "volley");
        }
        return this.f33530a;
    }
}

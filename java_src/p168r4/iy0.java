package p168r4;

import android.content.Context;
import android.os.Bundle;
import java.util.Map;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.iy0 */
/* loaded from: classes2.dex */
public final class iy0 implements yx0 {

    /* renamed from: a */
    public final Context f25635a;

    /* renamed from: b */
    public final InterfaceC0549y1 f25636b = C7601t.m935h().m9051p();

    public iy0(Context context) {
        this.f25635a = context;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31082o0)).booleanValue()) {
                this.f25636b.mo26218S0(parseBoolean);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue() && parseBoolean) {
                    this.f25635a.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31042j0)).booleanValue()) {
            C7601t.m942a().m10619j(bundle);
        }
    }
}

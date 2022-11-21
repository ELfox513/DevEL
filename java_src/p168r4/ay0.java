package p168r4;

import java.util.Map;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.ay0 */
/* loaded from: classes2.dex */
public final class ay0 implements yx0 {

    /* renamed from: a */
    public final InterfaceC0549y1 f20766a;

    public ay0(InterfaceC0549y1 interfaceC0549y1) {
        this.f20766a = interfaceC0549y1;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        this.f20766a.mo26195o0(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}

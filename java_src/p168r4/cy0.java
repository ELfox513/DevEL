package p168r4;

import java.util.Map;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.cy0 */
/* loaded from: classes2.dex */
public final class cy0 implements yx0 {

    /* renamed from: a */
    public final InterfaceC0549y1 f21941a;

    public cy0(InterfaceC0549y1 interfaceC0549y1) {
        this.f21941a = interfaceC0549y1;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        this.f21941a.mo26196n0(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}

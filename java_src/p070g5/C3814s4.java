package p070g5;

import java.util.Map;
import p018b5.InterfaceC0568ad;
/* renamed from: g5.s4 */
/* loaded from: classes2.dex */
public final class C3814s4 implements InterfaceC0568ad {

    /* renamed from: a */
    public final /* synthetic */ String f16928a;

    /* renamed from: b */
    public final /* synthetic */ C3826t4 f16929b;

    public C3814s4(C3826t4 c3826t4, String str) {
        this.f16929b = c3826t4;
        this.f16928a = str;
    }

    @Override // p018b5.InterfaceC0568ad
    /* renamed from: q */
    public final String mo17985q(String str) {
        Map map;
        map = this.f16929b.f16940d;
        Map map2 = (Map) map.get(this.f16928a);
        if (map2 != null && map2.containsKey(str)) {
            return (String) map2.get(str);
        }
        return null;
    }
}

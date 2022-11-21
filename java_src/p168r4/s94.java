package p168r4;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: r4.s94 */
/* loaded from: classes2.dex */
public final class s94 extends e94 {
    public s94(r94 r94Var, SSLSocketFactory sSLSocketFactory) {
    }

    /* renamed from: a */
    public static List<h84> m7187a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new h84(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }
}

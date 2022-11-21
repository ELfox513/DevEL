package p077h3;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: h3.b */
/* loaded from: classes.dex */
public final class C3987b extends LinkedHashMap<String, Pair<Long, String>> {

    /* renamed from: a */
    public final /* synthetic */ C4008m f17420a;

    public C3987b(C4008m c4008m) {
        this.f17420a = c4008m;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<String, Pair<Long, String>> entry) {
        int i;
        int size = size();
        i = this.f17420a.f17486a;
        return size > i;
    }
}

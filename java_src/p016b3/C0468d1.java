package p016b3;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: b3.d1 */
/* loaded from: classes.dex */
public final class C0468d1 {

    /* renamed from: a */
    public final Map<Integer, Bitmap> f1595a = new ConcurrentHashMap();

    /* renamed from: b */
    public final AtomicInteger f1596b = new AtomicInteger(0);

    /* renamed from: a */
    public final Bitmap m26393a(Integer num) {
        return this.f1595a.get(num);
    }
}

package p168r4;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: r4.ws3 */
/* loaded from: classes2.dex */
public final class ws3 {

    /* renamed from: d */
    public static final AtomicLong f33313d = new AtomicLong();

    /* renamed from: a */
    public final C6350vc f33314a;

    /* renamed from: b */
    public final Uri f33315b;

    /* renamed from: c */
    public final Map<String, List<String>> f33316c;

    public ws3(long j, C6350vc c6350vc, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.f33314a = c6350vc;
        this.f33315b = uri;
        this.f33316c = map;
    }

    /* renamed from: a */
    public static long m5599a() {
        return f33313d.getAndIncrement();
    }
}

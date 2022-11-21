package okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SegmentPool {

    /* renamed from: a */
    public static Segment f19768a;

    /* renamed from: b */
    public static long f19769b;

    private SegmentPool() {
    }

    /* renamed from: a */
    public static void m13729a(Segment segment) {
        if (segment.f19766f == null && segment.f19767g == null) {
            if (segment.f19764d) {
                return;
            }
            synchronized (SegmentPool.class) {
                long j = f19769b;
                if (j + 8192 > 65536) {
                    return;
                }
                f19769b = j + 8192;
                segment.f19766f = f19768a;
                segment.f19763c = 0;
                segment.f19762b = 0;
                f19768a = segment;
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static Segment m13728b() {
        synchronized (SegmentPool.class) {
            Segment segment = f19768a;
            if (segment != null) {
                f19768a = segment.f19766f;
                segment.f19766f = null;
                f19769b -= 8192;
                return segment;
            }
            return new Segment();
        }
    }
}

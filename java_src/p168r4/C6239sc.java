package p168r4;

import java.util.UUID;
/* renamed from: r4.sc */
/* loaded from: classes2.dex */
public final class C6239sc {

    /* renamed from: a */
    public static final int f31302a;

    /* renamed from: b */
    public static final UUID f31303b;

    /* renamed from: c */
    public static final UUID f31304c;

    /* renamed from: d */
    public static final UUID f31305d;

    /* renamed from: e */
    public static final UUID f31306e;

    /* renamed from: a */
    public static long m7180a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    /* renamed from: b */
    public static long m7179b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }

    static {
        int i;
        if (C5988ll.f27242a < 23) {
            i = 1020;
        } else {
            i = 6396;
        }
        f31302a = i;
        f31303b = new UUID(0L, 0L);
        f31304c = new UUID(1186680826959645954L, -5988876978535335093L);
        f31305d = new UUID(-1301668207276963122L, -6645017420763422227L);
        f31306e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }
}

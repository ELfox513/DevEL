package p168r4;

import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: r4.l84 */
/* loaded from: classes2.dex */
public final class l84 {

    /* renamed from: a */
    public final int f27128a;

    /* renamed from: b */
    public final byte[] f27129b;

    /* renamed from: c */
    public final Map<String, String> f27130c;

    /* renamed from: d */
    public final List<h84> f27131d;

    /* renamed from: e */
    public final boolean f27132e;

    public l84(int i, byte[] bArr, Map<String, String> map, List<h84> list, boolean z, long j) {
        this.f27128a = i;
        this.f27129b = bArr;
        this.f27130c = map;
        this.f27131d = list == null ? null : Collections.unmodifiableList(list);
        this.f27132e = z;
    }

    @Deprecated
    public l84(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, m9779a(map), z, j);
    }

    /* renamed from: a */
    public static List<h84> m9779a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new h84(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l84(int r9, byte[] r10, boolean r11, long r12, java.util.List<p168r4.h84> r14) {
        /*
            r8 = this;
            if (r14 != 0) goto L5
            r0 = 0
        L3:
            r3 = r0
            goto L33
        L5:
            boolean r0 = r14.isEmpty()
            if (r0 == 0) goto L10
            java.util.Map r0 = java.util.Collections.emptyMap()
            goto L3
        L10:
            java.util.TreeMap r0 = new java.util.TreeMap
            java.util.Comparator r1 = java.lang.String.CASE_INSENSITIVE_ORDER
            r0.<init>(r1)
            java.util.Iterator r1 = r14.iterator()
        L1b:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L3
            java.lang.Object r2 = r1.next()
            r4.h84 r2 = (p168r4.h84) r2
            java.lang.String r3 = r2.m10960a()
            java.lang.String r2 = r2.m10959b()
            r0.put(r3, r2)
            goto L1b
        L33:
            r0 = r8
            r1 = r9
            r2 = r10
            r4 = r14
            r5 = r11
            r6 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.l84.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public l84(byte[] bArr, Map<String, String> map) {
        this(HttpStatus.SC_OK, bArr, map, m9779a(map), false, 0L);
    }
}

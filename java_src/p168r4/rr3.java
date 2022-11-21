package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* renamed from: r4.rr3 */
/* loaded from: classes2.dex */
public final class rr3 {
    /* renamed from: b */
    public static <T> HashSet<T> m7347b(int i) {
        return new HashSet<>(m7345d(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m7346c(int i) {
        return new LinkedHashMap<>(m7345d(i));
    }

    /* renamed from: d */
    public static int m7345d(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: a */
    public static <T> List<T> m7348a(int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        return new ArrayList(i);
    }
}

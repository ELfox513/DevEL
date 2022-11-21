package p026c4;

import androidx.annotation.RecentlyNonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p145p.C5270a;
import p145p.C5272b;
/* renamed from: c4.g */
/* loaded from: classes.dex */
public final class C1046g {
    @RecentlyNonNull
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m24773a() {
        return Collections.emptyList();
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: b */
    public static <T> List<T> m24772b(@RecentlyNonNull T t) {
        return Collections.singletonList(t);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: c */
    public static <T> List<T> m24771c(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                return Collections.unmodifiableList(Arrays.asList(tArr));
            }
            return m24772b(tArr[0]);
        }
        return m24773a();
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static <K, V> Map<K, V> m24770d(@RecentlyNonNull K k, @RecentlyNonNull V v, @RecentlyNonNull K k2, @RecentlyNonNull V v2, @RecentlyNonNull K k3, @RecentlyNonNull V v3) {
        Map m24765i = m24765i(3, false);
        m24765i.put(k, v);
        m24765i.put(k2, v2);
        m24765i.put(k3, v3);
        return Collections.unmodifiableMap(m24765i);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static <K, V> Map<K, V> m24769e(@RecentlyNonNull K[] kArr, @RecentlyNonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length == length2) {
            if (length != 0) {
                if (length != 1) {
                    Map m24765i = m24765i(length, false);
                    for (int i = 0; i < kArr.length; i++) {
                        m24765i.put(kArr[i], vArr[i]);
                    }
                    return Collections.unmodifiableMap(m24765i);
                }
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            return Collections.emptyMap();
        }
        StringBuilder sb = new StringBuilder(66);
        sb.append("Key and values array lengths not equal: ");
        sb.append(length);
        sb.append(" != ");
        sb.append(length2);
        throw new IllegalArgumentException(sb.toString());
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: f */
    public static <T> Set<T> m24768f(@RecentlyNonNull T t, @RecentlyNonNull T t2, @RecentlyNonNull T t3) {
        Set m24766h = m24766h(3, false);
        m24766h.add(t);
        m24766h.add(t2);
        m24766h.add(t3);
        return Collections.unmodifiableSet(m24766h);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: g */
    public static <T> Set<T> m24767g(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            Set m24766h = m24766h(length, false);
                            Collections.addAll(m24766h, tArr);
                            return Collections.unmodifiableSet(m24766h);
                        }
                        T t = tArr[0];
                        T t2 = tArr[1];
                        T t3 = tArr[2];
                        T t4 = tArr[3];
                        Set m24766h2 = m24766h(4, false);
                        m24766h2.add(t);
                        m24766h2.add(t2);
                        m24766h2.add(t3);
                        m24766h2.add(t4);
                        return Collections.unmodifiableSet(m24766h2);
                    }
                    return m24768f(tArr[0], tArr[1], tArr[2]);
                }
                T t5 = tArr[0];
                T t6 = tArr[1];
                Set m24766h3 = m24766h(2, false);
                m24766h3.add(t5);
                m24766h3.add(t6);
                return Collections.unmodifiableSet(m24766h3);
            }
            return Collections.singleton(tArr[0]);
        }
        return Collections.emptySet();
    }

    /* renamed from: h */
    public static <T> Set<T> m24766h(int i, boolean z) {
        float f;
        int i2;
        if (true != z) {
            f = 1.0f;
        } else {
            f = 0.75f;
        }
        if (true != z) {
            i2 = 256;
        } else {
            i2 = 128;
        }
        if (i <= i2) {
            return new C5272b(i);
        }
        return new HashSet(i, f);
    }

    /* renamed from: i */
    public static <K, V> Map<K, V> m24765i(int i, boolean z) {
        if (i <= 256) {
            return new C5270a(i);
        }
        return new HashMap(i, 1.0f);
    }
}

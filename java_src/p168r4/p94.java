package p168r4;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.p94 */
/* loaded from: classes2.dex */
public final class p94 {

    /* renamed from: a */
    public final int f29401a;

    /* renamed from: b */
    public final List<h84> f29402b;

    /* renamed from: c */
    public final int f29403c;

    /* renamed from: d */
    public final InputStream f29404d;

    public p94(int i, List<h84> list, int i2, InputStream inputStream) {
        this.f29401a = i;
        this.f29402b = list;
        this.f29403c = i2;
        this.f29404d = inputStream;
    }

    /* renamed from: a */
    public final int m8435a() {
        return this.f29401a;
    }

    /* renamed from: b */
    public final List<h84> m8434b() {
        return Collections.unmodifiableList(this.f29402b);
    }

    /* renamed from: c */
    public final int m8433c() {
        return this.f29403c;
    }

    /* renamed from: d */
    public final InputStream m8432d() {
        InputStream inputStream = this.f29404d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }
}

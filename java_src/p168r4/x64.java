package p168r4;

import java.util.Collections;
import java.util.List;
/* renamed from: r4.x64 */
/* loaded from: classes2.dex */
public final class x64 {

    /* renamed from: a */
    public final int f33493a;

    /* renamed from: b */
    public final String f33494b;

    /* renamed from: c */
    public final List<w64> f33495c;

    /* renamed from: d */
    public final byte[] f33496d;

    public x64(int i, String str, List<w64> list, byte[] bArr) {
        List<w64> unmodifiableList;
        this.f33493a = i;
        this.f33494b = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.f33495c = unmodifiableList;
        this.f33496d = bArr;
    }
}

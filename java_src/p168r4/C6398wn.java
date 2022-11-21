package p168r4;
/* renamed from: r4.wn */
/* loaded from: classes2.dex */
public final class C6398wn {

    /* renamed from: a */
    public final long f33261a;

    /* renamed from: b */
    public final String f33262b;

    /* renamed from: c */
    public final int f33263c;

    public C6398wn(long j, String str, int i) {
        this.f33261a = j;
        this.f33262b = str;
        this.f33263c = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6398wn)) {
            C6398wn c6398wn = (C6398wn) obj;
            if (c6398wn.f33261a == this.f33261a && c6398wn.f33263c == this.f33263c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f33261a;
    }
}

package p076h2;
/* renamed from: h2.h */
/* loaded from: classes.dex */
public final class C3967h extends AbstractC3979n {

    /* renamed from: a */
    public final long f17350a;

    @Override // p076h2.AbstractC3979n
    /* renamed from: c */
    public long mo17611c() {
        return this.f17350a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AbstractC3979n) && this.f17350a == ((AbstractC3979n) obj).mo17611c();
    }

    public int hashCode() {
        long j = this.f17350a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f17350a + "}";
    }

    public C3967h(long j) {
        this.f17350a = j;
    }
}

package p094j2;

import p094j2.AbstractC4317g;
/* renamed from: j2.b */
/* loaded from: classes.dex */
public final class C4311b extends AbstractC4317g {

    /* renamed from: a */
    public final AbstractC4317g.EnumC4318a f18180a;

    /* renamed from: b */
    public final long f18181b;

    @Override // p094j2.AbstractC4317g
    /* renamed from: b */
    public long mo16834b() {
        return this.f18181b;
    }

    @Override // p094j2.AbstractC4317g
    /* renamed from: c */
    public AbstractC4317g.EnumC4318a mo16833c() {
        return this.f18180a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4317g)) {
            return false;
        }
        AbstractC4317g abstractC4317g = (AbstractC4317g) obj;
        return this.f18180a.equals(abstractC4317g.mo16833c()) && this.f18181b == abstractC4317g.mo16834b();
    }

    public String toString() {
        return "BackendResponse{status=" + this.f18180a + ", nextRequestWaitMillis=" + this.f18181b + "}";
    }

    public int hashCode() {
        long j = this.f18181b;
        return ((this.f18180a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public C4311b(AbstractC4317g.EnumC4318a enumC4318a, long j) {
        if (enumC4318a != null) {
            this.f18180a = enumC4318a;
            this.f18181b = j;
            return;
        }
        throw new NullPointerException("Null status");
    }
}

package p058f2;
/* renamed from: f2.a */
/* loaded from: classes.dex */
public final class C3502a<T> extends AbstractC3504c<T> {

    /* renamed from: a */
    public final Integer f15969a;

    /* renamed from: b */
    public final T f15970b;

    /* renamed from: c */
    public final EnumC3505d f15971c;

    @Override // p058f2.AbstractC3504c
    /* renamed from: a */
    public Integer mo18747a() {
        return this.f15969a;
    }

    @Override // p058f2.AbstractC3504c
    /* renamed from: b */
    public T mo18746b() {
        return this.f15970b;
    }

    @Override // p058f2.AbstractC3504c
    /* renamed from: c */
    public EnumC3505d mo18745c() {
        return this.f15971c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3504c)) {
            return false;
        }
        AbstractC3504c abstractC3504c = (AbstractC3504c) obj;
        Integer num = this.f15969a;
        if (num != null ? num.equals(abstractC3504c.mo18747a()) : abstractC3504c.mo18747a() == null) {
            if (this.f15970b.equals(abstractC3504c.mo18746b()) && this.f15971c.equals(abstractC3504c.mo18745c())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "Event{code=" + this.f15969a + ", payload=" + this.f15970b + ", priority=" + this.f15971c + "}";
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f15969a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ this.f15970b.hashCode()) * 1000003) ^ this.f15971c.hashCode();
    }

    public C3502a(Integer num, T t, EnumC3505d enumC3505d) {
        this.f15969a = num;
        if (t != null) {
            this.f15970b = t;
            if (enumC3505d != null) {
                this.f15971c = enumC3505d;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }
}

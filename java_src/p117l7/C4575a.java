package p117l7;
/* renamed from: l7.a */
/* loaded from: classes2.dex */
public final class C4575a extends AbstractC4580f {

    /* renamed from: a */
    public final String f18614a;

    /* renamed from: b */
    public final String f18615b;

    @Override // p117l7.AbstractC4580f
    /* renamed from: b */
    public String mo15979b() {
        return this.f18614a;
    }

    @Override // p117l7.AbstractC4580f
    /* renamed from: c */
    public String mo15978c() {
        return this.f18615b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4580f)) {
            return false;
        }
        AbstractC4580f abstractC4580f = (AbstractC4580f) obj;
        return this.f18614a.equals(abstractC4580f.mo15979b()) && this.f18615b.equals(abstractC4580f.mo15978c());
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f18614a + ", version=" + this.f18615b + "}";
    }

    public int hashCode() {
        return ((this.f18614a.hashCode() ^ 1000003) * 1000003) ^ this.f18615b.hashCode();
    }

    public C4575a(String str, String str2) {
        if (str != null) {
            this.f18614a = str;
            if (str2 != null) {
                this.f18615b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }
}

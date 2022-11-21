package p222x5;

import p238z5.AbstractC7762a0;
/* renamed from: x5.b */
/* loaded from: classes2.dex */
public final class C7331b extends AbstractC7375o {

    /* renamed from: a */
    public final AbstractC7762a0 f36822a;

    /* renamed from: b */
    public final String f36823b;

    @Override // p222x5.AbstractC7375o
    /* renamed from: b */
    public AbstractC7762a0 mo1640b() {
        return this.f36822a;
    }

    @Override // p222x5.AbstractC7375o
    /* renamed from: c */
    public String mo1639c() {
        return this.f36823b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7375o)) {
            return false;
        }
        AbstractC7375o abstractC7375o = (AbstractC7375o) obj;
        return this.f36822a.equals(abstractC7375o.mo1640b()) && this.f36823b.equals(abstractC7375o.mo1639c());
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f36822a + ", sessionId=" + this.f36823b + "}";
    }

    public int hashCode() {
        return ((this.f36822a.hashCode() ^ 1000003) * 1000003) ^ this.f36823b.hashCode();
    }

    public C7331b(AbstractC7762a0 abstractC7762a0, String str) {
        if (abstractC7762a0 != null) {
            this.f36822a = abstractC7762a0;
            if (str != null) {
                this.f36823b = str;
                return;
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }
}

package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.v */
/* loaded from: classes2.dex */
public final class C7866v extends AbstractC7762a0.AbstractC7772e.AbstractC7801f {

    /* renamed from: a */
    public final String f38247a;

    /* renamed from: z5.v$b */
    /* loaded from: classes2.dex */
    public static final class C7868b extends AbstractC7762a0.AbstractC7772e.AbstractC7801f.AbstractC7802a {

        /* renamed from: a */
        public String f38248a;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7801f.AbstractC7802a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7801f mo118a() {
            String str = "";
            if (this.f38248a == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new C7866v(this.f38248a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7801f.AbstractC7802a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7801f.AbstractC7802a mo117b(String str) {
            if (str != null) {
                this.f38248a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7801f
    /* renamed from: b */
    public String mo119b() {
        return this.f38247a;
    }

    public int hashCode() {
        return this.f38247a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f38247a + "}";
    }

    public C7866v(String str) {
        this.f38247a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7801f) {
            return this.f38247a.equals(((AbstractC7762a0.AbstractC7772e.AbstractC7801f) obj).mo119b());
        }
        return false;
    }
}

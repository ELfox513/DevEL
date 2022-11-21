package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.t */
/* loaded from: classes2.dex */
public final class C7860t extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d {

    /* renamed from: a */
    public final String f38237a;

    /* renamed from: z5.t$b */
    /* loaded from: classes2.dex */
    public static final class C7862b extends AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.AbstractC7798a {

        /* renamed from: a */
        public String f38238a;

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.AbstractC7798a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d mo130a() {
            String str = "";
            if (this.f38238a == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new C7860t(this.f38238a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.AbstractC7798a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.AbstractC7798a mo129b(String str) {
            if (str != null) {
                this.f38238a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d
    /* renamed from: b */
    public String mo131b() {
        return this.f38237a;
    }

    public int hashCode() {
        return this.f38237a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f38237a + "}";
    }

    public C7860t(String str) {
        this.f38237a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d) {
            return this.f38237a.equals(((AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d) obj).mo131b());
        }
        return false;
    }
}

package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.e */
/* loaded from: classes2.dex */
public final class C7817e extends AbstractC7762a0.AbstractC7768d {

    /* renamed from: a */
    public final C7806b0<AbstractC7762a0.AbstractC7768d.AbstractC7770b> f38092a;

    /* renamed from: b */
    public final String f38093b;

    /* renamed from: z5.e$b */
    /* loaded from: classes2.dex */
    public static final class C7819b extends AbstractC7762a0.AbstractC7768d.AbstractC7769a {

        /* renamed from: a */
        public C7806b0<AbstractC7762a0.AbstractC7768d.AbstractC7770b> f38094a;

        /* renamed from: b */
        public String f38095b;

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7769a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7768d.AbstractC7769a mo288c(String str) {
            this.f38095b = str;
            return this;
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7769a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7768d mo290a() {
            String str = "";
            if (this.f38094a == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new C7817e(this.f38094a, this.f38095b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7769a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7768d.AbstractC7769a mo289b(C7806b0<AbstractC7762a0.AbstractC7768d.AbstractC7770b> c7806b0) {
            if (c7806b0 != null) {
                this.f38094a = c7806b0;
                return this;
            }
            throw new NullPointerException("Null files");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7768d
    /* renamed from: b */
    public C7806b0<AbstractC7762a0.AbstractC7768d.AbstractC7770b> mo292b() {
        return this.f38092a;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7768d
    /* renamed from: c */
    public String mo291c() {
        return this.f38093b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7768d)) {
            return false;
        }
        AbstractC7762a0.AbstractC7768d abstractC7768d = (AbstractC7762a0.AbstractC7768d) obj;
        if (this.f38092a.equals(abstractC7768d.mo292b())) {
            String str = this.f38093b;
            if (str == null) {
                if (abstractC7768d.mo291c() == null) {
                    return true;
                }
            } else if (str.equals(abstractC7768d.mo291c())) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "FilesPayload{files=" + this.f38092a + ", orgId=" + this.f38093b + "}";
    }

    public C7817e(C7806b0<AbstractC7762a0.AbstractC7768d.AbstractC7770b> c7806b0, String str) {
        this.f38092a = c7806b0;
        this.f38093b = str;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f38092a.hashCode() ^ 1000003) * 1000003;
        String str = this.f38093b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }
}

package p085i2;

import p058f2.AbstractC3504c;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p085i2.AbstractC4111l;
/* renamed from: i2.b */
/* loaded from: classes.dex */
public final class C4092b extends AbstractC4111l {

    /* renamed from: a */
    public final AbstractC4113m f17683a;

    /* renamed from: b */
    public final String f17684b;

    /* renamed from: c */
    public final AbstractC3504c<?> f17685c;

    /* renamed from: d */
    public final InterfaceC3506e<?, byte[]> f17686d;

    /* renamed from: e */
    public final C3503b f17687e;

    /* renamed from: i2.b$b */
    /* loaded from: classes.dex */
    public static final class C4094b extends AbstractC4111l.AbstractC4112a {

        /* renamed from: a */
        public AbstractC4113m f17688a;

        /* renamed from: b */
        public String f17689b;

        /* renamed from: c */
        public AbstractC3504c<?> f17690c;

        /* renamed from: d */
        public InterfaceC3506e<?, byte[]> f17691d;

        /* renamed from: e */
        public C3503b f17692e;

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: a */
        public AbstractC4111l mo17363a() {
            String str = "";
            if (this.f17688a == null) {
                str = " transportContext";
            }
            if (this.f17689b == null) {
                str = str + " transportName";
            }
            if (this.f17690c == null) {
                str = str + " event";
            }
            if (this.f17691d == null) {
                str = str + " transformer";
            }
            if (this.f17692e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new C4092b(this.f17688a, this.f17689b, this.f17690c, this.f17691d, this.f17692e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: b */
        public AbstractC4111l.AbstractC4112a mo17362b(C3503b c3503b) {
            if (c3503b != null) {
                this.f17692e = c3503b;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: c */
        public AbstractC4111l.AbstractC4112a mo17361c(AbstractC3504c<?> abstractC3504c) {
            if (abstractC3504c != null) {
                this.f17690c = abstractC3504c;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: d */
        public AbstractC4111l.AbstractC4112a mo17360d(InterfaceC3506e<?, byte[]> interfaceC3506e) {
            if (interfaceC3506e != null) {
                this.f17691d = interfaceC3506e;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: e */
        public AbstractC4111l.AbstractC4112a mo17359e(AbstractC4113m abstractC4113m) {
            if (abstractC4113m != null) {
                this.f17688a = abstractC4113m;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // p085i2.AbstractC4111l.AbstractC4112a
        /* renamed from: f */
        public AbstractC4111l.AbstractC4112a mo17358f(String str) {
            if (str != null) {
                this.f17689b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    @Override // p085i2.AbstractC4111l
    /* renamed from: b */
    public C3503b mo17369b() {
        return this.f17687e;
    }

    @Override // p085i2.AbstractC4111l
    /* renamed from: c */
    public AbstractC3504c<?> mo17368c() {
        return this.f17685c;
    }

    @Override // p085i2.AbstractC4111l
    /* renamed from: e */
    public InterfaceC3506e<?, byte[]> mo17366e() {
        return this.f17686d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4111l)) {
            return false;
        }
        AbstractC4111l abstractC4111l = (AbstractC4111l) obj;
        return this.f17683a.equals(abstractC4111l.mo17365f()) && this.f17684b.equals(abstractC4111l.mo17364g()) && this.f17685c.equals(abstractC4111l.mo17368c()) && this.f17686d.equals(abstractC4111l.mo17366e()) && this.f17687e.equals(abstractC4111l.mo17369b());
    }

    @Override // p085i2.AbstractC4111l
    /* renamed from: f */
    public AbstractC4113m mo17365f() {
        return this.f17683a;
    }

    @Override // p085i2.AbstractC4111l
    /* renamed from: g */
    public String mo17364g() {
        return this.f17684b;
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f17683a + ", transportName=" + this.f17684b + ", event=" + this.f17685c + ", transformer=" + this.f17686d + ", encoding=" + this.f17687e + "}";
    }

    public C4092b(AbstractC4113m abstractC4113m, String str, AbstractC3504c<?> abstractC3504c, InterfaceC3506e<?, byte[]> interfaceC3506e, C3503b c3503b) {
        this.f17683a = abstractC4113m;
        this.f17684b = str;
        this.f17685c = abstractC3504c;
        this.f17686d = interfaceC3506e;
        this.f17687e = c3503b;
    }

    public int hashCode() {
        return ((((((((this.f17683a.hashCode() ^ 1000003) * 1000003) ^ this.f17684b.hashCode()) * 1000003) ^ this.f17685c.hashCode()) * 1000003) ^ this.f17686d.hashCode()) * 1000003) ^ this.f17687e.hashCode();
    }
}

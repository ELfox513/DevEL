package p094j2;

import java.util.Arrays;
import p085i2.AbstractC4104h;
import p094j2.AbstractC4315f;
/* renamed from: j2.a */
/* loaded from: classes.dex */
public final class C4308a extends AbstractC4315f {

    /* renamed from: a */
    public final Iterable<AbstractC4104h> f18176a;

    /* renamed from: b */
    public final byte[] f18177b;

    /* renamed from: j2.a$b */
    /* loaded from: classes.dex */
    public static final class C4310b extends AbstractC4315f.AbstractC4316a {

        /* renamed from: a */
        public Iterable<AbstractC4104h> f18178a;

        /* renamed from: b */
        public byte[] f18179b;

        @Override // p094j2.AbstractC4315f.AbstractC4316a
        /* renamed from: c */
        public AbstractC4315f.AbstractC4316a mo16836c(byte[] bArr) {
            this.f18179b = bArr;
            return this;
        }

        @Override // p094j2.AbstractC4315f.AbstractC4316a
        /* renamed from: a */
        public AbstractC4315f mo16838a() {
            String str = "";
            if (this.f18178a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C4308a(this.f18178a, this.f18179b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p094j2.AbstractC4315f.AbstractC4316a
        /* renamed from: b */
        public AbstractC4315f.AbstractC4316a mo16837b(Iterable<AbstractC4104h> iterable) {
            if (iterable != null) {
                this.f18178a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }
    }

    @Override // p094j2.AbstractC4315f
    /* renamed from: b */
    public Iterable<AbstractC4104h> mo16840b() {
        return this.f18176a;
    }

    @Override // p094j2.AbstractC4315f
    /* renamed from: c */
    public byte[] mo16839c() {
        return this.f18177b;
    }

    public boolean equals(Object obj) {
        byte[] mo16839c;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4315f)) {
            return false;
        }
        AbstractC4315f abstractC4315f = (AbstractC4315f) obj;
        if (this.f18176a.equals(abstractC4315f.mo16840b())) {
            byte[] bArr = this.f18177b;
            if (abstractC4315f instanceof C4308a) {
                mo16839c = ((C4308a) abstractC4315f).f18177b;
            } else {
                mo16839c = abstractC4315f.mo16839c();
            }
            if (Arrays.equals(bArr, mo16839c)) {
                return true;
            }
        }
        return false;
    }

    public C4308a(Iterable<AbstractC4104h> iterable, byte[] bArr) {
        this.f18176a = iterable;
        this.f18177b = bArr;
    }

    public int hashCode() {
        return ((this.f18176a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f18177b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f18176a + ", extras=" + Arrays.toString(this.f18177b) + "}";
    }
}

package p085i2;

import java.util.Arrays;
import p058f2.EnumC3505d;
import p085i2.AbstractC4113m;
/* renamed from: i2.c */
/* loaded from: classes.dex */
public final class C4095c extends AbstractC4113m {

    /* renamed from: a */
    public final String f17693a;

    /* renamed from: b */
    public final byte[] f17694b;

    /* renamed from: c */
    public final EnumC3505d f17695c;

    /* renamed from: i2.c$b */
    /* loaded from: classes.dex */
    public static final class C4097b extends AbstractC4113m.AbstractC4114a {

        /* renamed from: a */
        public String f17696a;

        /* renamed from: b */
        public byte[] f17697b;

        /* renamed from: c */
        public EnumC3505d f17698c;

        @Override // p085i2.AbstractC4113m.AbstractC4114a
        /* renamed from: c */
        public AbstractC4113m.AbstractC4114a mo17350c(byte[] bArr) {
            this.f17697b = bArr;
            return this;
        }

        @Override // p085i2.AbstractC4113m.AbstractC4114a
        /* renamed from: a */
        public AbstractC4113m mo17352a() {
            String str = "";
            if (this.f17696a == null) {
                str = " backendName";
            }
            if (this.f17698c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new C4095c(this.f17696a, this.f17697b, this.f17698c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p085i2.AbstractC4113m.AbstractC4114a
        /* renamed from: b */
        public AbstractC4113m.AbstractC4114a mo17351b(String str) {
            if (str != null) {
                this.f17696a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // p085i2.AbstractC4113m.AbstractC4114a
        /* renamed from: d */
        public AbstractC4113m.AbstractC4114a mo17349d(EnumC3505d enumC3505d) {
            if (enumC3505d != null) {
                this.f17698c = enumC3505d;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    @Override // p085i2.AbstractC4113m
    /* renamed from: b */
    public String mo17356b() {
        return this.f17693a;
    }

    @Override // p085i2.AbstractC4113m
    /* renamed from: c */
    public byte[] mo17355c() {
        return this.f17694b;
    }

    @Override // p085i2.AbstractC4113m
    /* renamed from: d */
    public EnumC3505d mo17354d() {
        return this.f17695c;
    }

    public boolean equals(Object obj) {
        byte[] mo17355c;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4113m)) {
            return false;
        }
        AbstractC4113m abstractC4113m = (AbstractC4113m) obj;
        if (this.f17693a.equals(abstractC4113m.mo17356b())) {
            byte[] bArr = this.f17694b;
            if (abstractC4113m instanceof C4095c) {
                mo17355c = ((C4095c) abstractC4113m).f17694b;
            } else {
                mo17355c = abstractC4113m.mo17355c();
            }
            if (Arrays.equals(bArr, mo17355c) && this.f17695c.equals(abstractC4113m.mo17354d())) {
                return true;
            }
        }
        return false;
    }

    public C4095c(String str, byte[] bArr, EnumC3505d enumC3505d) {
        this.f17693a = str;
        this.f17694b = bArr;
        this.f17695c = enumC3505d;
    }

    public int hashCode() {
        return ((((this.f17693a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17694b)) * 1000003) ^ this.f17695c.hashCode();
    }
}

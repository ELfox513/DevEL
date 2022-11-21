package p238z5;

import java.util.Arrays;
import p238z5.AbstractC7762a0;
/* renamed from: z5.f */
/* loaded from: classes2.dex */
public final class C7820f extends AbstractC7762a0.AbstractC7768d.AbstractC7770b {

    /* renamed from: a */
    public final String f38096a;

    /* renamed from: b */
    public final byte[] f38097b;

    /* renamed from: z5.f$b */
    /* loaded from: classes2.dex */
    public static final class C7822b extends AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a {

        /* renamed from: a */
        public String f38098a;

        /* renamed from: b */
        public byte[] f38099b;

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a
        /* renamed from: a */
        public AbstractC7762a0.AbstractC7768d.AbstractC7770b mo285a() {
            String str = "";
            if (this.f38098a == null) {
                str = " filename";
            }
            if (this.f38099b == null) {
                str = str + " contents";
            }
            if (str.isEmpty()) {
                return new C7820f(this.f38098a, this.f38099b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a
        /* renamed from: b */
        public AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a mo284b(byte[] bArr) {
            if (bArr != null) {
                this.f38099b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a
        /* renamed from: c */
        public AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a mo283c(String str) {
            if (str != null) {
                this.f38098a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7770b
    /* renamed from: b */
    public byte[] mo287b() {
        return this.f38097b;
    }

    @Override // p238z5.AbstractC7762a0.AbstractC7768d.AbstractC7770b
    /* renamed from: c */
    public String mo286c() {
        return this.f38096a;
    }

    public boolean equals(Object obj) {
        byte[] mo287b;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7762a0.AbstractC7768d.AbstractC7770b)) {
            return false;
        }
        AbstractC7762a0.AbstractC7768d.AbstractC7770b abstractC7770b = (AbstractC7762a0.AbstractC7768d.AbstractC7770b) obj;
        if (this.f38096a.equals(abstractC7770b.mo286c())) {
            byte[] bArr = this.f38097b;
            if (abstractC7770b instanceof C7820f) {
                mo287b = ((C7820f) abstractC7770b).f38097b;
            } else {
                mo287b = abstractC7770b.mo287b();
            }
            if (Arrays.equals(bArr, mo287b)) {
                return true;
            }
        }
        return false;
    }

    public C7820f(String str, byte[] bArr) {
        this.f38096a = str;
        this.f38097b = bArr;
    }

    public int hashCode() {
        return ((this.f38096a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f38097b);
    }

    public String toString() {
        return "File{filename=" + this.f38096a + ", contents=" + Arrays.toString(this.f38097b) + "}";
    }
}

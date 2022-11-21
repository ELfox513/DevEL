package p200v0;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;
import p145p.C5270a;
/* renamed from: v0.b */
/* loaded from: classes.dex */
public class C6967b extends AbstractC6966a {

    /* renamed from: d */
    public final SparseIntArray f35855d;

    /* renamed from: e */
    public final Parcel f35856e;

    /* renamed from: f */
    public final int f35857f;

    /* renamed from: g */
    public final int f35858g;

    /* renamed from: h */
    public final String f35859h;

    /* renamed from: i */
    public int f35860i;

    /* renamed from: j */
    public int f35861j;

    /* renamed from: k */
    public int f35862k;

    public C6967b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C5270a(), new C5270a(), new C5270a());
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: C */
    public void mo2850C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f35856e, 0);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: E */
    public void mo2849E(int i) {
        this.f35856e.writeInt(i);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: G */
    public void mo2848G(Parcelable parcelable) {
        this.f35856e.writeParcelable(parcelable, 0);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: I */
    public void mo2847I(String str) {
        this.f35856e.writeString(str);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: b */
    public AbstractC6966a mo2845b() {
        Parcel parcel = this.f35856e;
        int dataPosition = parcel.dataPosition();
        int i = this.f35861j;
        if (i == this.f35857f) {
            i = this.f35858g;
        }
        int i2 = i;
        return new C6967b(parcel, dataPosition, i2, this.f35859h + "  ", this.f35852a, this.f35853b, this.f35854c);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: g */
    public boolean mo2844g() {
        return this.f35856e.readInt() != 0;
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: k */
    public CharSequence mo2842k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f35856e);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: o */
    public int mo2840o() {
        return this.f35856e.readInt();
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: q */
    public <T extends Parcelable> T mo2839q() {
        return (T) this.f35856e.readParcelable(getClass().getClassLoader());
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: s */
    public String mo2838s() {
        return this.f35856e.readString();
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: y */
    public void mo2836y(boolean z) {
        this.f35856e.writeInt(z ? 1 : 0);
    }

    public C6967b(Parcel parcel, int i, int i2, String str, C5270a<String, Method> c5270a, C5270a<String, Method> c5270a2, C5270a<String, Class> c5270a3) {
        super(c5270a, c5270a2, c5270a3);
        this.f35855d = new SparseIntArray();
        this.f35860i = -1;
        this.f35862k = -1;
        this.f35856e = parcel;
        this.f35857f = i;
        this.f35858g = i2;
        this.f35861j = i;
        this.f35859h = str;
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: A */
    public void mo2851A(byte[] bArr) {
        if (bArr != null) {
            this.f35856e.writeInt(bArr.length);
            this.f35856e.writeByteArray(bArr);
            return;
        }
        this.f35856e.writeInt(-1);
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: a */
    public void mo2846a() {
        int i = this.f35860i;
        if (i >= 0) {
            int i2 = this.f35855d.get(i);
            int dataPosition = this.f35856e.dataPosition();
            this.f35856e.setDataPosition(i2);
            this.f35856e.writeInt(dataPosition - i2);
            this.f35856e.setDataPosition(dataPosition);
        }
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: i */
    public byte[] mo2843i() {
        int readInt = this.f35856e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f35856e.readByteArray(bArr);
        return bArr;
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: m */
    public boolean mo2841m(int i) {
        while (this.f35861j < this.f35858g) {
            int i2 = this.f35862k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f35856e.setDataPosition(this.f35861j);
            int readInt = this.f35856e.readInt();
            this.f35862k = this.f35856e.readInt();
            this.f35861j += readInt;
        }
        if (this.f35862k == i) {
            return true;
        }
        return false;
    }

    @Override // p200v0.AbstractC6966a
    /* renamed from: w */
    public void mo2837w(int i) {
        mo2846a();
        this.f35860i = i;
        this.f35855d.put(i, this.f35856e.dataPosition());
        mo2849E(0);
        mo2849E(i);
    }
}

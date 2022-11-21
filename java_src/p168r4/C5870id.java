package p168r4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.id */
/* loaded from: classes2.dex */
public final class C5870id implements Parcelable {
    public static final Parcelable.Creator<C5870id> CREATOR = new C5833hd();

    /* renamed from: A */
    public final byte[] f25043A;

    /* renamed from: B */
    public final C6100ol f25044B;

    /* renamed from: C */
    public final int f25045C;

    /* renamed from: D */
    public final int f25046D;

    /* renamed from: E */
    public final int f25047E;

    /* renamed from: F */
    public final int f25048F;

    /* renamed from: G */
    public final int f25049G;

    /* renamed from: H */
    public final long f25050H;

    /* renamed from: I */
    public final int f25051I;

    /* renamed from: J */
    public final String f25052J;

    /* renamed from: K */
    public final int f25053K;

    /* renamed from: L */
    public int f25054L;

    /* renamed from: a */
    public final String f25055a;

    /* renamed from: b */
    public final int f25056b;

    /* renamed from: d */
    public final String f25057d;

    /* renamed from: k */
    public final C6466yh f25058k;

    /* renamed from: p */
    public final String f25059p;

    /* renamed from: q */
    public final String f25060q;

    /* renamed from: r */
    public final int f25061r;

    /* renamed from: s */
    public final List<byte[]> f25062s;

    /* renamed from: t */
    public final C5982lf f25063t;

    /* renamed from: u */
    public final int f25064u;

    /* renamed from: v */
    public final int f25065v;

    /* renamed from: w */
    public final float f25066w;

    /* renamed from: x */
    public final int f25067x;

    /* renamed from: y */
    public final float f25068y;

    /* renamed from: z */
    public final int f25069z;

    public C5870id(Parcel parcel) {
        this.f25055a = parcel.readString();
        this.f25059p = parcel.readString();
        this.f25060q = parcel.readString();
        this.f25057d = parcel.readString();
        this.f25056b = parcel.readInt();
        this.f25061r = parcel.readInt();
        this.f25064u = parcel.readInt();
        this.f25065v = parcel.readInt();
        this.f25066w = parcel.readFloat();
        this.f25067x = parcel.readInt();
        this.f25068y = parcel.readFloat();
        this.f25043A = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f25069z = parcel.readInt();
        this.f25044B = (C6100ol) parcel.readParcelable(C6100ol.class.getClassLoader());
        this.f25045C = parcel.readInt();
        this.f25046D = parcel.readInt();
        this.f25047E = parcel.readInt();
        this.f25048F = parcel.readInt();
        this.f25049G = parcel.readInt();
        this.f25051I = parcel.readInt();
        this.f25052J = parcel.readString();
        this.f25053K = parcel.readInt();
        this.f25050H = parcel.readLong();
        int readInt = parcel.readInt();
        this.f25062s = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f25062s.add(parcel.createByteArray());
        }
        this.f25063t = (C5982lf) parcel.readParcelable(C5982lf.class.getClassLoader());
        this.f25058k = (C6466yh) parcel.readParcelable(C6466yh.class.getClassLoader());
    }

    @TargetApi(16)
    /* renamed from: C */
    public static void m10686C(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public static C5870id m10685a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, C6100ol c6100ol, C5982lf c5982lf) {
        return new C5870id(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, c6100ol, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, c5982lf, null);
    }

    /* renamed from: h */
    public static C5870id m10684h(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, C5982lf c5982lf, int i5, String str4) {
        return m10683j(str, str2, null, -1, -1, i3, i4, -1, -1, -1, null, c5982lf, 0, str4, null);
    }

    /* renamed from: j */
    public static C5870id m10683j(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, C5982lf c5982lf, int i8, String str4, C6466yh c6466yh) {
        return new C5870id(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i8, str4, -1, Long.MAX_VALUE, list, c5982lf, null);
    }

    /* renamed from: l */
    public static C5870id m10682l(String str, String str2, String str3, int i, int i2, String str4, int i3, C5982lf c5982lf, long j, List<byte[]> list) {
        return new C5870id(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, c5982lf, null);
    }

    /* renamed from: n */
    public static C5870id m10681n(String str, String str2, String str3, int i, List<byte[]> list, String str4, C5982lf c5982lf) {
        return new C5870id(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, c5982lf, null);
    }

    /* renamed from: p */
    public static C5870id m10680p(String str, String str2, String str3, int i, C5982lf c5982lf) {
        return new C5870id(str, null, "application/x-camera-motion", null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, c5982lf, null);
    }

    /* renamed from: A */
    public final int m10688A() {
        int i;
        int i2 = this.f25064u;
        if (i2 == -1 || (i = this.f25065v) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5870id.class == obj.getClass()) {
            C5870id c5870id = (C5870id) obj;
            if (this.f25056b == c5870id.f25056b && this.f25061r == c5870id.f25061r && this.f25064u == c5870id.f25064u && this.f25065v == c5870id.f25065v && this.f25066w == c5870id.f25066w && this.f25067x == c5870id.f25067x && this.f25068y == c5870id.f25068y && this.f25069z == c5870id.f25069z && this.f25045C == c5870id.f25045C && this.f25046D == c5870id.f25046D && this.f25047E == c5870id.f25047E && this.f25048F == c5870id.f25048F && this.f25049G == c5870id.f25049G && this.f25050H == c5870id.f25050H && this.f25051I == c5870id.f25051I && C5988ll.m9653a(this.f25055a, c5870id.f25055a) && C5988ll.m9653a(this.f25052J, c5870id.f25052J) && this.f25053K == c5870id.f25053K && C5988ll.m9653a(this.f25059p, c5870id.f25059p) && C5988ll.m9653a(this.f25060q, c5870id.f25060q) && C5988ll.m9653a(this.f25057d, c5870id.f25057d) && C5988ll.m9653a(this.f25063t, c5870id.f25063t) && C5988ll.m9653a(this.f25058k, c5870id.f25058k) && C5988ll.m9653a(this.f25044B, c5870id.f25044B) && Arrays.equals(this.f25043A, c5870id.f25043A) && this.f25062s.size() == c5870id.f25062s.size()) {
                for (int i = 0; i < this.f25062s.size(); i++) {
                    if (!Arrays.equals(this.f25062s.get(i), c5870id.f25062s.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.f25055a;
        String str2 = this.f25059p;
        String str3 = this.f25060q;
        int i = this.f25056b;
        String str4 = this.f25052J;
        int i2 = this.f25064u;
        int i3 = this.f25065v;
        float f = this.f25066w;
        int i4 = this.f25045C;
        int i5 = this.f25046D;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 100 + length2 + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str4);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    /* renamed from: u */
    public final C5870id m10679u(int i) {
        return new C5870id(this.f25055a, this.f25059p, this.f25060q, this.f25057d, this.f25056b, i, this.f25064u, this.f25065v, this.f25066w, this.f25067x, this.f25068y, this.f25043A, this.f25069z, this.f25044B, this.f25045C, this.f25046D, this.f25047E, this.f25048F, this.f25049G, this.f25051I, this.f25052J, this.f25053K, this.f25050H, this.f25062s, this.f25063t, this.f25058k);
    }

    /* renamed from: v */
    public final C5870id m10678v(int i, int i2) {
        return new C5870id(this.f25055a, this.f25059p, this.f25060q, this.f25057d, this.f25056b, this.f25061r, this.f25064u, this.f25065v, this.f25066w, this.f25067x, this.f25068y, this.f25043A, this.f25069z, this.f25044B, this.f25045C, this.f25046D, this.f25047E, i, i2, this.f25051I, this.f25052J, this.f25053K, this.f25050H, this.f25062s, this.f25063t, this.f25058k);
    }

    /* renamed from: x */
    public final C5870id m10677x(C5982lf c5982lf) {
        return new C5870id(this.f25055a, this.f25059p, this.f25060q, this.f25057d, this.f25056b, this.f25061r, this.f25064u, this.f25065v, this.f25066w, this.f25067x, this.f25068y, this.f25043A, this.f25069z, this.f25044B, this.f25045C, this.f25046D, this.f25047E, this.f25048F, this.f25049G, this.f25051I, this.f25052J, this.f25053K, this.f25050H, this.f25062s, c5982lf, this.f25058k);
    }

    /* renamed from: z */
    public final C5870id m10676z(C6466yh c6466yh) {
        return new C5870id(this.f25055a, this.f25059p, this.f25060q, this.f25057d, this.f25056b, this.f25061r, this.f25064u, this.f25065v, this.f25066w, this.f25067x, this.f25068y, this.f25043A, this.f25069z, this.f25044B, this.f25045C, this.f25046D, this.f25047E, this.f25048F, this.f25049G, this.f25051I, this.f25052J, this.f25053K, this.f25050H, this.f25062s, this.f25063t, c6466yh);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    /* renamed from: B */
    public final MediaFormat m10687B() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f25060q);
        String str = this.f25052J;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m10686C(mediaFormat, "max-input-size", this.f25061r);
        m10686C(mediaFormat, "width", this.f25064u);
        m10686C(mediaFormat, "height", this.f25065v);
        float f = this.f25066w;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m10686C(mediaFormat, "rotation-degrees", this.f25067x);
        m10686C(mediaFormat, "channel-count", this.f25045C);
        m10686C(mediaFormat, "sample-rate", this.f25046D);
        m10686C(mediaFormat, "encoder-delay", this.f25048F);
        m10686C(mediaFormat, "encoder-padding", this.f25049G);
        for (int i = 0; i < this.f25062s.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.f25062s.get(i)));
        }
        C6100ol c6100ol = this.f25044B;
        if (c6100ol != null) {
            m10686C(mediaFormat, "color-transfer", c6100ol.f29039d);
            m10686C(mediaFormat, "color-standard", c6100ol.f29037a);
            m10686C(mediaFormat, "color-range", c6100ol.f29038b);
            byte[] bArr = c6100ol.f29040k;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int i = this.f25054L;
        if (i == 0) {
            String str = this.f25055a;
            int i2 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i3 = (hashCode + 527) * 31;
            String str2 = this.f25059p;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i4 = (i3 + hashCode2) * 31;
            String str3 = this.f25060q;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i5 = (i4 + hashCode3) * 31;
            String str4 = this.f25057d;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i6 = (((((((((((i5 + hashCode4) * 31) + this.f25056b) * 31) + this.f25064u) * 31) + this.f25065v) * 31) + this.f25045C) * 31) + this.f25046D) * 31;
            String str5 = this.f25052J;
            if (str5 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str5.hashCode();
            }
            int i7 = (((i6 + hashCode5) * 31) + this.f25053K) * 31;
            C5982lf c5982lf = this.f25063t;
            if (c5982lf == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = c5982lf.hashCode();
            }
            int i8 = (i7 + hashCode6) * 31;
            C6466yh c6466yh = this.f25058k;
            if (c6466yh != null) {
                i2 = c6466yh.hashCode();
            }
            int i9 = i8 + i2;
            this.f25054L = i9;
            return i9;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeString(this.f25055a);
        parcel.writeString(this.f25059p);
        parcel.writeString(this.f25060q);
        parcel.writeString(this.f25057d);
        parcel.writeInt(this.f25056b);
        parcel.writeInt(this.f25061r);
        parcel.writeInt(this.f25064u);
        parcel.writeInt(this.f25065v);
        parcel.writeFloat(this.f25066w);
        parcel.writeInt(this.f25067x);
        parcel.writeFloat(this.f25068y);
        if (this.f25043A != null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        byte[] bArr = this.f25043A;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f25069z);
        parcel.writeParcelable(this.f25044B, i);
        parcel.writeInt(this.f25045C);
        parcel.writeInt(this.f25046D);
        parcel.writeInt(this.f25047E);
        parcel.writeInt(this.f25048F);
        parcel.writeInt(this.f25049G);
        parcel.writeInt(this.f25051I);
        parcel.writeString(this.f25052J);
        parcel.writeInt(this.f25053K);
        parcel.writeLong(this.f25050H);
        int size = this.f25062s.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeByteArray(this.f25062s.get(i3));
        }
        parcel.writeParcelable(this.f25063t, 0);
        parcel.writeParcelable(this.f25058k, 0);
    }

    public C5870id(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, C6100ol c6100ol, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, C5982lf c5982lf, C6466yh c6466yh) {
        this.f25055a = str;
        this.f25059p = str2;
        this.f25060q = str3;
        this.f25057d = str4;
        this.f25056b = i;
        this.f25061r = i2;
        this.f25064u = i3;
        this.f25065v = i4;
        this.f25066w = f;
        this.f25067x = i5;
        this.f25068y = f2;
        this.f25043A = bArr;
        this.f25069z = i6;
        this.f25044B = c6100ol;
        this.f25045C = i7;
        this.f25046D = i8;
        this.f25047E = i9;
        this.f25048F = i10;
        this.f25049G = i11;
        this.f25051I = i12;
        this.f25052J = str5;
        this.f25053K = i13;
        this.f25050H = j;
        this.f25062s = list == null ? Collections.emptyList() : list;
        this.f25063t = c5982lf;
        this.f25058k = c6466yh;
    }
}

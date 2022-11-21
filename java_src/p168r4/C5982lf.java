package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* renamed from: r4.lf */
/* loaded from: classes2.dex */
public final class C5982lf implements Comparator<C5945kf>, Parcelable {
    public static final Parcelable.Creator<C5982lf> CREATOR = new C5872if();

    /* renamed from: a */
    public final C5945kf[] f27197a;

    /* renamed from: b */
    public int f27198b;

    /* renamed from: d */
    public final int f27199d;

    public C5982lf(Parcel parcel) {
        C5945kf[] c5945kfArr = (C5945kf[]) parcel.createTypedArray(C5945kf.CREATOR);
        this.f27197a = c5945kfArr;
        this.f27199d = c5945kfArr.length;
    }

    /* renamed from: a */
    public final C5945kf m9671a(int i) {
        return this.f27197a[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5982lf.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f27197a, ((C5982lf) obj).f27197a);
    }

    public final int hashCode() {
        int i = this.f27198b;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f27197a);
            this.f27198b = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f27197a, 0);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C5945kf c5945kf, C5945kf c5945kf2) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        C5945kf c5945kf3 = c5945kf;
        C5945kf c5945kf4 = c5945kf2;
        UUID uuid5 = C6239sc.f31303b;
        uuid = c5945kf3.f26385b;
        if (uuid5.equals(uuid)) {
            uuid4 = c5945kf4.f26385b;
            if (!uuid5.equals(uuid4)) {
                return 1;
            }
            return 0;
        }
        uuid2 = c5945kf3.f26385b;
        uuid3 = c5945kf4.f26385b;
        return uuid2.compareTo(uuid3);
    }

    public C5982lf(List<C5945kf> list) {
        this(false, (C5945kf[]) list.toArray(new C5945kf[list.size()]));
    }

    public C5982lf(boolean z, C5945kf... c5945kfArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        c5945kfArr = z ? (C5945kf[]) c5945kfArr.clone() : c5945kfArr;
        Arrays.sort(c5945kfArr, this);
        int i = 1;
        while (true) {
            int length = c5945kfArr.length;
            if (i >= length) {
                this.f27197a = c5945kfArr;
                this.f27199d = length;
                return;
            }
            uuid = c5945kfArr[i - 1].f26385b;
            uuid2 = c5945kfArr[i].f26385b;
            if (uuid.equals(uuid2)) {
                uuid3 = c5945kfArr[i].f26385b;
                throw new IllegalArgumentException("Duplicate data for uuid: ".concat(String.valueOf(uuid3)));
            }
            i++;
        }
    }

    public C5982lf(C5945kf... c5945kfArr) {
        this(true, c5945kfArr);
    }
}

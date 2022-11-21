package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* renamed from: r4.fz3 */
/* loaded from: classes2.dex */
public final class fz3 implements Comparator<dy3>, Parcelable {
    public static final Parcelable.Creator<fz3> CREATOR = new bw3();

    /* renamed from: a */
    public final dy3[] f23808a;

    /* renamed from: b */
    public int f23809b;

    /* renamed from: d */
    public final String f23810d;

    public fz3(Parcel parcel) {
        this.f23810d = parcel.readString();
        dy3[] dy3VarArr = (dy3[]) C5979lc.m9728I((dy3[]) parcel.createTypedArray(dy3.CREATOR));
        this.f23808a = dy3VarArr;
        int length = dy3VarArr.length;
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
        if (obj != null && fz3.class == obj.getClass()) {
            fz3 fz3Var = (fz3) obj;
            if (C5979lc.m9729H(this.f23810d, fz3Var.f23810d) && Arrays.equals(this.f23808a, fz3Var.f23808a)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final fz3 m11315a(String str) {
        if (C5979lc.m9729H(this.f23810d, str)) {
            return this;
        }
        return new fz3(str, false, this.f23808a);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(dy3 dy3Var, dy3 dy3Var2) {
        dy3 dy3Var3 = dy3Var;
        dy3 dy3Var4 = dy3Var2;
        UUID uuid = C5711e3.f22765a;
        if (uuid.equals(dy3Var3.f22689b)) {
            if (!uuid.equals(dy3Var4.f22689b)) {
                return 1;
            }
            return 0;
        }
        return dy3Var3.f22689b.compareTo(dy3Var4.f22689b);
    }

    public final int hashCode() {
        int hashCode;
        int i = this.f23809b;
        if (i == 0) {
            String str = this.f23810d;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = (hashCode * 31) + Arrays.hashCode(this.f23808a);
            this.f23809b = hashCode2;
            return hashCode2;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f23810d);
        parcel.writeTypedArray(this.f23808a, 0);
    }

    public fz3(String str, boolean z, dy3... dy3VarArr) {
        this.f23810d = str;
        dy3VarArr = z ? (dy3[]) dy3VarArr.clone() : dy3VarArr;
        this.f23808a = dy3VarArr;
        int length = dy3VarArr.length;
        Arrays.sort(dy3VarArr, this);
    }

    public fz3(String str, dy3... dy3VarArr) {
        this(null, true, dy3VarArr);
    }

    public fz3(List<dy3> list) {
        this(null, false, (dy3[]) list.toArray(new dy3[0]));
    }
}

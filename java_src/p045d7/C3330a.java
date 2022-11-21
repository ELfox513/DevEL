package p045d7;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: d7.a */
/* loaded from: classes2.dex */
public class C3330a implements Parcelable {
    public static final Parcelable.Creator<C3330a> CREATOR = new C3331a();

    /* renamed from: a */
    public final String f15658a;

    /* renamed from: b */
    public final AtomicLong f15659b;

    /* renamed from: d7.a$a */
    /* loaded from: classes2.dex */
    public class C3331a implements Parcelable.Creator<C3330a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C3330a createFromParcel(Parcel parcel) {
            return new C3330a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C3330a[] newArray(int i) {
            return new C3330a[i];
        }
    }

    public /* synthetic */ C3330a(Parcel parcel, C3331a c3331a) {
        this(parcel);
    }

    /* renamed from: a */
    public long m19131a() {
        return this.f15659b.get();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getName() {
        return this.f15658a;
    }

    /* renamed from: h */
    public void m19130h(long j) {
        this.f15659b.addAndGet(j);
    }

    /* renamed from: j */
    public void m19129j(long j) {
        this.f15659b.set(j);
    }

    public C3330a(String str) {
        this.f15658a = str;
        this.f15659b = new AtomicLong(0L);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15658a);
        parcel.writeLong(this.f15659b.get());
    }

    public C3330a(Parcel parcel) {
        this.f15658a = parcel.readString();
        this.f15659b = new AtomicLong(parcel.readLong());
    }
}

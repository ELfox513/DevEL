package p099j7;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.TimeUnit;
/* renamed from: j7.h */
/* loaded from: classes2.dex */
public class C4381h implements Parcelable {
    public static final Parcelable.Creator<C4381h> CREATOR = new C4382a();

    /* renamed from: a */
    public long f18293a;

    /* renamed from: b */
    public long f18294b;

    /* renamed from: j7.h$a */
    /* loaded from: classes2.dex */
    public class C4382a implements Parcelable.Creator<C4381h> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C4381h createFromParcel(Parcel parcel) {
            return new C4381h(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C4381h[] newArray(int i) {
            return new C4381h[i];
        }
    }

    public /* synthetic */ C4381h(Parcel parcel, C4382a c4382a) {
        this(parcel);
    }

    /* renamed from: a */
    public long m16733a() {
        return this.f18293a + m16732h();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: h */
    public long m16732h() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f18294b);
    }

    /* renamed from: j */
    public long m16731j(C4381h c4381h) {
        return TimeUnit.NANOSECONDS.toMicros(c4381h.f18294b - this.f18294b);
    }

    /* renamed from: l */
    public long m16730l() {
        return this.f18293a;
    }

    public C4381h() {
        this.f18293a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f18294b = System.nanoTime();
    }

    /* renamed from: n */
    public void m16729n() {
        this.f18293a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f18294b = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f18293a);
        parcel.writeLong(this.f18294b);
    }

    public C4381h(long j) {
        this.f18293a = j;
        this.f18294b = TimeUnit.MICROSECONDS.toNanos(j);
    }

    public C4381h(Parcel parcel) {
        this.f18293a = parcel.readLong();
        this.f18294b = parcel.readLong();
    }
}

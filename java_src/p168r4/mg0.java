package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p026c4.C1052m;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
import p228y3.InterfaceC7412d;
import p235z2.C7601t;
/* renamed from: r4.mg0 */
/* loaded from: classes2.dex */
public final class mg0 extends AbstractC7408a {
    public static final Parcelable.Creator<mg0> CREATOR = new ng0();

    /* renamed from: a */
    public ParcelFileDescriptor f27684a;

    /* renamed from: b */
    public Parcelable f27685b = null;

    /* renamed from: d */
    public boolean f27686d = true;

    public mg0(ParcelFileDescriptor parcelFileDescriptor) {
        this.f27684a = parcelFileDescriptor;
    }

    /* renamed from: X0 */
    public final <T extends InterfaceC7412d> T m9398X0(Parcelable.Creator<T> creator) {
        if (this.f27686d) {
            ParcelFileDescriptor parcelFileDescriptor = this.f27684a;
            if (parcelFileDescriptor == null) {
                cm0.m12440c("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    C1052m.m24745a(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.f27685b = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.f27686d = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    cm0.m12439d("Could not read from parcel file descriptor", e);
                    C1052m.m24745a(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                C1052m.m24745a(dataInputStream);
                throw th2;
            }
        }
        return (T) this.f27685b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.f27684a == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f27685b.writeToParcel(obtain, 0);
                final byte[] marshall = obtain.marshall();
                obtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    createPipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
                } catch (IOException e) {
                    e = e;
                    autoCloseOutputStream = null;
                }
                try {
                    qm0.f30190a.execute(new Runnable(autoCloseOutputStream, marshall) { // from class: r4.lg0

                        /* renamed from: a */
                        public final OutputStream f27208a;

                        /* renamed from: b */
                        public final byte[] f27209b;

                        {
                            this.f27208a = autoCloseOutputStream;
                            this.f27209b = marshall;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            DataOutputStream dataOutputStream;
                            OutputStream outputStream = this.f27208a;
                            byte[] bArr = this.f27209b;
                            Parcelable.Creator<mg0> creator = mg0.CREATOR;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(outputStream);
                                } catch (IOException e2) {
                                    e = e2;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                C1052m.m24745a(dataOutputStream);
                            } catch (IOException e3) {
                                e = e3;
                                dataOutputStream2 = dataOutputStream;
                                cm0.m12439d("Error transporting the ad response", e);
                                C7601t.m935h().m9056k(e, "LargeParcelTeleporter.pipeData.1");
                                if (dataOutputStream2 == null) {
                                    C1052m.m24745a(outputStream);
                                } else {
                                    C1052m.m24745a(dataOutputStream2);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dataOutputStream2 = dataOutputStream;
                                if (dataOutputStream2 == null) {
                                    C1052m.m24745a(outputStream);
                                } else {
                                    C1052m.m24745a(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e2) {
                    e = e2;
                    cm0.m12439d("Error transporting the ad response", e);
                    C7601t.m935h().m9056k(e, "LargeParcelTeleporter.pipeData.2");
                    C1052m.m24745a(autoCloseOutputStream);
                    this.f27684a = parcelFileDescriptor;
                    int m1490a = C7411c.m1490a(parcel);
                    C7411c.m1474q(parcel, 2, this.f27684a, i, false);
                    C7411c.m1489b(parcel, m1490a);
                }
                this.f27684a = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int m1490a2 = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 2, this.f27684a, i, false);
        C7411c.m1489b(parcel, m1490a2);
    }
}

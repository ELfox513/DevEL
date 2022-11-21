package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import p060f4.BinderC3514b;
/* renamed from: r4.lz2 */
/* loaded from: classes2.dex */
public final class lz2 {

    /* renamed from: a */
    public boolean f27427a;

    /* renamed from: b */
    public mz2 f27428b;

    /* renamed from: a */
    public final jz2 m9532a(byte[] bArr) {
        return new jz2(this, bArr, null);
    }

    public lz2(Context context, String str, String str2) {
        mz2 mz2Var;
        try {
            try {
                try {
                    IBinder m23004d = DynamiteModule.m23003e(context, DynamiteModule.f7762b, ModuleDescriptor.MODULE_ID).m23004d("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (m23004d == null) {
                        mz2Var = null;
                    } else {
                        IInterface queryLocalInterface = m23004d.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        if (queryLocalInterface instanceof mz2) {
                            mz2Var = (mz2) queryLocalInterface;
                        } else {
                            mz2Var = new mz2(m23004d);
                        }
                    }
                    this.f27428b = mz2Var;
                    this.f27428b.m9243e3(BinderC3514b.m18741L0(context), str, null);
                    this.f27427a = true;
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                } catch (Exception e) {
                    throw new my2(e);
                }
            } catch (Exception e2) {
                throw new my2(e2);
            }
        } catch (RemoteException | NullPointerException | SecurityException | my2 unused) {
            Log.d("GASS", "Cannot dynamite load clearcut");
        }
    }
}

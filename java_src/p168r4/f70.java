package p168r4;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.f70 */
/* loaded from: classes2.dex */
public final class f70 implements i84 {

    /* renamed from: a */
    public volatile r60 f23402a;

    /* renamed from: b */
    public final Context f23403b;

    public f70(Context context) {
        this.f23403b = context;
    }

    /* renamed from: c */
    public static /* synthetic */ void m11600c(f70 f70Var) {
        if (f70Var.f23402a == null) {
            return;
        }
        f70Var.f23402a.mo1996e();
        Binder.flushPendingCommands();
    }

    @Override // p168r4.i84
    /* renamed from: a */
    public final l84 mo10712a(q84<?> q84Var) {
        Parcelable.Creator<s60> creator = s60.CREATOR;
        Map<String, String> mo7952B = q84Var.mo7952B();
        int size = mo7952B.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry<String, String> entry : mo7952B.entrySet()) {
            strArr[i2] = entry.getKey();
            strArr2[i2] = entry.getValue();
            i2++;
        }
        s60 s60Var = new s60(q84Var.m7933u(), strArr, strArr2);
        long mo24762b = C7601t.m932k().mo24762b();
        try {
            vm0 vm0Var = new vm0();
            this.f23402a = new r60(this.f23403b, C7601t.m925r().m26396a(), new d70(this, vm0Var), new e70(this, vm0Var));
            this.f23402a.m1985p();
            b70 b70Var = new b70(this, s60Var);
            i83 i83Var = qm0.f30190a;
            h83 m4807h = y73.m4807h(y73.m4806i(vm0Var, b70Var, i83Var), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30905S2)).intValue(), TimeUnit.MILLISECONDS, qm0.f30193d);
            m4807h.mo6087c(new c70(this), i83Var);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) m4807h.get();
            long mo24762b2 = C7601t.m932k().mo24762b();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(mo24762b2 - mo24762b);
            sb.append("ms");
            C0543w1.m26251k(sb.toString());
            v60 v60Var = (v60) new mg0(parcelFileDescriptor).m9398X0(v60.CREATOR);
            if (v60Var == null) {
                return null;
            }
            if (!v60Var.f32604a) {
                if (v60Var.f32608p.length != v60Var.f32609q.length) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                while (true) {
                    String[] strArr3 = v60Var.f32608p;
                    if (i < strArr3.length) {
                        hashMap.put(strArr3[i], v60Var.f32609q[i]);
                        i++;
                    } else {
                        return new l84(v60Var.f32606d, v60Var.f32607k, hashMap, v60Var.f32610r, v60Var.f32611s);
                    }
                }
            } else {
                throw new z84(v60Var.f32605b);
            }
        } catch (InterruptedException | ExecutionException unused) {
            long mo24762b3 = C7601t.m932k().mo24762b();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(mo24762b3 - mo24762b);
            sb2.append("ms");
            C0543w1.m26251k(sb2.toString());
            return null;
        } catch (Throwable th) {
            long mo24762b4 = C7601t.m932k().mo24762b();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(mo24762b4 - mo24762b);
            sb3.append("ms");
            C0543w1.m26251k(sb3.toString());
            throw th;
        }
    }
}

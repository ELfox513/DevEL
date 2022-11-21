package p168r4;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* renamed from: r4.oi2 */
/* loaded from: classes2.dex */
public final class oi2 implements vr3<ig2<JSONObject>> {
    /* renamed from: b */
    public static ig2<JSONObject> m8792b(bl0 bl0Var, cl0 cl0Var, Object obj, ah2 ah2Var, zh2 zh2Var, or3<ug2> or3Var, or3<dh2> or3Var2, or3<kh2> or3Var3, or3<oh2> or3Var4, or3<vh2> or3Var5, or3<ci2> or3Var6, or3<vi2> or3Var7, or3<ri2> or3Var8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((sh2) obj);
        hashSet.add(ah2Var);
        hashSet.add(zh2Var);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30962Z3)).booleanValue()) {
            hashSet.add(or3Var.m8710a());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30971a4)).booleanValue()) {
            hashSet.add(or3Var2.m8710a());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30980b4)).booleanValue()) {
            hashSet.add(or3Var3.m8710a());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30989c4)).booleanValue()) {
            hashSet.add(or3Var4.m8710a());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31022g4)).booleanValue()) {
            hashSet.add(or3Var6.m8710a());
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31030h4)).booleanValue()) {
            hashSet.add(or3Var7.m8710a());
        }
        return new ig2<>(executor, hashSet);
    }
}

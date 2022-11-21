package p168r4;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.concurrent.Callable;
/* renamed from: r4.mg2 */
/* loaded from: classes2.dex */
public final class mg2 implements eg2<kg2> {

    /* renamed from: a */
    public final i83 f27688a;

    /* renamed from: b */
    public final Context f27689b;

    public mg2(i83 i83Var, Context context) {
        this.f27688a = i83Var;
        this.f27689b = context;
    }

    @Override // p168r4.eg2
    public final h83<kg2> zza() {
        return this.f27688a.mo8015c(new Callable(this) { // from class: r4.lg2

            /* renamed from: a */
            public final mg2 f27213a;

            {
                this.f27213a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27213a.m9397a();
            }
        });
    }

    /* renamed from: b */
    public static ResolveInfo m9396b(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:1|(1:3)(1:54)|4|(1:6)(1:53)|7|(3:9|(2:12|10)|13)|14|(3:46|47|(12:49|50|17|18|19|(7:21|22|23|(2:29|(3:32|(3:35|(2:38|39)(1:37)|33)|40))|25|26|27)|42|23|(0)|25|26|27))|16|17|18|19|(0)|42|23|(0)|25|26|27) */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4 A[Catch: Exception -> 0x00d7, TRY_LEAVE, TryCatch #0 {Exception -> 0x00d7, blocks: (B:27:0x00a6, B:29:0x00b4), top: B:49:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ p168r4.kg2 m9397a() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.mg2.m9397a():r4.kg2");
    }
}

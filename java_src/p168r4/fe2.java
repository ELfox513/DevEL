package p168r4;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.fe2 */
/* loaded from: classes2.dex */
public final class fe2 implements eg2<ge2> {

    /* renamed from: a */
    public final i83 f23462a;

    /* renamed from: b */
    public final hp2 f23463b;

    /* renamed from: c */
    public final PackageInfo f23464c;

    /* renamed from: d */
    public final InterfaceC0549y1 f23465d;

    public fe2(i83 i83Var, hp2 hp2Var, PackageInfo packageInfo, InterfaceC0549y1 interfaceC0549y1) {
        this.f23462a = i83Var;
        this.f23463b = hp2Var;
        this.f23464c = packageInfo;
        this.f23465d = interfaceC0549y1;
    }

    @Override // p168r4.eg2
    public final h83<ge2> zza() {
        return this.f23462a.mo8015c(new Callable(this) { // from class: r4.ae2

            /* renamed from: a */
            public final fe2 f20473a;

            {
                this.f20473a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f20473a.m11550b();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e2, code lost:
        if (r9 == 3) goto L51;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m11551a(java.util.ArrayList r9, android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.fe2.m11551a(java.util.ArrayList, android.os.Bundle):void");
    }

    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ge2 m11550b() {
        final ArrayList<String> arrayList = this.f23463b.f24782g;
        if (arrayList == null) {
            return be2.f21023a;
        }
        if (arrayList.isEmpty()) {
            return ce2.f21503a;
        }
        return new ge2(this, arrayList) { // from class: r4.de2

            /* renamed from: a */
            public final fe2 f22239a;

            /* renamed from: b */
            public final ArrayList f22240b;

            {
                this.f22239a = this;
                this.f22240b = arrayList;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Bundle bundle) {
                this.f22239a.m11551a(this.f22240b, bundle);
            }
        };
    }
}

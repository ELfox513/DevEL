package p168r4;

import java.io.File;
import java.security.GeneralSecurityException;
/* renamed from: r4.l */
/* loaded from: classes2.dex */
public final class C5966l implements ez2 {

    /* renamed from: a */
    public final /* synthetic */ dx2 f27004a;

    public C5966l(C6040n c6040n, dx2 dx2Var) {
        this.f27004a = dx2Var;
    }

    @Override // p168r4.ez2
    /* renamed from: a */
    public final boolean mo9819a(File file) {
        try {
            return this.f27004a.m11898a(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}

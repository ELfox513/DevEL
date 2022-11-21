package p054e7;

import p029c7.C1078a;
import p108k7.C4484c;
/* renamed from: e7.a */
/* loaded from: classes2.dex */
public class C3389a extends AbstractC3393e {

    /* renamed from: b */
    public static final C1078a f15768b = C1078a.m24639e();

    /* renamed from: a */
    public final C4484c f15769a;

    /* renamed from: g */
    public final boolean m19004g() {
        C4484c c4484c = this.f15769a;
        if (c4484c == null) {
            f15768b.m24635i("ApplicationInfo is null");
            return false;
        } else if (!c4484c.m16293c0()) {
            f15768b.m24635i("GoogleAppId is null");
            return false;
        } else if (!this.f15769a.m16295a0()) {
            f15768b.m24635i("AppInstanceId is null");
            return false;
        } else if (!this.f15769a.m16294b0()) {
            f15768b.m24635i("ApplicationProcessState is null");
            return false;
        } else if (this.f15769a.m16296Z()) {
            if (!this.f15769a.m16299W().m16322V()) {
                f15768b.m24635i("AndroidAppInfo.packageName is null");
                return false;
            } else if (!this.f15769a.m16299W().m16321W()) {
                f15768b.m24635i("AndroidAppInfo.sdkVersion is null");
                return false;
            } else {
                return true;
            }
        } else {
            return true;
        }
    }

    public C3389a(C4484c c4484c) {
        this.f15769a = c4484c;
    }

    @Override // p054e7.AbstractC3393e
    /* renamed from: c */
    public boolean mo18978c() {
        if (!m19004g()) {
            f15768b.m24635i("ApplicationInfo is invalid");
            return false;
        }
        return true;
    }
}

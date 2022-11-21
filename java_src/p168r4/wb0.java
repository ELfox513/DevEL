package p168r4;

import android.location.Location;
import java.util.Date;
import java.util.Set;
import p041d3.InterfaceC3300e;
/* renamed from: r4.wb0 */
/* loaded from: classes2.dex */
public final class wb0 implements InterfaceC3300e {

    /* renamed from: a */
    public final Date f33153a;

    /* renamed from: b */
    public final int f33154b;

    /* renamed from: c */
    public final Set<String> f33155c;

    /* renamed from: d */
    public final boolean f33156d;

    /* renamed from: e */
    public final Location f33157e;

    /* renamed from: f */
    public final int f33158f;

    /* renamed from: g */
    public final boolean f33159g;

    /* renamed from: h */
    public final String f33160h;

    public wb0(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f33153a = date;
        this.f33154b = i;
        this.f33155c = set;
        this.f33157e = location;
        this.f33156d = z;
        this.f33158f = i2;
        this.f33159g = z2;
        this.f33160h = str;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: c */
    public final int mo5779c() {
        return this.f33158f;
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: e */
    public final boolean mo5778e() {
        return this.f33159g;
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: f */
    public final Date mo5777f() {
        return this.f33153a;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: g */
    public final boolean mo5776g() {
        return this.f33156d;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: h */
    public final Set<String> mo5775h() {
        return this.f33155c;
    }

    @Override // p041d3.InterfaceC3300e
    /* renamed from: j */
    public final Location mo5774j() {
        return this.f33157e;
    }

    @Override // p041d3.InterfaceC3300e
    @Deprecated
    /* renamed from: k */
    public final int mo5773k() {
        return this.f33154b;
    }
}

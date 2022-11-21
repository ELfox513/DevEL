package p070g5;

import android.content.Context;
import android.os.Bundle;
import p018b5.C0795o1;
import p220x3.C7297q;
/* renamed from: g5.f6 */
/* loaded from: classes2.dex */
public final class C3660f6 {

    /* renamed from: a */
    public final Context f16477a;

    /* renamed from: b */
    public String f16478b;

    /* renamed from: c */
    public String f16479c;

    /* renamed from: d */
    public String f16480d;

    /* renamed from: e */
    public Boolean f16481e;

    /* renamed from: f */
    public long f16482f;

    /* renamed from: g */
    public C0795o1 f16483g;

    /* renamed from: h */
    public boolean f16484h;

    /* renamed from: i */
    public final Long f16485i;

    /* renamed from: j */
    public String f16486j;

    public C3660f6(Context context, C0795o1 c0795o1, Long l) {
        this.f16484h = true;
        C7297q.m1883j(context);
        Context applicationContext = context.getApplicationContext();
        C7297q.m1883j(applicationContext);
        this.f16477a = applicationContext;
        this.f16485i = l;
        if (c0795o1 != null) {
            this.f16483g = c0795o1;
            this.f16478b = c0795o1.f2075q;
            this.f16479c = c0795o1.f2074p;
            this.f16480d = c0795o1.f2073k;
            this.f16484h = c0795o1.f2072d;
            this.f16482f = c0795o1.f2071b;
            this.f16486j = c0795o1.f2077s;
            Bundle bundle = c0795o1.f2076r;
            if (bundle != null) {
                this.f16481e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}

package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.Status;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p158q3.C5411b;
import p158q3.C5414c;
import p167r3.C5544k;
import p167r3.C5552s;
import p220x3.C7243b;
import p220x3.C7297q;
/* renamed from: com.google.android.gms.auth.api.signin.a */
/* loaded from: classes.dex */
public final class C1408a {
    /* renamed from: a */
    public static C5411b m23050a(Activity activity, GoogleSignInOptions googleSignInOptions) {
        return new C5411b(activity, (GoogleSignInOptions) C7297q.m1883j(googleSignInOptions));
    }

    /* renamed from: b */
    public static C5411b m23049b(Context context, GoogleSignInOptions googleSignInOptions) {
        return new C5411b(context, (GoogleSignInOptions) C7297q.m1883j(googleSignInOptions));
    }

    /* renamed from: c */
    public static GoogleSignInAccount m23048c(Context context) {
        return C5552s.m13076c(context).m13074e();
    }

    /* renamed from: d */
    public static AbstractC4346i<GoogleSignInAccount> m23047d(Intent intent) {
        C5414c m13087a = C5544k.m13087a(intent);
        if (m13087a == null) {
            return C4352l.m16768c(C7243b.m2038a(Status.f7711s));
        }
        GoogleSignInAccount m13321a = m13087a.m13321a();
        if (m13087a.getStatus().m23033c1() && m13321a != null) {
            return C4352l.m16767d(m13321a);
        }
        return C4352l.m16768c(C7243b.m2038a(m13087a.getStatus()));
    }
}

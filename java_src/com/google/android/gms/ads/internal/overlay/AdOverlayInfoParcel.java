package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p004a3.C0064e;
import p004a3.C0075p;
import p004a3.InterfaceC0076q;
import p004a3.InterfaceC0083x;
import p016b3.InterfaceC0548y0;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.InterfaceC5812gt;
import p168r4.c12;
import p168r4.cf1;
import p168r4.cs0;
import p168r4.im0;
import p168r4.ls1;
import p168r4.t40;
import p168r4.v40;
import p168r4.w71;
import p168r4.xt2;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
import p235z2.C7591j;
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends AbstractC7408a implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new C0075p();

    /* renamed from: A */
    public final t40 f7621A;
    @RecentlyNonNull

    /* renamed from: B */
    public final String f7622B;

    /* renamed from: C */
    public final c12 f7623C;

    /* renamed from: D */
    public final ls1 f7624D;

    /* renamed from: E */
    public final xt2 f7625E;

    /* renamed from: F */
    public final InterfaceC0548y0 f7626F;
    @RecentlyNonNull

    /* renamed from: G */
    public final String f7627G;
    @RecentlyNonNull

    /* renamed from: H */
    public final String f7628H;

    /* renamed from: I */
    public final w71 f7629I;

    /* renamed from: J */
    public final cf1 f7630J;

    /* renamed from: a */
    public final C0064e f7631a;

    /* renamed from: b */
    public final InterfaceC5812gt f7632b;

    /* renamed from: d */
    public final InterfaceC0076q f7633d;

    /* renamed from: k */
    public final cs0 f7634k;

    /* renamed from: p */
    public final v40 f7635p;
    @RecentlyNonNull

    /* renamed from: q */
    public final String f7636q;

    /* renamed from: r */
    public final boolean f7637r;
    @RecentlyNonNull

    /* renamed from: s */
    public final String f7638s;

    /* renamed from: t */
    public final InterfaceC0083x f7639t;

    /* renamed from: u */
    public final int f7640u;

    /* renamed from: v */
    public final int f7641v;
    @RecentlyNonNull

    /* renamed from: w */
    public final String f7642w;

    /* renamed from: x */
    public final im0 f7643x;
    @RecentlyNonNull

    /* renamed from: y */
    public final String f7644y;

    /* renamed from: z */
    public final C7591j f7645z;

    public AdOverlayInfoParcel(InterfaceC5812gt interfaceC5812gt, InterfaceC0076q interfaceC0076q, t40 t40Var, v40 v40Var, InterfaceC0083x interfaceC0083x, cs0 cs0Var, boolean z, int i, String str, im0 im0Var, cf1 cf1Var) {
        this.f7631a = null;
        this.f7632b = interfaceC5812gt;
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7621A = t40Var;
        this.f7635p = v40Var;
        this.f7636q = null;
        this.f7637r = z;
        this.f7638s = null;
        this.f7639t = interfaceC0083x;
        this.f7640u = i;
        this.f7641v = 3;
        this.f7642w = str;
        this.f7643x = im0Var;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = cf1Var;
    }

    public AdOverlayInfoParcel(InterfaceC5812gt interfaceC5812gt, InterfaceC0076q interfaceC0076q, t40 t40Var, v40 v40Var, InterfaceC0083x interfaceC0083x, cs0 cs0Var, boolean z, int i, String str, String str2, im0 im0Var, cf1 cf1Var) {
        this.f7631a = null;
        this.f7632b = interfaceC5812gt;
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7621A = t40Var;
        this.f7635p = v40Var;
        this.f7636q = str2;
        this.f7637r = z;
        this.f7638s = str;
        this.f7639t = interfaceC0083x;
        this.f7640u = i;
        this.f7641v = 3;
        this.f7642w = null;
        this.f7643x = im0Var;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = cf1Var;
    }

    @RecentlyNonNull
    /* renamed from: X0 */
    public static AdOverlayInfoParcel m23098X0(@RecentlyNonNull Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    public AdOverlayInfoParcel(InterfaceC5812gt interfaceC5812gt, InterfaceC0076q interfaceC0076q, InterfaceC0083x interfaceC0083x, cs0 cs0Var, int i, im0 im0Var, String str, C7591j c7591j, String str2, String str3, String str4, w71 w71Var) {
        this.f7631a = null;
        this.f7632b = null;
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7621A = null;
        this.f7635p = null;
        this.f7636q = str2;
        this.f7637r = false;
        this.f7638s = str3;
        this.f7639t = null;
        this.f7640u = i;
        this.f7641v = 1;
        this.f7642w = null;
        this.f7643x = im0Var;
        this.f7644y = str;
        this.f7645z = c7591j;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = str4;
        this.f7629I = w71Var;
        this.f7630J = null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 2, this.f7631a, i, false);
        C7411c.m1480k(parcel, 3, BinderC3514b.m18741L0(this.f7632b).asBinder(), false);
        C7411c.m1480k(parcel, 4, BinderC3514b.m18741L0(this.f7633d).asBinder(), false);
        C7411c.m1480k(parcel, 5, BinderC3514b.m18741L0(this.f7634k).asBinder(), false);
        C7411c.m1480k(parcel, 6, BinderC3514b.m18741L0(this.f7635p).asBinder(), false);
        C7411c.m1473r(parcel, 7, this.f7636q, false);
        C7411c.m1488c(parcel, 8, this.f7637r);
        C7411c.m1473r(parcel, 9, this.f7638s, false);
        C7411c.m1480k(parcel, 10, BinderC3514b.m18741L0(this.f7639t).asBinder(), false);
        C7411c.m1479l(parcel, 11, this.f7640u);
        C7411c.m1479l(parcel, 12, this.f7641v);
        C7411c.m1473r(parcel, 13, this.f7642w, false);
        C7411c.m1474q(parcel, 14, this.f7643x, i, false);
        C7411c.m1473r(parcel, 16, this.f7644y, false);
        C7411c.m1474q(parcel, 17, this.f7645z, i, false);
        C7411c.m1480k(parcel, 18, BinderC3514b.m18741L0(this.f7621A).asBinder(), false);
        C7411c.m1473r(parcel, 19, this.f7622B, false);
        C7411c.m1480k(parcel, 20, BinderC3514b.m18741L0(this.f7623C).asBinder(), false);
        C7411c.m1480k(parcel, 21, BinderC3514b.m18741L0(this.f7624D).asBinder(), false);
        C7411c.m1480k(parcel, 22, BinderC3514b.m18741L0(this.f7625E).asBinder(), false);
        C7411c.m1480k(parcel, 23, BinderC3514b.m18741L0(this.f7626F).asBinder(), false);
        C7411c.m1473r(parcel, 24, this.f7627G, false);
        C7411c.m1473r(parcel, 25, this.f7628H, false);
        C7411c.m1480k(parcel, 26, BinderC3514b.m18741L0(this.f7629I).asBinder(), false);
        C7411c.m1480k(parcel, 27, BinderC3514b.m18741L0(this.f7630J).asBinder(), false);
        C7411c.m1489b(parcel, m1490a);
    }

    public AdOverlayInfoParcel(InterfaceC5812gt interfaceC5812gt, InterfaceC0076q interfaceC0076q, InterfaceC0083x interfaceC0083x, cs0 cs0Var, boolean z, int i, im0 im0Var, cf1 cf1Var) {
        this.f7631a = null;
        this.f7632b = interfaceC5812gt;
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7621A = null;
        this.f7635p = null;
        this.f7636q = null;
        this.f7637r = z;
        this.f7638s = null;
        this.f7639t = interfaceC0083x;
        this.f7640u = i;
        this.f7641v = 2;
        this.f7642w = null;
        this.f7643x = im0Var;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = cf1Var;
    }

    public AdOverlayInfoParcel(C0064e c0064e, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, im0 im0Var, String str4, C7591j c7591j, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6, String str7, IBinder iBinder11, IBinder iBinder12) {
        this.f7631a = c0064e;
        this.f7632b = (InterfaceC5812gt) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder));
        this.f7633d = (InterfaceC0076q) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder2));
        this.f7634k = (cs0) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder3));
        this.f7621A = (t40) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder6));
        this.f7635p = (v40) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder4));
        this.f7636q = str;
        this.f7637r = z;
        this.f7638s = str2;
        this.f7639t = (InterfaceC0083x) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder5));
        this.f7640u = i;
        this.f7641v = i2;
        this.f7642w = str3;
        this.f7643x = im0Var;
        this.f7644y = str4;
        this.f7645z = c7591j;
        this.f7622B = str5;
        this.f7627G = str6;
        this.f7623C = (c12) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder7));
        this.f7624D = (ls1) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder8));
        this.f7625E = (xt2) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder9));
        this.f7626F = (InterfaceC0548y0) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder10));
        this.f7628H = str7;
        this.f7629I = (w71) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder11));
        this.f7630J = (cf1) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder12));
    }

    public AdOverlayInfoParcel(C0064e c0064e, InterfaceC5812gt interfaceC5812gt, InterfaceC0076q interfaceC0076q, InterfaceC0083x interfaceC0083x, im0 im0Var, cs0 cs0Var, cf1 cf1Var) {
        this.f7631a = c0064e;
        this.f7632b = interfaceC5812gt;
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7621A = null;
        this.f7635p = null;
        this.f7636q = null;
        this.f7637r = false;
        this.f7638s = null;
        this.f7639t = interfaceC0083x;
        this.f7640u = -1;
        this.f7641v = 4;
        this.f7642w = null;
        this.f7643x = im0Var;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = cf1Var;
    }

    public AdOverlayInfoParcel(InterfaceC0076q interfaceC0076q, cs0 cs0Var, int i, im0 im0Var) {
        this.f7633d = interfaceC0076q;
        this.f7634k = cs0Var;
        this.f7640u = 1;
        this.f7643x = im0Var;
        this.f7631a = null;
        this.f7632b = null;
        this.f7621A = null;
        this.f7635p = null;
        this.f7636q = null;
        this.f7637r = false;
        this.f7638s = null;
        this.f7639t = null;
        this.f7641v = 1;
        this.f7642w = null;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = null;
        this.f7627G = null;
        this.f7623C = null;
        this.f7624D = null;
        this.f7625E = null;
        this.f7626F = null;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = null;
    }

    public AdOverlayInfoParcel(cs0 cs0Var, im0 im0Var, InterfaceC0548y0 interfaceC0548y0, c12 c12Var, ls1 ls1Var, xt2 xt2Var, String str, String str2, int i) {
        this.f7631a = null;
        this.f7632b = null;
        this.f7633d = null;
        this.f7634k = cs0Var;
        this.f7621A = null;
        this.f7635p = null;
        this.f7636q = null;
        this.f7637r = false;
        this.f7638s = null;
        this.f7639t = null;
        this.f7640u = i;
        this.f7641v = 5;
        this.f7642w = null;
        this.f7643x = im0Var;
        this.f7644y = null;
        this.f7645z = null;
        this.f7622B = str;
        this.f7627G = str2;
        this.f7623C = c12Var;
        this.f7624D = ls1Var;
        this.f7625E = xt2Var;
        this.f7626F = interfaceC0548y0;
        this.f7628H = null;
        this.f7629I = null;
        this.f7630J = null;
    }
}

.class public final Lr4/ww;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/yw;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final q0(Lr4/lt;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.class public final Lr4/pv;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/rv;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final F1(Lr4/iv;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H3(Lr4/a40;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final T5(Ljava/lang/String;Lr4/t30;Lr4/q30;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p3}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final W2(Lr4/d20;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c()Lr4/ov;
    .locals 4

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoader"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/ov;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lr4/ov;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/mv;

    invoke-direct {v2, v1}, Lr4/mv;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

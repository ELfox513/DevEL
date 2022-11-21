.class public final Lx3/u0;
.super Lx4/a;
.source "SourceFile"

# interfaces
.implements Lx3/w0;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-direct {p0, p1, v0}, Lx4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C2(Lt3/d0;)Lt3/g0;
    .locals 1

    invoke-virtual {p0}, Lx4/a;->o0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lx4/c;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lx4/a;->j0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lt3/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lx4/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lt3/g0;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final X6(Lt3/i0;Lf4/a;)Z
    .locals 1

    invoke-virtual {p0}, Lx4/a;->o0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lx4/c;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lx4/c;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lx4/a;->j0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lx4/c;->a(Landroid/os/Parcel;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Lx4/a;->o0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lx4/a;->j0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lx4/c;->a(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

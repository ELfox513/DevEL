.class public final Lr4/le0;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/ne0;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Q0(Lf4/a;Lr4/fb0;I)Lr4/ke0;
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.offline.IOfflineUtils"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of v0, p3, Lr4/ke0;

    if-eqz v0, :cond_1

    move-object p2, p3

    check-cast p2, Lr4/ke0;

    goto :goto_0

    :cond_1
    new-instance p3, Lr4/ie0;

    invoke-direct {p3, p2}, Lr4/ie0;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

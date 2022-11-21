.class public final Lk4/h;
.super La5/h;
.source "SourceFile"

# interfaces
.implements Lk4/d;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-direct {p0, p1, v0}, La5/h;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final P5(Lk4/p;)V
    .locals 1

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, La5/n;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x138a

    invoke-virtual {p0, p1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Q6()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-virtual {p0, v1, v0}, La5/h;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final V(J)V
    .locals 1

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1389

    invoke-virtual {p0, p1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final X5()V
    .locals 2

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138e

    invoke-virtual {p0, v1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e5(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, La5/n;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x138d

    invoke-virtual {p0, p1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m4(Lk4/p;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, La5/n;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p4}, La5/n;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13a0

    invoke-virtual {p0, p1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t6(Lk4/b;J)V
    .locals 1

    invoke-virtual {p0}, La5/h;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, La5/n;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x3c8d

    invoke-virtual {p0, p1, v0}, La5/h;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

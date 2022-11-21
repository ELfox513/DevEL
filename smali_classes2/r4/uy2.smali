.class public final Lr4/uy2;
.super Lr4/q2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A2(Lr4/ny2;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b2(Lr4/qy2;)Lr4/sy2;
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lr4/sy2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lr4/sy2;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final e3(Lr4/zy2;)Lr4/cz2;
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lr4/cz2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lr4/cz2;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

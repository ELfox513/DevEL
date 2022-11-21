.class public final Lr4/wv;
.super Lr4/q2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b2(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;II)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p5

    invoke-static {p5, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p5, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p5, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, p6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p5}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

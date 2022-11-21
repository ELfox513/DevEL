.class public final Lr4/e40;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/g40;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

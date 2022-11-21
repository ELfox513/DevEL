.class public final Lb5/g1;
.super Lb5/o0;
.source "SourceFile"

# interfaces
.implements Lb5/i1;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    invoke-direct {p0, p1, v0}, Lb5/o0;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C0(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

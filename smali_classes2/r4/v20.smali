.class public abstract Lr4/v20;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/w20;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/w20;->c0(Lf4/a;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lr4/w20;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/w20;->b0(Lf4/a;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method

.class public abstract Lr4/qw;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/rw;


# direct methods
.method public static f7(Landroid/os/IBinder;)Lr4/rw;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/rw;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/rw;

    return-object v0

    :cond_1
    new-instance v0, Lr4/pw;

    invoke-direct {v0, p0}, Lr4/pw;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

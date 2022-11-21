.class public abstract Ls4/e;
.super Ls4/b;
.source "SourceFile"

# interfaces
.implements Ls4/d;


# direct methods
.method public static j0(Landroid/os/IBinder;)Ls4/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ls4/d;

    if-eqz v1, :cond_1

    check-cast v0, Ls4/d;

    return-object v0

    :cond_1
    new-instance v0, Ls4/f;

    invoke-direct {v0, p0}, Ls4/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

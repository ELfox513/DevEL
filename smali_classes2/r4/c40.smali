.class public abstract Lr4/c40;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/d40;


# direct methods
.method public static f7(Landroid/os/IBinder;)Lr4/d40;
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/d40;

    if-eqz v1, :cond_0

    check-cast v0, Lr4/d40;

    return-object v0

    :cond_0
    new-instance v0, Lr4/b40;

    invoke-direct {v0, p0}, Lr4/b40;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.class public abstract Lr4/su2;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/tu2;


# direct methods
.method public static f7(Landroid/os/IBinder;)Lr4/tu2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.omid.IOmid"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/tu2;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/tu2;

    return-object v0

    :cond_1
    new-instance v0, Lr4/ru2;

    invoke-direct {v0, p0}, Lr4/ru2;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

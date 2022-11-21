.class public abstract Lc5/b;
.super Lc5/g;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# direct methods
.method public static j0(Landroid/os/IBinder;)Lc5/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc5/c;

    if-eqz v1, :cond_1

    check-cast v0, Lc5/c;

    return-object v0

    :cond_1
    new-instance v0, Lc5/e;

    invoke-direct {v0, p0}, Lc5/e;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

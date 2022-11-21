.class public final Lr4/r60;
.super Lz2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/c<",
        "Lr4/z60;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;)V
    .locals 7

    invoke-static {p1}, Lr4/ch0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xa6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lz2/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.HTTP"

    return-object v0
.end method

.method public final h0()Lr4/z60;
    .locals 1

    invoke-super {p0}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lr4/z60;

    return-object v0
.end method

.method public final bridge synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/z60;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lr4/z60;

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/z60;

    invoke-direct {v0, p1}, Lr4/z60;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

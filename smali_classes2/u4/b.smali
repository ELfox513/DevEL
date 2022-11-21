.class public final Lu4/b;
.super Lx3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/g<",
        "Lu4/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final T:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ln3/c;Lu3/f$a;Lu3/f$b;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lx3/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/d;Lu3/f$a;Lu3/f$b;)V

    if-nez p4, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lu4/b;->T:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method public final k()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Lx3/g;->h0()Lx3/d;

    move-result-object v0

    invoke-virtual {v0}, Lx3/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ln3/b;->c:Lu3/a;

    invoke-virtual {v0, v1}, Lx3/d;->e(Lu3/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lu4/c;

    if-eqz v1, :cond_1

    check-cast v0, Lu4/c;

    return-object v0

    :cond_1
    new-instance v0, Lu4/d;

    invoke-direct {v0, p1}, Lu4/d;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final y()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lu4/b;->T:Landroid/os/Bundle;

    return-object v0
.end method

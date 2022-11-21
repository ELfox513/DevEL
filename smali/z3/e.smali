.class public final Lz3/e;
.super Lx3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/g<",
        "Lz3/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final T:Lx3/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Lx3/x;Lv3/e;Lv3/k;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lx3/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/d;Lv3/e;Lv3/k;)V

    iput-object p4, p0, Lz3/e;->T:Lx3/x;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()I
    .locals 1

    const v0, 0xc1f7c30

    return v0
.end method

.method public final bridge synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lz3/a;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lz3/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lz3/a;

    invoke-direct {v0, p1}, Lz3/a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final u()[Lt3/d;
    .locals 1

    sget-object v0, Lw4/d;->b:[Lt3/d;

    return-object v0
.end method

.method public final y()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lz3/e;->T:Lx3/x;

    invoke-virtual {v0}, Lx3/x;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

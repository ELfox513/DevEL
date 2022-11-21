.class public final Lv4/g;
.super Lx3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/g<",
        "Lv4/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final T:Ln3/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ln3/a$a;Lu3/f$a;Lu3/f$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lx3/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/d;Lu3/f$a;Lu3/f$b;)V

    new-instance p1, Ln3/a$a$a;

    if-nez p4, :cond_0

    sget-object p4, Ln3/a$a;->k:Ln3/a$a;

    :cond_0
    invoke-direct {p1, p4}, Ln3/a$a$a;-><init>(Ln3/a$a;)V

    invoke-static {}, Lv4/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/a$a$a;->a(Ljava/lang/String;)Ln3/a$a$a;

    move-result-object p1

    invoke-virtual {p1}, Ln3/a$a$a;->b()Ln3/a$a;

    move-result-object p1

    iput-object p1, p0, Lv4/g;->T:Ln3/a$a;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final k()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lv4/i;

    if-eqz v1, :cond_1

    check-cast v0, Lv4/i;

    return-object v0

    :cond_1
    new-instance v0, Lv4/h;

    invoke-direct {v0, p1}, Lv4/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final y()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lv4/g;->T:Ln3/a$a;

    invoke-virtual {v0}, Ln3/a$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

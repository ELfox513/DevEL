.class public abstract Lx3/r0;
.super Lx3/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/b1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Landroid/os/Bundle;

.field public final synthetic f:Lx3/c;


# direct methods
.method public constructor <init>(Lx3/c;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lx3/r0;->f:Lx3/c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lx3/b1;-><init>(Lx3/c;Ljava/lang/Object;)V

    iput p2, p0, Lx3/r0;->d:I

    iput-object p3, p0, Lx3/r0;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    iget p1, p0, Lx3/r0;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lx3/r0;->f()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lx3/r0;->f:Lx3/c;

    invoke-static {p1, v0, v1}, Lx3/c;->Z(Lx3/c;ILandroid/os/IInterface;)V

    new-instance p1, Lt3/b;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lt3/b;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    invoke-virtual {p0, p1}, Lx3/r0;->g(Lt3/b;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lx3/r0;->f:Lx3/c;

    invoke-static {p1, v0, v1}, Lx3/c;->Z(Lx3/c;ILandroid/os/IInterface;)V

    iget-object p1, p0, Lx3/r0;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_2
    new-instance p1, Lt3/b;

    iget v0, p0, Lx3/r0;->d:I

    invoke-direct {p1, v0, v1}, Lt3/b;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public abstract f()Z
.end method

.method public abstract g(Lt3/b;)V
.end method

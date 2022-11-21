.class public final Lr4/d70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;


# instance fields
.field public final synthetic a:Lr4/vm0;

.field public final synthetic b:Lr4/f70;


# direct methods
.method public constructor <init>(Lr4/f70;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/d70;->b:Lr4/f70;

    iput-object p2, p0, Lr4/d70;->a:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j0(I)V
    .locals 4

    iget-object v0, p0, Lr4/d70;->a:Lr4/vm0;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lr4/d70;->a:Lr4/vm0;

    iget-object v0, p0, Lr4/d70;->b:Lr4/f70;

    invoke-static {v0}, Lr4/f70;->b(Lr4/f70;)Lr4/r60;

    move-result-object v0

    invoke-virtual {v0}, Lr4/r60;->h0()Lr4/z60;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lr4/d70;->a:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

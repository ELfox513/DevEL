.class public final Lx3/f1;
.super Lx3/r0;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lx3/c;


# direct methods
.method public constructor <init>(Lx3/c;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lx3/f1;->g:Lx3/c;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lx3/r0;-><init>(Lx3/c;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 2

    iget-object v0, p0, Lx3/f1;->g:Lx3/c;

    iget-object v0, v0, Lx3/c;->A:Lx3/c$c;

    sget-object v1, Lt3/b;->p:Lt3/b;

    invoke-interface {v0, v1}, Lx3/c$c;->a(Lt3/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Lt3/b;)V
    .locals 1

    iget-object v0, p0, Lx3/f1;->g:Lx3/c;

    invoke-virtual {v0}, Lx3/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx3/f1;->g:Lx3/c;

    invoke-static {v0}, Lx3/c;->X(Lx3/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lx3/f1;->g:Lx3/c;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lx3/c;->T(Lx3/c;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lx3/f1;->g:Lx3/c;

    iget-object v0, v0, Lx3/c;->A:Lx3/c$c;

    invoke-interface {v0, p1}, Lx3/c$c;->a(Lt3/b;)V

    iget-object v0, p0, Lx3/f1;->g:Lx3/c;

    invoke-virtual {v0, p1}, Lx3/c;->J(Lt3/b;)V

    return-void
.end method

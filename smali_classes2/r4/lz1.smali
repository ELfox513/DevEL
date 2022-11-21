.class public final Lr4/lz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ga1;
.implements Lr4/y81;
.implements Lr4/m71;
.implements Lr4/la1;


# instance fields
.field public final a:Lr4/wt2;

.field public final b:Lr4/xt2;

.field public final d:Lr4/rl0;


# direct methods
.method public constructor <init>(Lr4/wt2;Lr4/xt2;Lr4/rl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lz1;->a:Lr4/wt2;

    iput-object p2, p0, Lr4/lz1;->b:Lr4/xt2;

    iput-object p3, p0, Lr4/lz1;->d:Lr4/rl0;

    return-void
.end method


# virtual methods
.method public final A0(Lr4/bp2;)V
    .locals 2

    iget-object v0, p0, Lr4/lz1;->a:Lr4/wt2;

    iget-object v1, p0, Lr4/lz1;->d:Lr4/rl0;

    invoke-virtual {v0, p1, v1}, Lr4/wt2;->g(Lr4/bp2;Lr4/rl0;)Lr4/wt2;

    return-void
.end method

.method public final B(Lr4/lt;)V
    .locals 3

    iget-object v0, p0, Lr4/lz1;->a:Lr4/wt2;

    const-string v1, "action"

    const-string v2, "ftl"

    invoke-virtual {v0, v1, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget v1, p1, Lr4/lt;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object p1, p1, Lr4/lt;->d:Ljava/lang/String;

    const-string v1, "ed"

    invoke-virtual {v0, v1, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object p1, p0, Lr4/lz1;->b:Lr4/xt2;

    iget-object v0, p0, Lr4/lz1;->a:Lr4/wt2;

    invoke-interface {p1, v0}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final Q(Z)V
    .locals 2

    sget-object p1, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/lz1;->a:Lr4/wt2;

    const-string v0, "scar"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_0
    return-void
.end method

.method public final c0(Lr4/og0;)V
    .locals 1

    iget-object v0, p0, Lr4/lz1;->a:Lr4/wt2;

    iget-object p1, p1, Lr4/og0;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lr4/wt2;->f(Landroid/os/Bundle;)Lr4/wt2;

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lr4/lz1;->b:Lr4/xt2;

    iget-object v1, p0, Lr4/lz1;->a:Lr4/wt2;

    const-string v2, "action"

    const-string v3, "loaded"

    invoke-virtual {v1, v2, v3}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

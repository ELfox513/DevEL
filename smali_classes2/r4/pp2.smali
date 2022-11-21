.class public final Lr4/pp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/cs0;

.field public final synthetic b:Lr4/pu2;

.field public final synthetic c:Lr4/c12;


# direct methods
.method public constructor <init>(Lr4/cs0;Lr4/pu2;Lr4/c12;)V
    .locals 0

    iput-object p1, p0, Lr4/pp2;->a:Lr4/cs0;

    iput-object p2, p0, Lr4/pp2;->b:Lr4/pu2;

    iput-object p3, p0, Lr4/pp2;->c:Lr4/c12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 8

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lr4/pp2;->a:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->G()Lr4/no2;

    move-result-object p1

    iget-boolean p1, p1, Lr4/no2;->f0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/pp2;->b:Lr4/pu2;

    invoke-virtual {p1, v4}, Lr4/pu2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lr4/e12;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v1

    iget-object v0, p0, Lr4/pp2;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->M()Lr4/so2;

    move-result-object v0

    iget-object v3, v0, Lr4/so2;->b:Ljava/lang/String;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/pp2;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb3/k2;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lr4/rz;->C4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/pp2;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->G()Lr4/no2;

    move-result-object v0

    iget-boolean v0, v0, Lr4/no2;->O:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v5, 0x2

    :cond_2
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lr4/e12;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lr4/pp2;->c:Lr4/c12;

    invoke-virtual {v0, p1}, Lr4/c12;->g(Lr4/e12;)V

    return-void
.end method

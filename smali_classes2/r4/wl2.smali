.class public final Lr4/wl2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "+",
        "Lr4/i31;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/uq2;

.field public final b:Lr4/r61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lr4/vl2;


# direct methods
.method public constructor <init>(Lr4/uq2;Lr4/r61;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/uq2;",
            "TR;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wl2;->a:Lr4/uq2;

    iput-object p2, p0, Lr4/wl2;->b:Lr4/r61;

    iput-object p3, p0, Lr4/wl2;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lr4/wl2;Lr4/vl2;)Lr4/vl2;
    .locals 0

    iput-object p1, p0, Lr4/wl2;->d:Lr4/vl2;

    return-object p1
.end method

.method public static synthetic b(Lr4/wl2;)Lr4/vl2;
    .locals 0

    iget-object p0, p0, Lr4/wl2;->d:Lr4/vl2;

    return-object p0
.end method

.method public static synthetic d(Lr4/wl2;)Lr4/er2;
    .locals 0

    invoke-virtual {p0}, Lr4/wl2;->e()Lr4/er2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/vl2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/wl2;->d:Lr4/vl2;

    if-nez v0, :cond_1

    sget-object v0, Lr4/l10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lr4/vl2;

    invoke-virtual {p0}, Lr4/wl2;->e()Lr4/er2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lr4/vl2;-><init>(Lr4/og0;Lr4/er2;Lr4/ul2;)V

    iput-object v0, p0, Lr4/wl2;->d:Lr4/vl2;

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/wl2;->b:Lr4/r61;

    invoke-interface {v0}, Lr4/r61;->r()Lr4/m41;

    move-result-object v0

    iget-object v1, p0, Lr4/wl2;->a:Lr4/uq2;

    invoke-interface {v1}, Lr4/uq2;->c()Lr4/br2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/m41;->f(Lr4/br2;)Lr4/h83;

    move-result-object v0

    invoke-static {v0}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v0

    new-instance v1, Lr4/tl2;

    invoke-direct {v1, p0}, Lr4/tl2;-><init>(Lr4/wl2;)V

    iget-object v2, p0, Lr4/wl2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/sl2;

    invoke-direct {v1, p0}, Lr4/sl2;-><init>(Lr4/wl2;)V

    const-class v2, Lr4/yx1;

    iget-object v3, p0, Lr4/wl2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1, v3}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    :goto_0
    sget-object v1, Lr4/rl2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/wl2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lr4/er2;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/wl2;->b:Lr4/r61;

    invoke-interface {v0}, Lr4/r61;->Z()Lr4/hp2;

    move-result-object v0

    iget-object v1, v0, Lr4/hp2;->d:Lr4/tt;

    iget-object v2, v0, Lr4/hp2;->f:Ljava/lang/String;

    iget-object v0, v0, Lr4/hp2;->j:Lr4/eu;

    iget-object v3, p0, Lr4/wl2;->a:Lr4/uq2;

    invoke-interface {v3, v1, v2, v0}, Lr4/uq2;->a(Lr4/tt;Ljava/lang/String;Lr4/eu;)Lr4/er2;

    move-result-object v0

    return-object v0
.end method

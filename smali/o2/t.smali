.class public Lo2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lp2/c;

.field public final c:Lo2/v;

.field public final d:Lq2/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lp2/c;Lo2/v;Lq2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/t;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo2/t;->b:Lp2/c;

    iput-object p3, p0, Lo2/t;->c:Lo2/v;

    iput-object p4, p0, Lo2/t;->d:Lq2/b;

    return-void
.end method

.method public static synthetic a(Lo2/t;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lo2/t;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lo2/t;)V
    .locals 0

    invoke-direct {p0}, Lo2/t;->e()V

    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo2/t;->b:Lp2/c;

    invoke-interface {v0}, Lp2/c;->T()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li2/m;

    iget-object v2, p0, Lo2/t;->c:Lo2/v;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lo2/v;->b(Li2/m;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    iget-object v0, p0, Lo2/t;->d:Lq2/b;

    new-instance v1, Lo2/s;

    invoke-direct {v1, p0}, Lo2/s;-><init>(Lo2/t;)V

    invoke-interface {v0, v1}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lo2/t;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lo2/r;

    invoke-direct {v1, p0}, Lo2/r;-><init>(Lo2/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

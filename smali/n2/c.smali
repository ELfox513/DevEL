.class public Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lo2/v;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lj2/e;

.field public final d:Lp2/c;

.field public final e:Lq2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Li2/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ln2/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lj2/e;Lo2/v;Lp2/c;Lq2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ln2/c;->c:Lj2/e;

    iput-object p3, p0, Ln2/c;->a:Lo2/v;

    iput-object p4, p0, Ln2/c;->d:Lp2/c;

    iput-object p5, p0, Ln2/c;->e:Lq2/b;

    return-void
.end method

.method public static synthetic b(Ln2/c;Li2/m;Lf2/h;Li2/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ln2/c;->e(Li2/m;Lf2/h;Li2/h;)V

    return-void
.end method

.method public static synthetic c(Ln2/c;Li2/m;Li2/h;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ln2/c;->d(Li2/m;Li2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Li2/m;Li2/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln2/c;->d:Lp2/c;

    invoke-interface {v0, p1, p2}, Lp2/c;->b0(Li2/m;Li2/h;)Lp2/i;

    iget-object p2, p0, Ln2/c;->a:Lo2/v;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lo2/v;->b(Li2/m;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic e(Li2/m;Lf2/h;Li2/h;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ln2/c;->c:Lj2/e;

    invoke-virtual {p1}, Li2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lj2/e;->a(Ljava/lang/String;)Lj2/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p3, "Transport backend \'%s\' is not registered"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Li2/m;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ln2/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lf2/h;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-interface {v0, p3}, Lj2/m;->a(Li2/h;)Li2/h;

    move-result-object p3

    iget-object v0, p0, Ln2/c;->e:Lq2/b;

    new-instance v1, Ln2/b;

    invoke-direct {v1, p0, p1, p3}, Ln2/b;-><init>(Ln2/c;Li2/m;Li2/h;)V

    invoke-interface {v0, v1}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lf2/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p3, Ln2/c;->f:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error scheduling event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lf2/h;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Li2/m;Li2/h;Lf2/h;)V
    .locals 2

    iget-object v0, p0, Ln2/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln2/a;

    invoke-direct {v1, p0, p1, p3, p2}, Ln2/a;-><init>(Ln2/c;Li2/m;Lf2/h;Li2/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

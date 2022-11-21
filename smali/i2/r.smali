.class public Li2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/q;


# static fields
.field public static volatile e:Li2/s;


# instance fields
.field public final a:Lr2/a;

.field public final b:Lr2/a;

.field public final c:Ln2/e;

.field public final d:Lo2/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lr2/a;Lr2/a;Ln2/e;Lo2/p;Lo2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/r;->a:Lr2/a;

    iput-object p2, p0, Li2/r;->b:Lr2/a;

    iput-object p3, p0, Li2/r;->c:Ln2/e;

    iput-object p4, p0, Li2/r;->d:Lo2/p;

    invoke-virtual {p5}, Lo2/t;->c()V

    return-void
.end method

.method public static c()Li2/r;
    .locals 2

    sget-object v0, Li2/r;->e:Li2/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li2/s;->d()Li2/r;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Li2/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/e;",
            ")",
            "Ljava/util/Set<",
            "Lf2/b;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Li2/f;

    if-eqz v0, :cond_0

    check-cast p0, Li2/f;

    invoke-interface {p0}, Li2/f;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Li2/r;->e:Li2/s;

    if-nez v0, :cond_1

    const-class v0, Li2/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li2/r;->e:Li2/s;

    if-nez v1, :cond_0

    invoke-static {}, Li2/d;->e()Li2/s$a;

    move-result-object v1

    invoke-interface {v1, p0}, Li2/s$a;->a(Landroid/content/Context;)Li2/s$a;

    move-result-object p0

    invoke-interface {p0}, Li2/s$a;->build()Li2/s;

    move-result-object p0

    sput-object p0, Li2/r;->e:Li2/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Li2/l;Lf2/h;)V
    .locals 3

    iget-object v0, p0, Li2/r;->c:Ln2/e;

    invoke-virtual {p1}, Li2/l;->f()Li2/m;

    move-result-object v1

    invoke-virtual {p1}, Li2/l;->c()Lf2/c;

    move-result-object v2

    invoke-virtual {v2}, Lf2/c;->c()Lf2/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Li2/m;->e(Lf2/d;)Li2/m;

    move-result-object v1

    invoke-virtual {p0, p1}, Li2/r;->b(Li2/l;)Li2/h;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Ln2/e;->a(Li2/m;Li2/h;Lf2/h;)V

    return-void
.end method

.method public final b(Li2/l;)Li2/h;
    .locals 4

    invoke-static {}, Li2/h;->a()Li2/h$a;

    move-result-object v0

    iget-object v1, p0, Li2/r;->a:Lr2/a;

    invoke-interface {v1}, Lr2/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Li2/h$a;->i(J)Li2/h$a;

    move-result-object v0

    iget-object v1, p0, Li2/r;->b:Lr2/a;

    invoke-interface {v1}, Lr2/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Li2/h$a;->k(J)Li2/h$a;

    move-result-object v0

    invoke-virtual {p1}, Li2/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li2/h$a;->j(Ljava/lang/String;)Li2/h$a;

    move-result-object v0

    new-instance v1, Li2/g;

    invoke-virtual {p1}, Li2/l;->b()Lf2/b;

    move-result-object v2

    invoke-virtual {p1}, Li2/l;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Li2/g;-><init>(Lf2/b;[B)V

    invoke-virtual {v0, v1}, Li2/h$a;->h(Li2/g;)Li2/h$a;

    move-result-object v0

    invoke-virtual {p1}, Li2/l;->c()Lf2/c;

    move-result-object p1

    invoke-virtual {p1}, Lf2/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Li2/h$a;->g(Ljava/lang/Integer;)Li2/h$a;

    move-result-object p1

    invoke-virtual {p1}, Li2/h$a;->d()Li2/h;

    move-result-object p1

    return-object p1
.end method

.method public e()Lo2/p;
    .locals 1

    iget-object v0, p0, Li2/r;->d:Lo2/p;

    return-object v0
.end method

.method public g(Li2/e;)Lf2/g;
    .locals 4

    new-instance v0, Li2/n;

    invoke-static {p1}, Li2/r;->d(Li2/e;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Li2/m;->a()Li2/m$a;

    move-result-object v2

    invoke-interface {p1}, Li2/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Li2/m$a;->b(Ljava/lang/String;)Li2/m$a;

    move-result-object v2

    invoke-interface {p1}, Li2/e;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Li2/m$a;->c([B)Li2/m$a;

    move-result-object p1

    invoke-virtual {p1}, Li2/m$a;->a()Li2/m;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Li2/n;-><init>(Ljava/util/Set;Li2/m;Li2/q;)V

    return-object v0
.end method

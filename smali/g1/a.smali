.class public abstract Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lx0/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx0/c;

    invoke-direct {v0}, Lx0/c;-><init>()V

    iput-object v0, p0, Lg1/a;->a:Lx0/c;

    return-void
.end method

.method public static b(Ljava/util/UUID;Lx0/i;)Lg1/a;
    .locals 1

    new-instance v0, Lg1/a$a;

    invoke-direct {v0, p1, p0}, Lg1/a$a;-><init>(Lx0/i;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lx0/i;Z)Lg1/a;
    .locals 1

    new-instance v0, Lg1/a$c;

    invoke-direct {v0, p1, p0, p2}, Lg1/a$c;-><init>(Lx0/i;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lx0/i;)Lg1/a;
    .locals 1

    new-instance v0, Lg1/a$b;

    invoke-direct {v0, p1, p0}, Lg1/a$b;-><init>(Lx0/i;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lx0/i;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lg1/a;->f(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx0/i;->p()Lx0/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lx0/d;->l(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lx0/i;->q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/e;

    invoke-interface {v0, p2}, Lx0/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Lw0/m;
    .locals 1

    iget-object v0, p0, Lg1/a;->a:Lx0/c;

    return-object v0
.end method

.method public final f(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->B()Lf1/q;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Lf1/b;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Lf1/q;->l(Ljava/lang/String;)Lw0/s;

    move-result-object v2

    sget-object v3, Lw0/s;->d:Lw0/s;

    if-eq v2, v3, :cond_0

    sget-object v3, Lw0/s;->k:Lw0/s;

    if-eq v2, v3, :cond_0

    sget-object v2, Lw0/s;->q:Lw0/s;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v2, v3}, Lf1/q;->b(Lw0/s;[Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, p2}, Lf1/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lx0/i;)V
    .locals 2

    invoke-virtual {p1}, Lx0/i;->l()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p1}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lx0/i;->q()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lx0/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public abstract h()V
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->h()V

    iget-object v0, p0, Lg1/a;->a:Lx0/c;

    sget-object v1, Lw0/m;->a:Lw0/m$b$c;

    invoke-virtual {v0, v1}, Lx0/c;->a(Lw0/m$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg1/a;->a:Lx0/c;

    new-instance v2, Lw0/m$b$a;

    invoke-direct {v2, v0}, Lw0/m$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lx0/c;->a(Lw0/m$b;)V

    :goto_0
    return-void
.end method

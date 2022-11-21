.class public Ls5/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;
.implements Lq6/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq6/b<",
        "TT;>;",
        "Lq6/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Lq6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lq6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls5/z;

    invoke-direct {v0}, Ls5/z;-><init>()V

    sput-object v0, Ls5/c0;->c:Lq6/a$a;

    new-instance v0, Ls5/a0;

    invoke-direct {v0}, Ls5/a0;-><init>()V

    sput-object v0, Ls5/c0;->d:Lq6/b;

    return-void
.end method

.method public constructor <init>(Lq6/a$a;Lq6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/a$a<",
            "TT;>;",
            "Lq6/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/c0;->a:Lq6/a$a;

    iput-object p2, p0, Ls5/c0;->b:Lq6/b;

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ls5/c0;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lq6/b;)V
    .locals 0

    invoke-static {p0}, Ls5/c0;->f(Lq6/b;)V

    return-void
.end method

.method public static synthetic d(Lq6/a$a;Lq6/a$a;Lq6/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ls5/c0;->h(Lq6/a$a;Lq6/a$a;Lq6/b;)V

    return-void
.end method

.method public static e()Ls5/c0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ls5/c0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ls5/c0;

    sget-object v1, Ls5/c0;->c:Lq6/a$a;

    sget-object v2, Ls5/c0;->d:Lq6/b;

    invoke-direct {v0, v1, v2}, Ls5/c0;-><init>(Lq6/a$a;Lq6/b;)V

    return-object v0
.end method

.method public static synthetic f(Lq6/b;)V
    .locals 0

    return-void
.end method

.method public static synthetic g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic h(Lq6/a$a;Lq6/a$a;Lq6/b;)V
    .locals 0

    invoke-interface {p0, p2}, Lq6/a$a;->a(Lq6/b;)V

    invoke-interface {p1, p2}, Lq6/a$a;->a(Lq6/b;)V

    return-void
.end method

.method public static i(Lq6/b;)Ls5/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq6/b<",
            "TT;>;)",
            "Ls5/c0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ls5/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ls5/c0;-><init>(Lq6/a$a;Lq6/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lq6/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/a$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls5/c0;->b:Lq6/b;

    sget-object v1, Ls5/c0;->d:Lq6/b;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lq6/a$a;->a(Lq6/b;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ls5/c0;->b:Lq6/b;

    if-eq v2, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ls5/c0;->a:Lq6/a$a;

    new-instance v3, Ls5/b0;

    invoke-direct {v3, v1, p1}, Ls5/b0;-><init>(Lq6/a$a;Lq6/a$a;)V

    iput-object v3, p0, Ls5/c0;->a:Lq6/a$a;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Lq6/a$a;->a(Lq6/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ls5/c0;->b:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(Lq6/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls5/c0;->b:Lq6/b;

    sget-object v1, Ls5/c0;->d:Lq6/b;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls5/c0;->a:Lq6/a$a;

    const/4 v1, 0x0

    iput-object v1, p0, Ls5/c0;->a:Lq6/a$a;

    iput-object p1, p0, Ls5/c0;->b:Lq6/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lq6/a$a;->a(Lq6/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

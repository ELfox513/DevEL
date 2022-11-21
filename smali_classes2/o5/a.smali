.class public Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq6/b<",
            "Lq5/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo5/a;->a:Ljava/util/Map;

    iput-object p1, p0, Lo5/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lo5/a;->c:Lq6/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ln5/c;
    .locals 3

    new-instance v0, Ln5/c;

    iget-object v1, p0, Lo5/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lo5/a;->c:Lq6/b;

    invoke-direct {v0, v1, v2, p1}, Ln5/c;-><init>(Landroid/content/Context;Lq6/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ln5/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo5/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo5/a;->a:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lo5/a;->a(Ljava/lang/String;)Ln5/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lo5/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

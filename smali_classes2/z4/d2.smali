.class public final Lz4/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lz4/d2;


# instance fields
.field public final a:Lz4/g2;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz4/f2<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/d2;

    invoke-direct {v0}, Lz4/d2;-><init>()V

    sput-object v0, Lz4/d2;->c:Lz4/d2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lz4/d2;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lz4/g1;

    invoke-direct {v0}, Lz4/g1;-><init>()V

    iput-object v0, p0, Lz4/d2;->a:Lz4/g2;

    return-void
.end method

.method public static a()Lz4/d2;
    .locals 1

    sget-object v0, Lz4/d2;->c:Lz4/d2;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lz4/f2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz4/f2<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lz4/o0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lz4/d2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/f2;

    if-nez v1, :cond_0

    iget-object v1, p0, Lz4/d2;->a:Lz4/g2;

    invoke-interface {v1, p1}, Lz4/g2;->a(Ljava/lang/Class;)Lz4/f2;

    move-result-object v1

    invoke-static {p1, v0}, Lz4/o0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lz4/o0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lz4/d2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/f2;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final c(Ljava/lang/Object;)Lz4/f2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz4/f2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz4/d2;->b(Ljava/lang/Class;)Lz4/f2;

    move-result-object p1

    return-object p1
.end method

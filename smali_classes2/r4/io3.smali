.class public final Lr4/io3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/io3;


# instance fields
.field public final a:Lr4/to3;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lr4/ro3<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/io3;

    invoke-direct {v0}, Lr4/io3;-><init>()V

    sput-object v0, Lr4/io3;->c:Lr4/io3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lr4/io3;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lr4/sn3;

    invoke-direct {v0}, Lr4/sn3;-><init>()V

    iput-object v0, p0, Lr4/io3;->a:Lr4/to3;

    return-void
.end method

.method public static a()Lr4/io3;
    .locals 1

    sget-object v0, Lr4/io3;->c:Lr4/io3;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lr4/ro3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lr4/ro3<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lr4/zm3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lr4/io3;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ro3;

    if-nez v1, :cond_1

    iget-object v1, p0, Lr4/io3;->a:Lr4/to3;

    invoke-interface {v1, p1}, Lr4/to3;->d(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v1

    invoke-static {p1, v0}, Lr4/zm3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lr4/zm3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/io3;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ro3;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

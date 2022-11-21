.class public final Lr4/ks1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lr4/ls1;


# direct methods
.method public constructor <init>(Lr4/ls1;)V
    .locals 0

    iput-object p1, p0, Lr4/ks1;->b:Lr4/ls1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lr4/ks1;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lr4/ks1;)Lr4/ks1;
    .locals 2

    iget-object v0, p0, Lr4/ks1;->a:Ljava/util/Map;

    iget-object v1, p0, Lr4/ks1;->b:Lr4/ls1;

    invoke-static {v1}, Lr4/ls1;->c(Lr4/ls1;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/so2;)Lr4/ks1;
    .locals 2

    iget-object v0, p0, Lr4/ks1;->a:Ljava/util/Map;

    iget-object p1, p1, Lr4/so2;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Lr4/no2;)Lr4/ks1;
    .locals 2

    iget-object v0, p0, Lr4/ks1;->a:Ljava/util/Map;

    iget-object p1, p1, Lr4/no2;->w:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;
    .locals 1

    iget-object v0, p0, Lr4/ks1;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lr4/ks1;->b:Lr4/ls1;

    invoke-static {v0}, Lr4/ls1;->b(Lr4/ls1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/js1;

    invoke-direct {v1, p0}, Lr4/js1;-><init>(Lr4/ks1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/ks1;->b:Lr4/ls1;

    invoke-static {v0}, Lr4/ls1;->a(Lr4/ls1;)Lr4/qs1;

    move-result-object v0

    iget-object v1, p0, Lr4/ks1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lr4/ss1;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()V
    .locals 2

    iget-object v0, p0, Lr4/ks1;->b:Lr4/ls1;

    invoke-static {v0}, Lr4/ls1;->a(Lr4/ls1;)Lr4/qs1;

    move-result-object v0

    iget-object v1, p0, Lr4/ks1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lr4/ss1;->a(Ljava/util/Map;)V

    return-void
.end method

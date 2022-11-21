.class public final Lr4/bm3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lr4/bm3;

.field public static volatile c:Lr4/bm3;

.field public static final d:Lr4/bm3;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr4/am3;",
            "Lr4/nm3<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/bm3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/bm3;-><init>(Z)V

    sput-object v0, Lr4/bm3;->d:Lr4/bm3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/bm3;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr4/bm3;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lr4/bm3;
    .locals 2

    sget-object v0, Lr4/bm3;->b:Lr4/bm3;

    if-nez v0, :cond_1

    const-class v1, Lr4/bm3;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lr4/bm3;->b:Lr4/bm3;

    if-nez v0, :cond_0

    sget-object v0, Lr4/bm3;->d:Lr4/bm3;

    sput-object v0, Lr4/bm3;->b:Lr4/bm3;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Lr4/bm3;
    .locals 2

    const-class v0, Lr4/bm3;

    sget-object v1, Lr4/bm3;->c:Lr4/bm3;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/bm3;->c:Lr4/bm3;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-static {v0}, Lr4/jm3;->b(Ljava/lang/Class;)Lr4/bm3;

    move-result-object v1

    sput-object v1, Lr4/bm3;->c:Lr4/bm3;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final c(Lr4/ao3;I)Lr4/nm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lr4/ao3;",
            ">(TContainingType;I)",
            "Lr4/nm3<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/bm3;->a:Ljava/util/Map;

    new-instance v1, Lr4/am3;

    invoke-direct {v1, p1, p2}, Lr4/am3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/nm3;

    return-object p1
.end method

.class public final Lb5/k8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lb5/k8;

.field public static volatile c:Lb5/k8;

.field public static final d:Lb5/k8;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb5/j8;",
            "Lb5/w8<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/k8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb5/k8;-><init>(Z)V

    sput-object v0, Lb5/k8;->d:Lb5/k8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb5/k8;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lb5/k8;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lb5/k8;
    .locals 2

    sget-object v0, Lb5/k8;->b:Lb5/k8;

    if-nez v0, :cond_1

    const-class v1, Lb5/k8;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lb5/k8;->b:Lb5/k8;

    if-nez v0, :cond_0

    sget-object v0, Lb5/k8;->d:Lb5/k8;

    sput-object v0, Lb5/k8;->b:Lb5/k8;

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

.method public static b()Lb5/k8;
    .locals 2

    const-class v0, Lb5/k8;

    sget-object v1, Lb5/k8;->c:Lb5/k8;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lb5/k8;->c:Lb5/k8;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-static {v0}, Lb5/s8;->b(Ljava/lang/Class;)Lb5/k8;

    move-result-object v1

    sput-object v1, Lb5/k8;->c:Lb5/k8;

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
.method public final c(Lb5/ea;I)Lb5/w8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lb5/ea;",
            ">(TContainingType;I)",
            "Lb5/w8<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lb5/k8;->a:Ljava/util/Map;

    new-instance v1, Lb5/j8;

    invoke-direct {v1, p1, p2}, Lb5/j8;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/w8;

    return-object p1
.end method

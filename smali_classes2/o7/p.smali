.class public Lo7/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/p$a;
    }
.end annotation


# static fields
.field public static b:Z = true

.field public static volatile c:Lo7/p;

.field public static final d:Lo7/p;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo7/p$a;",
            "Lo7/y$e<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo7/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo7/p;-><init>(Z)V

    sput-object v0, Lo7/p;->d:Lo7/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo7/p;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo7/p;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lo7/p;
    .locals 2

    sget-object v0, Lo7/p;->c:Lo7/p;

    if-nez v0, :cond_2

    const-class v1, Lo7/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lo7/p;->c:Lo7/p;

    if-nez v0, :cond_1

    sget-boolean v0, Lo7/p;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo7/o;->a()Lo7/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lo7/p;->d:Lo7/p;

    :goto_0
    sput-object v0, Lo7/p;->c:Lo7/p;

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lo7/s0;I)Lo7/y$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo7/s0;",
            ">(TContainingType;I)",
            "Lo7/y$e<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lo7/p;->a:Ljava/util/Map;

    new-instance v1, Lo7/p$a;

    invoke-direct {v1, p1, p2}, Lo7/p$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/y$e;

    return-object p1
.end method

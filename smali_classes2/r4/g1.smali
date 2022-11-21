.class public final Lr4/g1;
.super Lr4/e2;
.source "SourceFile"


# static fields
.field public static final j:Lr4/g2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/g2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/g2;

    invoke-direct {v0}, Lr4/g2;-><init>()V

    sput-object v0, Lr4/g1;->j:Lr4/g2;

    return-void
.end method

.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/content/Context;)V
    .locals 7

    const-string v2, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S"

    const-string v3, "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs="

    const/16 v6, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/g1;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lr4/za4;->u0(Ljava/lang/String;)Lr4/za4;

    sget-object v0, Lr4/g1;->j:Lr4/g2;

    iget-object v1, p0, Lr4/g1;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/g2;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lr4/g1;->i:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lr4/fc4;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lr4/za4;->u0(Ljava/lang/String;)Lr4/za4;

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

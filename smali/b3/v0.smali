.class public final Lb3/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lr4/t84;

.field public static final b:Ljava/lang/Object;

.field public static final c:Lb3/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/q0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb3/v0;->b:Ljava/lang/Object;

    new-instance v0, Lb3/n0;

    invoke-direct {v0}, Lb3/n0;-><init>()V

    sput-object v0, Lb3/v0;->c:Lb3/q0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    sget-object v0, Lb3/v0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb3/v0;->a:Lr4/t84;

    if-nez v1, :cond_2

    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    invoke-static {}, Lc4/e;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lr4/rz;->Q2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lb3/e0;->b(Landroid/content/Context;)Lr4/t84;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lr4/y94;->a(Landroid/content/Context;Lr4/e94;)Lr4/t84;

    move-result-object p1

    :goto_1
    sput-object p1, Lb3/v0;->a:Lr4/t84;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Lr4/l84;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    sget-object v1, Lb3/v0;->a:Lr4/t84;

    new-instance v2, Lb3/u0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0}, Lb3/u0;-><init>(Ljava/lang/String;Ljava/util/Map;Lr4/vm0;)V

    invoke-virtual {v1, v2}, Lr4/t84;->b(Lr4/q84;)Lr4/q84;

    return-object v0
.end method

.method public final b(ILjava/lang/String;Ljava/util/Map;[B)Lr4/h83;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v10, Lb3/s0;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lb3/s0;-><init>(Lb3/r0;)V

    new-instance v6, Lb3/o0;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lb3/o0;-><init>(Lb3/v0;Ljava/lang/String;Lb3/s0;)V

    new-instance v12, Lr4/bm0;

    invoke-direct {v12, v1}, Lr4/bm0;-><init>(Ljava/lang/String;)V

    new-instance v13, Lb3/p0;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lb3/p0;-><init>(Lb3/v0;ILjava/lang/String;Lr4/v84;Lr4/u84;[BLjava/util/Map;Lr4/bm0;)V

    invoke-static {}, Lr4/bm0;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v13}, Lr4/q84;->B()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lr4/q84;->C()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lr4/bm0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lr4/x74; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lb3/v0;->a:Lr4/t84;

    invoke-virtual {v0, v13}, Lr4/t84;->b(Lr4/q84;)Lr4/q84;

    return-object v10
.end method

.class public abstract Lr4/qq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lr4/po0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/po0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lr4/po0;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lr4/qq0;->a:Landroid/content/Context;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v1

    invoke-interface {p1}, Lr4/po0;->n()Lr4/im0;

    move-result-object v2

    iget-object v2, v2, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/qq0;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic s(Lr4/qq0;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/po0;

    if-eqz p0, :cond_0

    const-string p1, "onPrecacheEvent"

    invoke-interface {p0, p1, p2}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract e(Ljava/lang/String;)Z
.end method

.method public f(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr4/qq0;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;[Ljava/lang/String;Lr4/hq0;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr4/qq0;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    return-void
.end method

.method public k(I)V
    .locals 0

    return-void
.end method

.method public abstract m()V
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v14, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v15, p14

    move/from16 v16, p15

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    move-object/from16 v17, v1

    new-instance v1, Lr4/kq0;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lr4/kq0;-><init>(Lr4/qq0;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .locals 15

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v14, Lr4/lq0;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lr4/lq0;-><init>(Lr4/qq0;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v1, Lr4/mq0;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/mq0;-><init>(Lr4/qq0;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v7, Lr4/nq0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lr4/nq0;-><init>(Lr4/qq0;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v7, Lr4/oq0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lr4/oq0;-><init>(Lr4/qq0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

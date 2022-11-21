.class public final Lr4/ot3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lr4/ft3;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr4/nt3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lr4/ot3;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr4/nt3;",
            ">;I",
            "Lr4/ft3;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lr4/ot3;->a:I

    iput-object p3, p0, Lr4/ot3;->b:Lr4/ft3;

    return-void
.end method

.method public static final n(J)J
    .locals 3

    invoke-static {p0, p1}, Lr4/e3;->a(J)J

    move-result-wide p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final a(ILr4/ft3;J)Lr4/ot3;
    .locals 6

    new-instance p3, Lr4/ot3;

    iget-object v1, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lr4/ot3;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;J)V

    return-object p3
.end method

.method public final b(Landroid/os/Handler;Lr4/pt3;)V
    .locals 2

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lr4/nt3;

    invoke-direct {v1, p1, p2}, Lr4/nt3;-><init>(Landroid/os/Handler;Lr4/pt3;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lr4/pt3;)V
    .locals 3

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v2, v1, Lr4/nt3;->b:Lr4/pt3;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V
    .locals 11

    new-instance v10, Lr4/ct3;

    invoke-static/range {p7 .. p8}, Lr4/ot3;->n(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Lr4/ot3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Lr4/ot3;->e(Lr4/ws3;Lr4/ct3;)V

    return-void
.end method

.method public final e(Lr4/ws3;Lr4/ct3;)V
    .locals 4

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v2, v1, Lr4/nt3;->b:Lr4/pt3;

    iget-object v1, v1, Lr4/nt3;->a:Landroid/os/Handler;

    new-instance v3, Lr4/it3;

    invoke-direct {v3, p0, v2, p1, p2}, Lr4/it3;-><init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;)V

    invoke-static {v1, v3}, Lr4/lc;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V
    .locals 11

    new-instance v10, Lr4/ct3;

    invoke-static/range {p7 .. p8}, Lr4/ot3;->n(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Lr4/ot3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Lr4/ot3;->g(Lr4/ws3;Lr4/ct3;)V

    return-void
.end method

.method public final g(Lr4/ws3;Lr4/ct3;)V
    .locals 4

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v2, v1, Lr4/nt3;->b:Lr4/pt3;

    iget-object v1, v1, Lr4/nt3;->a:Landroid/os/Handler;

    new-instance v3, Lr4/jt3;

    invoke-direct {v3, p0, v2, p1, p2}, Lr4/jt3;-><init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;)V

    invoke-static {v1, v3}, Lr4/lc;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V
    .locals 11

    new-instance v10, Lr4/ct3;

    invoke-static/range {p7 .. p8}, Lr4/ot3;->n(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Lr4/ot3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v10}, Lr4/ot3;->i(Lr4/ws3;Lr4/ct3;)V

    return-void
.end method

.method public final i(Lr4/ws3;Lr4/ct3;)V
    .locals 4

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v2, v1, Lr4/nt3;->b:Lr4/pt3;

    iget-object v1, v1, Lr4/nt3;->a:Landroid/os/Handler;

    new-instance v3, Lr4/kt3;

    invoke-direct {v3, p0, v2, p1, p2}, Lr4/kt3;-><init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;)V

    invoke-static {v1, v3}, Lr4/lc;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11

    new-instance v10, Lr4/ct3;

    invoke-static/range {p7 .. p8}, Lr4/ot3;->n(J)J

    move-result-wide v6

    invoke-static/range {p9 .. p10}, Lr4/ot3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    invoke-virtual {p0, p1, v10, v2, v3}, Lr4/ot3;->k(Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final k(Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v4, v1, Lr4/nt3;->b:Lr4/pt3;

    iget-object v1, v1, Lr4/nt3;->a:Landroid/os/Handler;

    new-instance v9, Lr4/lt3;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lr4/lt3;-><init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lr4/lc;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(ILr4/e5;ILjava/lang/Object;J)V
    .locals 11

    new-instance v10, Lr4/ct3;

    invoke-static/range {p5 .. p6}, Lr4/ot3;->n(J)J

    move-result-wide v6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lr4/ot3;->m(Lr4/ct3;)V

    return-void
.end method

.method public final m(Lr4/ct3;)V
    .locals 4

    iget-object v0, p0, Lr4/ot3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nt3;

    iget-object v2, v1, Lr4/nt3;->b:Lr4/pt3;

    iget-object v1, v1, Lr4/nt3;->a:Landroid/os/Handler;

    new-instance v3, Lr4/mt3;

    invoke-direct {v3, p0, v2, p1}, Lr4/mt3;-><init>(Lr4/ot3;Lr4/pt3;Lr4/ct3;)V

    invoke-static {v1, v3}, Lr4/lc;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lr4/lm3;
.super Lr4/tk3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lr4/pm3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lr4/lm3<",
        "TMessageType;TBuilderType;>;>",
        "Lr4/tk3<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/pm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lr4/pm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lr4/pm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/tk3;-><init>()V

    iput-object p1, p0, Lr4/lm3;->a:Lr4/pm3;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/pm3;

    iput-object p1, p0, Lr4/lm3;->b:Lr4/pm3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/lm3;->d:Z

    return-void
.end method

.method public static final i(Lr4/pm3;Lr4/pm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lr4/ro3;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic H()Lr4/ao3;
    .locals 1

    invoke-virtual {p0}, Lr4/lm3;->n()Lr4/pm3;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/lm3;->l()Lr4/lm3;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lr4/ao3;
    .locals 1

    iget-object v0, p0, Lr4/lm3;->a:Lr4/pm3;

    return-object v0
.end method

.method public final bridge synthetic h(Lr4/uk3;)Lr4/tk3;
    .locals 0

    check-cast p1, Lr4/pm3;

    invoke-virtual {p0, p1}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    return-object p0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/pm3;

    iget-object v1, p0, Lr4/lm3;->b:Lr4/pm3;

    invoke-static {v0, v1}, Lr4/lm3;->i(Lr4/pm3;Lr4/pm3;)V

    iput-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    return-void
.end method

.method public final l()Lr4/lm3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lr4/lm3;->a:Lr4/pm3;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lr4/pm3;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/lm3;

    invoke-virtual {p0}, Lr4/lm3;->n()Lr4/pm3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    return-object v0
.end method

.method public n()Lr4/pm3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v1

    invoke-interface {v1, v0}, Lr4/ro3;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    return-object v0
.end method

.method public final o()Lr4/pm3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/lm3;->n()Lr4/pm3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pm3;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lr4/gp3;

    invoke-direct {v1, v0}, Lr4/gp3;-><init>(Lr4/ao3;)V

    throw v1
.end method

.method public final p(Lr4/pm3;)Lr4/lm3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    invoke-static {v0, p1}, Lr4/lm3;->i(Lr4/pm3;Lr4/pm3;)V

    return-object p0
.end method

.method public final u([BIILr4/bm3;)Lr4/lm3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lr4/bm3;",
            ")TBuilderType;"
        }
    .end annotation

    iget-boolean p2, p0, Lr4/lm3;->d:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lr4/lm3;->d:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lr4/io3;->a()Lr4/io3;

    move-result-object p2

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lr4/io3;->b(Ljava/lang/Class;)Lr4/ro3;

    move-result-object v1

    iget-object v2, p0, Lr4/lm3;->b:Lr4/pm3;

    new-instance v6, Lr4/xk3;

    invoke-direct {v6, p4}, Lr4/xk3;-><init>(Lr4/bm3;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lr4/ro3;->h(Ljava/lang/Object;[BIILr4/xk3;)V
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    invoke-static {}, Lr4/bn3;->d()Lr4/bn3;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

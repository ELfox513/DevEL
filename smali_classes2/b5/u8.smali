.class public Lb5/u8;
.super Lb5/e7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb5/x8<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb5/u8<",
        "TMessageType;TBuilderType;>;>",
        "Lb5/e7<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lb5/x8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lb5/x8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lb5/x8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb5/e7;-><init>()V

    iput-object p1, p0, Lb5/u8;->a:Lb5/x8;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/x8;

    iput-object p1, p0, Lb5/u8;->b:Lb5/x8;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb5/u8;->d:Z

    return-void
.end method

.method public static final h(Lb5/x8;Lb5/x8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lb5/pa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lb5/ea;
    .locals 1

    iget-object v0, p0, Lb5/u8;->a:Lb5/x8;

    return-object v0
.end method

.method public final bridge synthetic b(Lb5/f7;)Lb5/e7;
    .locals 0

    check-cast p1, Lb5/x8;

    invoke-virtual {p0, p1}, Lb5/u8;->o(Lb5/x8;)Lb5/u8;

    return-object p0
.end method

.method public final bridge synthetic c([BII)Lb5/e7;
    .locals 1

    invoke-static {}, Lb5/k8;->a()Lb5/k8;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lb5/u8;->p([BIILb5/k8;)Lb5/u8;

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb5/u8;->n()Lb5/u8;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f([BIILb5/k8;)Lb5/e7;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lb5/u8;->p([BIILb5/k8;)Lb5/u8;

    return-object p0
.end method

.method public final i()Lb5/x8;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/u8;->j()Lb5/x8;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v3

    invoke-interface {v3, v0}, Lb5/pa;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Lb5/gb;

    invoke-direct {v1, v0}, Lb5/gb;-><init>(Lb5/ea;)V

    throw v1
.end method

.method public j()Lb5/x8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    return-object v0

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v1

    invoke-interface {v1, v0}, Lb5/pa;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb5/u8;->d:Z

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    return-object v0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/x8;

    iget-object v1, p0, Lb5/u8;->b:Lb5/x8;

    invoke-static {v0, v1}, Lb5/u8;->h(Lb5/x8;Lb5/x8;)V

    iput-object v0, p0, Lb5/u8;->b:Lb5/x8;

    return-void
.end method

.method public bridge synthetic m()Lb5/ea;
    .locals 1

    invoke-virtual {p0}, Lb5/u8;->j()Lb5/x8;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lb5/u8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lb5/u8;->a:Lb5/x8;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lb5/x8;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/u8;

    invoke-virtual {p0}, Lb5/u8;->j()Lb5/x8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/u8;->o(Lb5/x8;)Lb5/u8;

    return-object v0
.end method

.method public final o(Lb5/x8;)Lb5/u8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    invoke-static {v0, p1}, Lb5/u8;->h(Lb5/x8;Lb5/x8;)V

    return-object p0
.end method

.method public final p([BIILb5/k8;)Lb5/u8;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lb5/k8;",
            ")TBuilderType;"
        }
    .end annotation

    iget-boolean p2, p0, Lb5/u8;->d:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb5/u8;->d:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lb5/ma;->a()Lb5/ma;

    move-result-object p2

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb5/ma;->b(Ljava/lang/Class;)Lb5/pa;

    move-result-object v1

    iget-object v2, p0, Lb5/u8;->b:Lb5/x8;

    new-instance v6, Lb5/i7;

    invoke-direct {v6, p4}, Lb5/i7;-><init>(Lb5/k8;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lb5/pa;->g(Ljava/lang/Object;[BIILb5/i7;)V
    :try_end_0
    .catch Lb5/h9; {:try_start_0 .. :try_end_0} :catch_2
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
    invoke-static {}, Lb5/h9;->f()Lb5/h9;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

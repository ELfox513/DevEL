.class public abstract Lr4/jy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ja1;


# instance fields
.field public b:Lr4/h81;

.field public c:Lr4/h81;

.field public d:Lr4/h81;

.field public e:Lr4/h81;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lr4/h81;->e:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->d:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->e:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->b:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->c:Lr4/h81;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lr4/jy1;->e:Lr4/h81;

    sget-object v1, Lr4/h81;->e:Lr4/h81;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lr4/h81;)Lr4/h81;
    .locals 0

    iput-object p1, p0, Lr4/jy1;->d:Lr4/h81;

    invoke-virtual {p0, p1}, Lr4/jy1;->k(Lr4/h81;)Lr4/h81;

    move-result-object p1

    iput-object p1, p0, Lr4/jy1;->e:Lr4/h81;

    invoke-virtual {p0}, Lr4/jy1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/jy1;->e:Lr4/h81;

    goto :goto_0

    :cond_0
    sget-object p1, Lr4/h81;->e:Lr4/h81;

    :goto_0
    return-object p1
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-boolean v0, p0, Lr4/jy1;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/jy1;->h:Z

    invoke-virtual {p0}, Lr4/jy1;->l()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lr4/jy1;->g()V

    sget-object v0, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    sget-object v0, Lr4/h81;->e:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->d:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->e:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->b:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->c:Lr4/h81;

    invoke-virtual {p0}, Lr4/jy1;->n()V

    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/jy1;->h:Z

    iget-object v0, p0, Lr4/jy1;->d:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->b:Lr4/h81;

    iget-object v0, p0, Lr4/jy1;->e:Lr4/h81;

    iput-object v0, p0, Lr4/jy1;->c:Lr4/h81;

    invoke-virtual {p0}, Lr4/jy1;->m()V

    return-void
.end method

.method public final i(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lr4/jy1;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lr4/jy1;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public abstract k(Lr4/h81;)Lr4/h81;
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

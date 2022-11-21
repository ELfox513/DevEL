.class public final Lk1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk1/f;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Lk1/f;IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/d;->a:Lk1/f;

    iput p2, p0, Lk1/d;->b:I

    iput p3, p0, Lk1/d;->c:I

    iput p4, p0, Lk1/d;->d:I

    iput p5, p0, Lk1/d;->e:I

    iput p6, p0, Lk1/d;->f:I

    iput p7, p0, Lk1/d;->g:I

    iput p8, p0, Lk1/d;->h:I

    iput p9, p0, Lk1/d;->i:I

    iput p10, p0, Lk1/d;->j:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lk1/d;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk1/d;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk1/d;->i:I

    return v0
.end method

.method public d()[S
    .locals 2

    iget-object v0, p0, Lk1/d;->a:Lk1/f;

    iget v1, p0, Lk1/d;->f:I

    invoke-virtual {v0, v1}, Lk1/f;->u(I)Lk1/t;

    move-result-object v0

    invoke-virtual {v0}, Lk1/t;->d()[S

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lk1/d;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lk1/d;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lk1/d;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lk1/d;->j:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lk1/d;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lk1/d;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk1/d;->a:Lk1/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lk1/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk1/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/d;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->w()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/d;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk1/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/d;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->w()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/d;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

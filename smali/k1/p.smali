.class public final Lk1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:I

.field public final d:I

.field public final k:I


# direct methods
.method public constructor <init>(Lk1/f;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/p;->a:Lk1/f;

    iput p2, p0, Lk1/p;->b:I

    iput p3, p0, Lk1/p;->d:I

    iput p4, p0, Lk1/p;->k:I

    return-void
.end method


# virtual methods
.method public c(Lk1/p;)I
    .locals 2

    iget v0, p0, Lk1/p;->b:I

    iget v1, p1, Lk1/p;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Ll1/f;->a(II)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lk1/p;->k:I

    iget v1, p1, Lk1/p;->k:I

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Ll1/f;->a(II)I

    move-result p1

    return p1

    :cond_1
    iget v0, p0, Lk1/p;->d:I

    iget p1, p1, Lk1/p;->d:I

    invoke-static {v0, p1}, Ll1/f;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/p;

    invoke-virtual {p0, p1}, Lk1/p;->c(Lk1/p;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lk1/p;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lk1/p;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lk1/p;->d:I

    return v0
.end method

.method public j(Lk1/f$g;)V
    .locals 1

    iget v0, p0, Lk1/p;->b:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/p;->d:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/p;->k:I

    invoke-virtual {p1, v0}, Lk1/f$g;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk1/p;->a:Lk1/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lk1/p;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk1/p;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk1/p;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/p;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->w()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/p;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/p;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->v()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/p;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/p;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->r()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lk1/p;->d:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/r;

    invoke-virtual {v2}, Lk1/r;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lk1/f;->u(I)Lk1/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

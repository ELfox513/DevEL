.class public final Lk1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/m;",
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

    iput-object p1, p0, Lk1/m;->a:Lk1/f;

    iput p2, p0, Lk1/m;->b:I

    iput p3, p0, Lk1/m;->d:I

    iput p4, p0, Lk1/m;->k:I

    return-void
.end method


# virtual methods
.method public c(Lk1/m;)I
    .locals 2

    iget v0, p0, Lk1/m;->b:I

    iget v1, p1, Lk1/m;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Ll1/f;->a(II)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lk1/m;->k:I

    iget v1, p1, Lk1/m;->k:I

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Ll1/f;->a(II)I

    move-result p1

    return p1

    :cond_1
    iget v0, p0, Lk1/m;->d:I

    iget p1, p1, Lk1/m;->d:I

    invoke-static {v0, p1}, Ll1/f;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/m;

    invoke-virtual {p0, p1}, Lk1/m;->c(Lk1/m;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lk1/m;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lk1/m;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lk1/m;->d:I

    return v0
.end method

.method public j(Lk1/f$g;)V
    .locals 1

    iget v0, p0, Lk1/m;->b:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/m;->d:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/m;->k:I

    invoke-virtual {p1, v0}, Lk1/f$g;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk1/m;->a:Lk1/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lk1/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk1/m;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk1/m;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/m;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->w()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/m;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/m;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->v()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/m;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

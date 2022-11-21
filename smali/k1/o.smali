.class public Lk1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:Lk1/o$b;

.field public final d:I

.field public final k:I

.field public final p:I


# direct methods
.method public constructor <init>(Lk1/f;Lk1/o$b;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/o;->a:Lk1/f;

    iput-object p2, p0, Lk1/o;->b:Lk1/o$b;

    iput p3, p0, Lk1/o;->d:I

    iput p4, p0, Lk1/o;->k:I

    iput p5, p0, Lk1/o;->p:I

    return-void
.end method


# virtual methods
.method public c(Lk1/o;)I
    .locals 2

    iget-object v0, p0, Lk1/o;->b:Lk1/o$b;

    iget-object v1, p1, Lk1/o;->b:Lk1/o$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lk1/o;->k:I

    iget p1, p1, Lk1/o;->k:I

    invoke-static {v0, p1}, Ll1/f;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/o;

    invoke-virtual {p0, p1}, Lk1/o;->c(Lk1/o;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lk1/o;->k:I

    return v0
.end method

.method public f()Lk1/o$b;
    .locals 1

    iget-object v0, p0, Lk1/o;->b:Lk1/o$b;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lk1/o;->d:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lk1/o;->p:I

    return v0
.end method

.method public l(Lk1/f$g;)V
    .locals 1

    iget-object v0, p0, Lk1/o;->b:Lk1/o$b;

    invoke-static {v0}, Lk1/o$b;->c(Lk1/o$b;)I

    move-result v0

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/o;->d:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/o;->k:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    iget v0, p0, Lk1/o;->p:I

    invoke-virtual {p1, v0}, Lk1/f$g;->c0(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk1/o;->a:Lk1/f;

    const-string v1, " "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lk1/o;->b:Lk1/o$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk1/o;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lk1/o;->b:Lk1/o$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/o;->b:Lk1/o$b;

    invoke-virtual {v1}, Lk1/o$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk1/o;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->j()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/o;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk1/o;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->p()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lk1/o;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

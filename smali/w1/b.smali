.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lw1/i;

.field public final c:Lb2/j;

.field public final d:I


# direct methods
.method public constructor <init>(ILw1/i;Lb2/j;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    :try_start_0
    invoke-virtual {p2}, Lb2/o;->throwIfMutable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Lw1/i;->A(I)Lw1/h;

    move-result-object v3

    invoke-virtual {v3}, Lw1/h;->i()Lw1/t;

    move-result-object v3

    invoke-virtual {v3}, Lw1/t;->b()I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insns["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is a branch or can throw"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lw1/i;->A(I)Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v0

    if-eq v0, v2, :cond_5

    :try_start_1
    invoke-virtual {p3}, Lb2/o;->throwIfMutable()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_4

    if-ltz p4, :cond_3

    invoke-virtual {p3, p4}, Lb2/j;->A(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "primarySuccessor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not in successors "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lw1/b;->a:I

    iput-object p2, p0, Lw1/b;->b:Lw1/i;

    iput-object p3, p0, Lw1/b;->c:Lb2/j;

    iput p4, p0, Lw1/b;->d:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lw1/b;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lw1/b;->b:Lw1/i;

    invoke-virtual {v0}, Lw1/i;->B()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lw1/h;
    .locals 2

    iget-object v0, p0, Lw1/b;->b:Lw1/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/i;->A(I)Lw1/h;

    move-result-object v0

    return-object v0
.end method

.method public d()Lw1/i;
    .locals 1

    iget-object v0, p0, Lw1/b;->b:Lw1/i;

    return-object v0
.end method

.method public e()Lw1/h;
    .locals 1

    iget-object v0, p0, Lw1/b;->b:Lw1/i;

    invoke-virtual {v0}, Lw1/i;->B()Lw1/h;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lw1/b;->d:I

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lw1/b;->c:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw1/b;->c:Lb2/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    iget v1, p0, Lw1/b;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw1/b;->c:Lb2/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lb2/j;
    .locals 1

    iget-object v0, p0, Lw1/b;->c:Lb2/j;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lw1/b;->b:Lw1/i;

    invoke-virtual {v0}, Lw1/i;->B()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->e()Ly1/e;

    move-result-object v0

    invoke-interface {v0}, Ly1/e;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lw1/b;->a:I

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

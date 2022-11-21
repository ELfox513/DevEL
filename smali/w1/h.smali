.class public abstract Lw1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/h$a;,
        Lw1/h$b;
    }
.end annotation


# instance fields
.field public final a:Lw1/t;

.field public final b:Lw1/w;

.field public final d:Lw1/q;

.field public final k:Lw1/r;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lw1/h;->a:Lw1/t;

    iput-object p2, p0, Lw1/h;->b:Lw1/w;

    iput-object p3, p0, Lw1/h;->d:Lw1/q;

    iput-object p4, p0, Lw1/h;->k:Lw1/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract a(Lw1/h$b;)V
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lw1/h;->a:Lw1/t;

    invoke-virtual {v0}, Lw1/t;->a()Z

    move-result v0

    return v0
.end method

.method public c(Lw1/h;)Z
    .locals 2

    iget-object v0, p0, Lw1/h;->a:Lw1/t;

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw1/h;->b:Lw1/w;

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw1/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw1/h;->d:Lw1/q;

    invoke-virtual {p1}, Lw1/h;->k()Lw1/q;

    move-result-object v1

    invoke-static {v0, v1}, Lw1/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/h;->k:Lw1/r;

    invoke-virtual {p1}, Lw1/h;->m()Lw1/r;

    move-result-object v1

    invoke-static {v0, v1}, Lw1/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw1/h;->e()Ly1/e;

    move-result-object v0

    invoke-virtual {p1}, Lw1/h;->e()Ly1/e;

    move-result-object p1

    invoke-static {v0, p1}, Ly1/b;->z(Ly1/e;Ly1/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract e()Ly1/e;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lw1/q;
    .locals 3

    iget-object v0, p0, Lw1/h;->a:Lw1/t;

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw1/h;->k:Lw1/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw1/h;->d:Lw1/q;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lw1/t;
    .locals 1

    iget-object v0, p0, Lw1/h;->a:Lw1/t;

    return-object v0
.end method

.method public final j()Lw1/w;
    .locals 1

    iget-object v0, p0, Lw1/h;->b:Lw1/w;

    return-object v0
.end method

.method public final k()Lw1/q;
    .locals 1

    iget-object v0, p0, Lw1/h;->d:Lw1/q;

    return-object v0
.end method

.method public final m()Lw1/r;
    .locals 1

    iget-object v0, p0, Lw1/h;->k:Lw1/r;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lw1/h;->b:Lw1/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/h;->a:Lw1/t;

    invoke-virtual {v1}, Lw1/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lw1/h;->d:Lw1/q;

    const-string v1, " ."

    const-string v2, " "

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lw1/h;->d:Lw1/q;

    invoke-virtual {p1}, Lw1/q;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " <-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lw1/h;->k:Lw1/r;

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw1/h;->k:Lw1/r;

    invoke-virtual {v3, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/h;->b:Lw1/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw1/h;->a:Lw1/t;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, " :: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lw1/h;->d:Lw1/q;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " <- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lw1/h;->k:Lw1/r;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract q(Ly1/c;)Lw1/h;
.end method

.method public abstract r(Lw1/q;Lw1/r;)Lw1/h;
.end method

.method public s()Lw1/h;
    .locals 0

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw1/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw1/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw1/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw1/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

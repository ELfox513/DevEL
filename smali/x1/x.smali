.class public abstract Lx1/x;
.super Lx1/g0;
.source "SourceFile"


# instance fields
.field public final a:Lx1/e0;

.field public final b:Lx1/a0;


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/a0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lx1/x;->a:Lx1/e0;

    iput-object p2, p0, Lx1/x;->b:Lx1/a0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 2

    check-cast p1, Lx1/x;

    iget-object v0, p0, Lx1/x;->a:Lx1/e0;

    iget-object v1, p1, Lx1/x;->a:Lx1/e0;

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lx1/x;->b:Lx1/a0;

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    iget-object p1, p1, Lx1/x;->b:Lx1/a0;

    invoke-virtual {p1}, Lx1/a0;->x()Lx1/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lx1/x;

    iget-object v1, p0, Lx1/x;->a:Lx1/e0;

    iget-object v2, p1, Lx1/x;->a:Lx1/e0;

    invoke-virtual {v1, v2}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lx1/x;->b:Lx1/a0;

    iget-object p1, p1, Lx1/x;->b:Lx1/a0;

    invoke-virtual {v1, p1}, Lx1/a0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lx1/x;->a:Lx1/e0;

    invoke-virtual {v0}, Lx1/e0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lx1/x;->b:Lx1/a0;

    invoke-virtual {v1}, Lx1/a0;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final n()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lx1/x;->a:Lx1/e0;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx1/x;->a:Lx1/e0;

    invoke-virtual {v1}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1/x;->b:Lx1/a0;

    invoke-virtual {v1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lx1/a0;
    .locals 1

    iget-object v0, p0, Lx1/x;->b:Lx1/a0;

    return-object v0
.end method

.class public final Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lv1/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lx1/d0;

.field public final b:Lx1/a;


# direct methods
.method public constructor <init>(Lx1/d0;Lx1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lv1/e;->a:Lx1/d0;

    iput-object p2, p0, Lv1/e;->b:Lx1/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Lv1/e;)I
    .locals 2

    iget-object v0, p0, Lv1/e;->a:Lx1/d0;

    iget-object v1, p1, Lv1/e;->a:Lx1/d0;

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lv1/e;->b:Lx1/a;

    iget-object p1, p1, Lv1/e;->b:Lx1/a;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lv1/e;

    invoke-virtual {p0, p1}, Lv1/e;->c(Lv1/e;)I

    move-result p1

    return p1
.end method

.method public d()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lv1/e;->a:Lx1/d0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lv1/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lv1/e;

    iget-object v0, p0, Lv1/e;->a:Lx1/d0;

    iget-object v2, p1, Lv1/e;->a:Lx1/d0;

    invoke-virtual {v0, v2}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv1/e;->b:Lx1/a;

    iget-object p1, p1, Lv1/e;->b:Lx1/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lx1/a;
    .locals 1

    iget-object v0, p0, Lv1/e;->b:Lx1/a;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lv1/e;->a:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv1/e;->b:Lx1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv1/e;->a:Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv1/e;->b:Lx1/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

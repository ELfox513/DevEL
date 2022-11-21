.class public final Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:B

.field public final d:Lk1/j;


# direct methods
.method public constructor <init>(Lk1/f;BLk1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/a;->a:Lk1/f;

    iput-byte p2, p0, Lk1/a;->b:B

    iput-object p3, p0, Lk1/a;->d:Lk1/j;

    return-void
.end method


# virtual methods
.method public c(Lk1/a;)I
    .locals 1

    iget-object v0, p0, Lk1/a;->d:Lk1/j;

    iget-object p1, p1, Lk1/a;->d:Lk1/j;

    invoke-virtual {v0, p1}, Lk1/j;->d(Lk1/j;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/a;

    invoke-virtual {p0, p1}, Lk1/a;->c(Lk1/a;)I

    move-result p1

    return p1
.end method

.method public d()Lk1/l;
    .locals 3

    new-instance v0, Lk1/l;

    iget-object v1, p0, Lk1/a;->d:Lk1/j;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lk1/l;-><init>(Lk1/j;I)V

    return-object v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lk1/a;->d()Lk1/l;

    move-result-object v0

    invoke-virtual {v0}, Lk1/l;->d()I

    invoke-virtual {v0}, Lk1/l;->b()I

    move-result v0

    return v0
.end method

.method public h()B
    .locals 1

    iget-byte v0, p0, Lk1/a;->b:B

    return v0
.end method

.method public j(Lk1/f$g;)V
    .locals 1

    iget-byte v0, p0, Lk1/a;->b:B

    invoke-virtual {p1, v0}, Lk1/f$g;->writeByte(I)V

    iget-object v0, p0, Lk1/a;->d:Lk1/j;

    invoke-virtual {v0, p1}, Lk1/j;->f(Lk1/f$g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk1/a;->a:Lk1/f;

    const-string v1, " "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lk1/a;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk1/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lk1/a;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->a:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->w()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lk1/a;->f()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

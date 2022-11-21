.class public Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:I


# direct methods
.method public constructor <init>(Lk1/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/b;->a:Lk1/f;

    iput p2, p0, Lk1/b;->b:I

    return-void
.end method


# virtual methods
.method public c(Lk1/b;)I
    .locals 1

    iget v0, p0, Lk1/b;->b:I

    iget p1, p1, Lk1/b;->b:I

    invoke-static {v0, p1}, Ll1/f;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/b;

    invoke-virtual {p0, p1}, Lk1/b;->c(Lk1/b;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lk1/b;->b:I

    return v0
.end method

.method public f(Lk1/f$g;)V
    .locals 1

    iget v0, p0, Lk1/b;->b:I

    invoke-virtual {p1, v0}, Lk1/f$g;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lk1/b;->a:Lk1/f;

    if-nez v0, :cond_0

    iget v0, p0, Lk1/b;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lk1/f;->r()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lk1/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/r;

    invoke-virtual {v0}, Lk1/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

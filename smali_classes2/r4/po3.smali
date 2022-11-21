.class public final Lr4/po3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lr4/gl3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/qo3;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr4/gl3;


# direct methods
.method public synthetic constructor <init>(Lr4/ll3;Lr4/oo3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p2, p1, Lr4/qo3;

    if-eqz p2, :cond_0

    check-cast p1, Lr4/qo3;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lr4/qo3;->s()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lr4/po3;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lr4/qo3;->Z(Lr4/qo3;)Lr4/ll3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/po3;->b(Lr4/ll3;)Lr4/gl3;

    move-result-object p1

    iput-object p1, p0, Lr4/po3;->b:Lr4/gl3;

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lr4/po3;->a:Ljava/util/ArrayDeque;

    check-cast p1, Lr4/gl3;

    iput-object p1, p0, Lr4/po3;->b:Lr4/gl3;

    return-void
.end method


# virtual methods
.method public final a()Lr4/gl3;
    .locals 3

    iget-object v0, p0, Lr4/po3;->b:Lr4/gl3;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lr4/po3;->a:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/po3;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/qo3;

    invoke-static {v1}, Lr4/qo3;->a0(Lr4/qo3;)Lr4/ll3;

    move-result-object v1

    invoke-virtual {p0, v1}, Lr4/po3;->b(Lr4/ll3;)Lr4/gl3;

    move-result-object v2

    invoke-virtual {v2}, Lr4/ll3;->G()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    iput-object v2, p0, Lr4/po3;->b:Lr4/gl3;

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b(Lr4/ll3;)Lr4/gl3;
    .locals 1

    :goto_0
    instance-of v0, p1, Lr4/qo3;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/qo3;

    iget-object v0, p0, Lr4/po3;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p1}, Lr4/qo3;->Z(Lr4/qo3;)Lr4/ll3;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lr4/gl3;

    return-object p1
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lr4/po3;->b:Lr4/gl3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/po3;->a()Lr4/gl3;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public final Lr4/l53;
.super Lr4/b53;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/b53<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lr4/b53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/b53<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/b53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/b53<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/b53;-><init>()V

    iput-object p1, p0, Lr4/l53;->a:Lr4/b53;

    return-void
.end method


# virtual methods
.method public final a()Lr4/b53;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lr4/b53<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/l53;->a:Lr4/b53;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lr4/l53;->a:Lr4/b53;

    invoke-virtual {v0, p2, p1}, Lr4/b53;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lr4/l53;

    if-eqz v0, :cond_1

    check-cast p1, Lr4/l53;

    iget-object v0, p0, Lr4/l53;->a:Lr4/b53;

    iget-object p1, p1, Lr4/l53;->a:Lr4/b53;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr4/l53;->a:Lr4/b53;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/l53;->a:Lr4/b53;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

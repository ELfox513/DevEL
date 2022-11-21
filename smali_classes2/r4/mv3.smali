.class public final Lr4/mv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lr4/mv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(Lr4/e5;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lr4/e5;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lr4/mv3;->a:Z

    invoke-static {p2, v1}, Lr4/uv3;->k(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lr4/mv3;->b:Z

    return-void
.end method


# virtual methods
.method public final c(Lr4/mv3;)I
    .locals 3

    invoke-static {}, Lr4/c33;->i()Lr4/c33;

    move-result-object v0

    iget-boolean v1, p0, Lr4/mv3;->b:Z

    iget-boolean v2, p1, Lr4/mv3;->b:Z

    invoke-virtual {v0, v1, v2}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v0

    iget-boolean v1, p0, Lr4/mv3;->a:Z

    iget-boolean p1, p1, Lr4/mv3;->a:Z

    invoke-virtual {v0, v1, p1}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object p1

    invoke-virtual {p1}, Lr4/c33;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/mv3;

    invoke-virtual {p0, p1}, Lr4/mv3;->c(Lr4/mv3;)I

    move-result p1

    return p1
.end method

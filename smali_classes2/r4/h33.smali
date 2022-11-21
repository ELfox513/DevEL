.class public Lr4/h33;
.super Lr4/i33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/i33<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lr4/i33;-><init>()V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lr4/h33;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lr4/h33;->b:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lr4/h33;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lr4/h33<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/h33;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lr4/h33;->e(I)V

    iget-object v0, p0, Lr4/h33;->a:[Ljava/lang/Object;

    iget v1, p0, Lr4/h33;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr4/h33;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)Lr4/i33;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lr4/i33<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lr4/h33;->b:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lr4/h33;->e(I)V

    instance-of v0, p1, Lr4/j33;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/i33;->a(Ljava/lang/Object;)Lr4/i33;

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    check-cast p1, Lr4/j33;

    iget-object v0, p0, Lr4/h33;->a:[Ljava/lang/Object;

    iget v1, p0, Lr4/h33;->b:I

    invoke-virtual {p1, v0, v1}, Lr4/j33;->m([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lr4/h33;->b:I

    return-object p0
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lr4/h33;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    invoke-static {v1, p1}, Lr4/i33;->b(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lr4/h33;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lr4/h33;->c:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lr4/h33;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lr4/h33;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lr4/h33;->c:Z

    :cond_1
    return-void
.end method

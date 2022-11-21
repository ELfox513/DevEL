.class public Lz1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/d$a;
    }
.end annotation


# instance fields
.field public final a:Lz1/v;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Lz1/d$a;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/d;->a:Lz1/v;

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Lz1/d$a;

    iput-object v0, p0, Lz1/d;->c:[Lz1/d$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lz1/d;->c:[Lz1/d$a;

    new-instance v2, Lz1/d$a;

    invoke-direct {v2}, Lz1/d$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lz1/d;->c:[Lz1/d$a;

    aget-object v2, v2, v1

    iget v2, v2, Lz1/d$a;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    iget-object v3, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/s;

    invoke-virtual {v2, v3}, Lz1/s;->b(Lz1/s;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/s;

    iget-object v4, p0, Lz1/d;->c:[Lz1/d$a;

    aget-object v4, v4, v2

    invoke-virtual {v3}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_1
    if-ltz v5, :cond_3

    move v6, v5

    :goto_2
    iget v7, v4, Lz1/d$a;->b:I

    if-eq v6, v7, :cond_2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    goto :goto_3

    :cond_0
    iget-object v7, p0, Lz1/d;->c:[Lz1/d$a;

    aget-object v6, v7, v6

    iget-object v7, v6, Lz1/d$a;->a:Lb2/k;

    invoke-interface {v7, v2}, Lb2/k;->c(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Lz1/d$a;->a:Lb2/k;

    invoke-interface {v7, v2}, Lb2/k;->add(I)V

    iget v6, v6, Lz1/d$a;->b:I

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c()[Lz1/d$a;
    .locals 4

    iget-object v0, p0, Lz1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lz1/d;->a:Lz1/v;

    iget-object v2, p0, Lz1/d;->c:[Lz1/d$a;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lz1/e;->f(Lz1/v;[Lz1/d$a;Z)Lz1/e;

    invoke-virtual {p0}, Lz1/d;->a()V

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v1, p0, Lz1/d;->c:[Lz1/d$a;

    aget-object v1, v1, v3

    invoke-static {v0}, Lz1/r;->a(I)Lb2/k;

    move-result-object v2

    iput-object v2, v1, Lz1/d$a;->a:Lb2/k;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz1/d;->b()V

    iget-object v0, p0, Lz1/d;->c:[Lz1/d$a;

    return-object v0
.end method

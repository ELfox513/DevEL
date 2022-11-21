.class public final Lr4/vt3;
.super Lr4/ps3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/ps3<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lr4/u5;


# instance fields
.field public final j:[Lr4/ht3;

.field public final k:[Lr4/e8;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/ht3;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lr4/o43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o43<",
            "Ljava/lang/Object;",
            "Lr4/ls3;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:[[J

.field public q:Lr4/ut3;

.field public final r:Lr4/rs3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/l5;

    invoke-direct {v0}, Lr4/l5;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Lr4/l5;->a(Ljava/lang/String;)Lr4/l5;

    invoke-virtual {v0}, Lr4/l5;->c()Lr4/u5;

    move-result-object v0

    sput-object v0, Lr4/vt3;->s:Lr4/u5;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lr4/ht3;)V
    .locals 0

    new-instance p1, Lr4/rs3;

    invoke-direct {p1}, Lr4/rs3;-><init>()V

    invoke-direct {p0}, Lr4/ps3;-><init>()V

    iput-object p3, p0, Lr4/vt3;->j:[Lr4/ht3;

    iput-object p1, p0, Lr4/vt3;->r:Lr4/rs3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lr4/vt3;->l:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lr4/vt3;->o:I

    array-length p1, p3

    new-array p1, p1, [Lr4/e8;

    iput-object p1, p0, Lr4/vt3;->k:[Lr4/e8;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lr4/vt3;->p:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr4/vt3;->m:Ljava/util/Map;

    const/16 p1, 0x8

    invoke-static {p1}, Lr4/w43;->a(I)Lr4/u43;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lr4/u43;->b(I)Lr4/s43;

    move-result-object p1

    invoke-virtual {p1}, Lr4/s43;->c()Lr4/d43;

    move-result-object p1

    iput-object p1, p0, Lr4/vt3;->n:Lr4/o43;

    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Ljava/lang/Object;Lr4/ft3;)Lr4/ft3;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lr4/ft3;Lr4/qw3;J)Lr4/et3;
    .locals 9

    iget-object v0, p0, Lr4/vt3;->j:[Lr4/ht3;

    array-length v0, v0

    new-array v1, v0, [Lr4/et3;

    iget-object v2, p0, Lr4/vt3;->k:[Lr4/e8;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lr4/vt3;->k:[Lr4/e8;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object v4

    iget-object v5, p0, Lr4/vt3;->j:[Lr4/ht3;

    aget-object v5, v5, v3

    iget-object v6, p0, Lr4/vt3;->p:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v7, p3, v7

    invoke-interface {v5, v4, p2, v7, v8}, Lr4/ht3;->b(Lr4/ft3;Lr4/qw3;J)Lr4/et3;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lr4/tt3;

    iget-object p2, p0, Lr4/vt3;->r:Lr4/rs3;

    iget-object p3, p0, Lr4/vt3;->p:[[J

    aget-object p3, p3, v2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, v1, p4}, Lr4/tt3;-><init>(Lr4/rs3;[J[Lr4/et3;[B)V

    return-object p1
.end method

.method public final h(Lr4/et3;)V
    .locals 3

    check-cast p1, Lr4/tt3;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/vt3;->j:[Lr4/ht3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lr4/tt3;->k(I)Lr4/et3;

    move-result-object v2

    invoke-interface {v1, v2}, Lr4/ht3;->h(Lr4/et3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Lr4/ho;)V
    .locals 2

    invoke-super {p0, p1}, Lr4/ps3;->m(Lr4/ho;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lr4/vt3;->j:[Lr4/ht3;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lr4/vt3;->j:[Lr4/ht3;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lr4/ps3;->A(Ljava/lang/Object;Lr4/ht3;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-super {p0}, Lr4/ps3;->p()V

    iget-object v0, p0, Lr4/vt3;->k:[Lr4/e8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lr4/vt3;->o:I

    iput-object v1, p0, Lr4/vt3;->q:Lr4/ut3;

    iget-object v0, p0, Lr4/vt3;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lr4/vt3;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lr4/vt3;->j:[Lr4/ht3;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lr4/vt3;->q:Lr4/ut3;

    if-nez v0, :cond_0

    invoke-super {p0}, Lr4/ps3;->t()V

    return-void

    :cond_0
    throw v0
.end method

.method public final v()Lr4/u5;
    .locals 2

    iget-object v0, p0, Lr4/vt3;->j:[Lr4/ht3;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lr4/ht3;->v()Lr4/u5;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/vt3;->s:Lr4/u5;

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic z(Ljava/lang/Object;Lr4/ht3;Lr4/e8;)V
    .locals 5

    iget-object v0, p0, Lr4/vt3;->q:Lr4/ut3;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lr4/vt3;->o:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lr4/e8;->g()I

    move-result v0

    iput v0, p0, Lr4/vt3;->o:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lr4/e8;->g()I

    move-result v0

    iget v1, p0, Lr4/vt3;->o:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iget-object v1, p0, Lr4/vt3;->p:[[J

    array-length v1, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lr4/vt3;->k:[Lr4/e8;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lr4/vt3;->p:[[J

    :cond_2
    iget-object v0, p0, Lr4/vt3;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lr4/vt3;->k:[Lr4/e8;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    iget-object p1, p0, Lr4/vt3;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/vt3;->k:[Lr4/e8;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lr4/so3;->q(Lr4/e8;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Lr4/ut3;

    invoke-direct {p1, v2}, Lr4/ut3;-><init>(I)V

    iput-object p1, p0, Lr4/vt3;->q:Lr4/ut3;

    return-void
.end method

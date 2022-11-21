.class public final Lz1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/e$b;,
        Lz1/e$c;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lz1/v;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Lz1/e$b;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[Lz1/d$a;


# direct methods
.method public constructor <init>(Lz1/v;[Lz1/d$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/e;->b:Lz1/v;

    iput-object p2, p0, Lz1/e;->f:[Lz1/d$a;

    iput-boolean p3, p0, Lz1/e;->a:Z

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lz1/e;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lz1/e$b;

    iput-object p1, p0, Lz1/e;->d:[Lz1/e$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/e;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lz1/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lz1/e;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Lz1/e;)[Lz1/e$b;
    .locals 0

    iget-object p0, p0, Lz1/e;->d:[Lz1/e$b;

    return-object p0
.end method

.method public static f(Lz1/v;[Lz1/d$a;Z)Lz1/e;
    .locals 1

    new-instance v0, Lz1/e;

    invoke-direct {v0, p0, p1, p2}, Lz1/e;-><init>(Lz1/v;[Lz1/d$a;Z)V

    invoke-virtual {v0}, Lz1/e;->g()V

    return-object v0
.end method


# virtual methods
.method public final c(Lz1/s;)V
    .locals 7

    iget-object v0, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lz1/e;->d:[Lz1/e$b;

    iget-object v0, v0, Lz1/e$b;->d:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->p()I

    move-result v0

    aget-object v0, v1, v0

    iget-object v0, v0, Lz1/e$b;->d:Lz1/s;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    iget-object v3, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v2

    aget-object v2, v3, v2

    iget-object v3, v2, Lz1/e$b;->d:Lz1/s;

    iget-object v4, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v3}, Lz1/s;->p()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lz1/e$b;->d:Lz1/s;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, v4, Lz1/e$b;->d:Lz1/s;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v4, Lz1/e$b;->c:Lz1/s;

    iget-object v3, v2, Lz1/e$b;->c:Lz1/s;

    iget-object v5, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lz1/e$b;->a:I

    iget-object v6, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v3}, Lz1/s;->p()I

    move-result v3

    aget-object v3, v6, v3

    iget v3, v3, Lz1/e$b;->a:I

    if-ge v5, v3, :cond_2

    iput-object p1, v2, Lz1/e$b;->c:Lz1/s;

    :cond_2
    iget-object p1, v4, Lz1/e$b;->d:Lz1/s;

    iput-object p1, v2, Lz1/e$b;->d:Lz1/s;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final d(Lz1/s;)Lz1/s;
    .locals 2

    iget-object v0, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lz1/e$b;->d:Lz1/s;

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lz1/e;->c(Lz1/s;)V

    iget-object p1, v0, Lz1/e$b;->c:Lz1/s;

    return-object p1
.end method

.method public final e(Lz1/s;)Ljava/util/BitSet;
    .locals 1

    iget-boolean v0, p0, Lz1/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 9

    iget-boolean v0, p0, Lz1/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/e;->b:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->q()Lz1/s;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/e;->b:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->o()Lz1/s;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lz1/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v0}, Lz1/s;->p()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lz1/s;->p()I

    move-result v0

    iput v0, v1, Lz1/d$a;->b:I

    :cond_1
    new-instance v0, Lz1/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz1/e$c;-><init>(Lz1/e;Lz1/e$a;)V

    iget-object v1, p0, Lz1/e;->b:Lz1/v;

    iget-boolean v2, p0, Lz1/e;->a:Z

    invoke-virtual {v1, v2, v0}, Lz1/v;->j(ZLz1/s$b;)V

    iget-object v0, p0, Lz1/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    iget-object v2, p0, Lz1/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    iget-object v3, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0, v2}, Lz1/e;->e(Lz1/s;)Ljava/util/BitSet;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_2
    if-ltz v5, :cond_3

    iget-object v6, p0, Lz1/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/s;

    iget-object v7, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v6}, Lz1/s;->p()I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_2

    iget-object v7, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {p0, v6}, Lz1/e;->d(Lz1/s;)Lz1/s;

    move-result-object v6

    invoke-virtual {v6}, Lz1/s;->p()I

    move-result v6

    aget-object v6, v7, v6

    iget v6, v6, Lz1/e$b;->a:I

    iget v7, v3, Lz1/e$b;->a:I

    if-ge v6, v7, :cond_2

    iput v6, v3, Lz1/e$b;->a:I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lz1/e;->d:[Lz1/e$b;

    iget-object v5, p0, Lz1/e;->e:Ljava/util/ArrayList;

    iget v6, v3, Lz1/e$b;->a:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    invoke-virtual {v5}, Lz1/s;->p()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v4, v4, Lz1/e$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lz1/e$b;->b:Lz1/s;

    iput-object v2, v3, Lz1/e$b;->d:Lz1/s;

    iget-object v4, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v2

    aget-object v2, v4, v2

    iget-object v2, v2, Lz1/e$b;->e:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/s;

    invoke-virtual {p0, v4}, Lz1/e;->d(Lz1/s;)Lz1/s;

    move-result-object v5

    iget-object v6, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v5}, Lz1/s;->p()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Lz1/e$b;->a:I

    iget-object v7, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v4}, Lz1/s;->p()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Lz1/e$b;->a:I

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v4}, Lz1/s;->p()I

    move-result v4

    aget-object v4, v6, v4

    invoke-virtual {v5}, Lz1/s;->p()I

    move-result v5

    iput v5, v4, Lz1/d$a;->b:I

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v4}, Lz1/s;->p()I

    move-result v4

    aget-object v4, v5, v4

    iget-object v5, v3, Lz1/e$b;->b:Lz1/s;

    invoke-virtual {v5}, Lz1/s;->p()I

    move-result v5

    iput v5, v4, Lz1/d$a;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_6
    :goto_4
    if-gt v2, v0, :cond_8

    iget-object v1, p0, Lz1/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    iget-object v3, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lz1/d$a;->b:I

    iget-object v4, p0, Lz1/e;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lz1/e;->d:[Lz1/e$b;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lz1/e$b;->a:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/s;

    invoke-virtual {v4}, Lz1/s;->p()I

    move-result v4

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lz1/e;->f:[Lz1/d$a;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v1

    aget-object v1, v4, v1

    iget v1, v1, Lz1/d$a;->b:I

    aget-object v1, v4, v1

    iget v1, v1, Lz1/d$a;->b:I

    iput v1, v3, Lz1/d$a;->b:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

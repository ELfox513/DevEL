.class public Lo7/g0;
.super Lo7/c;
.source "SourceFile"

# interfaces
.implements Lo7/h0;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/c<",
        "Ljava/lang/String;",
        ">;",
        "Lo7/h0;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final d:Lo7/g0;

.field public static final k:Lo7/h0;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/g0;

    invoke-direct {v0}, Lo7/g0;-><init>()V

    sput-object v0, Lo7/g0;->d:Lo7/g0;

    invoke-virtual {v0}, Lo7/c;->F()V

    sput-object v0, Lo7/g0;->k:Lo7/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lo7/g0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo7/g0;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo7/c;-><init>()V

    iput-object p1, p0, Lo7/g0;->b:Ljava/util/List;

    return-void
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lo7/h;

    if-eqz v0, :cond_1

    check-cast p0, Lo7/h;

    invoke-virtual {p0}, Lo7/h;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lo7/a0;->j([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F0()Lo7/h0;
    .locals 1

    invoke-virtual {p0}, Lo7/g0;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo7/r1;

    invoke-direct {v0, p0}, Lo7/r1;-><init>(Lo7/h0;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public I0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic V0()Z
    .locals 1

    invoke-super {p0}, Lo7/c;->V0()Z

    move-result v0

    return v0
.end method

.method public X(Lo7/h;)V
    .locals 1

    invoke-virtual {p0}, Lo7/c;->d()V

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo7/g0;->e(ILjava/lang/String;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/c;->d()V

    instance-of v0, p2, Lo7/h0;

    if-eqz v0, :cond_0

    check-cast p2, Lo7/h0;

    invoke-interface {p2}, Lo7/h0;->i0()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/g0;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lo7/g0;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lo7/c;->d()V

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public e(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lo7/c;->d()V

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lo7/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo7/g0;->i(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lo7/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lo7/h;

    if-eqz v1, :cond_2

    check-cast v0, Lo7/h;

    invoke-virtual {v0}, Lo7/h;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo7/h;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lo7/a0;->j([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lo7/a0;->g([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public i0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lo7/g0;
    .locals 1

    invoke-virtual {p0}, Lo7/g0;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lo7/g0;

    invoke-direct {p1, v0}, Lo7/g0;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public l(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo7/c;->d()V

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lo7/g0;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo7/c;->d()V

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo7/g0;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(I)Lo7/a0$i;
    .locals 0

    invoke-virtual {p0, p1}, Lo7/g0;->k(I)Lo7/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo7/g0;->l(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lo7/c;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lo7/c;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lo7/c;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo7/g0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lo7/g0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

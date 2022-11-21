.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        "A:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public final c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public g:F

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->d:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearChildren()V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v3, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public collapseAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->q(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public expandAll()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->z(Lcom/badlogic/gdx/utils/Array;)V

    :cond_0
    return-void
.end method

.method public expandTo()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->A(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->B(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    return v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b()I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    :cond_3
    return-void
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->d:Z

    return v0
.end method

.method public remove()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_2
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v3, p1, :cond_4

    aget-object v4, v1, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v3, p1, :cond_4

    aget-object v4, v1, v3

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v4, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->d:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    return-void
.end method

.method public updateChildren()V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v2, v5

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v6, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v5, v2, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v5, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

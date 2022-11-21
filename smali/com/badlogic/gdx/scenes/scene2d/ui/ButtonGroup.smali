.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->d:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->e:Z

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->d:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->y0:Z

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    if-gt v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v3, v2, :cond_7

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->e:Z

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    iget-boolean v3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->y0:Z

    if-ne v3, p2, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->d:I

    if-ge v3, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa

    if-le v2, v4, :cond_6

    return v1

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    :goto_2
    return v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->A0:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->A0:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "button cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buttons cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public getAllChecked()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getButtons()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedIndex()I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->A0:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "button cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs remove([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buttons cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setChecked(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "text cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setMaxCheckCount(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->d:I

    return-void
.end method

.method public setMinCheckCount(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    return-void
.end method

.method public setUncheckLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->e:Z

    return-void
.end method

.method public uncheckAll()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->c:I

    return-void
.end method

.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic u:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :goto_0
    return-void
.end method

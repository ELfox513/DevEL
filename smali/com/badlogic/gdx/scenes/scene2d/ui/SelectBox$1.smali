.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public fireChangeEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->Q:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    return v0
.end method

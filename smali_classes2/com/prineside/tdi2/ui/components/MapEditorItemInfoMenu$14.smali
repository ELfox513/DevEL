.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/Tower;

.field public final synthetic p:I

.field public final synthetic q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->o:Lcom/prineside/tdi2/Tower;

    iput p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->p:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->o:Lcom/prineside/tdi2/Tower;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    iget p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->p:I

    aget-boolean p3, p1, p2

    xor-int/lit8 p3, p3, 0x1

    aput-boolean p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;->q:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

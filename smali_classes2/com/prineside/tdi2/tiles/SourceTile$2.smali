.class Lcom/prineside/tdi2/tiles/SourceTile$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/SourceTile;->fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

.field public final synthetic c:Lcom/prineside/tdi2/tiles/SourceTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/Miner;->setUpgradeLevel(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$2;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

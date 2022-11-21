.class Lcom/prineside/tdi2/tiles/SourceTile$1;
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

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "No miner"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object v0, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-static {p1}, Lcom/prineside/tdi2/enums/MinerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/MinerType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner$Factory;->create()Lcom/prineside/tdi2/Miner;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->c:Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p2, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile$1;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

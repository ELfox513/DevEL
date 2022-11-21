.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
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
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic b:Lcom/prineside/tdi2/tiles/PlatformTile;

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "No modifier"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    iput-object v0, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p2, p2, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    move-object v1, p2

    check-cast v1, Lcom/prineside/tdi2/Modifier;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-static {p1}, Lcom/prineside/tdi2/enums/ModifierType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ModifierType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier$Factory;->create()Lcom/prineside/tdi2/Modifier;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->b:Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p2, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

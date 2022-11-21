.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;
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
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/tiles/XmMusicTrackTile;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "updated real item"

    const-string v1, "MapEditorItemInfoMenu"

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const-string p1, "removed track"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object p2, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p2, v3}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItem(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/TileItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast p1, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const v3, 0x2ee00

    if-le p2, v3, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "track_string_too_long"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, v2, v2, v0}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getItem(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/items/TileItem;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object v0, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->c:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;->b:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->setTrack(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

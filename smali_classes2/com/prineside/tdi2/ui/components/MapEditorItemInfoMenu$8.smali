.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;
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
.field public final synthetic o:Lcom/prineside/tdi2/tiles/PlatformTile;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;->p:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;->o:Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;->p:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;->o:Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;->o:Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;II)V

    return-void
.end method

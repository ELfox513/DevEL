.class Lcom/prineside/tdi2/tiles/TargetTile$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/TargetTile;->fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/GameValueConfig;

.field public final synthetic p:Lcom/prineside/tdi2/tiles/TargetTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$2;->p:Lcom/prineside/tdi2/tiles/TargetTile;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$2;->o:Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object p3, p0, Lcom/prineside/tdi2/tiles/TargetTile$2;->o:Lcom/prineside/tdi2/GameValueConfig;

    iget-object p3, p3, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method

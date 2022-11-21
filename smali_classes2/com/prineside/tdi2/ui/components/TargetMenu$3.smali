.class Lcom/prineside/tdi2/ui/components/TargetMenu$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/TargetMenu;->d(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/enums/GameValueType;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/TargetMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TargetMenu;Lcom/prineside/tdi2/enums/GameValueType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TargetMenu$3;->p:Lcom/prineside/tdi2/ui/components/TargetMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TargetMenu$3;->o:Lcom/prineside/tdi2/enums/GameValueType;

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

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/TargetMenu$3;->o:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method

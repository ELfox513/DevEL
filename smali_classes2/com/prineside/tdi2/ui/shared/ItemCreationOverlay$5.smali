.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->a:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    const-string v2, "ItemCreationOverlay"

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->originalItem:Lcom/prineside/tdi2/Item;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->originalItem:Lcom/prineside/tdi2/Item;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Item;->from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->changeListener:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "type changed, new item"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->changeListener:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v2, "Done!"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v1, 0x44390000    # 740.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->a:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v1, 0x3e99999a    # 0.3f

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v2, v3, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " original "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$5;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->originalItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

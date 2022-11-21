.class public Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/QuestList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuestListItem"
.end annotation


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public O:Z

.field public P:Lcom/badlogic/gdx/utils/StringBuilder;

.field public Q:Lcom/badlogic/gdx/utils/StringBuilder;

.field public final synthetic R:Lcom/prineside/tdi2/ui/components/QuestList;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/QuestList;)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->R:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->P:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance p1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->Q:Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 p1, 0x42300000    # 44.0f

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "checkbox"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v0, 0x42d40000    # 106.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/QuestList;Lcom/prineside/tdi2/ui/components/QuestList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;-><init>(Lcom/prineside/tdi2/ui/components/QuestList;)V

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->O:Z

    return v0
.end method

.method public setCompleted(Z)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "checkbox-checked"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v2

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v2, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    invoke-static {v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem$1;-><init>(Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "checkbox"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_1
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->O:Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->R:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/QuestList;->f(Lcom/prineside/tdi2/ui/components/QuestList;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->R:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/QuestList;->g(Lcom/prineside/tdi2/ui/components/QuestList;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->Q:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->Q:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/QuestList;->e()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/QuestList;->e()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->P:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/QuestList;->e()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitlePrefix(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->P:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->P:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->Q:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

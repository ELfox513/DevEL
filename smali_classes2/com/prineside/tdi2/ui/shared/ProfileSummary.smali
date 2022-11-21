.class public Lcom/prineside/tdi2/ui/shared/ProfileSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;,
        Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;,
        Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public A:I

.field public a:I

.field public b:I

.field public final c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final g:Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

.field public final h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final m:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final o:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

.field public final x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;",
            ">;"
        }
    .end annotation
.end field

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->B:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x64

    const-string v4, "ProfileSummary"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x43620000    # 226.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v9, 0x0

    const/high16 v10, 0x42500000    # 52.0f

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "player-profile-avatar-frame"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v11, 0x42580000    # 54.0f

    invoke-virtual {v2, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, -0x3fc00000    # -3.0f

    const/high16 v12, 0x42440000    # 49.0f

    invoke-virtual {v2, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x101010ff

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    const-string v11, ""

    const/16 v12, 0x1e

    const/16 v13, 0x18

    const/high16 v14, 0x43be0000    # 380.0f

    invoke-direct {v2, v11, v12, v13, v14}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->g:Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    const/high16 v12, 0x43220000    # 162.0f

    invoke-virtual {v2, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v14, 0x42800000    # 64.0f

    invoke-virtual {v2, v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$1;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v10, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v10, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v10, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v10, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x3f800000    # 1.0f

    const v8, 0x3f0f5c29    # 0.56f

    invoke-virtual {v10, v15, v15, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v10, v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v10, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "blank"

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v14, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v8, 0x3e570a3d    # 0.21f

    invoke-virtual {v14, v15, v15, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    const-string v9, "+0 XP"

    invoke-direct {v3, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v3, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43720000    # 242.0f

    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    const-string v12, "+0 bonus XP"

    invoke-direct {v3, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual {v3, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x434f0000    # 207.0f

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v3, -0x3de00000    # -40.0f

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43850000    # 266.0f

    const/high16 v7, 0x42b80000    # 92.0f

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$2;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$2;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "tap_here_to_sign_in"

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v15, v15, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, -0x3cf40000    # -140.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43c10000    # 386.0f

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$3;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$3;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/shared/q1;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/shared/q1;-><init>()V

    invoke-direct {v2, v11, v3, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v3, 0x43760000    # 246.0f

    const/high16 v4, -0x3f000000    # -8.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v5, v3}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x42800000    # 64.0f

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-star"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v9, 0x42400000    # 48.0f

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$4;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->addListener(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x0
        0x42780000    # 62.0f
        0x42a00000    # 80.0f
        0x42800000    # 64.0f
        0x42960000    # 75.0f
        0x0
    .end array-data
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/ProfileSummary;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->q(II)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->y:Z

    return p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic k()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->B:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic o()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->requestOfMeritPrestige()V

    return-void
.end method

.method public static synthetic p()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "of_merit_prestige_confirm"

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/r1;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/shared/r1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic q(II)V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->a:I

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v2, v2, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-gtz p1, :cond_1

    if-lez p2, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    if-lez p1, :cond_4

    add-int v4, v3, p1

    if-ge v4, v2, :cond_2

    new-instance v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;

    invoke-direct {v8, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    iput v3, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->baseXpLine:I

    iput v1, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLine:I

    iput p1, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLine:I

    iput v3, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBaseXpLabel:I

    iput v4, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBaseXpLabel:I

    iput v5, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    add-int/2addr v5, p1

    iput v5, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLabel:I

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v4, p1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    sub-int v4, v2, v3

    new-instance v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;

    invoke-direct {v8, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    iput v3, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->baseXpLine:I

    iput v1, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLine:I

    iput v4, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLine:I

    iput v3, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBaseXpLabel:I

    add-int/2addr v3, v4

    iput v3, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBaseXpLabel:I

    iput v5, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    add-int/2addr v5, v4

    iput v5, v8, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLabel:I

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v8, v8, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    if-le v0, v8, :cond_3

    move v0, v8

    :cond_3
    iput v0, v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->newLevel:I

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sub-int/2addr p1, v4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    add-int v8, v3, v4

    add-int v9, v8, p2

    const/4 v10, 0x1

    if-ge v9, v2, :cond_6

    new-instance v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;

    invoke-direct {v11, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    iput v3, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->baseXpLine:I

    iput v4, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLine:I

    iput v4, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLine:I

    iput v1, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLine:I

    iput p2, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLine:I

    iput v8, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBaseXpLabel:I

    iput v9, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBaseXpLabel:I

    iput v5, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    iput v5, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLabel:I

    iput v6, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLabel:I

    add-int/2addr v6, p2

    iput v6, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLabel:I

    if-nez v7, :cond_5

    iput-boolean v10, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->fadeInBonus:Z

    const/4 v7, 0x1

    :cond_5
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p2, 0x0

    goto/16 :goto_0

    :cond_6
    sub-int v9, v2, v3

    sub-int/2addr v9, v4

    new-instance v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;

    invoke-direct {v11, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    iput v3, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->baseXpLine:I

    iput v4, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLine:I

    iput v4, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLine:I

    iput v1, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLine:I

    iput v9, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLine:I

    iput v8, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBaseXpLabel:I

    add-int/2addr v8, v9

    iput v8, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBaseXpLabel:I

    iput v5, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startRegularXpLabel:I

    iput v5, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endRegularXpLabel:I

    iput v6, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->startBonusXpLabel:I

    add-int/2addr v6, v9

    iput v6, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->endBonusXpLabel:I

    if-nez v7, :cond_7

    iput-boolean v10, v11, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationGiveXpStage;->fadeInBonus:Z

    const/4 v7, 0x1

    :cond_7
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;)V

    add-int/lit8 v0, v0, 0x1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->maxProfileLevel:I

    if-le v0, v4, :cond_8

    move v0, v4

    :cond_8
    iput v0, v3, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationLevelUpStage;->newLevel:I

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sub-int/2addr p2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public postRender(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->start()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    if-eqz v0, :cond_2

    const v1, 0x49742400    # 1000000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->c(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;J)J

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    iget-wide v2, p1, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-static {p1, v2, v3}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->b(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;J)J

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;)J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    iget-wide v2, v2, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->draw(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->a(Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    iget-wide v2, p1, Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;->duration:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->A:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->r()V

    :cond_3
    return-void
.end method

.method public final r()V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->A:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->nextXpRefreshTimestamp:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-static {v0, v2, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->timePassed(IZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setVisible(Z)Lcom/prineside/tdi2/ui/shared/ProfileSummary;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->setVisible(ZZ)Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    move-result-object p1

    return-object p1
.end method

.method public setVisible(ZZ)Lcom/prineside/tdi2/ui/shared/ProfileSummary;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, v2, Lcom/prineside/tdi2/managers/AuthManager;->lastStateUpdateTimestamp:I

    sub-int/2addr v1, v3

    const/16 v3, 0x1e

    if-le v1, v3, :cond_0

    invoke-virtual {v2, v0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->y:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->update()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->z:Z

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->w:Lcom/prineside/tdi2/ui/shared/ProfileSummary$AnimationStage;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->y:Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-object p0
.end method

.method public showXpGained(IIZZ)V
    .locals 6

    if-gtz p1, :cond_0

    const-string p1, "ProfileSummary"

    const-string p2, "no regular xp, cancel"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-triangle-top"

    invoke-virtual {p4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-triangle-bottom"

    invoke-virtual {p4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e8f5c29    # 0.28f

    invoke-direct {p4, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 p4, 0x43720000    # 242.0f

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p3, p4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->o:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-boolean p4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->y:Z

    iput-boolean p4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->z:Z

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 p4, 0x0

    invoke-static {p4, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    const v2, 0x3e051eb8    # 0.13f

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v1, p4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {p4, v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p4

    new-instance v1, Lcom/prineside/tdi2/ui/shared/p1;

    invoke-direct {v1, p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/p1;-><init>(Lcom/prineside/tdi2/ui/shared/ProfileSummary;II)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object p1

    invoke-static {v0, p4, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public toggleXpInfoDropdown()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->r()V

    return-void
.end method

.method public update()V
    .locals 11

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->z:Z

    if-eqz v0, :cond_0

    const-string v0, "ProfileSummary"

    const-string v1, "skipped update during animation"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->g:Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->g:Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, v0, Lcom/prineside/tdi2/managers/AuthManager;->profileLevel:I

    iput v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->a:I

    iget v3, v0, Lcom/prineside/tdi2/managers/AuthManager;->currentLevelXp:I

    iput v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->b:I

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/AuthManager;->getAvatar(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->a:I

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AuthManager;->getProfileLevelTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v5, v5, v3

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " XP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x43220000    # 162.0f

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->b:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->nextLevelXp:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    sget-object v3, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->BONUS:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-triangle-top"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->xpStatus:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    sget-object v3, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->REDUCED:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-triangle-bottom"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e8f5c29    # 0.28f

    invoke-direct {v3, v5, v5, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, v3, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v3, "profile_summary_dropdown_bonus_xp_available"

    invoke-virtual {v6, v3, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v10, v2, [Ljava/lang/Object;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v8, v8, Lcom/prineside/tdi2/managers/AuthManager;->regularXpRemaining:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v1

    const-string v8, "profile_summary_dropdown_regular_xp_available"

    invoke-virtual {v9, v8, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v8, v0, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpRemaining:I

    const v9, 0x3f0f5c29    # 0.56f

    if-nez v8, :cond_4

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->regularXpRemaining:I

    if-nez v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "profile_summary_dropdown_xp_reduced"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v5, v5, v5, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    if-lez v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    const-string v10, ""

    invoke-direct {v0, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v8, v8, Lcom/prineside/tdi2/managers/AuthManager;->tempXp:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    const-string v1, "profile_summary_dropdown_validated_xp"

    invoke-virtual {v10, v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "profile_summary_dropdown_next_refresh"

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v5, v5, v5, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, "1d 00:00:00"

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-boolean v1, v1, Lcom/prineside/tdi2/managers/AuthManager;->ofMeritPrestigeAvailable:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-user"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->m:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->v:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    return-void
.end method

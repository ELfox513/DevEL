.class Lcom/prineside/tdi2/ui/actors/ItemCell$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ItemCell;->shine(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/graphics/Color;

.field public final synthetic b:F

.field public final synthetic d:Lcom/prineside/tdi2/ui/actors/ItemCell;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ItemCell;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->d:Lcom/prineside/tdi2/ui/actors/ItemCell;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->a:Lcom/badlogic/gdx/graphics/Color;

    iput p3, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Animation;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "item-cell-glow"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const v3, 0x3c886595    # 0.01665f

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/actors/AnimatedImage;-><init>(Lcom/badlogic/gdx/graphics/g2d/Animation;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/ItemCell;->r()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/ItemCell;->r()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->b:F

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x430c0000    # 140.0f

    mul-float v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$3;->d:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

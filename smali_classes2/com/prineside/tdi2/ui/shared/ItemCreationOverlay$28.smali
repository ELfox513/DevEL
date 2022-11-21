.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/tiles/TargetTile;

.field public final synthetic b:Lcom/prineside/tdi2/GameValueConfig;

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->a:Lcom/prineside/tdi2/tiles/TargetTile;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->b:Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->a:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->b:Lcom/prineside/tdi2/GameValueConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->a:Lcom/prineside/tdi2/tiles/TargetTile;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->b:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/tiles/TargetTile;->removeGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$28;->d:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

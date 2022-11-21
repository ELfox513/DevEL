.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$20;
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
.field public final synthetic a:Lcom/prineside/tdi2/tiles/BossTile;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/tiles/BossTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$20;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$20;->a:Lcom/prineside/tdi2/tiles/BossTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$20;->a:Lcom/prineside/tdi2/tiles/BossTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$20;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->o(Lcom/prineside/tdi2/BasicLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->a:Lcom/prineside/tdi2/BasicLevel;

    iget v0, v0, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-lez v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeGreenPapers(I)Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->a:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v2, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget v2, v3, v1

    if-lez v2, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->setPurchased(Lcom/prineside/tdi2/BasicLevel;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->p(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

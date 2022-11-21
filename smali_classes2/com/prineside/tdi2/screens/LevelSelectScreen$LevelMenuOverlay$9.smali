.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;
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

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    new-instance v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;)V

    new-instance v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$2;

    invoke-direct {v1, p0, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$2;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;Ljava/lang/Runnable;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

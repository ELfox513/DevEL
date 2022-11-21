.class Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameValueManagerListener"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/prineside/tdi2/managers/ProgressManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ProgressManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/ProgressManager;Lcom/prineside/tdi2/managers/ProgressManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;-><init>(Lcom/prineside/tdi2/managers/ProgressManager;)V

    return-void
.end method


# virtual methods
.method public gameValuesRecalculated()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->DEVELOPER_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->a:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->d(Lcom/prineside/tdi2/managers/ProgressManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->d(Lcom/prineside/tdi2/managers/ProgressManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->d(Lcom/prineside/tdi2/managers/ProgressManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;->developerConsoleEnabled()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->d(Lcom/prineside/tdi2/managers/ProgressManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->b:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->checkSpecialTrophiesGiven()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->a:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$_GameValueManagerListener;->a:Z

    :cond_2
    :goto_1
    return-void
.end method

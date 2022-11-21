.class Lcom/prineside/tdi2/screens/LoadingScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LoadingScreen;-><init>(Lcom/prineside/tdi2/utils/GameSyncLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/GameSyncLoader;

.field public final synthetic b:Lcom/prineside/tdi2/screens/LoadingScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LoadingScreen;Lcom/prineside/tdi2/utils/GameSyncLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/LoadingScreen$1;Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/LoadingScreen$1;->d(Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/screens/LoadingScreen$1;->c()V

    return-void
.end method

.method public static synthetic c()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    return-void
.end method

.method private synthetic d(Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->getProgress()F

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LoadingScreen;->b(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    const/high16 v1, 0x43c00000    # 384.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LoadingScreen;->c(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    iget-object p2, p2, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LoadingScreen;->a(Lcom/prineside/tdi2/screens/LoadingScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache/enable-fast-loading-B184.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const-string v1, "This file was created after a successful, careful initialization of the game.\nIt seems your device had not caught fire so now we can use more extreme loading process."

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/x;

    invoke-direct {v1}, Lcom/prineside/tdi2/screens/x;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public startedTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 2

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/LoadingScreen;->a(Lcom/prineside/tdi2/screens/LoadingScreen;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v1, Lcom/prineside/tdi2/screens/y;

    invoke-direct {v1, p0, v0, p1}, Lcom/prineside/tdi2/screens/y;-><init>(Lcom/prineside/tdi2/screens/LoadingScreen$1;Lcom/prineside/tdi2/utils/GameSyncLoader;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    invoke-interface {p2, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/LoadingScreen;->b(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p2

    const/high16 v0, 0x43c00000    # 384.0f

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->getProgress()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LoadingScreen$1;->b:Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/LoadingScreen;->c(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p2

    iget-object p1, p1, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

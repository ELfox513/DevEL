.class Lcom/prineside/tdi2/managers/NetworkManager$3;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/NetworkManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/managers/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/NetworkManager$3;->q:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->MULTIPLAYER_TEST_ENDPOINT:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager$3;->q:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/NetworkManager;->b(Lcom/prineside/tdi2/managers/NetworkManager;)V

    new-instance v0, Lcom/prineside/tdi2/managers/NetworkManager$3$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/NetworkManager$3$1;-><init>(Lcom/prineside/tdi2/managers/NetworkManager$3;)V

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method

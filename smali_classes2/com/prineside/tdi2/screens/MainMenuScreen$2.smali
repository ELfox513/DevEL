.class Lcom/prineside/tdi2/screens/MainMenuScreen$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$2;->q:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->giveDoubleGainIfNecessary()V

    return-void
.end method

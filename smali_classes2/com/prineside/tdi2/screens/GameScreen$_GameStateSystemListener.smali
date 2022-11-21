.class Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/GameScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameStateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/GameScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;)V

    return-void
.end method


# virtual methods
.method public gameSpeedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/GameScreen;->b(Lcom/prineside/tdi2/screens/GameScreen;F)F

    return-void
.end method

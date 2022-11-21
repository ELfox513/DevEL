.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    return-void
.end method

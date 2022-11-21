.class Lcom/prineside/tdi2/screens/MainMenuScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$ScreenResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainMenuScreen"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->b(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    :cond_0
    return-void
.end method

.method public visibleDisplayFrameChanged()V
    .locals 0

    return-void
.end method

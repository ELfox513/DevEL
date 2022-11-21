.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;->a:Lcom/prineside/tdi2/UserMap;

    iget-object v1, v1, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->removeUserMap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;->b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen;->a(Lcom/prineside/tdi2/screens/CustomMapSelectScreen;)V

    return-void
.end method

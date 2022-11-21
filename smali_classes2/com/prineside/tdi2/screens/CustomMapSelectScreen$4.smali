.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/CustomMapSelectScreen;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/UserMap;

.field public final synthetic b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen;Lcom/prineside/tdi2/UserMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$4;->b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$4;->a:Lcom/prineside/tdi2/UserMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$4;->a:Lcom/prineside/tdi2/UserMap;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMapEditorScreen(Lcom/prineside/tdi2/UserMap;)V

    return-void
.end method

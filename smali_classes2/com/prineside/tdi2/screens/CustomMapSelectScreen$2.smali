.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2;
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

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2;->b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2;->a:Lcom/prineside/tdi2/UserMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    new-instance v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2$1;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2;)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$2;->a:Lcom/prineside/tdi2/UserMap;

    iget-object v2, v2, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

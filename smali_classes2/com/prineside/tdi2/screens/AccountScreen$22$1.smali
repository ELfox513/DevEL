.class Lcom/prineside/tdi2/screens/AccountScreen$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$22;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$22;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$22;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$22$1;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/AuthManager;->saveGameToServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

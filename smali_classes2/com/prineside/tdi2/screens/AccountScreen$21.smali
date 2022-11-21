.class Lcom/prineside/tdi2/screens/AccountScreen$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;->l()Lcom/prineside/tdi2/ui/actors/RectButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$21;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$21;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->e(Lcom/prineside/tdi2/screens/AccountScreen;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v1, Lcom/prineside/tdi2/screens/AccountScreen$21$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/AccountScreen$21$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$21;)V

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/ActionResolver;->requestGoogleAuth(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

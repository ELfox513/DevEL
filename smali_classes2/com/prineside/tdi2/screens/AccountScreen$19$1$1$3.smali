.class Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$3;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$3;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->h(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$3;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->h(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

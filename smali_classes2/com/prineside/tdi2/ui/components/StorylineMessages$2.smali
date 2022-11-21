.class Lcom/prineside/tdi2/ui/components/StorylineMessages$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/StorylineMessages;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/StorylineMessages;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/StorylineMessages;Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StorylineMessages$2;->b:Lcom/prineside/tdi2/ui/components/StorylineMessages;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/StorylineMessages$2;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StorylineMessages$2;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

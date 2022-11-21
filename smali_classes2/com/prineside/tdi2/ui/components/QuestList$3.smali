.class Lcom/prineside/tdi2/ui/components/QuestList$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/QuestList;->removeQuestListItem(Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/QuestList;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/QuestList;Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$3;->b:Lcom/prineside/tdi2/ui/components/QuestList;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/QuestList$3;->a:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$3;->b:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/QuestList;->c(Lcom/prineside/tdi2/ui/components/QuestList;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/QuestList$3;->a:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/QuestList$3;->b:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/QuestList;->d(Lcom/prineside/tdi2/ui/components/QuestList;)V

    return-void
.end method

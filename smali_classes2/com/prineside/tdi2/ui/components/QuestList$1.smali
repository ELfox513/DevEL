.class Lcom/prineside/tdi2/ui/components/QuestList$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/QuestList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/QuestList;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/QuestList;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$1;->o:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/QuestList$1;->o:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/QuestList;->b(Lcom/prineside/tdi2/ui/components/QuestList;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/QuestList;->setVisible(Z)V

    return-void
.end method

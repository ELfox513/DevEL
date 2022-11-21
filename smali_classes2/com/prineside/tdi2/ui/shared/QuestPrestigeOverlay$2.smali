.class Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;->setVisible(Z)V

    return-void
.end method

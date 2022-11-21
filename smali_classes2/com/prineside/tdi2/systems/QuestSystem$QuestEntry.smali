.class Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuestEntry"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

.field public b:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

.field public c:Z

.field public final synthetic d:Lcom/prineside/tdi2/systems/QuestSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/QuestSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->d:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/QuestSystem;Lcom/prineside/tdi2/systems/QuestSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;-><init>(Lcom/prineside/tdi2/systems/QuestSystem;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a:Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->b:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->b:Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->c:Z

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->c:Z

    return p1
.end method

.class Lcom/prineside/tdi2/managers/ResearchManager$1;
.super Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ResearchManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ResearchManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ResearchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager$1;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public reloaded()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager$1;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->reload()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager$1;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    return-void
.end method

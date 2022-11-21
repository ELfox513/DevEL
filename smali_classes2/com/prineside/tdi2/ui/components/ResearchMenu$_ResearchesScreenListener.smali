.class Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;
.super Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener$ResearchesScreenListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ResearchesScreenListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener$ResearchesScreenListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    return-void
.end method


# virtual methods
.method public selectedResearchChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->i(Lcom/prineside/tdi2/ui/components/ResearchMenu;)Lcom/prineside/tdi2/screens/ResearchesScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->j(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->j(Lcom/prineside/tdi2/ui/components/ResearchMenu;Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_ResearchesScreenListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    :goto_0
    return-void
.end method

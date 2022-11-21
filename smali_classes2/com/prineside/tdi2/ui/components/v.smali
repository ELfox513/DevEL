.class public final synthetic Lcom/prineside/tdi2/ui/components/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

.field public final synthetic b:Lcom/prineside/tdi2/screens/ResearchesScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/v;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/v;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/v;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/v;->b:Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->b(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    return-void
.end method

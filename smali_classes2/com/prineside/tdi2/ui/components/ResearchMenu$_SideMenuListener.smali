.class Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/ResearchMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_SideMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ResearchMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;Lcom/prineside/tdi2/ui/components/ResearchMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    return-void
.end method


# virtual methods
.method public offscreenChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ResearchMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->d(Lcom/prineside/tdi2/ui/components/ResearchMenu;)V

    return-void
.end method

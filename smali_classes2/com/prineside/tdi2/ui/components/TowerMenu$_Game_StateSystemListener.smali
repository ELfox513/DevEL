.class Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_Game_StateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    return-void
.end method


# virtual methods
.method public moneyChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;->a:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->a(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    return-void
.end method

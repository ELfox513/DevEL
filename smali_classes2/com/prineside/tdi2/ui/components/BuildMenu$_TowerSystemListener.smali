.class Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    return-void
.end method


# virtual methods
.method public defaultAimStrategyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->n(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    return-void
.end method

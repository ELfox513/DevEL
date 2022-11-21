.class Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;
.super Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/ModifierMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_SideMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ModifierMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener$SideMenuListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/ui/components/ModifierMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V

    return-void
.end method


# virtual methods
.method public offscreenChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;->a:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->d(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V

    return-void
.end method

.class Lcom/prineside/tdi2/ui/actors/SideMenu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/SideMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/SideMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->c(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->d(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->offscreenChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$4;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

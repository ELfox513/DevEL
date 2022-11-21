.class Lcom/prineside/tdi2/ui/actors/SideMenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/SideMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/actors/SideMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {p2}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->sideTooltipHidden()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$1;->o:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

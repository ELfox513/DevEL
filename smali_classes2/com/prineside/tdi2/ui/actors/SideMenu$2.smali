.class Lcom/prineside/tdi2/ui/actors/SideMenu$2;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$2;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu$2;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->b(Lcom/prineside/tdi2/ui/actors/SideMenu;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setOffscreen(Z)V

    return-void
.end method

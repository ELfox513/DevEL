.class Lcom/prineside/tdi2/ui/components/BuildMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$2;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$2;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->o(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    return-void
.end method

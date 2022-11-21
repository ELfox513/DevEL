.class Lcom/prineside/tdi2/ui/components/BuildMenu$3;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$3;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$3;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    sget-object v1, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->p(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    return-void
.end method

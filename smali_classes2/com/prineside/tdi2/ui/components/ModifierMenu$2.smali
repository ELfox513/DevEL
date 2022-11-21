.class Lcom/prineside/tdi2/ui/components/ModifierMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/ModifierMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/ModifierMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;->b:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;->b:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->b(Lcom/prineside/tdi2/ui/components/ModifierMenu;)Lcom/prineside/tdi2/Modifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ModifierSystem;->sellModifierAction(Lcom/prineside/tdi2/Modifier;)V

    :cond_0
    return-void
.end method

.class Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;
.super Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener$ModifierSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/ModifierMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ModifierSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/ModifierMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;->a:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener$ModifierSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/ui/components/ModifierMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V

    return-void
.end method


# virtual methods
.method public customButtonPressed(Lcom/prineside/tdi2/Modifier;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;->a:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->updateCustomButton()V

    return-void
.end method

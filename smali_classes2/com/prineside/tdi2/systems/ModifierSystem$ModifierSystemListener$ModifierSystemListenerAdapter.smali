.class public Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener$ModifierSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifierSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public customButtonPressed(Lcom/prineside/tdi2/Modifier;)V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifierBuilt(Lcom/prineside/tdi2/Modifier;I)V
    .locals 0

    return-void
.end method

.method public modifierSold(Lcom/prineside/tdi2/Modifier;I)V
    .locals 0

    return-void
.end method

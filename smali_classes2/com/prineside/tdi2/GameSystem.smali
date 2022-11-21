.class public abstract Lcom/prineside/tdi2/GameSystem;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract affectsGameState()Z
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFastStateHash()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSystemName()Ljava/lang/String;
.end method

.method public postSetup()V
    .locals 0

    return-void
.end method

.method public postStateRestore()V
    .locals 0

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method

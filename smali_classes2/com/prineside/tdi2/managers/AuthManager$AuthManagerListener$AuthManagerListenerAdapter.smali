.class public abstract Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthManagerListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoSaveModeChanged()V
    .locals 0

    return-void
.end method

.method public signInStatusUpdated()V
    .locals 0

    return-void
.end method

.method public stateUpdated()V
    .locals 0

    return-void
.end method

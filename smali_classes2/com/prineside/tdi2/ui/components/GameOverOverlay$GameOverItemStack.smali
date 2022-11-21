.class public Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;
.super Lcom/prineside/tdi2/ItemStack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameOverItemStack"
.end annotation


# instance fields
.field public isDailyLoot:Z

.field public isDoubled:Z


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    return-void
.end method

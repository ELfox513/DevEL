.class public Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleCacheConfig"
.end annotation


# instance fields
.field public hash:I

.field public lastUsed:I

.field public module:Lcom/prineside/tdi2/ibxm/Module;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

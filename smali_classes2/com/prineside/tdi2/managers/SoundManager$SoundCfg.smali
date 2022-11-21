.class Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundCfg"
.end annotation


# instance fields
.field public a:Lcom/prineside/StaticSound;

.field public b:F

.field public d:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/SoundManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->a:Lcom/prineside/StaticSound;

    return-void
.end method

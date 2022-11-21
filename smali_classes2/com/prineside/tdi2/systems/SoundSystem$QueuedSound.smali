.class Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/SoundSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueuedSound"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/enums/StaticSoundType;

.field public b:F

.field public d:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/SoundSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    return-void
.end method

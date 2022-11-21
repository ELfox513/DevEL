.class public Lcom/prineside/StaticSound;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public durationMs:I

.field public sound:Lcom/badlogic/gdx/audio/Sound;

.field public type:Lcom/prineside/tdi2/enums/StaticSoundType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/badlogic/gdx/audio/Sound;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/StaticSound;->type:Lcom/prineside/tdi2/enums/StaticSoundType;

    iput-object p2, p0, Lcom/prineside/StaticSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    iput p3, p0, Lcom/prineside/StaticSound;->durationMs:I

    return-void
.end method

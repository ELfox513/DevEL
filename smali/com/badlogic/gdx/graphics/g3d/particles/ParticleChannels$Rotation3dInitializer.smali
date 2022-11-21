.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rotation3dInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V

    return-void
.end method

.method public init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V
    .locals 7

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    aput v6, v2, v5

    aput v6, v2, v4

    aput v6, v2, v3

    add-int/lit8 v3, v1, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

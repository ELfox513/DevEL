.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->a:Z

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->b:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-void
.end method

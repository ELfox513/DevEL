.class public Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferTextureAttachmentSpec"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->a:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->b:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->c:I

    return-void
.end method


# virtual methods
.method public isColorTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
